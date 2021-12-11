<?php
    session_start();
	if (isset($_POST['submit'])) {
        $theme = $_POST['theme'];
		$radio1 = $_POST['radio1'];
		$name = $_POST['name'];
        $ogrn = $_POST['ogrn'];
        $inn = $_POST['inn'];
        $radio2 = $_POST['radio2'];
        $email = $_POST['email'];
        $tel = $_POST['tel'];
        $region = $_POST['region'];
        $mail = $_POST['mail'];
        $text = $_POST['text'];
		$filename = '';
		if(isset($_FILES) && $_FILES['file']['error'] == 0) { // Проверяем, загрузил ли пользователь файл
			$filename = 'http://egorka4urin.000webhostapp.com/userfiles/' . $_FILES['file']['name'];
			$destination_dir = dirname(__FILE__) . '/userfiles/' . $_FILES['file']['name']; // Директория для размещения файла
			move_uploaded_file($_FILES['file']['tmp_name'], $destination_dir); // Перемещаем файл в желаемую директорию
			// echo 'File Uploaded to ' . $destination_dir; // Оповещаем пользователя об успешной загрузке файла
		} else {
			// echo 'No File Uploaded'; // Оповещаем пользователя о том, что файл не был загружен
		}
		$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
        $result = mysqli_query($link, 'INSERT INTO Requests (DateReg) VALUES (NOW())');
        $result = mysqli_query($link, 'INSERT INTO RequestsYur (NumberReg, TypeReq, Category, Name, OGRN, INN, TypeResp, Email, Phone, Region, PostIndex, TextReq, FileReq) VALUES ("' . mysqli_insert_id($link) . '", "' . $theme . '", "' . $radio1 . '", "' . $name . '", "' . $ogrn . '", "' . $inn . '", "' . $radio2 . '", "' . $email . '", "' . $tel . '", "' . $region . '", "' . $mail . '", "' . $text . '", "' . $filename . '")');
    }
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Форма обращения для юридических лиц</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <div class="header-logo">
            <a href="index.php"><img src="photo/logo-gerb 1.png" /></a>
            <div>ФЕДЕРАЛЬНАЯ СЛУЖБА ПО НАДЗОРУ<br> В СФЕРЕ ЗДРАВООХРАНЕНИЯ</div>
        </div>
        <div class="header-login">
            <a href="login.php"><div>Личный<br />кабинет</div><img id="img1" src="photo/Vector 2.png"><img id="img2"src="photo/Vector 1.png"></a>
        </div>
        
    </header>
    <h1>Форма обращения<br /> для юридических лиц</h1>
    <form action="#" method="POST" enctype="multipart/form-data">
        <div class="formdiv">
            <label>
                Вид обращения*<br><br>
                <select name="theme" required>
                    <option style="display:none">
                    <?php
						$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
						$result = mysqli_query($link, 'SELECT * FROM TypesReq');
						if ($row = mysqli_fetch_all($result)) {
							foreach ($row as $arr) {
								echo '<option value="' . $arr[0] . '">' . $arr[1] . '</option>';
							}
						}
					?>
                </select><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label id="radiobox">
                Категория бизнеса*<br><br>
                <?php
					$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
					$result = mysqli_query($link, 'SELECT * FROM Categories');
					if ($row = mysqli_fetch_all($result)) {
						foreach ($row as $arr) {
							echo '<input type="radio" name="radio1" value="' . $arr[0] . '">' . $arr[1] . '<br id="br">';
						}
					}
				?>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Название организации*<br><br>
                <input type="text" name="name" required>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                ОГРН/ОГРНИП*<br><br>
                <input type="text" name="ogrn" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                ИНН<br><br>
                <input type="text" name="inn"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label id="radiobox">
                Способ получения ответа<br><br>
                <?php
					$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
					$result = mysqli_query($link, 'SELECT * FROM TypesResp');
					if ($row = mysqli_fetch_all($result)) {
						foreach ($row as $arr) {
							echo '<input type="radio" name="radio2" value="' . $arr[0] . '">' . $arr[1] . '<br id="br">';
						}
					}
				?>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Адрес электронной почты (E-mail)<br><br>
                <input type="email" name="email" value="<?php echo $_GET['email']; ?>"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Телефон<br><br>
                <input type="tel" name="tel" value="<?php echo $_GET['tel']; ?>" pattern="7\([0-9]{3}\)[0-9]{3}-[0-9]{2}-[0-9]{2}"><br>
            </label>
        </div>

        <hr>
        <div class="formdiv">
            <label>
                Регион*<br><br>
                <select name="region" required>
                    <option style="display:none">
                    <?php
						$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
						$result = mysqli_query($link, 'SELECT * FROM Regions');
						if ($row = mysqli_fetch_all($result)) {
							foreach ($row as $arr) {
								echo '<option value="' . $arr[0] . '">' . $arr[1] . '</option>';
							}
						}
					?>
                </select><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Почтовый индекс<br><br>
                <input id="mail" type="text" name="mail" pattern="[0-9]{6}"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Текст обращения*<br><br>
                <textarea name="text" required></textarea><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <input id="file" type="file" name="file">
        </div>
        <hr />
        <div class="formdiv">
            <input id="submit" type="submit" name="submit" value="Отправить">
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

