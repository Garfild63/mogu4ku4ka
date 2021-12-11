<?php
    session_start();
	if (isset($_POST['submit'])) {
        $theme = $_POST['theme'];
		$last_name = $_POST['last_name'];
        $first_name = $_POST['first_name'];
        $patronim = $_POST['patronim'];
        $soc = $_POST['soc'];
        $tel = $_POST['tel'];
        $radio = $_POST['radio'];
        $email = $_POST['email'];
        $mail = $_POST['mail'];
        $region = $_POST['region'];
        $district = $_POST['district'];
        $town = $_POST['town'];
		$address = $_POST['address'];
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
        $result = mysqli_query($link, 'INSERT INTO RequestsPhys (NumberReg, TypeReq, Surname, Name, Fathername, SocialPol, Phone, TypeResp, Email, PostIndex, Region, District, Point, StreetHouseFlat, TextReq, FileReq) VALUES ("' . mysqli_insert_id($link) . '", "' . $theme . '", "' . $last_name . '", "' . $first_name . '", "' . $patronim . '", "' . $soc . '", "' . $tel . '", "' . $radio . '", "' . $email . '", "' . $mail . '", "' . $region . '", "' . $district . '", "' . $town . '", "' . $address . '", "' . $text . '", "' . $filename . '")');
    }
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Форма обращения для физических лиц</title>
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
    <h1>Форма обращения<br /> для физических лиц</h1>
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
            <div id="divcheck">
                <input id="check" type="checkbox" name="check" required>
                <div>Я подтверждаю, что ознакомлен с принципами и правилами обработки персональных данных, предусмотренными Федеральным законом от 27.07.2008 № 152-ФЗ, а также даю согласие на обработку своих персональных данных, на передачу такой информации в другие государственные органы исполнительной власти, в случаях, установленных нормативными документами вышестоящих органов и законодательством.*</div>
            </div>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Фамилия*<br><br>
                <input type="text" name="last_name" value="<?php echo $_GET['last_name']; ?>" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Имя*<br><br>
                <input type="text" name="first_name" value="<?php echo $_GET['first_name']; ?>" required>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Отчество<br><br>
                <input type="text" name="patronim" value="<?php echo $_GET['patronim']; ?>"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Социальное положение*<br><br>
                <select name="soc" required>
                    <option style="display:none">
                    <?php
						$link = mysqli_connect('localhost', 'id17910106_egor', '__Sabina83__', 'id17910106_garf');
						$result = mysqli_query($link, 'SELECT * FROM SocialPols');
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
                Телефон<br><br>
                <input type="tel" name="tel" value="<?php echo $_GET['tel']; ?>" pattern="7\([0-9]{3}\)[0-9]{3}-[0-9]{2}-[0-9]{2}"><br>
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
							echo '<input type="radio" name="radio" value="' . $arr[0] . '">' . $arr[1] . '<br id="br">';
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
                Почтовый индекс<br><br>
                <input id="mail" type="text" name="mail" pattern="[0-9]{6}"><br>
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
                Район<br><br>
                <input type="text" name="district"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Населенный пункт<br><br>
                <input type="text" name="town"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Улица, дом, квартира<br><br>
                <input type="text" name="address"><br>
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

