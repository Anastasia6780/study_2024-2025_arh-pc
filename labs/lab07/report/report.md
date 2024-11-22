---
## Front matter
title: "Лабораторная работа №7"
subtitle: "Команды безусловного и условного переходов в Nasm. Программирование ветвлений."
author: "Сырцева Анастасия Романовна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
 - spelling=modern
 - babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является изучение команд перезодов, а также приобритение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга.

# Задание

- Работа с командами переходов;
- Знакомство с назначением и структурой файла листинга;

# Теоретическое введение

Для реализации ветвлений в ассемблере используются так называемые команды передачи управления или команды перехода. Можно выделить 2 типа переходов:
- условный переход – выполнение или не выполнение перехода в определенную точку программы в зависимости от проверки условия.
- безусловный переход – выполнение передачи управления в определенную точку программы без каких-либо условий.
Безусловный переход выполняется инструкцией jmp (от англ. jump – прыжок), которая включает в себя адрес перехода, куда следует передать управление.
Для условного перехода необходима проверка какого-либо условия. В ассемблере команды условного перехода вычисляют условие перехода анализируя флаги из регистра флагов.
Флаг – это бит, принимающий значение 1 («флаг установлен»), если выполнено некоторое условие, и значение 0 («флаг сброшен») в противном случае. Флаги работают независимо друг от друга, и лишь для удобства они помещены в единый регистр — регистр флагов, отражающий текущее состояние процессора. В следующей таблице указано положение битовых флагов в регистре флагов (рис. [-@fig:000]).

![Регистр флагов](image/0.00.png){#fig:000 width=70%}

 табл. [-@tbl:std-dir]

:  {#tbl:std-dir}


# Выполнение лабораторной работы

 (рис. [-@fig:001]).

![Название рисунка](image/0.01.png){#fig:001 width=70%}

(рис. [-@fig:002]).

![Название рисунка](image/0.02.png){#fig:002 width=70%}

(рис. [-@fig:003]).

![Название рисунка](image/0.03.png){#fig:003 width=70%}

(рис. [-@fig:004]).

![Название рисунка](image/0.04.png){#fig:004 width=70%}

(рис. [-@fig:005]).

![Название рисунка](image/0.05.png){#fig:005 width=70%}

(рис. [-@fig:006]).

![Название рисунка](image/0.06.png){#fig:006 width=70%}

(рис. [-@fig:007]).

![Название рисунка](image/0.07.png){#fig:007 width=70%}

(рис. [-@fig:008]).

![Название рисунка](image/0.08.png){#fig:008 width=70%}

(рис. [-@fig:009]).

![Название рисунка](image/0.09.png){#fig:009 width=70%}

(рис. [-@fig:010]).

![Название рисунка](image/0.10.png){#fig:010 width=70%}

(рис. [-@fig:0.11]).

![Название рисунка](image/0.11.png){#fig:011 width=70%}

(рис. [-@fig:012]).

![Название рисунка](image/0.12.png){#fig:012 width=70%}

(рис. [-@fig:013]).

![Название рисунка](image/0.13.png){#fig:013 width=70%}

(рис. [-@fig:014]).

![Название рисунка](image/0.14.png){#fig:014 width=70%}

(рис. [-@fig:015]).

![Название рисунка](image/0.15.png){#fig:015 width=70%}

(рис. [-@fig:016]).

![Название рисунка](image/0.16.png){#fig:016 width=70%}

(рис. [-@fig:017]).

![Название рисунка](image/0.17.png){#fig:017 width=70%}

(рис. [-@fig:018]).

![Название рисунка](image/0.18.png){#fig:018 width=70%}

(рис. [-@fig:019]).

![Название рисунка](image/0.19.png){#fig:019 width=70%}

(рис. [-@fig:020]).

![Название рисунка](image/0.20.png){#fig:020 width=70%}

(рис. [-@fig:021]).

![Название рисунка](image/0.21.png){#fig:021 width=70%}

(рис. [-@fig:022]).

![Название рисунка](image/0.22.png){#fig:022 width=70%}

(рис. [-@fig:023]).

![Название рисунка](image/0.23.png){#fig:023 width=70%}

(рис. [-@fig:024]).

![Название рисунка](image/0.24.png){#fig:024 width=70%}

(рис. [-@fig:025]).

![Название рисунка](image/0.25.png){#fig:025 width=70%}

(рис. [-@fig:026]).

![Название рисунка](image/0.26.png){#fig:026 width=70%}

# Выводы

Здесь кратко описываются итоги проделанной работы.
