---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

Изучение возможностей Markdown, составление отчёта лабораторной работы с его использованием

# Теоретическое введение

Markdown - легковесный язык разметки, созданный с целью обозначения форматирования в простом тексте, с максимальным сокранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций.

# Выполнение лабораторной работы

Открываем терминал, переходим в каталог курса и обновляем репозиторий (рис. [-@fig:001])

![Обновление репозитория](image/001.png){#fig:001 width=70%}

Переходим в каталог 3 лабораторной работы и проводим компиляцию шаблона с использованием Makefile (рис. [-@fig:002])

![Компиляция шаблона](image/002.png){#fig:002 width=70%}

Проверяем, что создались файлы report.pdf и report.docx (рис. [-@fig:003])

![Проверка](image/003.png){#fig:003 width=70%}

Удаляем полученные файлы с использованием Makefile и проверяем правильность выполнения команды(рис. [-@fig:004])

![Удаление файлов и проверка](image/004.png){#fig:004 width=70%}

Открываем файл report.md c помощью текстового редактора gedit(рис. [-@fig:005])

![Открытие файла](image/005.png){#fig:005 width=70%}

Изучаем структуру и заполняем отчёт(рис. [-@fig:006])

![Редактирование файла](image/006.png){#fig:006 width=70%}

# Выводы

Изучены возможности Markdown, написаны отчёты 2 и 3 лабораторных работ  с его использованием

# Список литературы{.unnumbered}

::: {#refs}
:::
