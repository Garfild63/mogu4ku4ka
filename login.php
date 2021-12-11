<?php
	session_start();
	if (isset($_POST['submit'])) {
		if (isset($_POST['login'])) {
			$login = $_POST['login'];
			if ($login == '') {
				unset($login);
			}
		}
		if (isset($_POST['password'])) {
			$password = $_POST['password'];
			if ($password == '') {
				unset($password);
			}
		}
		if (empty($login) or empty($password)) {
			exit("Вы ввели не всю информацию, вернитесь назад и заполните все поля!");
		}
		$login = stripslashes($login);
		$login = htmlspecialchars($login);
		$password = stripslashes($password);
		$password = htmlspecialchars($password);
		$login = trim($login);
		$password = trim($password);
		$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
		$result = mysqli_query($link, "SELECT * FROM Users WHERE Login = '$login'");
		$myrow = mysqli_fetch_array($result);
		if (empty($myrow['Password'])) {
			exit("Извините, введённый вами login или пароль неверный.");
		} else {
			if ($myrow['Password'] == $password) {
				$_SESSION['login'] = $myrow['Login'];
				$_SESSION['id'] = $myrow['ID'];
				// echo "Вы успешно вошли на сайт! <a href='index.php'>Главная страница</a>";
			} else {
				exit ("Извините, введённый вами login или пароль неверный.");
			}
		}
	}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Вход в личный кабинет</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <div class="header-logo">
            <a href="index.php"><img src="photo/logo-gerb 1.png" /></a>
            <div>ФЕДЕРАЛЬНАЯ СЛУЖБА ПО НАДЗОРУ<br> В СФЕРЕ ЗДРАВООХРАНЕНИЯ</div>
        </div>
        <div class="header-login">
           <!-- <a href="login.php"><div>Личный<br />кабинет</div><img id="img1" src="photo/Vector 2.png"><img id="img2"src="photo/Vector 1.png"></a>-->
        </div>
        
    </header>
    <h1>Личный кабинет</h1>
    <form action="#" method="POST" enctype="multipart/form-data" >
        <div class="formdiv">
            <label>
                Логин<br><br>
                <input type="text" name="login" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Пароль<br><br>
                <input type="password" name="password" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <input id="cabinet_login" type="submit" name="submit" value="Войти">
        
            <a id="cabinet_register" href="registration.php">Зарегистрироваться</a>
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

