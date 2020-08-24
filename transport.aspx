<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="transport.aspx.cs" Inherits="transport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="form-horizontal">
            <h2>ADD Data</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="address" CssClass="form-control" runat="server"></asp:TextBox>
                       <!---- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="type is Required...!!" CssClass="text-danger" ControlToValidate="address"></asp:RequiredFieldValidator>--->
                    </div>
             </div>
           <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="descript" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                       <!---- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="description is Required...!!" CssClass="text-danger" ControlToValidate="descript"></asp:RequiredFieldValidator>--->
                    </div>
           
          
             </div>
            <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Image 1"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="im1" CssClass="form-control" runat="server" />
                        <!----<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="image is Required...!!" CssClass="text-danger" ControlToValidate="im1"></asp:RequiredFieldValidator>--->
                    </div>
             </div>
            <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Image 2"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="im2" CssClass="form-control" runat="server" />
                        <!----<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="image is Required...!!" CssClass="text-danger" ControlToValidate="im2"></asp:RequiredFieldValidator>--->
                    </div>
             </div>
            <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Image 2"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                       
                    </div>
             </div>
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnadd" runat="server" CssClass="btn btn-default" Text="ADD" OnClick="btnadd_Click"/>
                            
                    </div>
                </div>
       
        </div>
        
   </div>


</asp:Content>



