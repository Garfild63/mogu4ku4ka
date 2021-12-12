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
		$link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
		$result = mysqli_query($link, "SELECT ID FROM Users WHERE Login = '$login'");
		$myrow = mysqli_fetch_array($result);
		if (!empty($myrow['ID'])) {
			exit("Извините, введённый вами логин уже зарегистрирован. Введите другой логин.");
		}
		if ($password == $_POST['password_repeat']) {
			$name = $_POST['name'];
			$serial = $_POST['serial'];
			$number = $_POST['number'];
			$result2 = mysqli_query($link, "INSERT INTO Users (Login, Password, SNF, SerialPass, NumberPass) VALUES ('$login', '$password', '$name', '$serial', '$number')");
			if ($result2 == 'TRUE') {
				$result2 = mysqli_query($link, "SELECT ID FROM Users WHERE Login = '$login'");
				$_SESSION['login'] = $myrow['Login'];
				$_SESSION['id'] = $myrow['ID'];
				// echo "Вы успешно зарегистрированы! Теперь вы можете зайти на сайт. <a href='index.php'>Главная страница</a>";
			} else {
				exit("Ошибка! Вы не зарегистрированы.");
			}
		} else {
			exit("Ошибка! Пароли не совпадают.");
		}
	}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Регистрация</title>
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
    <form action="#" method="POST" enctype="multipart/form-data">
        <div class="formdiv">
            <label>
                ФИО<br><br>
                <input type="text" name="name" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Паспорт:<br><br>
                Серия<br><br>
                <input type="text" name="serial" required><br>
                Номер<br><br>
                <input type="text" name="number" required><br>
            </label>
        </div>
        <hr>
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
            <label>
                Повторите пароль<br><br>
                <input type="password" name="password_repeat" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <input id="cabinet_register" type="submit" name="submit" value="Зарегистрироваться" style="margin-left:0;">
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

