<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Maheshwari Bus and Ticket Booking</title>
    <link rel="stylesheet" href="cssfile/nav.css">
    <link rel="stylesheet" href="cssfile/footer.css">
    <link rel="stylesheet" type="text/css" href="cssfile/videoedit.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style type="text/css">
      body {
        background-image: url(image/1.jpg);
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
      }
      #details{
        border:0px solid black;
        display: flex;
        justify-content: center;
      }
      .home_details {
        color: #fff;
        font-family: inherit;
        font-size: 74px;
        padding: 162px 0px; /* Adjust padding to move text left */
        text-align: left; /* Align text to the left */
        display: flex;
        flex-direction: column;
        justify-content: flex-start; /* Align content to the top */
        /* height: 100vh; Full height of the viewport */
      }

      .font {
        color: yellow; /* Make 'Faster!' yellow */
        display: flex;
        justify-content: center;
      }

      .btnHome {
        font-family: inherit;
        background-color: #F9522E;
        padding: 13px 44px 13px 44px;
        font-size: 18px;
        border-style: none; /* Add space between 'Faster!' and the button */

      }
      #move{
        display: flex;
        justify-content: center;
        margin-top: -125px;
      }
      .btnHome:hover {
        background-color: orange;
        cursor: pointer;
      }

      .section {
        background-color: white; /* White background for the section */
        padding: 25px 20px 50px 20px;
        align-items: center;
        justify-content: center;
        display: flex;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <!--this is the header calling(nav bar)-->
      <?php include("nav.php"); ?>
      <div id="details">
      <h1 class="home_details">
        Travel Smarter, Book <br><font class="font">Faster!</font><br>
        <a href="signUp.php"> 
        <div id="move"><button class="btnHome">SIGN UP NOW</button></a></div>
      </h1>
      </div>
    </div>

    <div class="section">
      <video autoplay loop muted class="section">
        <source src="video/video1.mp4" type="video/mp4">
      </video>
    </div><!--section-->

    <!--this is the footer calling-->
    <?php include("footer.php"); ?>
  </body>
</html>
