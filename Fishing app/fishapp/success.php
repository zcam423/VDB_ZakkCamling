<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");
?>

<!DOCTYPE html>


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous"
    />
    <title>Success</title>
</head>
<header>
<div class="nav-bar bg-dark">
    <ul>
    <li class="link"><a href="suggestion.php">Let us suggest a lure!</a></li>
    <li><a href="logout.php">Logout</a></li>
</ul>
<h1 class="text-primary">Enter Your Catch</h1>
</header>
<body class="bg-dark">
    <?php
        if(isset($_SESSION['status']))
        {
            echo "<h4>".$_SESSION['status']."</h4>";
            unset($_SESSION['status']);
        } 
    ?>

<!--Form to report catch-->
<form action="code.php" method="POST" >
<div class="mb-3  bg-primary">
        <label for="Fish" class="text-light">Type of Fish</label>
        
        <select name="fish" id="Fish" class="form-control  bg-dark text-light">
            <option class="form-control  bg-dark text-light" >Select a fish</option>
            <option class="form-control  bg-dark text-light" value="Trout">Trout</option>
            <option class="form-control  bg-dark text-light" value="Bass">Bass</option>
            <option class="form-control  bg-dark text-light" value="Northern">Northern Pike</option>
            <option class="form-control  bg-dark text-light" value="PanFish">Pan Fish</option>
            <option class="form-control  bg-dark text-light" value="Catfish">Cat Fish</option>
            <option class="form-control  bg-dark text-light" value="Walleye">Walleye</option>
        </select>
    </div>
        <div class="mb-3  bg-primary">
            <label for="lure">Lure</label>
            <select name="lure" id="lure" class="form-control  bg-dark text-light">
                <option class="form-control  bg-dark text-light">Select a lure</option>
                <option class="form-control  bg-dark text-light" value="Plug">Plug</option>
                <option class="form-control  bg-dark text-light" value="Jig">Jig</option>
                <option class="form-control  bg-dark text-light" value="Spinner">Spinnerbait</option>
                <option class="form-control  bg-dark text-light" value="Spoon">Spoon</option>
            </select>
    </div>
    <div class="mb-3  bg-primary">
            <label for="BOW">Body of Water</label>
            <select name="bodyofwater" id="BOW" class="form-control  bg-dark text-light">
                <option class="form-control  bg-dark text-light">Select a body of water</option>
                <option class="form-control  bg-dark text-light" value="Lake">Lake</option>
                <option class="form-control  bg-dark text-light" value="River">River</option>
                <option class="form-control  bg-dark text-light" value="Pond">Pond</option>
                <option class="form-control  bg-dark text-light" value="Stream">Stream</option>
            </select>
    </div>
    <div class="mb-3  bg-primary">
            <label for="WaterF">Water Feature</label>
            <select name="waterfeature1" id="WaterF" class="form-control  bg-dark text-light">
                <option class="form-control  bg-dark text-light" class="form-control  bg-dark text-light">Select a water feature</option>
                <option class="form-control  bg-dark text-light" value="Rocks">Rocks</option>
                <option class="form-control  bg-dark text-light" value="Lily">Lily pads</option>
                <option class="form-control  bg-dark text-light" value="Sandy">Sandy</option>
                <option class="form-control  bg-dark text-light" value="Weeds">Weeds</option>
                <option class="form-control  bg-dark text-light" value="Wing">Wing Dam</option>
                <option class="form-control  bg-dark text-light" value="Slow">Slow Water</option>
                <option class="form-control  bg-dark text-light" value="Fast">Fast Water</option>
                <option class="form-control  bg-dark text-light" value="Shelf">Rock Shelf</option>              
                <option class="form-control  bg-dark text-light" value="Ice">Ice</option>
                <option class="form-control  bg-dark text-light" value="Bottom">Bottom</option>
        </select>
    </div>
    <div class="mb-3  bg-primary">
                        <label for="WaterF">Water Feature</label>
                        <select name="waterfeature2" id="WaterF" class="form-control  bg-dark text-light">
                            <option class="form-control  bg-dark text-light">Select a water feature</option>
                            <option class="form-control  bg-dark text-light" value="Lily">Lily pads</option>
                            <option class="form-control  bg-dark text-light" value="Sandy">Sandy</option>
                            <option class="form-control  bg-dark text-light" value="Weeds">Weeds</option>
                            <option class="form-control  bg-dark text-light" value="Rocks">Rocks</option>
                            <option class="form-control  bg-dark text-light" value="Top">Top Water</option>
                            <option class="form-control  bg-dark text-light" value="Wing">Wing Dam</option>
                            <option class="form-control  bg-dark text-light" value="Slow">Slow Water</option>
                            <option class="form-control  bg-dark text-light" value="Fast">Fast Water</option>
                            <option class="form-control  bg-dark text-light" value="Shelf">Rock Shelf</option>
                            <option class="form-control  bg-dark text-light" value="Ice">Ice</option>
                            <option class="form-control  bg-dark text-light" value="Bottom">Bottom</option>
                        </select>
    </div>
    <div class="mb-3  bg-primary">
                            <label for="Season">Season</label>
                            <select name="season" id="season" class="form-control  bg-dark text-light">
                                <option class="form-control  bg-dark text-light">Select a season</option>
                                <option class="form-control  bg-dark text-light" value="Winter">Winter(12/21-3/19)</option>
                                <option class="form-control  bg-dark text-light" value="Spring">Spring(3/20-6/20)</option>
                                <option class="form-control  bg-dark text-light" value="Summer">Summer(6/21-9/21)</option>
                                <option class="form-control  bg-dark text-light" value="Fall">Fall(9/22-12/20)</option>
                            </select>
    </div>
            <div>
            <button id="submit" name="save_select" class="bg-primary type="submit">Submit Your Catch!</button> 
            </div>

</body>
</html>