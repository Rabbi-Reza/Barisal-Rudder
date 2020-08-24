﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="restrans.aspx.cs" Inherits="restrans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!---table---->
    <div class="container"><br /><br />
        <div class="panel panel-default" style="overflow:auto;">
              <!-- Default panel contents -->
            <div class="panel-heading">All Data<br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                     AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString1 %>" DeleteCommand="DELETE FROM [transport] WHERE [tId] = @tId" InsertCommand="INSERT INTO [transport] ([Address], [Description]) VALUES (@Address, @Description)" SelectCommand="SELECT * FROM [transport]" UpdateCommand="UPDATE [transport] SET [Address] = @Address, [Description] = @Description  WHERE [tId] = @tId">
                    <DeleteParameters>
                        <asp:Parameter Name="tId" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Address" Type="String" />
                      
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tId" Type="Int64" />
                         <asp:Parameter Name="Address" Type="String" />
                      
                        <asp:Parameter Name="Description" Type="String" />
                        
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:UserConnectionString1 %>"
                     SelectCommand="SELECT * FROM [transport]" 
                    UpdateCommand="UPDATE [transport] SET [Address]=@Address,[Description]=@Description WHERE [tId]=@tId" 
                    DeleteCommand="DELETE from [transport] where [tId]=@tId">
                    <UpdateParameters>
                <asp:Parameter Name="Address" type="String"/>
               
                <asp:Parameter Name="Description"  Type="String"/>
                <asp:Parameter Name="tId" Type="Int64" />
            </UpdateParameters>
                </asp:SqlDataSource>
              </div>
          </div>
              <!-- Table -->
             
                        
                    
        </div>
        <!---table end--->


</asp:Content>

