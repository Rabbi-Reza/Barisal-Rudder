<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Alltransport.aspx.cs" Inherits="Alltransport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row" style="padding-top:50px;">
        <asp:Repeater ID="RepeaterRes" runat="server">
            <ItemTemplate>
              <div class="col-sm-3 col-md-3">
                  <a style="text-decoration:none;" href="transView.aspx?tId=<%#Eval("tId") %>">
                    <div class="thumbnail">
                      <img src="~Images/transport/<%#Eval("tId") %>/<%#Eval("imName") %><%#Eval("extension") %>" alt="<%#Eval("imName") %>">
                      <div class="caption">
                        <div class="resNameView"><%#Eval("Address") %></div>
                       
                        
                      </div>
                    </div>
                  </a>
              </div>
            </ItemTemplate>
           </asp:Repeater>
    </div>


    <!----containers ending--->

</asp:Content>


