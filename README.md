# قالب پایان‌نامه‌ها و رساله‌های دانشگاه خوارزمی (LaTeX)
# Kharazmi University Persian LaTeX Thesis Template

قالب استاندارد، جامع و ماژولار حروف‌چینی پایان‌نامه‌ها و رساله‌های تحصیلات تکمیلی دانشگاه خوارزمی بر پایه موتور قدرتمند **XeLaTeX** و بسته بومی **XePersian**.

این قالب با دقت کامل و بر اساس آخرین شیوه‌نامه مصوب نگارش پایان‌نامه‌ها و رساله‌های دانشگاه خوارزمی (سال ۱۴۰۲) و فایل الگوی نگارش دانشگاه (`thesis template1402.docx`) طراحی و پیاده‌سازی شده است.

---

## فهرست مطالب / Table of Contents
1. [ویژگی‌های کلیدی قالب](#ویژگیهای-کلیدی-قالب)
2. [ساختار پوشه‌ها و پرونده‌ها](#ساختار-پوشهها-و-پروندهها)
3. [پیش‌نیازهای سیستمی و قلم‌ها](#پیشنیازهای-سیستمی-و-قلمها)
4. [راهنمای کامپایل و ساخت سند](#راهنمای-کامپایل-و-ساخت-سند)
   - [استفاده آنلاین در سامانه اورلیف (Overleaf)](#۱-استفاده-آنلاین-در-سامانه-اورلیف-overleaf)
   - [کامپایل خودکار با یک دستور (اسکریپت PowerShell در ویندوز)](#۲-کامپایل-خودکار-با-یک-دستور-اسکریپت-powershell-در-ویندوز)
   - [کامپایل دستی از طریق خط فرمان (CLI)](#۳-کامپایل-دستی-از-طریق-خط-فرمان-cli)
   - [تنظیم در VS Code (افزونه LaTeX Workshop)](#۴-تنظیم-در-vs-code-افزونه-latex-workshop)
   - [تنظیم در TeXstudio](#۵-تنظیم-در-texstudio)
   - [کامپایل خودکار با latexmk](#۶-کامپایل-خودکار-با-latexmk)
5. [راهنمای شخصی‌سازی برای دانشجو](#راهنمای-شخصیسازی-برای-دانشجو)
   - [تنظیم مشخصات و فراداده‌ها](#۱-تنظیم-مشخصات-و-فرادادهها)
   - [افزودن و ویرایش فصول](#۲-افزودن-و-ویرایش-فصول)
   - [روابط ریاضی و فرمول‌ها](#۳-روابط-ریاضی-و-فرمولها)
   - [جدول‌ها، شکل‌ها و نمودارها](#۴-جدولها-شکلها-و-نمودارها)
   - [الگوریتم‌ها و قطعه‌کدها](#۵-الگوریتمها-و-قطعهکدها)
   - [مدیریت مراجع دوزبانه (فارسی و انگلیسی)](#۶-مدیریت-مراجع-دوزبانه-فارسی-و-انگلیسی)
   - [درج نمایه موضوعی و الفبایی](#۷-درج-نمایه-موضوعی-و-الفبایی-index)
6. [پرسش‌های متداول و عیب‌یابی (FAQ)](#پرسشهای-متداول-و-عیبیابی-faq)
7. [English Quick Start Guide](#english-quick-start-guide)

---

## ویژگی‌های کلیدی قالب

- **انطباق دقیق با شیوه‌نامه دانشگاه خوارزمی:**
  - ابعاد کاغذ A4 با حاشیه‌های مصوب: **بالا ۳/۵ سانتی‌متر**، **پایین ۲/۵ سانتی‌متر**، **راست ۳/۰ سانتی‌متر**، و **چپ ۳/۰ سانتی‌متر**.
  - فاصله سرصفحه تا لبه کاغذ ۲/۲۵ سانتی‌متر با خط جداکننده به ضخامت ۰/۶ پوینت.
  - قالب سرصفحه استاندارد: `[عنوان فصل/بخش] | [شماره صفحه]`.
- **تایپوگرافی اصیل و بی‌نقص:**
  - قلم متن اصلی: **بی زر ۱۳** با فاصله سطر **۱/۱۵** و تورفتگی ابتدای پاراگراف **۰/۵ سانتی‌متر**.
  - قلم عناوین و سرعنوان‌ها: **بی تیتر** و **بی زر ضخیم** مطابق جدول ۳-۱ و ۳-۲ شیوه‌نامه.
  - قلم لاتین درون‌متنی: **Times New Roman** با مقیاس هماهنگ.
  - گزینه‌های قلم جایگزین: پشتیبانی بومی از قلم آزاد **وزیرمتن (Vazirmatn)** و **بی نازنین (B Nazanin)**.
  - **حذف ۱۰۰ درصدی خطاهای نویسه گم‌شده (Missing Character):** رفع مشکلات همزه ترکیبی و ممیز اعشاری در قلم بی زر.
- **یکپارچگی اعداد و نشانه‌گذاری فارسی:**
  - شماره‌گذاری خودکار تمامی بخش‌ها، فرمول‌ها، جدول‌ها، شکل‌ها، نمودارها و پانویس‌ها به فارسی.
- **ساختار ماژولار و تفکیک‌شده:**
  - تفکیک کامل صفحات آغازین (`front/`)، فصول متن اصلی (`chapters/`)، صفحات پایانی (`back/`) و تصاویر (`images/`).
- **مدیریت مراجع دوزبانه:**
  - پشتیبانی از استناد هم‌زمان به منابع فارسی و انگلیسی در قالب BibTeX با سبک استاندارد `plain-fa`.
- **محیط‌های پیشرفته نگارش علمی:**
  - محیط مستقل شناور نمودار (`\begin{chart}...\end{chart}`) با فهرست اختصاصی.
  - پشتیبانی از جدول‌های حرفه‌ای با `booktabs` و `multirow`.
  - شکل‌های مرکب و چندگانه با `subcaption`.
  - کدهای برنامه‌نویسی با برجسته‌سازی نحوی و کلمات کلیدی فارسی الگوریتم‌ها.

---

## ساختار پوشه‌ها و پرونده‌ها

```text
Kharazmi thesis template/
├── kharazmi-thesis.cls        # کلاس اصلی سند لاتک (هندسه صفحه، قلم‌ها، سرصفحه‌ها)
├── kharazmi.sty               # بسته استایل، فراداده‌ها و توابع تولید صفحات آغازین و پایانی
├── main.tex                   # فایل اصلی و ریشه کامپایل پایان‌نامه
├── references.bib             # بانک مراجع دوزبانه (فارسی و انگلیسی)
├── README.md                  # راهنمای جامع کاربری (پرونده حاضر)
├── images/                    # تصاویر و نشان دانشگاه
│   ├── khu_logo.png           # نشان (لوگوی) باکیفیت دانشگاه خوارزمی
│   ├── besmellah.png          # خوشنویسی بسم‌الله الرحمن الرحیم (اختیاری)
│   └── sample_fig.png         # نمونه تصویر برای فصل‌های آزمایشی
├── front/                     # صفحات آغازین (پیش از متن اصلی)
│   ├── cover_fa.tex           # صفحه جلد فارسی (برگ نخست)
│   ├── besmellah.tex          # صفحه بسم‌الله الرحمن الرحیم
│   ├── approval.tex           # صورت‌جلسه دفاع و برگ تصویب هیئت داوران
│   ├── declaration.tex        # تعهدنامه اصالت و مالکیت اثر
│   ├── dedication.tex         # صفحه تقدیم
│   ├── acknowledgments.tex    # صفحه سپاسگزاری
│   └── abstract_fa.tex        # چکیده فارسی و کلیدواژه‌ها
├── chapters/                  # فصول پنج‌گانه متن اصلی پایان‌نامه
│   ├── chapter1.tex           # فصل ۱: کلیات پژوهش
│   ├── chapter2.tex           # فصل ۲: پیشینه پژوهش و مبانی نظری
│   ├── chapter3.tex           # فصل ۳: روش‌شناسی و مدل پیشنهادی
│   ├── chapter4.tex           # فصل ۴: یافته‌ها و تحلیل نتایج
│   └── chapter5.tex           # فصل ۵: نتیجه‌گیری و پیشنهادات پژوهشی
└── back/                      # صفحات پایانی (پس از متن اصلی)
    ├── appendix1.tex          # پیوست الف: اثبات قضیه‌ها و محاسبات تکمیلی
    ├── glossary.tex           # واژه‌نامه‌های سه‌گانه (توصیفی، فارسی به انگلیسی، انگلیسی به فارسی)
    ├── publications.tex       # فهرست مقالات مستخرج از پایان‌نامه
    ├── cv.tex                 # کارنامک و سوابق علمی-تحصیلی نویسنده
    ├── approval_en.tex        # تأییدیه دفاع به زبان انگلیسی
    ├── abstract_en.tex        # چکیده پایان‌نامه به زبان انگلیسی
    └── cover_en.tex           # صفحه جلد انگلیسی (پشت جلد)
```

---

## راهنمای کامپایل و ساخت سند

> **استفاده آنلاین در اورلیف (Overleaf):**
> اگر ترجیح می‌دهید بدون نصب نرم‌افزار، پایان‌نامه را به صورت آنلاین در [Overleaf](https://www.overleaf.com/) ویرایش نمایید، کافی است پوشه پروژه را در قالب یک فایل `.zip` در اورلیف آپلود کنید و از بخش **Menu** در گوشه بالا سمت چپ، گزینه **Compiler** را بر روی **`XeLaTeX`** قرار دهید. تمام قلم‌های مصوب دانشگاه در پوشه `fonts/` پروژه گنجانده شده‌اند و نیازی به هیچ تنظیم یا آپلود قلم دیگری ندارید.

---

### ۱. پیش‌نیازهای کامپایل روی سیستم (توزیع تک و قلم‌ها)
برای ساخت و ویرایش پایان‌نامه بر روی رایانه شخصی خود، به موارد زیر نیاز دارید:
- **توزیع تک (TeX Distribution):**
  - **ویندوز (Windows):** [MiKTeX](https://miktex.org/) نسخه ۲۳ به بعد (پیشنهادی) یا [TeX Live](https://www.tug.org/texlive/).
  - **لینوکس (Linux):** `texlive-full` (نسخه ۲۰۲۲ به بعد).
  - **مک (macOS):** [MacTeX](https://www.tug.org/mactex/).
- **موتور کامپایل (Compiler):** حتماً **XeLaTeX** (موتورهای قدیمی `pdflatex` یا `latex` قادر به پردازش خط فارسی و فونت‌های یونیکد نیستند).
- **قلم‌های مورد نیاز (Fonts):** تمامی قلم‌های مصوب دانشگاه (`B Zar`، `B Titr`، `B Nazanin`، `Times New Roman` و `IranNastaliq`) همراه پروژه و در پوشه `fonts/` قرار دارند و نیازی به نصب قلم بر روی ویندوز، لینوکس یا مک ندارید. (در صورت تمایل به استفاده از قلم مدرن وزیرمتن نیز می‌توانید گزینه `\usepackage[vazirmatn]{kharazmi}` را در `main.tex` فعال نمایید).

### ۲. کامپایل خودکار با یک دستور (اسکریپت PowerShell در ویندوز)
برای راحتی دانشجویان، یک اسکریپت خودکار در ریشه پروژه قرار داده شده است. کافی است در محیط PowerShell دستور زیر را اجرا کنید:
```powershell
.\build.ps1
```
این اسکریپت به صورت خودکار مسیر MiKTeX را شناسایی کرده، مراحل پنج‌گانه کامپایل (XeLaTeX -> BibTeX -> MakeIndex -> XeLaTeX -> XeLaTeX) را بدون نیاز به مداخله دست اجرا می‌نماید. برای پاک‌سازی فایل‌های موقت نیز می‌توانید از سوئیچ زیر استفاده کنید:
```powershell
.\build.ps1 -Clean
```

### ۳. کامپایل دستی از طریق خط فرمان (CLI)
در صورتی که مایل به اجرای دستی مراحل در ترمینال یا سیستم‌عامل‌های لینوکس و مک هستید، دستورات زیر را به ترتیب اجرا نمایید:

```bash
# مرحله ۱: کامپایل اولیه و استخراج کلیدهای استناد و نمایه
xelatex -interaction=nonstopmode main.tex

# مرحله ۲: تولید کتاب‌شناسی مراجع دوزبانه با BibTeX
bibtex main

# مرحله ۳: تولید نمایه موضوعی و الفبایی با MakeIndex
makeindex main

# مرحله ۴: پیوند ارجاعات، مراجع و نمایه با XeLaTeX
xelatex -interaction=nonstopmode main.tex

# مرحله ۵: تثبیت نهایی شماره صفحات، فهرست‌ها و پیوندها
xelatex -interaction=nonstopmode main.tex
```

پس از پایان فرآیند، فایل خروجی با نام **`main.pdf`** تولید خواهد شد.

### ۴. تنظیم در VS Code (افزونه LaTeX Workshop)
اگر از ویرایشگر قدرتمند Visual Studio Code استفاده می‌کنید، تنظیمات زیر را به فایل `settings.json` خود اضافه نمایید تا با هر بار ذخیره، فرآیند کامل ساخت سند انجام پذیرد:

```json
{
  "latex-workshop.latex.tools": [
    {
      "name": "xelatex",
      "command": "xelatex",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOC%"
      ]
    },
    {
      "name": "bibtex",
      "command": "bibtex",
      "args": [
        "%DOCFILE%"
      ]
    },
    {
      "name": "makeindex",
      "command": "makeindex",
      "args": [
        "%DOCFILE%"
      ]
    }
  ],
  "latex-workshop.latex.recipes": [
    {
      "name": "Complete Kharazmi Build",
      "tools": [
        "xelatex",
        "bibtex",
        "makeindex",
        "xelatex",
        "xelatex"
      ]
    }
  ],
  "latex-workshop.latex.recipe.default": "Complete Kharazmi Build"
}
```

### ۵. تنظیم در TeXstudio
۱. از منوی بالا به مسیر `Options` > `Configure TeXstudio` > `Build` بروید.
۲. گزینه `Default Compiler` را بر روی **`XeLaTeX`** تنظیم کنید.
۳. گزینه `Default Bibliography Tool` را بر روی **`BibTeX`** قرار دهید.
۴. گزینه `Default Index Tool` را بر روی **`MakeIndex`** قرار دهید.
۵. کلید `F5` را جهت کامپایل و مشاهده خروجی فشار دهید.

### ۶. کامپایل خودکار با latexmk
پرونده پیکربندی `.latexmkrc` در ریشه پروژه قرار دارد. کافی است دستور زیر را در خط فرمان اجرا نمایید:
```bash
latexmk -pdf -xelatex main.tex
```

---

## راهنمای شخصی‌سازی برای دانشجو

### ۱. تنظیم مشخصات و فراداده‌ها
تمامی اطلاعات شخصی، عنوان و اساتید در ابتدای فایل `main.tex` به سادگی قابل ویرایش هستند:

```latex
% نوع مقطع تحصیلی: msc (ارشد - پیش‌فرض)، phd (دکتری)، یا bsc (کارشناسی)
\documentclass[msc]{kharazmi-thesis}
\usepackage{kharazmi}

\thesistitle{عنوان پایان‌نامه خود را اینجا بنویسید}
\thesistitleen{Write Your Thesis Title Here}

\authorname{نام و نام خانوادگی شما}
\authornameen{Your Full Name}
\studentid{شماره دانشجویی}

\field{مهندسی کامپیوتر}
\fielden{Computer Engineering}
\major{هوش مصنوعی}
\majoren{Artificial Intelligence}

\supervisor[مرتبه]{دکتر نام استاد راهنما}
\supervisoren{Dr. Supervisor Name}

\advisor[مرتبه]{دکتر نام استاد مشاور}
\advisoren{Dr. Advisor Name}

\thesisdate{شهریور ۱۴۰۳}
\thesisdateen{September 2024}
```

### ۲. افزودن و ویرایش فصول
هر فصل در یک پرونده مستقل در پوشه `chapters/` نگهداری می‌شود:
- برای نوشتن فصل جدید، پرونده‌ای مانند `chapters/chapter1.tex` ایجاد کرده و با دستور `\chapter{عنوان فصل}` آغاز نمایید.
- در `main.tex` آن را با دستور `\include{chapters/chapter1}` فراخوانی کنید.

### ۳. روابط ریاضی و فرمول‌ها
برای نوشتن فرمول‌ها از محیط‌های استاندارد ریاضی استفاده کنید:
```latex
% معادله تک‌خطی شماره‌دار:
\begin{equation}
\label{eq:sample}
\mathcal{L}(\theta) = \frac{1}{N} \sum_{i=1}^{N} (y_i - f(x_i; \theta))^2 + \lambda \|\theta\|_2^2
\end{equation}

% ارجاع به رابطه در متن:
همان‌طور که در رابطه \eqref{eq:sample} مشاهده می‌شود...
```

### ۴. جدول‌ها، شکل‌ها و نمودارها
#### جدول حرفه‌ای با booktabs:
```latex
\begin{table}[htbp]
\centering
\caption{عنوان جدول همواره در بالای آن قرار می‌گیرد}
\label{tab:sample}
\begin{tabular}{lccc}
\toprule
\textbf{نام مدل} & \textbf{دقت (\%)} & \textbf{زمان (ثانیه)} \\
\midrule
مدل پایه & ۸۵/۲ & ۱۲ \\
مدل پیشنهادی & ۹۸/۶ & ۳/۲ \\
\bottomrule
\end{tabular}
\end{table}
```

#### درج تصویر:
```latex
\begin{figure}[htbp]
\centering
\includegraphics[width=0.6\textwidth]{sample_fig.png}
\caption{عنوان شکل همواره در زیر آن درج می‌گردد}
\label{fig:sample}
\end{figure}
```

#### نمودار مستقل با محیط chart:
```latex
\begin{chart}[htbp]
\centering
\includegraphics[width=0.7\textwidth]{chart_sample.png}
\caption{نمودار تغییرات تابع زیان در برابر تکرارها}
\label{chart:sample}
\end{chart}
```

### ۵. الگوریتم‌ها و قطعه‌کدها
#### الگوریتم با کلمات کلیدی فارسی:
```latex
\begin{algorithm}[htbp]
\caption{الگوریتم بهینه‌سازی پارامترها}
\label{alg:sample}
\begin{algorithmic}[1]
\REQUIRE داده‌های آموزشی $\mathcal{D}$، نرخ یادگیری $\eta$
\ENSURE پارامترهای بهینه $\theta^*$
\STATE مقداردهی اولیه $\theta \leftarrow \theta_0$
\FOR{$e = 1$ \TO $E$}
  \STATE محاسبه گرادیان $g \leftarrow \nabla \mathcal{L}(\theta)$
  \STATE به‌روزرسانی پارامتر $\theta \leftarrow \theta - \eta \cdot g$
\ENDFOR
\RETURN $\theta$
\end{algorithmic}
\end{algorithm}
```

#### قطعه‌کد با بسته listings:
```latex
\begin{latin}
\begin{lstlisting}[language=Python, caption={\rl{کد نمونه پایتون}}]
def hello_world():
    print("Kharazmi University Thesis Template")
\end{lstlisting}
\end{latin}
```

### ۶. مدیریت مراجع دوزبانه (فارسی و انگلیسی)
تمامی مراجع در پرونده `references.bib` ذخیره می‌شوند.
- **برای مراجع فارسی:** حتماً فیلد `language = {persian}` را درج نمایید.
- **برای مراجع انگلیسی:** فیلد `language` لازم نیست.
- **استناد در متن:** از دستور `\cite{key}` استفاده کنید (مثال: `\cite{rezaei1402}` یا `\cite{vaswani2017attention}`).

### ۷. درج نمایه موضوعی و الفبایی (Index)
قالب از سامانه استاندارد نمایه موضوعی لاتک پشتیبانی کامل می‌کند:
- در متن فصول، کلمات یا اصطلاحات کلیدی را با دستور `\index{مدخل}` علامت‌گذاری نمایید (مثال: `\index{یادگیری عمیق}`).
- برای مدخل‌های انگلیسی با برچسب فارسی، از ساختار `\index{لاتک@\lr{LaTeX}}` استفاده کنید.
- نمایه نهایی به طور خودکار در انتهای بخش پایانی با دستور `\printindex` در فایل `main.tex` حروف‌چینی خواهد شد.

---

## ترتیب صفحات آغازین (بر اساس جدول ۲-۱ شیوه‌نامه)
ترتیب و آرایش صفحات پیش از متن در `main.tex` دقیقاً منطبق بر شیوه‌نامه دانشگاه خوارزمی تنظیم شده است:
1. **صفحه جلد فارسی** (`front/cover_fa.tex`) - بدون شماره صفحه
2. **شروع شماره‌گذاری پیوسته** با دستور `\frontmatter` (از عدد ۱ از صفحه بعد)
3. **صفحه بسم‌الله الرحمن الرحیم** (`front/besmellah.tex`) - شماره صفحه ۱ (سرصفحه مخفی)
4. **تعهدنامه اصالت و مالکیت اثر** (`front/declaration.tex`)
5. **صورت‌جلسه دفاع و تصویب‌نامه هیئت داوران** (`front/approval.tex`)
6. **صفحه تقدیم** (`front/dedication.tex`)
7. **صفحه سپاسگزاری** (`front/acknowledgments.tex`)
8. **چکیده فارسی و کلیدواژه‌ها** (`front/abstract_fa.tex`)
9. **فهرست‌ها:** فهرست مطالب، فهرست شکل‌ها، فهرست جدول‌ها، فهرست نمودارها، فهرست نمادها و اختصارات.

---

## پرسش‌های متداول و عیب‌یابی (FAQ)

### ۱. با خطای `Missing character: There is no ... in font B Zar` مواجه می‌شوم.
- **علت:** این خطا زمانی رخ می‌دهد که کلمات انگلیسی بدون دستور `\lr{...}` در متن فارسی نوشته شوند، یا از نویسه‌های غیراستاندارد (نظیر همزه ترکیبی یا کاراکتر علامت درصد یونیکد) استفاده شده باشد.
- **راه حل:** عبارات انگلیسی را درون `\lr{English text}` قرار دهید، برای اعشار از خط مورب `/` (مانند `۱۲/۵`) استفاده کنید و علامت درصد را با `\%` یا کلمه «درصد» بنویسید.

### ۲. مراجع انگلیسی یا اسامی نویسندگان برعکس یا به‌هم‌ریخته نمایش داده می‌شوند.
- **علت:** کتاب‌شناسی با موتور BibTeX کامپایل نشده یا فیلد زبانی در مراجع فارسی تنظیم نشده است.
- **راه حل:** دستور `bibtex main` را حتماً میان مراحل کامپایل اجرا کنید و اطمینان یابید که در فایل `references.bib` برای مراجع فارسی عبارت `language = {persian}` درج شده باشد.

### ۳. شماره صفحات یا فهرست مطالب علامت `??` نمایش می‌دهند.
- **علت:** عدم اجرای مرحله دوم یا سوم کامپایل.
- **راه حل:** در لاتک برای ثبت دقیق شماره صفحات و فهرست‌ها، حداقل دو الی سه بار اجرای مجدد XeLaTeX لازم است.

### ۴. آیا نیاز به نصب فونت‌های سری B روی سیستم‌عامل دارم؟
- **راه حل:** خیر، هیچ نیازی به نصب قلم روی ویندوز، لینوکس، مک یا اورلیف ندارید. تمام قلم‌های لازم (`B Zar`، `B Titr`، `B Nazanin`، `IranNastaliq` و `Times New Roman`) درون پوشه `fonts/` در مخزن پروژه قرار داده شده‌اند و کامپایلر به طور خودکار آن‌ها را از درون همین پوشه می‌خواند.

---

## English Quick Start Guide

### Overview
This template is a comprehensive LaTeX thesis and dissertation template for **Kharazmi University**, designed in compliance with the university's academic writing guidelines (1402 / 2024).

### Quick Note for Overleaf Users
If working on [Overleaf](https://www.overleaf.com/), upload the project as a `.zip` archive, open **Menu** (top left), and switch **Compiler** to **`XeLaTeX`**. All fonts are pre-bundled in `fonts/`, requiring zero font setup.

### Local Compilation Guide
1. **Prerequisites:** Install [MiKTeX](https://miktex.org/) (Windows) or [TeX Live](https://www.tug.org/texlive/) (Linux/macOS). All required fonts are pre-bundled in `fonts/`.
2. **One-Click Build (Windows):** Run `.\build.ps1` (or `.\build.ps1 -Clean`).
3. **Manual CLI Build:**
```bash
xelatex -interaction=nonstopmode main.tex
bibtex main
makeindex main
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

### Document Structure
- `kharazmi-thesis.cls`: Main document class setting up A4 geometry, 3.5cm/2.5cm/3.0cm/3.0cm margins, headings, and numbering.
- `kharazmi.sty`: Thesis styling package, metadata engine, and front/back matter macros.
- `main.tex`: Master root file containing student metadata and modular includes.
- `front/`: Title page, committee signature sheet, dedication, acknowledgments, and abstract.
- `chapters/`: Modular chapter source files (`chapter1.tex` through `chapter5.tex`).
- `back/`: Appendices, three-way glossaries, list of publications, author CV, and English back cover.
- `references.bib`: Bilingual BibTeX bibliography file supporting Persian and English citations via `plain-fa.bst`.

---

## مجوز و حق نشر / License & Copyright
این قالب با افتخار تحت پروانه متن‌باز **LaTeX Project Public License (LPPL 1.3c)** برای استفاده دانشجویان، پژوهشگران و اساتید دانشگاه خوارزمی و جامعه علمی کشور منتشر گردیده است.
