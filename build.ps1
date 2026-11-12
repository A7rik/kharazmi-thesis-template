# ============================================================================
#  build.ps1
#  اسکریپت خودکار کامپایل پایان‌نامه دانشگاه خوارزمی
#  Kharazmi University Thesis Automated Build Script
# ============================================================================

[CmdletBinding()]
param (
    [switch]$Clean
)

$ErrorActionPreference = "Stop"

# ۱. افزودن خودکار مسیر MiKTeX به محیط در صورت نیاز
$miktexPath = "$env:LOCALAPPDATA\Programs\MiKTeX\miktex\bin\x64"
if (Test-Path $miktexPath) {
    if ($env:Path -notlike "*$miktexPath*") {
        $env:Path = "$miktexPath;" + $env:Path
    }
}

# پاک‌سازی فایل‌های موقت در صورت درخواست سوئیچ Clean
if ($Clean) {
    Write-Host "[+] Cleaning intermediate auxiliary files..." -ForegroundColor Cyan
    $exts = @("aux", "bbl", "blg", "log", "out", "toc", "lof", "lot", "loc", "synctex.gz", "idx", "ind", "ilg", "upa", "upb")
    foreach ($ext in $exts) {
        Get-ChildItem -Path . -Filter "*.$ext" -Recurse | Remove-Item -Force -ErrorAction SilentlyContinue
    }
    Write-Host "[✔] Clean completed." -ForegroundColor Green
    exit 0
}

Write-Host "==========================================================" -ForegroundColor Green
Write-Host "  Kharazmi University Persian LaTeX Thesis Builder" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green

$sw = [System.Diagnostics.Stopwatch]::StartNew()

# مرحله ۱: کامپایل اولیه با XeLaTeX
Write-Host "[1/5] Running XeLaTeX (Pass 1)..." -ForegroundColor Yellow
& xelatex -interaction=nonstopmode main.tex
if ($LASTEXITCODE -ne 0) {
    Write-Error "[-] XeLaTeX Pass 1 failed with exit code $LASTEXITCODE"
}

# مرحله ۲: استخراج مراجع با BibTeX
Write-Host "[2/5] Running BibTeX..." -ForegroundColor Yellow
& bibtex main
if ($LASTEXITCODE -ne 0) {
    Write-Warning "[!] BibTeX reported warnings or non-zero exit code $LASTEXITCODE"
}

# مرحله ۳: ساخت نمایه الفبایی با MakeIndex
Write-Host "[3/5] Running MakeIndex..." -ForegroundColor Yellow
if (Test-Path "main.idx") {
    & makeindex main
}

# مرحله ۴: پیوند مراجع و نمایه با XeLaTeX (Pass 2)
Write-Host "[4/5] Running XeLaTeX (Pass 2)..." -ForegroundColor Yellow
& xelatex -interaction=nonstopmode main.tex
if ($LASTEXITCODE -ne 0) {
    Write-Error "[-] XeLaTeX Pass 2 failed with exit code $LASTEXITCODE"
}

# مرحله ۵: تثبیت نهایی شماره صفحات و فهرست‌ها با XeLaTeX (Pass 3)
Write-Host "[5/5] Running XeLaTeX (Pass 3 - Final)..." -ForegroundColor Yellow
& xelatex -interaction=nonstopmode main.tex
if ($LASTEXITCODE -ne 0) {
    Write-Error "[-] XeLaTeX Pass 3 failed with exit code $LASTEXITCODE"
}

$sw.Stop()

Write-Host "==========================================================" -ForegroundColor Green
Write-Host "[✔] Compilation successful in $($sw.Elapsed.TotalSeconds.ToString('F1')) seconds!" -ForegroundColor Green
if (Test-Path "main.pdf") {
    $pdf = Get-Item "main.pdf"
    Write-Host "[✔] Output: $($pdf.FullName) ($([math]::Round($pdf.Length / 1MB, 2)) MB)" -ForegroundColor Green
}
Write-Host "==========================================================" -ForegroundColor Green
