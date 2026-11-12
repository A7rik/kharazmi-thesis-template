# ============================================================================
#  .latexmkrc
#  پیکربندی کامپایل خودکار با ابزار latexmk برای قالب پایان‌نامه دانشگاه خوارزمی
# ============================================================================

$pdf_mode = 5; # 5 = xelatex
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode %O %S';
$bibtex = 'bibtex %O %S';
$makeindex = 'makeindex %O -o %D %S';

# پسوندهای فایل‌های موقت جهت پاک‌سازی خودکار
@generated_exts = (@generated_exts, 'synctex.gz', 'loc', 'upa', 'upb', 'bbl', 'blg');
