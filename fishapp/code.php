

<?php
    session_start();
    $con = mysqli_connect("localhost","root","","suggested");
    
//code to add to database

    if(isset($_POST['save_select']))
    {
        $fish = $_POST['fish'];
        $lure = $_POST['lure'];
        $bodyofwater = $_POST['bodyofwater'];
        $waterfeature1 = $_POST['waterfeature1'];
        $waterfeature2 = $_POST['waterfeature2'];
        $season = $_POST['season'];

        $query = "INSERT INTO suggested_lure (fish,lure,bodyofwater,waterfeature1,waterfeature2,season) VALUES ('$fish','$lure','$bodyofwater','$waterfeature1','$waterfeature2','$season')";
        $query_run = mysqli_query($con, $query);

        if($query_run)
        {
            $_SESSION['status'] = "Thanks for letting us know what you caught!";
            header("Location: success.php");
        }
        else
        {
            $_SESSION['status'] = "Not Inserted";
            header("Location: success.php");
        }

    }
   