DROP TABLE Responses;
DROP TABLE RequestsYur;
DROP TABLE RequestsPhys;
DROP TABLE Requests;
DROP TABLE Regions;
DROP TABLE SocialPols;
DROP TABLE TypesResp;
DROP TABLE Categories;
DROP TABLE TypesReq;
DROP TABLE Users;
DROP TABLE Keywords;

CREATE TABLE Keywords
(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Keyword TEXT NOT NULL,
  UNIQUE (Keyword)
);
INSERT INTO Keywords (Keyword) VALUES ("ненадлежащ");
INSERT INTO Keywords (Keyword) VALUES ("плох");
INSERT INTO Keywords (Keyword) VALUES ("недоста");
INSERT INTO Keywords (Keyword) VALUES ("мал");
INSERT INTO Keywords (Keyword) VALUES ("перепутал");
INSERT INTO Keywords (Keyword) VALUES ("грязн");
INSERT INTO Keywords (Keyword) VALUES ("потеря");
INSERT INTO Keywords (Keyword) VALUES ("утеря");
INSERT INTO Keywords (Keyword) VALUES ("сильн");
INSERT INTO Keywords (Keyword) VALUES ("ложн");
INSERT INTO Keywords (Keyword) VALUES ("искаж");
INSERT INTO Keywords (Keyword) VALUES ("намер");
INSERT INTO Keywords (Keyword) VALUES ("украден");
INSERT INTO Keywords (Keyword) VALUES ("украл");
INSERT INTO Keywords (Keyword) VALUES ("обман");
INSERT INTO Keywords (Keyword) VALUES ("взятк");
INSERT INTO Keywords (Keyword) VALUES ("коррупци");
INSERT INTO Keywords (Keyword) VALUES ("груб");
INSERT INTO Keywords (Keyword) VALUES ("очеред");
INSERT INTO Keywords (Keyword) VALUES ("долг");
INSERT INTO Keywords (Keyword) VALUES ("медлен");
INSERT INTO Keywords (Keyword) VALUES ("безуспешн");
INSERT INTO Keywords (Keyword) VALUES ("медицинск");
INSERT INTO Keywords (Keyword) VALUES ("услуг");
INSERT INTO Keywords (Keyword) VALUES ("управлени");
INSERT INTO Keywords (Keyword) VALUES ("систем");
INSERT INTO Keywords (Keyword) VALUES ("здравоохранени");
INSERT INTO Keywords (Keyword) VALUES ("некачеств");
INSERT INTO Keywords (Keyword) VALUES ("качеств");
INSERT INTO Keywords (Keyword) VALUES ("государственно-частн");
INSERT INTO Keywords (Keyword) VALUES ("партнерств");
INSERT INTO Keywords (Keyword) VALUES ("удовлетворен");
INSERT INTO Keywords (Keyword) VALUES ("пациент");
INSERT INTO Keywords (Keyword) VALUES ("специализированн");
INSERT INTO Keywords (Keyword) VALUES ("офтальмологическ");
INSERT INTO Keywords (Keyword) VALUES ("помощь");
INSERT INTO Keywords (Keyword) VALUES ("кератопластик");
INSERT INTO Keywords (Keyword) VALUES ("заболевани");
INSERT INTO Keywords (Keyword) VALUES ("периферическ");
INSERT INTO Keywords (Keyword) VALUES ("артери");
INSERT INTO Keywords (Keyword) VALUES ("сердечно-сосудист");
INSERT INTO Keywords (Keyword) VALUES ("хирург");
INSERT INTO Keywords (Keyword) VALUES ("первичн");
INSERT INTO Keywords (Keyword) VALUES ("специализированн");
INSERT INTO Keywords (Keyword) VALUES ("медико-санитарн");
INSERT INTO Keywords (Keyword) VALUES ("регистр");
INSERT INTO Keywords (Keyword) VALUES ("боль");
INSERT INTO Keywords (Keyword) VALUES ("кислот");
INSERT INTO Keywords (Keyword) VALUES ("вирус");
INSERT INTO Keywords (Keyword) VALUES ("бактер");
INSERT INTO Keywords (Keyword) VALUES ("профилактик");
INSERT INTO Keywords (Keyword) VALUES ("covid-19");
INSERT INTO Keywords (Keyword) VALUES ("ковид");
INSERT INTO Keywords (Keyword) VALUES ("короновирус");
INSERT INTO Keywords (Keyword) VALUES ("здоровь");
INSERT INTO Keywords (Keyword) VALUES ("охран");
INSERT INTO Keywords (Keyword) VALUES ("врач");
INSERT INTO Keywords (Keyword) VALUES ("ошибк");
INSERT INTO Keywords (Keyword) VALUES ("страхован");
INSERT INTO Keywords (Keyword) VALUES ("организаци");
INSERT INTO Keywords (Keyword) VALUES ("протезировани");
INSERT INTO Keywords (Keyword) VALUES ("онкологи");
INSERT INTO Keywords (Keyword) VALUES ("электронн");
INSERT INTO Keywords (Keyword) VALUES ("носит");
INSERT INTO Keywords (Keyword) VALUES ("диагностик");
INSERT INTO Keywords (Keyword) VALUES ("кардиологи");
INSERT INTO Keywords (Keyword) VALUES ("осмотр");
INSERT INTO Keywords (Keyword) VALUES ("профессиональн");
INSERT INTO Keywords (Keyword) VALUES ("заболевани");
INSERT INTO Keywords (Keyword) VALUES ("несчастн");
INSERT INTO Keywords (Keyword) VALUES ("случ");
INSERT INTO Keywords (Keyword) VALUES ("производств");
INSERT INTO Keywords (Keyword) VALUES ("вред");
INSERT INTO Keywords (Keyword) VALUES ("труд");
INSERT INTO Keywords (Keyword) VALUES ("тяжел");
INSERT INTO Keywords (Keyword) VALUES ("сложн");
INSERT INTO Keywords (Keyword) VALUES ("закон");
INSERT INTO Keywords (Keyword) VALUES ("очеред");
INSERT INTO Keywords (Keyword) VALUES ("платн");
INSERT INTO Keywords (Keyword) VALUES ("нарушен");
INSERT INTO Keywords (Keyword) VALUES ("ущерб");
INSERT INTO Keywords (Keyword) VALUES ("медосмотр");
INSERT INTO Keywords (Keyword) VALUES ("отказ");
INSERT INTO Keywords (Keyword) VALUES ("поликлиник");
INSERT INTO Keywords (Keyword) VALUES ("высокотехн");
INSERT INTO Keywords (Keyword) VALUES ("персонал");
INSERT INTO Keywords (Keyword) VALUES ("прием");
INSERT INTO Keywords (Keyword) VALUES ("лист");
INSERT INTO Keywords (Keyword) VALUES ("нетрудоспособ");
INSERT INTO Keywords (Keyword) VALUES ("выдач");
INSERT INTO Keywords (Keyword) VALUES ("продлен");
INSERT INTO Keywords (Keyword) VALUES ("оформлен");

