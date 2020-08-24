<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="AllRes.aspx.cs" Inherits="AllRes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!----containers--->

    <div class="row" style="padding-top:50px;">
        <asp:Repeater ID="RepeaterRes" runat="server">
            <ItemTemplate>
              <div class="col-sm-3 col-md-3">
                  <a style="text-decoration:none;" href="RestViewSingle.aspx?DID=<%#Eval("DID") %>">
                    <div class="thumbnail">
                      <img src="~Images/DataImages/<%#Eval("DID") %>/<%#Eval("imName") %><%#Eval("extension") %>" alt="<%#Eval("imName") %>">
                      <div class="caption">
                        <div class="resNameView"><%#Eval("name") %></div>
                        <div class="resDetails"><%#Eval("location") %></div>
                        <div class="resDetails"><%#Eval("contact") %></div>
                      </div>
                    </div>
                  </a>
              </div>
            </ItemTemplate>
           </asp:Repeater>
    </div>


    <!----containers ending--->

</asp:Content>

