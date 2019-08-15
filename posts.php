<?php
session_start();
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
<?php
require('config.php');
$query = "SELECT * FROM posts ORDER BY created_at";
$stmt = $connection->prepare($query);
$stmt->execute();
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$latest = $stmt->fetchAll();

?>
<head>
    <?php include('./temp/head.php'); ?>
</head>

<body>

    <?php include('./temp/header.php'); ?>

    <main role="main" class="container">

        <div class="row">

            <div class="col-sm-8 blog-main">

                <h4>All Posts:</h4>
                
        <?php foreach ($latest as $post) { ?>
            <p> <a href="./single-post.php?post_id=<?php echo $post['id']; ?>">
                    <?php echo $post['title']; ?>
                </a><br>
                <?php echo $post['body']; ?><hr>
            </p>
        <?php } ?>


            </div>
            <?php include('./temp/sidebar.php'); ?>
        </div>

    </main>

    <?php include('./temp/footer.php') ?>
</body>