<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");


// Connect to the database
$db = mysqli_connect('localhost', 'root', '', 'suggested');

// Check if the form has been submitted
if (isset($_POST['submit'])) {
  // Get the inputted data
  $fish = mysqli_real_escape_string($db, $_POST['fish']);
  $bodyofwater = mysqli_real_escape_string($db, $_POST['bodyofwater']);
  $waterfeature1 = mysqli_real_escape_string($db, $_POST['waterfeature1']);
  $waterfeature2 = mysqli_real_escape_string($db, $_POST['waterfeature2']);
  $season = mysqli_real_escape_string($db, $_POST['season']);

  // Query the database for matching data
  $query = "SELECT lure FROM suggested_lure WHERE fish='$fish' AND bodyofwater='$bodyofwater' AND waterfeature1='$waterfeature1' AND waterfeature2='$waterfeature2' AND season='$season'";
  $result = mysqli_query($db, $query);

  // Display the matching data
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      echo "Lure: " . $row['lure'] . "</br>";
    }
  } else {
    echo "No matching records found.";
  }
}

?>

<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous"
    />
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
  
    <title>Suggested Lure</title>
</head>

<!-- Form for submitting the input -->

<header>
    
    <div class="nav-bar bg-dark">
    <ul>
    <li class="link"><a href="success.php">Let us know what ya caught!</a></li>
    <li><a href="logout.php">Logout</a></li>
</ul>
<h1 class="text-primary">Suggested Lure</h1>
</header>
<body class="bg-dark">
   
<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
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
                            <option class="form-control  bg-dark text-light">Select a different water feature</option>
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
                            <input type="submit" name="submit" value="Submit" class="bg-primary">
</Form>
</body>
</html>