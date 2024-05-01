# Directory Files Copier Script

## Описание
Этот скрипт предназначен для копирования всех файлов из указанной исходной директории в целевую директорию, без сохранения исходной структуры папок. Скрипт обходит все вложенные директории в исходной директории и копирует файлы в целевую директорию.

## Техническое задание №1 (ТЗ1)

### Легенда задания
Необходимо написать скрипт на bash, который на вход принимает два параметра: входная директория и выходная директория. В входной директории могут находиться как файлы, так и вложенные директории любого уровня вложенности. Задача скрипта - обойти входную директорию и скопировать все файлы из нее (и из всех вложенных директорий) в выходную директорию.

### Пример работы
**Входная директория:** `/home/input_dir`  
**Выходная директория:** `/home/output_dir`

**Структура /home/input_dir до копирования:**
input_dir/
├── a.txt
├── dir2/
│ └── b.txt
└── dir3/
└── c.txt


**Структура /home/output_dir после работы скрипта:**
output_dir/
├── a.txt
├── b.txt
└── c.txt




## Использование

### Синтаксис

./script_name.sh <исходная_директория> <целевая_директория>
Пример использования

./script_name.sh /home/input_dir /home/output_dir
Особенности скрипта
Создание целевой директории: Если целевая директория не существует, скрипт создаст её.
Управление дубликатами: Если в целевой директории уже существует файл с таким же именем, к имени файла будет добавлен суффикс с номером версии, чтобы избежать перезаписи.
