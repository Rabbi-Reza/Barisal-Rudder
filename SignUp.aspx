<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="icon" href="Images/br.png" type="image/png"/>
    <title>Barisal Rudder-Sign Up</title>

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
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
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
                        <li><a href="#">About</a></li>
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
                        <li class="active"><a href="Sign Up.aspx">Sign Up</a></li>
                        <li><a href="LogIn.aspx">Log In</a></li>
                    </ul>
                </div>
            </div>
        </div> 
    </div>
        <!---Sign Up--->
            
        <div class="center-page">
            
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Username goes here"></asp:TextBox>
            </div>

             <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="mail" runat="server" CssClass="form-control" placeholder="Email goes here" TextMode="Email"></asp:TextBox>
            </div>

            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="pass" runat="server" CssClass="form-control" placeholder="Password goes here" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="cpass" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Contact Number</label>
            <div class="col-xs-11">
                <asp:TextBox ID="cont" runat="server" CssClass="form-control" placeholder="Mobile/telephone"></asp:TextBox>
            </div>

            <div class="col-xs-11 space_v">
                <asp:Button ID="bsign" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="bsign_Click" />
                <br /><br />
                <asp:Label ID="valid" runat="server"></asp:Label>
            </div>
            

        </div>
        <!---Sign Up--->

        <!---footer--->
        
        <footer class="footer-pos"><hr />
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy 2019 BarisalRudder.com &middot; <a href="Demo.aspx">Home</a> &middot;<a href="#">About</a> &middot; <a href="#">Register</a> &middot; <a href="#">Contact Us</a></p>
            </div>
        </footer>
        <!---footer--->
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
