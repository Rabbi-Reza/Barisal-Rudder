<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="AllPlace.aspx.cs" Inherits="AllPlace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!----containers--->

    <div class="row" style="padding-top:50px;">
        <asp:Repeater ID="RepeaterRes" runat="server">
            <ItemTemplate>
              <div class="col-sm-4 col-md-4">
                  <a style="text-decoration:none;" href="PlaceViewSingle.aspx?DID=<%#Eval("DID") %>">
                    <div class="thumbnail">
                      <img src="~Images/DataPlace/<%#Eval("DID") %>/<%#Eval("imName") %><%#Eval("extension") %>" alt="<%#Eval("imName") %>">
                      <div class="caption">
                       <div class="resNameView"><%#Eval("name") %></div>
                        <div class="resDetails"><%#Eval("speciality") %></div>
                        <div class="resDetails"><%#Eval("location") %></div>
                      </div>
                    </div>
                  </a>
              </div>
            </ItemTemplate>
           </asp:Repeater>
    </div>


    <!----containers ending--->

</asp:Content>

