<?php
	session_start();
	if (isset($_POST['submit'])) {
		echo '<meta http-equiv="refresh" content="0;URL=' . $_POST['theme'] . '?last_name=' . $_POST['last_name'] . '&first_name=' . $_POST['first_name'] . '&patronim=' . $_POST['patronim'] . '&email=' . $_POST['email'] . '&tel=' . $_POST['tel'] . '"/>';
	}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Главная страница</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <div class="header-logo">
            <a href="index.php"><img src="photo/logo-gerb 1.png" /></a>
            <div>ФЕДЕРАЛЬНАЯ СЛУЖБА ПО НАДЗОРУ<br> В СФЕРЕ ЗДРАВООХРАНЕНИЯ</div>
        </div>
        <div class="header-login">
            <a href="login.php"><div>Личный<br />кабинет</div><img id="img1" src="photo/Vector 2.png"><img id="img2" src="photo/Vector 1.png"></a>
        </div>

    </header>
	<form id="to" action="#" method="POST" enctype="multipart/form-data">
        <div class="obr">
            <h2>Федеральная служба<br> по надзору в сфере<br> здравоохранения</h2>
            <h3>
                Не устраивает работа наших органов? <br>
                Оставьте своё обращение!
            </h3>
        </div>
         <img class="obr_foto" src="photo/cropped-logo-removebg-preview 1.png"/>
         <a id="goto" href="#to" style="">Подать объявление</a>
    </form>
    <form id="to" action="#" method="POST" enctype="multipart/form-data">

        <div class="formdiv">
            <label>
                Фамилия<br><br>
                <input type="text" name="last_name"><br>
            </label>
        </div>
        <hr>
		<div class="formdiv">
            <label>
                Имя<br><br>
                <input type="text" name="first_name"><br>
            </label>
        </div>
        <hr>
		<div class="formdiv">
            <label>
                Отчество<br><br>
                <input type="text" name="patronim"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Адрес электронной почты (E-mail)<br><br>
                <input type="email" name="email"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Телефон<br><br>
                <input type="tel" name="tel" pattern="8[0-9]{10}"><br>
            </label>
        </div>
        <hr />
        <div class="formdiv">
            <label>
                Обращающееся лицо<br><br>
                <select name="theme" required>
                    <option style="display:none">
                    <option value="form2.php">юридическое</option>
                    <option value="form.php">физическое</option>
                </select><br>
            </label>
        </div>
        <div class="formdiv">
            <input id="submit" type="submit" name="submit" value="Обратиться">
        </div>
    </form>
    <footer>
        <div class="footer-logo">
            <img src="photo/logo-rzn-footer 1.png">
        </div>
        <div class="footer-nav">
            <ul>
                <li><a href="#">О коронавирусной инфекции</a></li>
                <li><a href="#">Открытые данные</a></li>
                <li><a href="#">Вестник Росздравнадзора</a></li>
                <li><a href="#">Карта сайта</a></li>
                <li><a href="#">Статистика посещаемости</a></li>
                <li><a href="#">Архив</a></li>
            </ul>
        </div>
        <div class="footer-conect">
            <h2>Контакты</h2>
            <div>
                Многоканальный телефон Росздравнадзора - +7 (499) 578-06-70<br>
                Справочная Росздравнадзора - +7 (499) 578-02-20<br>
                «Горячая линия» Росздравнадзора по соблюдению прав граждан в сфере охраны здоровья - +7 800 550 99 03<br><br>
                <a href="#">Техническая поддержка сайта</a><br><br>
                <a href="#">Схема проезда</a>
            </div>
        </div>
    </footer>
</body>
</html>

