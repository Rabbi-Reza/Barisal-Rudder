<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="bookRes.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- HTML Form (wrapped in a .bootstrap-iso div) -->
        <div class="container">
            <br /><br />
        <div class="form-horizontal">
   
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Date"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="date" runat="server" CssClass="form-control"></asp:DropDownList>  
                        
                    </div>
             </div>
 
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Time"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>  
                        
                    </div>
             </div>

             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Table No"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>  
                        
                    </div>
             </div>
       
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnadd" runat="server" CssClass="btn-success" Text="DONE" OnClick="btnbook_Click" />
                            
                    </div>
                </div>
   
  </div>
 </div>

</asp:Content>

