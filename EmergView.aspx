<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="EmergView.aspx.cs" Inherits="EmergView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!---middle contents--->
    <div class="row">
        <div style="padding-top:50px;">
            <div>
                <div class="col-md-5">
                    <div class="thumbnail" style="max-width:480px">
                        <!---Carusel--->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <!----<ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    
  </ol>--->

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
      <asp:Repeater ID="Repeaterimages" runat="server">
          <ItemTemplate>
                <div class="item <%# getActiveClass(Container.ItemIndex) %>">
                  <img src="~Images/EmerImages/<%#Eval("EId") %>/<%#Eval("imName") %><%#Eval("extension") %>" alt="<%#Eval("imName") %>" onerror="this.src = 'Images/no-image.gif'"/>
                  <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                  </div>
                </div>
            </ItemTemplate>
          </asp:Repeater>
    
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
                    </div>
                </div>
                <div class="col-md-7">
                    <asp:Repeater ID="RepeaterEmergDet" runat="server">
                        <ItemTemplate>
                            <div class="detail">
                                <h1 class="EmerNameView"><%#Eval("EName") %></h1>
                          
                                <p class="EmerDetails">location: <%#Eval("ELocation") %></p>
                                <p class="EmerDetails">Contact: <%#Eval("EContact") %></p>
                                
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                
            </div>
           </div>
        </div>

        <br /><br />
    <div class="row">
        <div class="col-md-5"></div>
            <div class="col-md-5">
                <asp:Repeater ID="rptrFb" runat="server">
                    <ItemTemplate>
                    <div class="fb-comments" data-href="http://localhost:9075/RestViewSingle.aspx?DID=<%#Eval("EId") %>" data-numposts="5"></div>
                    </ItemTemplate>
                </asp:Repeater>
                    <!-- <div class="fb-comments" data-href="http://localhost:9075/ResView.aspx" data-numposts="2"></div>-->
        
            </div>
    </div>  
        <!---middle contents--->
</asp:Content>