CREATE TABLE Users
(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Login VARCHAR(20) NOT NULL,
  Password VARCHAR(20) NOT NULL,
  SNF VARCHAR(80) NOT NULL,
  SerialPass VARCHAR(4) NOT NULL,
  NumberPass VARCHAR(6) NOT NULL,
  UNIQUE (Login)
);

CREATE TABLE TypesReq
(
   ID INT NOT NULL,
   TypeReq VARCHAR(20) NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO TypesReq (TypeReq) VALUES ("предложение");
INSERT INTO TypesReq (TypeReq) VALUES ("заявление");
INSERT INTO TypesReq (TypeReq) VALUES ("жалоба");
INSERT INTO TypesReq (TypeReq) VALUES ("ходатайство");

CREATE TABLE Categories
(
   ID INT NOT NULL,
   Category VARCHAR(80) NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO Categories (Category) VALUES ("Юридические лица");
INSERT INTO Categories (Category) VALUES ("Юридические лица (малый и средний бизнес)");

CREATE TABLE TypesResp
(
   ID INT NOT NULL,
   TypeResp VARCHAR(20) NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO TypesResp (TypeResp) VALUES ("По электронной почте");
INSERT INTO TypesResp (TypeResp) VALUES ("По почте");

CREATE TABLE SocialPols
(
  ID INT NOT NULL,
  SocialPol VARCHAR(80) NOT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO SocialPols VALUES (25, "Беженцы, вынужденные переселенцы");
INSERT INTO SocialPols VALUES (27, "Безработный");
INSERT INTO SocialPols VALUES (14, "Бывшие несовершеннолетние узники концлагерей");
INSERT INTO SocialPols VALUES (23, "Ветеран боевых действий");
INSERT INTO SocialPols VALUES (7, "Ветераны труда");
INSERT INTO SocialPols VALUES (5, "Другие категории граждан");
INSERT INTO SocialPols VALUES (8, "Инвалиды Великой Отечественной войны");
INSERT INTO SocialPols VALUES (12, "Инвалиды вследствие аварии на ЧАЭС");
INSERT INTO SocialPols VALUES (10, "Инвалиды вследствие военной травмы");
INSERT INTO SocialPols VALUES (11, "Инвалиды с детства");
INSERT INTO SocialPols VALUES (9, "Инвалиды с детства вслед-вии ран-ия,контузии, увеч");
INSERT INTO SocialPols VALUES (20, "Инвалиды труда");
INSERT INTO SocialPols VALUES (26, "Не установлено");
INSERT INTO SocialPols VALUES (17, "Обеспечиваемые домов-интернатов");
INSERT INTO SocialPols VALUES (30, "Организация");
INSERT INTO SocialPols VALUES (21, "Осужденные");
INSERT INTO SocialPols VALUES (1, "Пенсионеры по инвалидности");
INSERT INTO SocialPols VALUES (16, "Пенсионеры по старости");
INSERT INTO SocialPols VALUES (13, "Пострадавшие вследствие аварии на ЧАЭС");
INSERT INTO SocialPols VALUES (19, "Работающие граждане");
INSERT INTO SocialPols VALUES (15, "Реабилитированные и пострадавшие от политрепрессий");
INSERT INTO SocialPols VALUES (4, "Родители детей-инвалидов");
INSERT INTO SocialPols VALUES (22, "Родитель ребенка");
INSERT INTO SocialPols VALUES (29, "Родственник пациента");
INSERT INTO SocialPols VALUES (6, "Родственники умерших");
INSERT INTO SocialPols VALUES (3, "Труженики тыла");
INSERT INTO SocialPols VALUES (2, "Участники Великой Отечественной войны");
INSERT INTO SocialPols VALUES (28, "Учащийся");

CREATE TABLE Regions
(
  ID INT NOT NULL,
  Region VARCHAR(80) NOT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO Regions VALUES (01, "Алтайский край");
INSERT INTO Regions VALUES (03, "Краснодарский край");
INSERT INTO Regions VALUES (04, "Красноярский край");
INSERT INTO Regions VALUES (05, "Приморский край");
INSERT INTO Regions VALUES (07, "Ставропольский край");
INSERT INTO Regions VALUES (08, "Хабаровский край");
INSERT INTO Regions VALUES (10, "Амурская область");
INSERT INTO Regions VALUES (11, "Архангельская область");
INSERT INTO Regions VALUES (12, "Астраханская область");
INSERT INTO Regions VALUES (14, "Белгородская область");
INSERT INTO Regions VALUES (15, "Брянская область");
INSERT INTO Regions VALUES (17, "Владимирская область");
INSERT INTO Regions VALUES (18, "Волгоградская область");
INSERT INTO Regions VALUES (19, "Вологодская область");
INSERT INTO Regions VALUES (20, "Воронежская область");
INSERT INTO Regions VALUES (22, "Нижегородская область");
INSERT INTO Regions VALUES (24, "Ивановская область");
INSERT INTO Regions VALUES (25, "Иркутская область");
INSERT INTO Regions VALUES (26, "Республика Ингушетия");
INSERT INTO Regions VALUES (27, "Калининградская область");
INSERT INTO Regions VALUES (28, "Тверская область");
INSERT INTO Regions VALUES (29, "Калужская область");
INSERT INTO Regions VALUES (30, "Камчатский край");
INSERT INTO Regions VALUES (32, "Кемеровская область");
INSERT INTO Regions VALUES (33, "Кировская область");
INSERT INTO Regions VALUES (34, "Костромская область");
INSERT INTO Regions VALUES (35, "Республика Крым");
INSERT INTO Regions VALUES (36, "Самарская область");
INSERT INTO Regions VALUES (37, "Курганская область");
INSERT INTO Regions VALUES (38, "Курская область");
INSERT INTO Regions VALUES (40, "Город федерального значения Санкт-Петербург");
INSERT INTO Regions VALUES (41, "Ленинградская область");
INSERT INTO Regions VALUES (42, "Липецкая область");
INSERT INTO Regions VALUES (44, "Магаданская область");
INSERT INTO Regions VALUES (45, "Город федерального значения Москва");
INSERT INTO Regions VALUES (46, "Московская область");
INSERT INTO Regions VALUES (47, "Мурманская область");
INSERT INTO Regions VALUES (49, "Новгородская область");
INSERT INTO Regions VALUES (50, "Новосибирская область");
INSERT INTO Regions VALUES (52, "Омская область");
INSERT INTO Regions VALUES (53, "Оренбургская область");
INSERT INTO Regions VALUES (54, "Орловская область");
INSERT INTO Regions VALUES (56, "Пензенская область");
INSERT INTO Regions VALUES (57, "Пермский край");
INSERT INTO Regions VALUES (58, "Псковская область");
INSERT INTO Regions VALUES (60, "Ростовская область");
INSERT INTO Regions VALUES (61, "Рязанская область");
INSERT INTO Regions VALUES (63, "Саратовская область");
INSERT INTO Regions VALUES (64, "Сахалинская область");
INSERT INTO Regions VALUES (65, "Свердловская область");
INSERT INTO Regions VALUES (66, "Смоленская область");
INSERT INTO Regions VALUES (67, "Город федерального значения Севастополь");
INSERT INTO Regions VALUES (68, "Тамбовская область");
INSERT INTO Regions VALUES (69, "Томская область");
INSERT INTO Regions VALUES (70, "Тульская область");
INSERT INTO Regions VALUES (71, "Тюменская область");
INSERT INTO Regions VALUES (73, "Ульяновская область");
INSERT INTO Regions VALUES (75, "Челябинская область");
INSERT INTO Regions VALUES (76, "Забайкальский край");
INSERT INTO Regions VALUES (77, "Чукотский автономный округ");
INSERT INTO Regions VALUES (78, "Ярославская область");
INSERT INTO Regions VALUES (79, "Республика Адыгея");
INSERT INTO Regions VALUES (80, "Республика Башкортостан");
INSERT INTO Regions VALUES (81, "Республика Бурятия");
INSERT INTO Regions VALUES (82, "Республика Дагестан");
INSERT INTO Regions VALUES (83, "Кабардино-Балкарская Республика");
INSERT INTO Regions VALUES (84, "Республика Алтай");
INSERT INTO Regions VALUES (85, "Республика Калмыкия");
INSERT INTO Regions VALUES (86, "Республика Карелия");
INSERT INTO Regions VALUES (87, "Республика Коми");
INSERT INTO Regions VALUES (88, "Республика Марий Эл");
INSERT INTO Regions VALUES (89, "Республика Мордовия");
INSERT INTO Regions VALUES (90, "Республика Северная Осетия-Алания");
INSERT INTO Regions VALUES (91, "Карачаево-Черкесская Республика");
INSERT INTO Regions VALUES (92, "Республика Татарстан (Татарстан)");
INSERT INTO Regions VALUES (93, "Республика Тыва");
INSERT INTO Regions VALUES (94, "Удмуртская Республика");
INSERT INTO Regions VALUES (95, "Республика Хакасия");
INSERT INTO Regions VALUES (96, "Чеченская Республика");
INSERT INTO Regions VALUES (97, "Чувашская Республика - Чувашия");
INSERT INTO Regions VALUES (98, "Республика Саха (Якутия)");
INSERT INTO Regions VALUES (99, "Еврейская автономная область");

CREATE TABLE Requests
(
  NumberReg INT PRIMARY KEY AUTO_INCREMENT, -- Номер регистрации обращения в системе документооборота*
  DateReg DATE NOT NULL -- дата регистрации обращения в системе документооборота*
);

CREATE TABLE RequestsPhys
(
  NumberReq INT PRIMARY KEY AUTO_INCREMENT, -- Уникальный номер обращения в системе документооборота*
  NumberReg INT NOT NULL, -- Номер регистрации обращения в системе документооборота*
  TypeReq INT NOT NULL, -- Вид обращения*
  Surname VARCHAR(20) NOT NULL, -- Фамилия заявителя *
  Name VARCHAR(20) NOT NULL, -- Имя заявителя *
  Fathername VARCHAR(20), -- Отчество заявителя
  SocialPol INT NOT NULL, -- Социальное положение*
  Phone TEXT, -- Телефон заявителя. Может быть несколько записей
  TypeResp INT, -- Вид ответа (по электронной почте или по бумажной почте)
  Email TEXT, -- Электронная почта заявителя. Может быть несколько записей
  PostIndex VARCHAR(6), -- Почтовый индекс
  Region INT NOT NULL, -- Регион обращения*. Код по справочнику ОКАТО
  District VARCHAR(40), -- Район
  Point VARCHAR(40), -- Населенный пункт
  StreetHouseFlat VARCHAR(40), -- Улица, дом, квартира
  TextReq TEXT NOT NULL, -- Текст обращения*
  FileReq TEXT, -- Файлы обращения (сканы, текстовые документы (word, txt, html), аудиоматериалы)
  FOREIGN KEY (NumberReg) REFERENCES Requests(NumberReg),
  FOREIGN KEY (TypeReq) REFERENCES TypesReq(ID),
  FOREIGN KEY (TypeResp) REFERENCES TypesResp(ID),
  FOREIGN KEY (SocialPol) REFERENCES SocialPols(ID),
  FOREIGN KEY (Region) REFERENCES Regions(ID)
);

CREATE TABLE RequestsYur
(
  NumberReq INT PRIMARY KEY AUTO_INCREMENT, -- Уникальный номер обращения в системе документооборота*
  NumberReg INT NOT NULL, -- Номер регистрации обращения в системе документооборота*
  TypeReq INT NOT NULL, -- Вид обращения*
  Category INT NOT NULL, -- Категория бизнеса*
  Name VARCHAR(20) NOT NULL, -- Название организации*
  OGRN VARCHAR(20) NOT NULL, -- ОГРН/ОГРНИП*
  INN VARCHAR(20), -- ИНН
  TypeResp INT, -- Вид ответа (по электронной почте или по бумажной почте)
  Email TEXT, -- Электронная почта заявителя. Может быть несколько записей
  Phone TEXT, -- Телефон заявителя. Может быть несколько записей
  Region INT NOT NULL, -- Регион обращения*. Код по справочнику ОКАТО
  PostIndex VARCHAR(6), -- Почтовый индекс
  TextReq TEXT NOT NULL, -- Текст обращения*
  FileReq TEXT, -- Файлы обращения (сканы, текстовые документы (word, txt, html), аудиоматериалы)
  FOREIGN KEY (NumberReg) REFERENCES Requests(NumberReg),
  FOREIGN KEY (TypeReq) REFERENCES TypesReq(ID),
  FOREIGN KEY (Category) REFERENCES Categories(ID),
  FOREIGN KEY (TypeResp) REFERENCES TypesResp(ID),
  FOREIGN KEY (Region) REFERENCES Regions(ID)
);

CREATE TABLE Responses
(
  NumberResp INT PRIMARY KEY AUTO_INCREMENT, -- Порядковый номер ответа*
  -- NumberReg INT NOT NULL, -- номер регистрации ответа (каждый ответ имеет свой номер регистрации)*
  DateReg DATE NOT NULL, -- дата регистрации ответа (каждый ответ имеет свою дату регистрации)*
  NumberReq INT NOT NULL, -- Уникальный номер обращения в системе документооборота*
  SNFIsp VARCHAR(80) NOT NULL, -- ФИО исполнителя (тот кто готовил ответ или определил, что обращение должно обрабатываться вне системы)*
  Address VARCHAR(80), --  Почтовый адрес ответа
  Email VARCHAR(40), -- Электронный адрес ответа
  SNFPol VARCHAR(80), -- ФИО получателя
  FileResp VARCHAR(40), -- Файл ответа (в формате PDF)
  MetaInf TEXT, -- Прочая мета информация
  FOREIGN KEY (NumberReq) REFERENCES Requests(NumberReg)
);
