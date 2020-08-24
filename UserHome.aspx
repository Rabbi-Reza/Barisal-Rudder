<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="icon" href="Images/br.png" type="image/png"/>
    <title>Welcome</title>

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
        <!---navbar---->
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:#EBF5FF; background-repeat:repeat-x; color:white;">
            <div class="container">
                <div class="navbar-header">
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
                        <li><a href="about.aspx">About</a></li>
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
                        <li>
                            <asp:Button ID="logout" runat="server" CssClass="btn btn-default navbar-btn" Text="Log Out" OnClick="logout_Click" />
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
        
    </div>
        <!---navbar end---->
        <!---Carusel--->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/beauty.jpg" alt="..."/>
      <div class="carousel-caption">
            <h3>Beautiful Barisal</h3>
            <p></p>
      </div>
    </div>
    <div class="item">
        <img src="Images/MV Digholdi.jpg" alt="..."/>
      <div class="carousel-caption">
            <h3>Barsial Rivers</h3>
            <p>Baisal Launch Terminal</p>
      </div>
    </div>
     <div class="item">
        <img src="Images/kua.JPG" alt="..."/>
      <div class="carousel-caption">
            <h3>Kuakata</h3>
            <p>Sunrise & Sunset Both from one Place</p>
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        <!---Carusel--->
   

        <!--- Middle Contents---->
        <br /><br />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" alt="Places" src="Images/p_logo.png" height="140" width="140" />
                    <h2>Places</h2>
                    <p>Explore the amazing places all over barisal..!!!</p>
                    <p><a class="btn btn-default" role="button" href="AllPlace.aspx">View &raquo;</a> </p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" alt="hotels" src="Images/h_logo.jpg" height="140" width="140" />
                    <h2>Hotels</h2>
                    <p>Explore the hotels and book rooms of barisal..!!!</p>
                    <p><a class="btn btn-default" role="button" href="AllHotel.aspx">View &raquo;</a> </p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" alt="Restaurants" src="Images/r_logo.png" height="140" width="140" />
                    <h2>Restaurants</h2>
                    <p>Find out all about restaurants of barisal..!!!</p>
                    <p><a class="btn btn-default" role="button" href="AllRes.aspx">View &raquo;</a> </p>
                </div>
            </div>
            <br /><br />
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" alt="transportation" src="Images/t_logo.png" height="140" width="140" />
                    <h2>Transportation</h2>
                    <p>Find out about transportation all over barisal..!!!</p>
                    <p><a class="btn btn-default" role="button" href="Alltransport.aspx">View &raquo;</a> </p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" alt="emergency" src="Images/ee_logo.jpg" height="140" width="140" />
                    <h2>Emergency</h2>
                    <p>Get emergency services information..!!!</p>
                    <p><a class="btn btn-default" role="button" href="AllEmerg.aspx">View &raquo;</a> </p>
                </div>

            </div>

        </div>
        
        
        <!--- Middle Contents---->

        <asp:Label ID="Lblsucc" runat="server" CssClass="text-success"></asp:Label>
       <div style="background-color:#EBF5FF; background-repeat:repeat-x;">
        <!---footer--->
        <hr />
        
        <footer>
            <div class="container" >
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy 2019 BarisalRudder.com &middot; <a href="Demo.aspx">Home</a> &middot;<a href="about.aspx">About</a> &middot; <a href="SignUp.aspx">Register</a> &middot; <a href="https://www.facebook.com/">Facebook</a> &middot;<a href="https://twitter.com/">Twitter</a>&middot;<a href="AdminPage.aspx">Edit</a></p>
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
