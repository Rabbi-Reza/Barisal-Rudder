﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PlaceAdmin.aspx.cs" Inherits="PlaceAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <!---table---->
    <div class="container"><br /><br />
        <div class="panel panel-default" style="overflow:auto;">
              <!-- Default panel contents -->
            <div class="panel-heading">All Data<br />

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                     AutoGenerateDeleteButton="True" AutoGenerateEditButton="True"
                     DataKeyNames="DID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                    <Columns>
                        <asp:BoundField DataField="DID" HeaderText=" DID " InsertVisible="False" ReadOnly="True" SortExpression="DID" />
                         <asp:BoundField DataField="name" HeaderText="  Name " SortExpression="name" />
                        <asp:BoundField DataField="nearest" HeaderText="  Nearest place " SortExpression="nearest" />
                        <asp:BoundField DataField="location" HeaderText=" location " SortExpression="location" />
                        <asp:BoundField DataField="speciality" HeaderText=" Speciality " SortExpression="speciality" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    </Columns>

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

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:UserConnectionString1 %>"
                     DeleteCommand=" DELETE FROM [imagePl] WHERE [DID] = @DID ; DELETE FROM [dataPlace] WHERE [DID] = @DID" 
                    InsertCommand="INSERT INTO [dataPlace] ([name],[nearest], [location],  [description],[speciality]) VALUES (@name,@nearest, @location, @description ,@speciality)"
                     SelectCommand="SELECT * FROM [dataPlace]"
                     UpdateCommand="UPDATE [dataPlace] SET [name] = @name, [nearest] = @nearest, [location] = @location, [description] = @description, [speciality] = @speciality WHERE [DID] = @DID">
                  
                      <DeleteParameters>
                        <asp:Parameter Name="DID" Type="Int64" />
                    </DeleteParameters>

                    <InsertParameters>
                       
                        <asp:Parameter Name="name" Type="String" />
                         <asp:Parameter Name="nearest" Type="String" />
                        <asp:Parameter Name="location" Type="String" />
                        <asp:Parameter Name="speciality" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                         <asp:Parameter Name="nearest" Type="String" />
                        <asp:Parameter Name="location" Type="String" />
                        <asp:Parameter Name="speciality" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="DID" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
              </div>
          </div>
              <!-- Table -->
             
                        
                    
        </div>
        <!---table end--->


</asp:Content>

