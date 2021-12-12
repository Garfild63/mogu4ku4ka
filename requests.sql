DROP TABLE Responses;
DROP TABLE RequestsYur;
DROP TABLE RequestsPhys;
DROP TABLE Requests;
DROP TABLE Types;
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
INSERT INTO Keywords (Keyword) VALUES ("несчастн");
INSERT INTO Keywords (Keyword) VALUES ("случ");
INSERT INTO Keywords (Keyword) VALUES ("производств");
INSERT INTO Keywords (Keyword) VALUES ("вред");
INSERT INTO Keywords (Keyword) VALUES ("труд");
INSERT INTO Keywords (Keyword) VALUES ("тяжел");
INSERT INTO Keywords (Keyword) VALUES ("сложн");
INSERT INTO Keywords (Keyword) VALUES ("закон");
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
INSERT INTO Users VALUES (0, 'admin', 'sabina83', 'Иванов Иван Иванович', 0000, 000000);
INSERT INTO Users VALUES (1, 'Garfild63', 'sabina83', 'Колесников Антон Александрович', 1234, 123456);

CREATE TABLE TypesReq
(
   ID INT PRIMARY KEY AUTO_INCREMENT,
   TypeReq VARCHAR(20) NOT NULL
);
INSERT INTO TypesReq (TypeReq) VALUES ("предложение");
INSERT INTO TypesReq (TypeReq) VALUES ("заявление");
INSERT INTO TypesReq (TypeReq) VALUES ("жалоба");
INSERT INTO TypesReq (TypeReq) VALUES ("ходатайство");

CREATE TABLE Categories
(
   ID INT PRIMARY KEY AUTO_INCREMENT,
   Category VARCHAR(80) NOT NULL
);
INSERT INTO Categories (Category) VALUES ("Юридические лица");
INSERT INTO Categories (Category) VALUES ("Юридические лица (малый и средний бизнес)");

