<?php
    session_start();
	function typeOfText($link, $email, $text) {
		$text = strtolower($text);
		if (strpos($text, 'некачеств') and strpos($text, 'медицинск') and strpos($text, 'помощь')) {
			$type = 0;
		} else if ((strpos($text, 'платн') or strpos($text, 'ненадлежащ') or strpos($text, 'некачеств') or strpos($text, 'нарушен')) and (strpos($text, 'услуг') or strpos($text, 'медосмотр')) and strpos($text, 'медицинск')) {
			$type = 1;
		} else if ((strpos($text, 'некачеств') or strpos($text, 'ненадлежащ')) and strpos($text, 'медицинск') and strpos($text, 'помощь') and (strpos($text, 'вред') or strpos($text, 'ущерб')) and strpos($text, 'здоровь')) {
			$type = 2;
		} else if (strpos($text, 'отказ') and (strpos($text, 'медицинск') and strpos($text, 'организацо') or strpos($text, 'больниц'))) {
			$type = 3;
		} else if (strpos($text, 'отказ') and (strpos($text, 'медицинск') and strpos($text, 'организацо') or strpos($text, 'больниц') or strpos($text, 'поликлиник') and (strpos($text, 'приклеп') or strpos($text, 'регистр')))) {
			$type = 4;
		} else if (strpos($text, 'направлен') and (strpos($text, 'специализированн') or strpos($text, 'высокотехн') or strpos($text, 'профессиональн')) and strpos($text, 'медицинск') and strpos($text, 'помощь')) {
			$type = 5;
		} else if ((strpos($text, 'объем') or strpos($text, 'срок') or strpos($text, 'качеств') or strpos($text, 'услов')) and strpos($text, 'страхован')) {
			$type = 6;
		} else if (strpos($text, 'недоста') and strpos($text, 'персонал')) {
			$type = 7;
		} else if ((strpos($text, 'сложн') or strpos($text, 'трудн')) and strpos($text, 'прием') and strpos($text, 'врач')) {
			$type = 8;
		} else if ((strpos($text, 'выдач') or strpos($text, 'продлен') or strpos($text, 'оформлен')) and strpos($text, 'лист') and strpos($text, 'нетрудоспособ')) {
			$type = 9;
		} else {
			$type = -1;
		}
		$result = mysqli_query($link, "SELECT Type_ FROM Types WHERE ID = '$type'");
		$myrow = mysqli_fetch_array($result);
		mail($email, 'Ответ на Ваше обращение', $myrow['Type_']);
		return $type;
	}
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
			$filename = $_FILES['file']['name'];
			$destination_dir = dirname(__FILE__) . '/userfiles/' . $filename; // Директория для размещения файла
			move_uploaded_file($_FILES['file']['tmp_name'], $destination_dir); // Перемещаем файл в желаемую директорию
			// echo 'File Uploaded to ' . $destination_dir; // Оповещаем пользователя об успешной загрузке файла
		} else {
			// echo 'No File Uploaded'; // Оповещаем пользователя о том, что файл не был загружен
		}
        $link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
		$result = mysqli_query($link, 'INSERT INTO Requests (DateReg, Type_, Employee, Decided, TypeReq, SNF, Phone, Email, Region, TextReq, FileReq) VALUES (NOW(), "' . typeOfText($link, $email, $text) . '", 1, FALSE, "' . $theme . '", "' . $last_name . ' ' . $first_name . ' ' . $patronim . '", "' . $tel . '", "' . $email . '", "' . $region . '", "' . $text . '", "' . $filename . '")');
        $result = mysqli_query($link, 'INSERT INTO RequestsPhys (NumberReg, SocialPol, TypeResp, PostIndex, District, Point, StreetHouseFlat) VALUES ("' . mysqli_insert_id($link) . '", "' . $soc . '", "' . $radio . '", "' . $mail . '", "' . $district . '", "' . $town . '", "' . $address . '")');
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
            <?php if isset($_SESSION['id']) echo '<a href="appelation.php"><div>' . $_SESSION['login'] . '</div>' else echo '<a href="login.php"><div>Личный<br />кабинет</div>' ?><img id="img1" src="photo/Vector 2.png"><img id="img2"src="photo/Vector 1.png"></a>
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
						$link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
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
                <input type="text" name="last_name" value="<?php if (isset($_GET['last_name'])) echo $_GET['last_name']; ?>" required><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Имя*<br><br>
                <input type="text" name="first_name" value="<?php if (isset($_GET['first_name'])) echo $_GET['first_name']; ?>" required>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Отчество<br><br>
                <input type="text" name="patronim" value="<?php if (isset($_GET['patronim'])) echo $_GET['patronim']; ?>"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label>
                Социальное положение*<br><br>
                <select name="soc" required>
                    <option style="display:none">
                    <?php
						$link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
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
                <input type="tel" name="tel" value="<?php if (isset($_GET['tel'])) echo $_GET['tel']; ?>" pattern="8[0-9]{10}"><br>
            </label>
        </div>
        <hr>
        <div class="formdiv">
            <label id="radiobox">
                Способ получения ответа<br><br>
                <?php
					$link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
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
                <input type="email" name="email" value="<?php if (isset($_GET['email'])) echo $_GET['email']; ?>"><br>
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
						$link = mysqli_connect('localhost', 'id18108619_user', '__Sabina83__', 'id18108619_mydb');
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

