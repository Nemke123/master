<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'nemanja');
define('DB_PASSWORD', 'nemanja');
define('DB_NAME', 'blog');
 
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
try {
    $connection = new PDO(
        'mysql:host=localhost;dbname=blog',
        'nemanja',
        'nemanja'
    );
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo $e->getMessage();
}
?>