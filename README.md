# intervaleFirstTask

Сделайте задание следующего плана: создайте проект с MRR (ручное управление памяти.

1. Cоздайте класс User 
  * со следующими свойствами
    -(atomic, retain) NSNumber *userId; // уникальный идентификатор пользователя, переопределить get/set методы
    - (nonatomic, retain) NSMutableString *firstName; // переопределить get/set методы
    - (nonatomic, copy) NSMutableString *lastName; // переопределить get/set методы
    - (nonatomic, retain) NSDate *birthDate; 
    - (atomic, copy) NSArray *followers; // содержит экземпляры Friend // переопределить get/set методы
    - (nonatomic, copy) NSArray *following; // содержит экземпляры Friend
    - (nonatomic, retain) NSDictionary *address; // map, содержащий информации о city, country, postCode 
    - (nonatomic, copy, readonly) NSString *city; // на основе инфы в address
    - (nonatomic, copy, readonly) NSString *country; // на основе инфы в address
    - (nonatomic, assign) BOOL contactUser; // сделать readonly, сделать get-метод isContactUser  
                                            // переопределить get/set методы 
                                            // допустим, что есть модель описывающая какие пользователи в контактной книги

  * создать методы инициализации класса c
    - userId
    - lastName и firstName
    - на свое усмотрение методы для создания экземпляра и специализированных конструкторов
    
  * реализовать dealloc 
  
  * создать методы
    - printFullName // выводит на консоль имя
    - addFollower // добавление friend в follower
    - removeFollower // удаление friend в follower
    - isFollowerPerson:(Person *)person; // возвращает bool value 
    - addFollowing // добавление friend в following
    - removeFollowing // удаление friend в following 
    - isFollowingPerson:(Person *)person;  // возвращает bool value 
    
  * переопределить метод description (такой метод есть у NSObject) и вывести все значения
  
  
2. Разбить класс user на категории на свое усмотрение


3. Создать субкласс Friend от User

  * добавить свойство
    - (nonatomic, copy) NSNumber *blocked;

  * добавить методы
    - isBlocked // возвращает BOOL
    
  * переопределить метод description (такой метод есть у NSObject) и вывести все значения
  
  
4. Реализовать категорю Address с методами

  * compositeAddress // возвращает  “countryName, city”, если  countryName не задан то city, 
  если city не задан то countryName, иначе “unknown”
  
  
5. Создать протокол PersonBirthday

  * isTodayBirthDate // required, возвращает bool
  
  * setBirthDateFromString // required, задаем значение birthDate из строки
  
  * happyBirthday // optional, поздравляем с ДР
  
  
6. Сделать категорию определяющий протокол и его методы PersonBirthday


7. Поиграйтесь с retaint count, для вывода используйте CFGetRetainCount


8. В main 

  * создайте NSArray экземпляров Person, 10 экземпляров 
  
  * каждый из экземпляров имеет различное число follower/following
  
  * информация содержащаяся в address может совпадает
  
  
9. Ответить мне на вопросы

  * что происходит с объектами добавляемыми в NSArray - assign, retain или copy
  
  * что происходит с объектами добавляемыми в NSDictionary, а точнее с key и value - assign, retain или copy
  
  * что происходит при редактирование firstName и lastName
