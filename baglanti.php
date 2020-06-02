<?php
try {
  $baglanti = new PDO("mysql:host=localhost;dbname=blogveri;charset=utf8", 'root', '');
  $baglanti->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
  echo "Bağlantı Hatası: " . $e->getMessage();
}


 ?>