CREATE TABLE TypesResp
(
   ID INT PRIMARY KEY AUTO_INCREMENT,
   TypeResp VARCHAR(20) NOT NULL
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

CREATE TABLE Types
(
  ID INT NOT NULL,
  Type_ TEXT NOT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO Types VALUES (0, "В соответствии со ст.15 Федерального закона от 21.11.2011 № 323-ФЗ «Об основах охраны здоровья 
    граждан в Российской Федерации» (далее - Закон) органам государственной власти субъектов Российской Федерации 
    передано полномочие по  лицензированию медицинской деятельность медицинских организаций в субъекте Российской 
    Федерации (за исключением медицинских организаций, подведомственных федеральным органам исполнительной власти, 
    государственным академиям наук, медицинских и иных организаций, осуществляющих деятельность по оказанию 
    высокотехнологичной медицинской помощи). 

    В соответствии со ст.16 Закона, вопросы организации оказания населению субъекта Российской Федерации медицинской 
    помощи в медицинских организациях субъекта Российской Федерации отнесены к полномочиям органов государственной 
    власти субъектов Российской Федерации в сфере охраны здоровья. 

    В соответствии со ст.89 Закона органы государственной власти субъектов Российской Федерации в сфере охраны 
    здоровья осуществляют ведомственный контроль качества и безопасности медицинской деятельности в подведомственных 
    им органах и организациях посредством осуществления проверок, в том числе соблюдения медицинскими организациями 
    порядков оказания медицинской помощи и стандартов медицинской помощи. 
    
    Таким образом, обращения, основанием для которых служат факты ненадлежащей, по мнению заявителя, организации и 
    качества оказания медицинской помощи в муниципальной или государственной медицинской организации субъекта 
    Российской Федерации целесообразно направлять для рассмотрения по компетенции в орган государственной власти 
    субъекта Российской Федерации в сфере охраны здоровья."); -- poorquality_medical_care
INSERT INTO Types VALUES (1, "Права потребителя медицинских услуг, в том числе оказываемых негосударственными медицинскими 
    организациями, регулируются требованиями Закона Российской Федерации от 07.02.1992 № 2300-1 «О защите прав 
    потребителей» и постановлением Правительства Российской Федерации от 04.10.2012 № 1006 «Об утверждении Правил 
    предоставления медицинскими организациями платных медицинских услуг». 

    В соответствии с постановлением Правительства Российской Федерации от 30.06.2004 № 322 «Об утверждении Положения 
    о Федеральной службе по надзору в сфере защиты прав потребителей и благополучия человека» рассмотрение обращений, 
    содержащих сведения о нарушениях медицинскими организациями условий предоставления платных медицинских услуг 
    отнесено к компетенции Федеральной службы по надзору в сфере защиты прав потребителей и благополучия человека (
    Роспотребнадзора)."); -- paid_medical_services
INSERT INTO Types VALUES (2, "В соответствии с Положением о Федеральной службе по надзору в сфере здравоохранения, утвержденным 
    постановлением Правительства Российской Федерации от 30.06.2004 № 323, к компетенции Росздравнадзора относится 
    контроль за порядком проведения медицинских экспертиз. 

    На осуществление экспертной деятельности Росздравнадзор не уполномочен. 

    В соответствии с Федеральным законом от 31.05.2001 № 73-ФЗ «О государственной судебно-экспертной деятельности в 
    Российской Федерации» назначение и производство судебно-медицинских экспертиз осуществляется на основании 
    определения суда, постановления судьи, лица, производящего дознание, следователя. 

    В случае возникновения у участников уголовного или гражданского процесса вопросов по производству экспертизы, 
    жалоб на экспертов, для их разрешения, в т.ч. и в целях назначения повторной судебно-медицинской экспертизы, 
    следует обращаться к соответствующим лицам, назначившим данную экспертизу. 

    Установление степени вины и определение меры ответственности медицинских работников относится к компетенции 
    судебно-следственных органов."); -- poorquality_medical_care_harm_health
INSERT INTO Types VALUES (3, "Вам следует обращаться в соответствующий федеральный орган исполнительной власти, соответствующую 
    академию наук, либо в территориальный орган Федеральной службы по надзору в сфере здравоохранения субъекта 
    Российской Федерации, на территории которого расположена данная медицинская организация."); -- refusal_hospital
INSERT INTO Types VALUES (4, "Вам следует обращаться в администрацию данной медицинской организации либо в органы государственной 
    власти субъекта Российской Федерации в сфере охраны здоровья, на территории которого расположена медицинская 
    организация. 

    Прикрепление пациентов к поликлинике регламентируется территориальной программой государственных гарантий 
    бесплатного оказания гражданам медицинской помощи в субъекте Российской Федерации, утвержденной органом 
    государственной власти субъекта Российской Федерации."); -- refusal_hospital_polyclinic
INSERT INTO Types VALUES (5, "В соответствии со ст.16  Федерального закона от 21.11.2011 № 323-ФЗ «Об основах охраны здоровья 
    граждан в Российской Федерации» организация оказания населению субъекта Российской Федерации первичной 
    медико-санитарной помощи, специализированной, в том числе высокотехнологичной, медицинской помощи, скорой, 
    в том числе скорой специализированной, медицинской помощи и паллиативной медицинской помощи в медицинских 
    организациях субъекта Российской Федерации относится к компетенции органов государственной власти субъектов 
    Российской Федерации в сфере охраны здоровья. 

    Направление пациентов в медицинские организации для оказания высокотехнологичной медицинской помощи 
    осуществляется органами исполнительной власти субъектов Российской Федерации в сфере охраны здоровья в 
    соответствии с Порядком направления граждан Российской Федерации для оказания высокотехнологичной медицинской 
    помощи за счет бюджетных ассигнований, предусмотренных в федеральном бюджете Министерству здравоохранения 
    Российской Федерации, с применением специализированной информационной системы, утвержденным приказом 
    Минздравсоцразвития России от 28.12.2011 № 1689н."); -- referral_special_med_care
INSERT INTO Types VALUES (6, "В соответствии с Федеральным законом от 29.11.2010 №326-ФЗ «Об обязательном медицинском страховании в 
    Российской Федерации» контроль объемов, сроков, качества и условий предоставления медицинской помощи медицинскими 
    организациями в объеме и на условиях, которые установлены территориальной программой 

    обязательного медицинского страхования и договором на оказание и оплату медицинской помощи по обязательному 
    медицинскому страхованию, проводится в соответствии с порядком организации и проведения контроля объемов, сроков, 
    качества и условий предоставления медицинской помощи, установленным Федеральным фондом обязательного медицинского 
    страхования. 

    Контроль объемов, сроков, качества и условий предоставления медицинской помощи осуществляется путем проведения 
    медико-экономического контроля, медико-экономической экспертизы, экспертизы качества медицинской помощи. 

    Таким образом, в данном случае Вам следует обратиться в территориальный фонд обязательного медицинского 
    страхования субъекта Российской Федерации либо в страховую медицинскую организацию, выдавшую полис обязательного 
    медицинского страхования."); -- compulsory_insurance
INSERT INTO Types VALUES (7, "Вам следует обратиться в органы государственной власти субъекта Российской Федерации в сфере охраны 
    здоровья, в котором расположена медицинская организация."); -- lack_of_staff
INSERT INTO Types VALUES (8, "Вам следует обратиться в администрацию данной медицинской организации либо в органы государственной 
    власти субъекта Российской Федерации в сфере охраны здоровья, на территории которого расположена медицинская 
    организация."); -- difficult_make_appointment
INSERT INTO Types VALUES (9, "В соответствии с ч.7 ст.59 Федерального закона от 21.11.2011 № 323-ФЗ «Об основах охраны здоровья 
    граждан в Российской Федерации» и приказом Минздравсоцразвития России от 29.06.2011 № 624н «Об утверждении 
    порядка выдачи листков нетрудоспособности» в целях оценки обоснованности  расходования средств  обязательного 

    социального страхования на выплату пособий по временной нетрудоспособности проверку соблюдения порядка выдачи, 
    продления и оформления листков нетрудоспособности осуществляет Фонд социального страхования Российской Федерации. "); -- disability_sheet
INSERT INTO Types VALUES (-1, "Приносим наши извинения, но мы не сможем быстро ответить на Ваше обращение. В течение 30 суток мы 
    обязательно ответим на Ваше обращение."); -- other_answer

CREATE TABLE Requests
(
  NumberReg INT PRIMARY KEY AUTO_INCREMENT, -- Номер регистрации обращения в системе документооборота*
  DateReg DATE NOT NULL, -- дата регистрации обращения в системе документооборота*
  Type_ INT NOT NULL,
  Employee INT NOT NULL,
  Decided BOOLEAN NOT NULL,
  TypeReq INT NOT NULL, -- Вид обращения*
  SNF VARCHAR(80) NOT NULL, -- ФИО заявителя*
  Phone TEXT, -- Телефон заявителя. Может быть несколько записей
  Email TEXT, -- Электронная почта заявителя. Может быть несколько записей
  Region INT NOT NULL, -- Регион обращения*. Код по справочнику ОКАТО
  TextReq TEXT NOT NULL, -- Текст обращения*
  FileReq TEXT, -- Файлы обращения (сканы, текстовые документы (word, txt, html), аудиоматериалы)
  FOREIGN KEY (Type_) REFERENCES Types(ID),
  FOREIGN KEY (Employee) REFERENCES Users(ID),
  FOREIGN KEY (TypeReq) REFERENCES TypesReq(ID),
  FOREIGN KEY (Region) REFERENCES Regions(ID)
);

CREATE TABLE RequestsPhys
(
  NumberReq INT PRIMARY KEY AUTO_INCREMENT, -- Уникальный номер обращения в системе документооборота*
  NumberReg INT NOT NULL, -- Номер регистрации обращения в системе документооборота*
  SocialPol INT NOT NULL, -- Социальное положение*
  TypeResp INT, -- Вид ответа (по электронной почте или по бумажной почте)
  PostIndex VARCHAR(6), -- Почтовый индекс
  District VARCHAR(40), -- Район
  Point VARCHAR(40), -- Населенный пункт
  StreetHouseFlat VARCHAR(40), -- Улица, дом, квартира
  FOREIGN KEY (NumberReg) REFERENCES Requests(NumberReg),
  FOREIGN KEY (TypeResp) REFERENCES TypesResp(ID),
  FOREIGN KEY (SocialPol) REFERENCES SocialPols(ID),
);

CREATE TABLE RequestsYur
(
  NumberReq INT PRIMARY KEY AUTO_INCREMENT, -- Уникальный номер обращения в системе документооборота*
  NumberReg INT NOT NULL, -- Номер регистрации обращения в системе документооборота*
  Category INT NOT NULL, -- Категория бизнеса*
  Name VARCHAR(20) NOT NULL, -- Название организации*
  OGRN VARCHAR(20) NOT NULL, -- ОГРН/ОГРНИП*
  INN VARCHAR(20), -- ИНН
  TypeResp INT, -- Вид ответа (по электронной почте или по бумажной почте)
  PostIndex VARCHAR(6), -- Почтовый индекс
  FOREIGN KEY (NumberReg) REFERENCES Requests(NumberReg),
  FOREIGN KEY (TypeResp) REFERENCES TypesResp(ID),
  FOREIGN KEY (Category) REFERENCES Categories(ID),
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
