# DOU Проектор: jevo - создаем искусственную жизнь
![Artificial life](https://dl.dropboxusercontent.com/u/45900723/jevo/ExMachina-header.jpg)

## Идея
День добрый, друзья! Вопросы [возникновения](https://ru.wikipedia.org/wiki/%D0%92%D0%BE%D0%B7%D0%BD%D0%B8%D0%BA%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8) и развития жизни беспокоят наши умы уже очень давно. Почему? Да потому что это одни из фундаментальных загадок человечества, стоящие рядом со ["смыслом жизни"](https://ru.wikipedia.org/wiki/%D0%A1%D0%BC%D1%8B%D1%81%D0%BB_%D0%B6%D0%B8%D0%B7%D0%BD%D0%B8), "кто мы такие" и так далее... Вот что об этом пишет [википедия](https://ru.wikipedia.org/wiki/%D0%96%D0%B8%D0%B7%D0%BD%D1%8C):
> Возникновение жизни или абиогенез — процесс превращения неживой природы в живую.

Очень простое и емкое определение, не так ли? Разумеется, для понимания того что такое "живая" и "неживая" материя нужно их как-то разграничить. С точки зрения физики - разницы нет. И то, и то набор электронов, протонов и нейтронов взаимодействующих между собой по особым правилам. Разница появляется на более высоком (абстрактном) уровне. По сути, живым можно назвать что-то, что существует, размножается и приспосабливается к среде. А этим все живые организмы как раз и занимаются.  Но что если биологический сценарий не единственный в своем роде? Споры по этому поводу ведутся и по сей день. В желании доказать тот факт, что живыми могут быть не только клетки, но и машины - программисты и ученые со всей планеты трудятся над созданием [Искусственного Интеллекта](https://ru.wikipedia.org/wiki/%D0%98%D1%81%D0%BA%D1%83%D1%81%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9_%D0%B8%D0%BD%D1%82%D0%B5%D0%BB%D0%BB%D0%B5%D0%BA%D1%82). В некотором смысле - это и есть одна из форм [альтернативной жизни](https://ru.wikipedia.org/wiki/%D0%98%D1%81%D0%BA%D1%83%D1%81%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C), речь о которой пойдет далее...

Идея создания эмулятора виртуальной биологической системы возникла у меня пару лет назад. Сложно сказать что именно стало этому причиной. Вероятно - это результат чтения различной литературы по биологии и генетике, а так же лекции профессора [Маркова](http://macroevolution.livejournal.com/206803.html). Для меня изучение и наблюдение природных явлений не сравниться с созданием собственного виртуального мира, где ты обладаешь полным контролем над системой. В общем, я испытываю некое балагоговение при мысли о такого рода программах :) Но давайте по порядку...

#### Обо мне
<p align="center">
  <img alt="About me" src="https://dl.dropboxusercontent.com/u/45900723/jevo/About%20me.png">
</p>

Ничего особенного. Обычный [программист](https://www.linkedin.com/in/good-monkey-86232735) :) Со школьной скамьи интересуюсь компьютерами. Но помимо кодирования, меня всегда увлекали фундаментальные вопросы: "почему ток бежит по проводам?", "как работает гравитация?", "почему законы физики такие, а не какие-нибудь другие?" и так далее и тому подобное... 5 лет назад меня заинтересовала биология, генетика и [эволюционная теория](https://ru.wikipedia.org/wiki/%D0%AD%D0%B2%D0%BE%D0%BB%D1%8E%D1%86%D0%B8%D1%8F). Такие знания, сами по себе, не применимы в жизни, если ты не ученый или не участник программы "О, счастливчик" с темой "биология" ;) В основном они отталкивают от тебя людей, и ты становишься занудой и ботаном. Но если ты программист :-P то как велик соблазн попробовать себя в роли создателя :) и понеслась... И все же, когда пыл осядет, а амбиции успокоятся, нужно [заглянуть](http://journals.plos.org/plosone/search?filterJournals=PLoSONE&filterSubjects=Evolutionary+biology&q=%22digital%20organisms%22&page=1) в интернет и проверить что же думает об этом научное сообщество. Так, я узнал о существовании [цифровых организмов](https://ru.wikipedia.org/wiki/%D0%A6%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D0%BE%D0%B9_%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B8%D0%B7%D0%BC).

#### Цифровые организмы
Для начала, дадим [определение](https://ru.wikipedia.org/wiki/%D0%A6%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D0%BE%D0%B9_%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B8%D0%B7%D0%BC):
> Цифровой организм — самовоспроизводящаяся компьютерная программа, которая [мутирует](https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%82%D0%B0%D1%86%D0%B8%D1%8F) и развивается. Цифровые организмы используют в качестве инструмента для изучения динамики эволюции по [Дарвину](https://ru.wikipedia.org/wiki/%D0%94%D0%B0%D1%80%D0%B2%D0%B8%D0%BD,_%D0%A7%D0%B0%D1%80%D0%BB%D1%8C%D0%B7), для тестирования или проверки конкретных гипотез и математических моделей [эволюции](https://ru.wikipedia.org/wiki/%D0%AD%D0%B2%D0%BE%D0%BB%D1%8E%D1%86%D0%B8%D1%8F). Эти исследования тесно связаны с областью создания [искусственной жизни](https://ru.wikipedia.org/wiki/%D0%98%D1%81%D0%BA%D1%83%D1%81%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C).

По сути - мы говорим о маленьких программках, которые выступают в роли биологических организмов. Они живут в памяти компьютера, размножаются, питаются, двигаются, охотятся, в общем, делают все, что присуще их биологическим братьям. Но самое главное - они подчиняются тем же правилам, которым следует все живое на этой планете. Каким? А вот каким:
- размножаться, как можно эффективнее
- периодически мутировать (меняться)
- передавать все свои свойства следующему поколению

Эти три принципа лежат в основе виртуального мира, о котором и пойдет речь в этой статье, но об этом немного позже... Что дает нам такая система? Теоретически мы можем прийти к тем же результатам, которыми сами являемся. Я имею ввиду - эволюционный прогресс, и как побочный эффект - сложность живых существ. Почему это важно? По нескольким причинам. Во-первых, мы можем получить различные формы Искусственного Интеллекта в цифровом виде. Во-вторых, такую систему можно использовать, как для изучения эволюции в школах, так и для изучения самой эволюционной теории. И в третьих - это невероятно круто и непонятно к чему именно можно прийти в такого рода экспериментах. А нас всегда манит неизведанное, ведь так? :) Но разумеется, не все так просто. Почему? Потому что, для просчета такой системы, потребуются невероятные вычислительные ресурсы. И даже всех компьютеров планеты для этого не хватит. Да, наша природа обладает невероятно мощным интерпретатором :) Но не стоит унывать, ведь у компании Intel далеко идущие планы, да и виртуальный мир мы можем значительно упростить...

Давайте определимся с базовыми терминами. Каждый раз, когда я ввожу новую концепцию или обсуждаю существующую из обсуждаемого виртуального мира цифровых организмов, Вы можете проводить аналогии с биологической эволюцией. Так, на много проще понимать о чем идет речь. Например:
- программный код - это то же самое, что [ДНК](https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D0%B7%D0%BE%D0%BA%D1%81%D0%B8%D1%80%D0%B8%D0%B1%D0%BE%D0%BD%D1%83%D0%BA%D0%BB%D0%B5%D0%B8%D0%BD%D0%BE%D0%B2%D0%B0%D1%8F_%D0%BA%D0%B8%D1%81%D0%BB%D0%BE%D1%82%D0%B0) в ядрах наших клеток
- цифровой организм (программа) - это то же, что живой организм (микробы, собаки, мы, бобры и т.д.)
- мутации (изменения) в коде - это [мутации](https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%82%D0%B0%D1%86%D0%B8%D1%8F) в ДНК
- программа, стирающая не приспособленные организмы из памяти - это [естественный отбор](https://ru.wikipedia.org/wiki/%D0%95%D1%81%D1%82%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9_%D0%BE%D1%82%D0%B1%D0%BE%D1%80)
- создание копии цифрового организма с копированием всех свойств - это [наследственность](https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D1%81%D0%BB%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D1%8C)
- функция в коде - [ген](https://ru.wikipedia.org/wiki/%D0%93%D0%B5%D0%BD)
- кроссовер - [перемешивание](https://en.wikipedia.org/wiki/Crossover_(genetic_algorithm)) женского и мужского генетического материала
- фитнес функция у цифрового организма - [приспособленность](https://ru.wikipedia.org/wiki/%D0%A4%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D1%8F_%D0%BF%D1%80%D0%B8%D1%81%D0%BF%D0%BE%D1%81%D0%BE%D0%B1%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8) у живого
- популяция цифровых организмов - [популяция](https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BF%D1%83%D0%BB%D1%8F%D1%86%D0%B8%D1%8F) живых организмов (все суслики на континенте, все люди на планете и т.д.)

#### Генетический алгоритм
О [нем](https://ru.wikipedia.org/wiki/%D0%93%D0%B5%D0%BD%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC) стоит поговорить отдельно, так как это сердце такой системы. Давайте взглянем на эти рисунки:
<p align="center">
  <img alt="Darwin and GA" src="https://dl.dropboxusercontent.com/u/45900723/jevo/Darwins.png">
</p>
Это Чарлз Дарвин, которого рисуют с помощью ГА :) На рисунке одна из промежуточных стадий (справа). Компьютерная программа совершенно не знает, что она делает, но следуя простым правилам можно нарисовать что угодно. Давайте разберемся, как это работает. Во-первых, программа может рисовать только круги, случайного диаметра и случайного цвета (только оттенки серого). Во-вторых, также случайно, выбирается позиция для рисования. И в третьих, специальная фитнес функция проверяет как изменилась картинка после добавления нового кружочка. Если картинка "ближе" к оригиналу дарвина, то мы говорим о том, что "приспособленность" (или схожесть, по нашему) этого рисунка немного выросла. Если "дальше", то приспособленность уменьшилась и такое решение отбрасывается. Это очень простой пример, но он показывает, как именно работает алгоритм. Еще непонятно? Тогда взгляните на эти примеры:

[![GA Motobikes](https://dl.dropboxusercontent.com/u/45900723/jevo/jevo-youtube-motobikes.png)](https://www.youtube.com/watch?v=uxourrlPlf8)

Кстати, вы можете сами посетить [этот сайт](http://boxcar2d.com/) генератора мотоциклов, чтобы все попробовать. Суть данного примера в следующем: программа генератор, на основе генетического алгоритма случайным образом создает круги, треугольники и крутящиеся круги. Они могут крепиться между собой в произвольном порядке. Так создается случайная, первая популяция. Мотоцикл, который проедет дальше всего, будет считаться альфа-мотоциклом и на его основе будет создана вторая популяция. В этой новой популяции будут только его "дети", но с небольшими изменениями в каждом. И так до бесконечности... Фитнес функция здесь - это расстояние от начальной точки до той, куда новый альфа-мотоцикл сможет доехать. Такая система должна давать все лучшие и лучшие мотоциклы.
Второй пример еще интересней :) Некий [Карл Симс](http://www.karlsims.com/) в далеких 90х, экспериментировал с суперкомпьютером того времени для получения сложного движения виртуальных организмов в трехмерном пространстве. Организмы развивались на основе Генетического Алгоритма. Вот какие задачи ставились перед системой:
- научиться двигаться от точки А к точке В
- научиться двигаться по кругу
- научиться бегать
- научиться "преследовать" точку (курсор мыши)
- научиться соперничать за куб (кто ближе к кубу, тот выиграл)
- научиться плавать
- и так далее...

И вот, что из этого получилось:

[![Virtual cretures](https://dl.dropboxusercontent.com/u/45900723/jevo/jevo-youtube-carl-sims.png)](https://www.youtube.com/watch?v=JBgG_VSP7f8)

Теперь, давайте попробуем визуализировать ГА в качестве некоторой последовательности действий:
```
1. INITIALIZE random organisms
2. EVALUATE each organism (fitness)
3. while !terminated do
4.   SELECT parents organisms for next generation
5.   RECOMBINE parents
6.   MUTATE children
7.   EVALUATE each organism (fitness)
8. end
```

Что это такое? Это имплементация генетического алгоритма на абстрактном языке программирования. Сначала мы создаем рандомную популяцию организмов с пустым кодом (шаг 1). Далее, подсчитываем их "приспособленность" (в нашем случае это количество энергии, шаг 2). Потом, крутимся в цикле, пока не выполнится какое-то условие выхода, будь то время или получение нужного результата... (шаг 3). Находясь внутри цикла, мы выбираем родителей для получения потомства (шаг 4), рекомбинируем их генетический материал - код(шаг 5), немного мутируем этот код (шаг 6) и подсчитываем приспособленность новой популяции (шаг 7). Под новой, в данном случае подразумевается старая + родившиеся "дети". И так до бесконечности... Напоследок, нужно упомянуть о практическом применении этого алгоритма. Существует [множество направлений](https://en.wikipedia.org/wiki/List_of_genetic_algorithm_applications), где его используют для решения конкретных задач.
Ну что, все еще непонятно? Тогда смотрите образовательные видео [здесь](https://jevosite.wordpress.com/2016/10/25/%D0%BF%D0%BE%D1%81%D1%82-6-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE-%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D1%8B/).

#### Конкуренты
Самой известной программой, реализующей указанные выше принципы, является [Avida](https://en.wikipedia.org/wiki/Avida). По [этой ссылке](https://www.youtube.com/watch?v=oDC5BxiBakY) Вы можете ознакомиться с небольшим пояснением того, как она работает. Если захотите понять больше деталей, то вам [сюда](https://www.youtube.com/watch?v=ouF8wKxXWFQ). Думаю, также, стоит упомянуть о прародителях - программах, которые появились задолго до того, как написали Avida. А именно: [Tierra](https://en.wikipedia.org/wiki/Tierra_(computer_simulation)) и [Core Wars](https://en.wikipedia.org/wiki/Core_War), которые внесли свой вклад в развитие этой области. Но все же, я бы хотел представить вашему вниманию другой проект - [jevo](https://github.com/tmptrash/jevo).

## Реализация
#### jevo
Читается, как "джево" или "джей иво" и означает "Julia Evolution". Ничего особенного в этом названии нет и это никак не связано с эволюцией тех прекрасных особ, которых Мы так любим :) Просто [Julia](julialang.org) - это язык программирования, а Evolution - ну, сами понимаете. Суть системы проста - это эмулятор виртуального мира, где живут, размножаются и приспосабливаются упомянутые цифровые организмы. Если спросите, как выглядит эта система? Пожалуйста:

![jevo screenshot](https://dl.dropboxusercontent.com/u/45900723/jevo/jevo.png)

Вот, что здесь происходит. Программа, представленная на рисунке - это клиент-серверное приложение. Видите, окошко по центру справа? Это 2D визуализатор (клиент), который "показывает", что происходит в "их" мире. Цвета означают родство. Чем ближе цвет - тем роднее сосед :) Мир организмов может быть цикличным. Это означает что, когда кто-то выходит за его пределы, он появляется на другой стороне экрана. Также, как если бы вы ходили вокруг земли. Разноцветные точки - это и есть цифровые организмы (маленькие программы). Небольшое количество зеленых точек - это энергия или еда. Форма рисунка не имеет для нас никакого значения, хотя и может указывать на различные закономерности. Окно слева - сервер. На нем происходит вся магия...

#### jevo сервер
До тех пор, пока не реализовано распределенное вычисление одной популяции разными инстансами, сервер - это автономный процесс внутри операционной системы, который следит за виртуальным миром организмов и, разумеется за ними самими. Вот что он делает:
- параллельное выполнение кода всех цифровых организмов (на основе [green threads](https://ru.wikipedia.org/wiki/Green_threads))
- обслуживание столкновений организмов между собой и организмов с энергетическими точками
- периодические мутации, как всей популяции, так и конкретных организмов
- уничтожение менее приспособленных: существует как периодическая очистка самых слабых, так и удаление организмов по критерию возраста (По сути это старость. Возраст задается в начальной конфигурации администратором системы)
- управление виртуальным 2D миром
- обслуживание удаленных соединений (сюда входят как другие сервера, так и клиенты визуализатора, терминала и модуля статистики)
- парсинг параметров командной строки при запуске
- и т.д.

Чтобы лучше понять, чем именно занят сервер, давайте взглянем на эту картинку (взято из презентации):

![jevo parts](https://dl.dropboxusercontent.com/u/45900723/jevo/jevo-parts.png)

Слева - виртуальный 2D мир, где живут все цифровые организмы. Каждая точка этого мира что-то означает. Черные означают пустоту (ничего нет). Зеленые - это энергия или еда. Все остальные цветные - это организмы. Идем далее. Средний блок. Каждый организм - это набор из параметров и кода. Он управляется виртуальным процессором сервера (virtual CPU), мутирует, рожает себе подобных (clones), содержит энергию, имеет позицию на поле (position) и, наконец, имеет внутреннюю память (memory). С момента создания данной презентации, организмы значительно усложнились и сейчас их свойств больше. Самую важную часть нашего виртуального животного представляет его код. Он формируется из набора поддерживаемых элементов. На текущий момент их 54. А именно:
- математические операции для работы с переменными: `+,-,/,%,sqrt,log`
- функции движения: `Creature.stepLeft()`, `Creature.stepRight()`, `Creature.stepUp()`, `Creature.stepDown()`
- питания: `Creature.eatLeft()`, `Creature.eatRight()`, `Creature.eatUp()`, `Creature.eatDown()`
- бинарные операции: `xor`, `or`, `and`, `rshift`, `lshift`, `not`
- тригонометрия: `sin`, `cos`, `tan`, `cot`, `sec`, `csc`
- разные типы: `Bool`, `Float64`, `String`, `Int8`, `Int16`, `Int64`
- работа с памятью: `toMem()`, `fromMem()`
- определение своих и чужих параметров: `myX()`, `myY()`, `energyLeft()...energyDown()`, `idLeft()...idDown()`, `codeSizeLeft()...codeSizeDown()`, `cloneEnergyPercentLeft()...cloneEnergyPercentDown()`
- возможность примитивного зрения: `lookAt(x,y)`
- элементы языка Julia: циклы - `for`, переменные, функции, условия - `if`

Теперь, когда мы знаем чем именно орудует сервер, давайте опишем общую последовательность действий при его запуске:

1. запускаем сервер
2. считываем параметры командной строки
3. если нет сохраненных бекапов, создаем случайную популяцию исходя из настроек, иначе загружаем все из последнего бекапа
4. запускаем TCP сервер
5. создаем 2D мир
6. создаем "зеленый поток" для каждого организма и запускаем виртуальный процессор для их выполнения
7. запускаем основной цикл где мы:
  - переключаемся между организмами (псевдо параллельность)
  - обновляем их энергию
  - вносим мутации
  - убиваем самых слабых либо состарившихся
  - периодически сохраняем бекапы
  - проверяем не закончилась ли энергия в 2D мире и, если нужно, "добрасываем" её

#### jevo организм
Давайте поговорим о самих организмах. Как вы помните - это разноцветные точки (кроме зеленых) представленные небольшой программой на языке Julia. Центральным понятием в жизни любого цифрового существа является энергия. Если она заканчивается - организм умирает. Также, смерть наступает в результате старости. Поэтому, отбор уничтожает тех, кто не смог "найти" пропитание (эту функцию выполняет сервер). Напротив, те у кого энергии хоть отбавляй, имеют значительно больший шанс завести потомство. Почему? Потому что, система выбирает с большей вероятностью именно их для создания "детей". Этот факт имеет важные последствия для популяции. Если у небольшой группы организмов появляется признак, который дает им возможность быстрее находить и "съедать" энергию, чем другие - то эти организмы вытесняют всех остальных. Хорошим примером из нашей жизни являемся мы - люди. Мы вытеснили и уничтожили очень многих животных из их привычных ареалов. Таким образом формируется вектор развития всей популяции - "найти, как можно больше еды".
На системном уровне организм - это структура данных с различными свойствами. Давайте подробнее опишем из чего он состоит:
- Уникальный идентификатор. Этот идентификатор используют функции `Creature.idLeft()...Creature.idDown()`. Теоретически, так они могут узнавать своих сородычей или врагов находящихся слева, справа, сверху и снизу.
- Код. [AST](https://en.wikipedia.org/wiki/AST) дерево с нескомпилированным кодом организма. Именно в него вносятся мутации.
- Размер кода. Размер считается в строках.
- Мета информация о коде. Техническая информация об AST.
- Вероятностные коэффициенты. Это массив чисел (например: `[50,100,1,0,1,1,1,1,1,1]`), который используется для создания вероятностей появления различных видов мутаций. Каждая из позиций определяет определенный вид мутации. Например число 100 означает, что количество изменений будет наиболее частым, нежели добавлений (50) или удалений (1). Полная расшифровка всех чисел: `[добавление,изменение,удаление,маленькое-изменение,процент-мутаций-при-клонировании,период-мутаций,процент-мутаций-с-периодом,мутация-этого-массива,процент-отдачи-энергии-при-клонировании,процент-мусора]`. Полную расшифровку типов мутаций я опишу в другой статье.
- Процент мутаций, которые будут добавлены после деления. По сути - это то сколько мутаций получит ребенок после рождения. Если это значение высоко (близко к 100), то будет добавлено столько мутаций, сколько строк кода содержит организм.
- Период времени для периодических мутаций. Как часто будут вноситься периодические мутации. Например, каждые 1000 итераций.
- Процент от размера кода периодических мутаций. По сути - это количество мутаций, которые случатся по происхождению времени из предыдущего пункта. Оно зависит от размера кода. Чем длиннее код, тем больше мутаций будет внесено.
- Количество энергии. Именно поэтому, система определяет кто самый успешный.
- Цвет. Меняется каждый раз, когда организм набирает определенное количество мутаций. К примеру можно менять цвет каждые 50 мутаций.
- Внутренняя память. Сейчас работает, как MAP. Организмы могут записывать и считывать числа из\в нее.
- Позиция (x,y) в 2D мире.
- Возраст. Оператор может задать возраст организма при достижении которого он умирает и удаляется из системы.
- Процент энергии, которая будет отдана ребенку после деления. Этим организм регулирует сколько энергии получит его ребенок.
- Процент хранения мусора. [Мусор](https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%81%D0%BE%D1%80%D0%BD%D0%B0%D1%8F_%D0%94%D0%9D%D0%9A) - это случайный код, который добавляется мутатором. Из него иногда получаются новые важные функции. Так, в одной из моих популяций возникло "условное поведение". Читай об этом [здесь](https://jevosite.wordpress.com/2016/12/30/%d1%80%d0%be%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d1%83%d1%81%d0%bb%d0%be%d0%b2%d0%bd%d0%be%d0%b3%d0%be-%d0%bf%d0%be%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f/) и [здесь](https://jevosite.wordpress.com/2016/12/31/%d1%80%d0%be%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d1%83%d1%81%d0%bb%d0%be%d0%b2%d0%bd%d0%be%d0%b3%d0%be-%d0%bf%d0%be%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f-2/).
- Количество мутаций с рождения. Просто счетчик мутаций. Используется в статистике.

Также, каждый организм представлен своим собственным кодом, который полностью решает, чем занято виртуальное животное. Этот самый код дописывается системой на основе [генетического алгоритма](https://ru.wikipedia.org/wiki/%D0%93%D0%B5%D0%BD%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC) (ГА). Мы говорили о нем в предыдущих разделах. В общем, ГА ищет оптимальное решение для нашей задачи поиска еды. Причем едой могут быть как энергетические блоки (зеленые точки), так и сами организмы. Пока все понятно? Окей, тогда пришло время глянуть на систему в динамике (смотреть на полный экран и в 1080, иначе ничего не увидите):

[![jevo](https://dl.dropboxusercontent.com/u/45900723/jevo/jevo-1.1-rc1.jpg)](https://youtu.be/79Fh7PNT6qY)

Что же мы увидели? Там было много зеленых точек, которые не двигались (это энергия, которую нужно съесть). Около пяти фиолетовых островков - это один из видов цифровых организмов, которые выжидают тех, кто постоянно двигается и съедают их при приближении. И много движущихся с разной траекторией точек (другие виды организмов - назовем их "бегунцы"). Стоит пояснить, что это результат примерно двухдневного запуска системы. Причем я никак не влиял на процесс их обучения и никак не вмешивался. По сути, мы видим, что эволюционировали две стратегии: "жди и кусай" и "беги и кусай". Давайте ответим на такие вопросы: "Как именно они двигаются?", "Какого размера и какой именно код эволюционировал?", "Почему они все это делают?". Итак, по порядку:
- "Как они двигаются?". В основном "Бегунцы" двигаются по диагонали - потому что она дает возможность "просканировать" все поле и найти максимум энергии. Представьте, что будет, если кто-то двигается только вверх? Рано или поздно он проел бы длинный коридор в котором бы кончилась энергия. Поэтому, диагональное движение имеет значительное преимущество перед прямолинейным. Вторым важным фактом является так называемая форма движения. Они не просто двигаются по диагонали. Их движение напоминает шатающегося влево-вправо человека. Почему это так? Потому что обычное прямолинейное диагональное движение не даст вам возможности выбраться из "засад" созданных другим видом организмов (помните "жди и кусай"). Они формируют так называемые "островки смерти" (в видео выше - это фиолетовые точки). Попав в такой островок организм будет съеден по прошествии некоторого времени. Вот так:
<p align="center">
  <img alt="Walking strategy" src="https://dl.dropboxusercontent.com/u/45900723/jevo/walk-direct.png">
  <img alt="Walking strategy" src="https://dl.dropboxusercontent.com/u/45900723/jevo/walk-random.png">
</p>
Рисунки выше показывают две стратегии при встрече с организмами-недругами. Белые стрелки - это траектория движения во время одной итерации (одного выполнения кода организма). Синие квадратики - это "бегунцы". Красные - "организмы охотники".
На рисунке слева вы видите, как "бегунец" (синий организм с прямолинейным диагональным движением) попадает в "засаду", созданную "охотниками". Так как в его коде не предусмотрено смены траектории - он точно будет съеден. С другой стороны, на правом рисунке, Вы можете видеть, как синие организмы "научились" избегать "островки смерти" - обходя их. Разумеется при столкновении с таким островком организмы - недруги откусят немного от жертвы. Но тем не менее окончательно, они ее не убьют. Эту борьбу вооружений мы также наблюдаем в биологической природе. Например, между охотниками и жертвами. Именно поэтому гепард и антилопа - отличные спринтеры...
Стоит также отметить, что данная стратегия движения появилась не сразу. В самом начале, организмы двигались очень примитивно (а при старте системы - они вообще стояли на месте). Прямолинейно вправо, влево, вниз или вверх. Немного позже, появилось диагональное движение. И уже после этого появились приведенные на рисунке "шатания".
- В основном, программы короткие. Почему? Потому что большие программы тратят больше энергии на свое содержание и тем самым энергонеэффективны. Если программа большая, то она должна быть "оптимальна". Ее код должен оправдывать такой размер. В некотором смысле она должна быть умней или хитрей своих коротких сородичей. Пример программ будет приведен чуть ниже в этой статье.
- Почему они это делают? Ответ прост: потому, что их код управляет их поведением полностью.

Мы ведь все тут программисты, правда? Тогда, взглянем на код "затаившегося охотника":
```julia
function (c::Config.ConfigData,o::Creature.Organism)
    local var_1::Int8 = 110
    Creature.eatUp(c,o,Int(var_1))
    Creature.eatDown(c,o,Int(var_1))
    Creature.eatDown(c,o,Int(var_1))
    Creature.eatUp(c,o,Int(var_1))
    return true
end
```

Следует также упомянуть, что все начиналось с пустого кода, а если быть точным, то с пустой функции. А пример выше, сформировался в результате нескольких десятков тысяч поколений. Что он делает? Эти функции `Creature.eatUp()` и `Creature.eatDown()` означают "укуси" сверху и снизу относительно собственной позиции. Последний параметр, `var_1` - это то, сколько "откусить". Он равен 110. По сути, он просто сидит и ждет пока к нему кто-то подползет, после чего, жертва будет съедена. Более того. Такие организмы, собираются в небольшие кучки из которой жертве будет выбраться тем сложнее, чем больше охотников в ней будет. Мы называли их "островки смерти". Вы спросите: "Откуда организм знает, какие функции нужно вызывать?" или "Какие функции вообще существуют?". Мутации (или базовые элементы из которых "пишется" код) формируются на основе предустановленного списка, о котором мы говорили немного выше (помните те 54 элемента). Элементы из этого набора вставляются в код случайным образом в разные места по прохождению определенного времени. Как часто мутировать решает сам организм. На самом деле мутации бывают нескольких видов. Основные это: добавление, удаление и модификация кода. Окей, а что по поводу тех "бегунцов", которые все время двигаются? Пожалуйста:

```julia
function (c::Config.ConfigData,o::Creature.Organism)
    local var_1::Int8 = 110
    Creature.stepRight(o)
    Creature.eatRight(c,o,Int(var_1))
    Creature.stepRight(o)
    Creature.eatRight(c,o,Int(var_1))
    Creature.eatDown(c,o,Int(var_1))
    return true
end
```

В этом листинге, Вы видите другую стратегию поведения - "беги и кусай". Причем очень важно то, что кусать нужно перед собой. Иначе, наткнувшись на препятствие, организм застрянет и скорей всего умрет от недостатка энергии. Все те, кто так делал, давно вымерли. Небольшим бонусом здесь является "откусывание" снизу - `Creature.eatDown()`. Оно дает небольшое преимущество перед теми, кто кусает только впереди себя, так как, иногда под тобой может лежать энергия или сосед. Я намеренно показываю простые примеры, чтобы не забивать ваши лобные доли всякой дрянью :) В реальности, как наш ДНК, так и код организмов невероятно сложны. Но именно этого мы и хотим, ведь правда? :) Окей, давайте посмотрим еще немного видео. В нем я покажу, как формируются ["переходные формы"](https://ru.wikipedia.org/wiki/%D0%9F%D0%B5%D1%80%D0%B5%D1%85%D0%BE%D0%B4%D0%BD%D0%B0%D1%8F_%D1%84%D0%BE%D1%80%D0%BC%D0%B0) и что вообще эволюционировало у меня на домашнем компьютере (смотреть до 34:40):

[![jevo](https://dl.dropboxusercontent.com/u/45900723/jevo/jevo-youtube-me.png)](https://youtu.be/tF77s_4RA08?t=1705)

#### jevo статистика
В видео презентации, я показывал переходные формы и рассказывал, как эволюционировало движение цифровых организмов. Но что, если взглянуть на этот процесс с высоты птичьего полета и постараться увидеть общую картину? Именно для этого система работала целую неделю в режиме сбора статистики. На её основе были построены графики того, что происходило "под капотом". Горизонталь - это возраст популяции. Вертикаль - значение текущего параметра(ов). Давайте посмотрим:

![Chart moving and eating](https://dl.dropboxusercontent.com/u/45900723/jevo/chart-move-eat.png)

Этот график показывает, как менялись частоты вызовов функций движения и еды у лучших организмов популяции. По сути, мы видим, что обе функции росли со временем. Примечательно, что рост наблюдается у большинства параметров системы. Взгляните на частоту использования функций:

![Chart of functions](https://dl.dropboxusercontent.com/u/45900723/jevo/chart-funcs.png)

Красный график явно больше синего, почему? Потому что это количество вызовов функции. Он логически должен быть больше их количества (объявлений). И, пожалуй, последний график на сегодня - использование циклов и условных конструкций в коде:

![Chart of if, for operators](https://dl.dropboxusercontent.com/u/45900723/jevo/chart-if-for.png)

## Результат
#### У тебя есть план, мистер Фикс?
Конечно у меня есть план:
- Упершись в производительность моих домашних компьютеров я вынужден написать распределенную систему для "больших" вычислений, тогда можно будет говорить о действительно сложном поведении и все станет на много интересней
- Усложнить мир организмов: добавить день и ночь, камни, третье измерение и другие природные феномены нашего мира. Это заставит организмы вести себя более сложно.
- Добавить примитивы для "общения".
- Реализовать [crossover](https://en.wikipedia.org/wiki/Crossover_(genetic_algorithm)).
- Усложнить язык, на котором пишется код организмов. Сейчас это только 54 элемента языка.
- Добавить третье измерение. Сделать из 2D, 3D мир.
- Провести оптимизацию системы.
- Если получится, то засунуть лучший код в ардуино робота, как [сделали](https://www.youtube.com/watch?v=YWQnzylhgHc) эти ребята.
- и т.д.

#### Чего я ожидаю от системы?
- В общем, я жду значительного усложнения. Рано или поздно оно должно появиться. Например - это условное поведение: если справа другой организм, убегай; если возле тебя еда, кусай и т.д.
- Появление примитивного зрения. Это очень важное эволюционное приобретение, сами понимаете ;)
- Появление примитивной коммуникации.
- Кооперация.
- Разнообразие цифровых организмов.

#### Чего я достиг?
Пока не много. И это только потому, что производительность моего PC очень низкая для такой задачи. А еще у меня очень мало свободного времени :( Но тем не менее, проект растет и усложняется. На данном этапе я работаю над версией [1.1-rc1](https://github.com/tmptrash/jevo/milestone/4). После выйдет [1.1](https://github.com/tmptrash/jevo/milestone/2). Вся разработка ведется в [github](https://github.com/). Так вот, список:
- Максимально длинный код, который эволюционировал составлял 370 строк. Его особенностями были: оптимизированность, реиспользование функций, использование циклов и т.д. Смотри [здесь](https://github.com/tmptrash/jevo/blob/v1.1-rc1/store/generated-code/generated-code-13-final.jl) похожие организмы.
- Появились примитивные алгоритмы сложного движения (смотри [презентацию](https://www.dropbox.com/s/fpffw9nga53k573/jevo.pptx?dl=0) для деталей) при котором вероятность нахождения энергетических точек значительно увеличивается.
- Эволюционировали две противоборствующие стратегии: "бегунцы" и "затаившиеся охотники", которые борются за ресурсы. Причем интересно то, что одни хищники, а другие, по сути - травоядные :)
- Появилась простейшая [кооперация](https://www.youtube.com/watch?v=74Qxo3epWPI), где от того, как двигается твой сосед зависит сколько энергии ты найдешь. Если бы они двигались по одиночке, это было бы не так эффективно.
- Во время написания этой статьи появился первый организм, который научился выполнять примитивные логические действия! Для меня это был настоящий праздник! :) Давайте взглянем на ту часть его кода, которая выполняет условную конструкцию:
```julia
    ...
    var_33 = Creature.energyDown(o)       # взять количество энергии "под собой" 
    var_20 = var_20 * var_20              # мусор
    var_2 = if 127 >= abs(var_2)          # мусор
            Int8(var_2)
        else
            127
        end
    var_2 = if 127 >= abs(var_33)         # если снизу энергия/другой организм, то var_2 = 127 иначе var_2 = 0
            Int8(var_33)
        else
            127
        end
    for i::Int8 = 1:div(var_2,16)         # если var_2 !== 0 (снизу кто-то есть) то крутимся здесь 7 раз
        local var_36::Int8 = 29
        var_36 = if 127 >= abs(1571)      # var_36 = 127 всегда
                Int8(1571)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_36)) # откусываем 127 "энергетических юнитов" от соседа снизу
    end
    ...
```
В двух словах, о том, что здесь происходит. Сначала наш организм проверяет есть ли что-то под ним с помощью функции `Creature.energyDown()`. Она возвращает количество энергии (это может быть как обычная энергия, так и другой организм). И если это число не ноль, то организм входит в цикл, где он 7 раз откусывает от жертвы 127 энергетических юнитов. Если же под ним ничего нет, то в цикл мы не заходим и выполнение кода продолжается. Если объяснить это более простыми словами то выходит вот что: если под нами кто-то есть, то кусай его 800 раз. Прекрасно :)
Как я выяснил позже, на основе этого алгоритма родился как минимум еще один. Вы можете прочесть о нем [здесь](https://jevosite.wordpress.com/2016/12/31/%d1%80%d0%be%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d1%83%d1%81%d0%bb%d0%be%d0%b2%d0%bd%d0%be%d0%b3%d0%be-%d0%bf%d0%be%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f-2/).

#### Team! Team! Team!
![Team! Team! Team!](https://dl.dropboxusercontent.com/u/45900723/jevo/team.png)

Если Вы заинтересованы в такого рода экспериментах, Вы биолог или просто программист, которому интересно, пишите мне на [email](mailto:deadbrainman@gmail.com) и мы объединим наши усилия для создания своего [skynet](https://ru.wikipedia.org/wiki/%D0%A1%D0%BA%D0%B0%D0%B9%D0%BD%D0%B5%D1%82) ;)

#### Материалы:
- [презентация](https://www.dropbox.com/s/fpffw9nga53k573/jevo.pptx?dl=0)
- [видео презентация](https://www.youtube.com/watch?v=tF77s_4RA08)
- [статья - комикс](http://lviv.com/lab/yak-stvoryty-shtuchnyj-intelekt-bez-nejronnyh-merezh-reyestratsiyi-i-sms) о jevo
- мой [блог](https://jevosite.wordpress.com/)
- мой [youtube канал](https://www.youtube.com/playlist?list=PL1NiKjXMaBimPuybPIXkVuO1MYy53XcdW)
- [я сам](https://www.facebook.com/tmptrash)
- [группа](https://www.facebook.com/birthofcomplexity) в facebook, посвященная jevo
- [код проекта](https://github.com/tmptrash/jevo/tree/v1.1-rc1)

##### Продолжение следует...
