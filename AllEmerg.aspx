<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="AllEmerg.aspx.cs" Inherits="AllEmerg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!----containers--->

    <div class="row" style="padding-top:50px;">
        <asp:Repeater ID="RepeaterEmerg" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 col-md-3">
                  <a style="text-decoration:none;" href="EmergView.aspx?EId=<%#Eval("EId") %>">
                    <div class="thumbnail">
                      <img src="~Images/EmerImages/<%#Eval("EId") %>/<%#Eval("imName") %><%#Eval("extension") %>" alt="<%#Eval("imName") %>">
                      <div class="caption">
                        <div class="EmerNameView"><%#Eval("EName") %></div>
                        <div class="EmerDetails"><%#Eval("ELocation") %></div>
                        <div class="EmerDetails"><%#Eval("EContact") %></div>
                      </div>
                    </div>
                  </a>
              </div>
            </ItemTemplate>

        </asp:Repeater>
        </div>


    <!----containers ending--->
</asp:Content>

