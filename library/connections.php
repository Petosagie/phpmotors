<?php

// Proxy connection to phpmotor database

function phpmotorsConnect(){
 $server = 'localhost';
 $dbname= 'phpmotors';
 $username = 'iClient';
 $password = 'NtfbEO[4/fW7j@cr'; 
 $dsn = "mysql:host=$server;dbname=$dbname";
 $options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

 // Create the actual connection object and assign it to a variable
 try {
  $link = new PDO($dsn, $username, $password, $options);
  return $link;
 } catch(PDOException $e) {
  header('Location: /phpmotors/view/500.php');
  exit;
 }
}
phpmotorsConnect();