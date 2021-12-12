<?php
	session_start();
	if (!isset($_SESSION['login'])) {
		exit('Ошибка! Вы не вошли на сайт<meta http-equiv="refresh" content="1;URL=login.php"/>');
	}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Обращения</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <div class="header-logo">
            <a href="index.html"><img src="photo/logo-gerb 1.png" /></a>
            <div>ФЕДЕРАЛЬНАЯ СЛУЖБА ПО НАДЗОРУ<br> В СФЕРЕ ЗДРАВООХРАНЕНИЯ</div>
        </div>
       
    </header>
    <h1>Обращения</h1>
    <form action="#" method="POST" enctype="multipart/form-data">
        <div class="formdiv">
            <details class="details" clouse>
				<?php
					if ($_SESSION['login'] == 'admin') {
						
					} else {
						$link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
						$result = mysqli_query($link, 'SELECT * FROM Requests WHERE Employee = "' . $_SESSION['id'] . '" AND NOT Decided');
						if ($row = mysqli_fetch_array($result)) {
							echo '';
						}
					}
				?>
                <summary><h2 class="appelation-h">Обращение <span id="num-appelation"></span></h2></summary>
				
				<label>
					Вид обращения<br><br>
					<input type="text" name="theme" value="" readonly><br>
				</label>
				<hr>
				<label>
					ФИО<br><br>
					<input type="text" name="fio" value="" readonly><br>
				</label>
				<hr>
				<label>
					Телефон<br><br>
					<input type="tel" name="tel" value="" readonly><br>
				</label>
				<hr />
				<label>
					Адрес электронной почты (E-mail)<br><br>
					<input type="email" name="email" value="" readonly><br>
				</label>
				<hr>
				<label>
					Регион<br><br>
					<input type="text" name="region" value="" readonly><br>
				</label>
				<hr>
				<label>
					Текст обращения<br><br>
					<textarea name="text" readonly></textarea><br>
				</label>
				<hr>
				<label>
					Файл заявления<br><br>
					<a href="userfiles/"></a>
				</label>
				<hr>
				<label>
					Текст Вашего ответа<br><br>
					<textarea name="yourtext"></textarea><br>
				</label>
				<hr>
				<input id="submit" type="submit" name="submit" value="Отправить">
            </details>
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

