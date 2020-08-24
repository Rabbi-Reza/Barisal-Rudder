<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="icon" href="Images/br.png" type="image/png"/>
    <title>Barisal Rudder</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/myCSS.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:#EBF5FF; background-repeat:repeat-x;">
            <div class="container">
                <div class="navbar-header" style="background-color:#EBF5FF; background-repeat:repeat-x; color:white;">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Demo.aspx"><span><img alt="Logo Image" src="Images/br.png" height="30" /></span>  Barisal Rudder</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Demo.aspx">Home</a></li>
                        <li  class="active"><a href="about.aspx">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="AllPlace.aspx">Places</a></li>
                                <li><a href="Alltransport.aspx">Transportation</a></li>
                                <li><a href="AllHotel.aspx">Hotels</a></li>
                                <li><a href="AllRes.aspx">Restaurents</a></li>
                                <li><a href="AllEmerg.aspx">Emergency Services</a></li>
                            </ul>
                        </li>
                        <li><a href="SignUp.aspx">Sign Up</a></li>
                        <li><a href="LogIn.aspx">Log In</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
        <!---Middle contents---->
        <div class="container center" style="color:darkblue; padding-left:70px; font-family:'Century Gothic'; font-style:italic;">
            <br /><br />
            <h4>Barisal is one of the eight administrative divisions of Bangladesh. Located in the south-central part of the country, it has an area of 13,644.85 km2 (5,268.31 sq. mi. It is bounded by Dhaka division on the north, the Bay of Bengal on the south, Chittagong division on the east and Khulna division on the west. Barisal city is the largest city and the administrative headquarter of both Barisal district and Barisal Division. It is one of the oldest municipalities and river ports of the country. Barisal division is crisscrossed by numerous rivers that earned it the nickname 'Dhan-Nodi-Kaal , Ei tine Barisal' (rice, river and canal built Barisal).
                <br />This site provides a complete picture of our city barisal including it's Places, Hotels, Restaurents, transportation and Emergency Services.
            </h4>
        </div>

        <div>
           <div class="container center">
               <br /><br /><br />
               <h1>Project Team</h1><br /><br />
            <div class="row" style="padding-left:100px;">
                <div class="col-lg-2">
                    <img alt="Places" src="Images/me.jpg" height="130" width="130" />
                    <h3>Chandrika Saha</h3>
                    <p>Project Manager, Developer, Requirement Engineer</p>
          
                </div>
                <div class="col-lg-2">
                    <img alt="hotels" src="Images/vaai.jpg" height="130" width="130" />
                    <h3>S.M. Rabbi Reza</h3>
                    <p>Requirement Engineer, Quality Assurance Engineer, Developer</p>

                </div>
                <div class="col-lg-2">
                    <img alt="Restaurants" src="Images/pera1.jpg" height="130" width="130" />
                    <h3>Shara Islam</h3>
                    <p>Requirement Engineer, Developer, Quality Assurance Engineer</p>
                 
                </div>
     
                <div class="col-lg-2">
                    <img alt="transportation" src="Images/bool.jpg" height="130" width="130" />
                    <h3>Sharmin Sultana</h3>
                    <p>Quality Assurance Engineer, Developer, Ethical Manager</p>
                  
                </div>
                <div class="col-lg-2">
                    <img alt="emergency" src="Images/nazi.jpg" height="130" width="130" />
                    <h3>Nazifa Akter</h3>
                    <p>Quality Assurance Engineer, Developer, Ethical Manager</p>
                   
                </div>
               </div>
            

        </div>
        </div>

        <!---Middle contents ending---->

         <!---footer--->
        <div style="background-color:#EBF5FF; background-repeat:repeat-x;">
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy 2019 BarisalRudder.com &middot; <a href="Demo.aspx">Home</a> &middot;<a href="about.aspx">About</a> &middot; <a href="SignUp.aspx">Register</a> &middot; <a href="https://www.facebook.com/">Facebook</a> &middot;<a href="https://twitter.com/">Twitter</a></p>
            </div>
        </footer>
            </div>
        <!---footer--->
    </form>
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
