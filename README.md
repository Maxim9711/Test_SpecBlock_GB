# Итоговая работа по блоку специализация
Результат выполнения заданий распольожен в директориях:

## Задание 1
Используя команду cat в терминале операционной системы Linux, создать
два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и
ослы), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека).

## Задание 2
Создать директорию, переместить файл туда.

## Задание 3
Подключить дополнительный репозиторий MySQL. Установить любой пакет
из этого репозитория.

## Задание 4
Установить и удалить deb-пакет с помощью dpkg.

## Задание 5
Выложить историю команд в терминале ubuntu (debian)
![](./images/task_1-5.png)

## Задание 6
Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и вьючные животные, в составы которых в случае домашних животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные войдут: Лошади, верблюды и ослы).
![](./images/task_6_1.png)

## Задание 7
[task_7-12.sql](./task_7-12.sql)  
В подключенном MySQL репозитории создать базу данных “Друзья человека”.
![](./images/task_7.png)

## Задание 8
[task_7-12.sql](./task_7-12.sql)  
Создать таблицы с иерархией из диаграммы в БД.
![](./images/task_8_1.png)
![](./images/task_8_2.png)
![](./images/task_8_3.png)


## Задание 9
[task_7-12.sql](./task_7-12.sql)  
Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения.  
### Пример:
![](./images/task_9_1.png)
![](./images/task_9_2.png)
![](./images/task_9_3.png)

## Задание 10
[task_7-12.sql](./task_7-12.sql)  
Удалить из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
```sql
DELETE * FROM Camel;
```

## Задание 11
[task_7-12.sql](./task_7-12.sql)  
Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице.

## Задание 12
[task_7-12.sql](./task_7-12.sql)  
Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.

## Задание 13
Создать класс с Инкапсуляцией методов и наследованием по диаграмме.

## Задание 14
Написать программу, имитирующую работу реестра домашних животных.

## Задание 14.1
Завести новое животное.

## Задание 14.2
Определять животное в правильный класс.

## Задание 14.3
Увидеть список команд, которое выполняет животное.

## Задание 14.4
Обучить животное новым командам.

## Задание 14.5
Реализовать навигацию по меню.

## Задание 15
Создайте класс Счетчик, у которого есть метод add(), увеличивающий̆ значение внутренней̆ int переменной̆ на 1 при нажатие “Завести новое животное” Сделайте так, чтобы с объектом такого типа можно было работать в блоке try-with-resources. Нужно бросить исключение, если работа с объектом типа счетчик была не в ресурсном try и/или ресурс остался открыт. Значение считать в ресурсе try, если при заведения животного заполнены все поля.
