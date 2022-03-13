<?php
    include_once 'header.php';
?>

<h1>Article page</h1>

<div class="article-container">
    <?php
        $title = mysqli_real_escape_string($conn, $_GET['title']);
        $date = mysqli_real_escape_string($conn, $_GET['date']);

        $sql = "SELECT * FROM articles WHERE article_title = '$title' AND article_date = '$date';";
        $result = mysqli_query($conn, $sql);
        $rows = mysqli_num_rows($result);

        if ($rows > 0) 
        {
            while ($row = mysqli_fetch_assoc($result))
            {
                echo "
                    <div class='article-box'>
                        <h3>".$row['article_title']."</h3>
                        <p>".$row['article_text']."</p>
                        <p>".$row['article_date']."</p>
                        <p>".$row['article_author']."</p>
                    </div>";
            }
        }
    ?>
</div>

</body>
</html>