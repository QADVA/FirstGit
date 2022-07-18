#!/bin/bash

echo "Проверяем что директория ./auto_dir существует ..."
if ! [ -d ./auto_dir ]; then
echo "Создание директории ./auto_dir ..." 
mkdir ./auto_dir
else
echo "Директория ./auto_dir существует..."
fi

echo "Генерация имени файла..."
filename="auto_file-$(date +"%T").txt"

echo "Переход в директорию ./auto_dir ... "
cd ./auto_dir

echo "Создание файла с именем $filename в директории ./auto_dir ... "
touch $filename

echo "Запись данных в файл ... "

echo "Текущая директория:" >> $filename
pwd >> $filename
echo "Информация о системе:" >> $filename
lscpu >> $filename
