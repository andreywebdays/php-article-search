<?php
    include_once 'header.php';
?>
   
<h1>Search page</h1>

<div class="article-container">
    <?php
        if (isset($_POST['submit-search'])) 
        {
            $search = mysqli_real_escape_string($conn, $_POST['search']); // prevent sql injection
            $sql = "SELECT * FROM articles 
                WHERE article_title LIKE '%$search%' 
                OR article_text LIKE '%$search%' 
                OR article_author LIKE '%$search%'
                OR article_date LIKE '%$search%';";
            $result = mysqli_query($conn, $sql);
            $rows = mysqli_num_rows($result);

            if ($rows > 0) 
            {
                echo "There are ".$rows." results!";

                while ($row = mysqli_fetch_assoc($result)) 
                {
                    echo "
                    <a href='article.php?title=".$row['article_title']."&date=".$row['article_date']."'>
                        <div class='article-box'>
                            <h3>".$row['article_title']."</h3>
                            <p>".$row['article_text']."</p>
                            <p>".$row['article_date']."</p>
                            <p>".$row['article_author']."</p>
                        </div>
                    </a>";
                }
            }
            else
            {
                echo "There are no results matching your search!";
            }
        }
    ?>
</div>