<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ManHotel.aspx.cs" Inherits="ManHotel" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
    <div class="container">
        <div class="form-horizontal">
            <h2>ADD Data</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Type"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="typ" CssClass="form-control" runat="server"></asp:TextBox>
                       <!---- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="type is Required...!!" CssClass="text-danger" ControlToValidate="typ"></asp:RequiredFieldValidator>--->
                    </div>
             </div>
            <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="nam" CssClass="form-control" runat="server"></asp:TextBox>
                       
                    </div>
             </div>
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Location"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="loc" CssClass="form-control" runat="server"></asp:TextBox>
                     <!----   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="location is Required...!!" CssClass="text-danger" ControlToValidate="loc"></asp:RequiredFieldValidator>--->
                    </div>
             </div>
            <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Contact Number"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="cont" CssClass="form-control" runat="server"></asp:TextBox>
                       <!---- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact is Required...!!" CssClass="text-danger" ControlToValidate="cont"></asp:RequiredFieldValidator>--->
                    </div>
             </div>
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="des" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                       <!---- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="description is Required...!!" CssClass="text-danger" ControlToValidate="des"></asp:RequiredFieldValidator>--->
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
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnadd" runat="server" CssClass="btn btn-default" Text="ADD" OnClick="btnadd_Click" />
                            
                    </div>
                </div>
        </div>
        </div>
        

   


</asp:Content>


