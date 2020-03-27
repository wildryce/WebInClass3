<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebInClass3.Pages.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Student - Activity Assessment</h1>
    </div>
    
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />

            <asp:RequiredFieldValidator ID="RequiredFieldStudentID" runat="server" 
                ErrorMessage="Student ID is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareStudentID" runat="server" 
                ErrorMessage="Student ID is a number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:CompareValidator>
            
             <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="Name" Display="None"></asp:RequiredFieldValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldCredits" runat="server" 
                ErrorMessage="Credits is a required field" 
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeCredits" runat="server" 
                ErrorMessage="Credits out of range (0.0 to 40.0)"
                 MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RangeValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                ErrorMessage="Emergency Phone Number is a required field" 
                SetFocusOnError="true" ControlToValidate="Phone" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" 
                ErrorMessage="Emergency Phone Number is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="Phone" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-6">
            <h4>Student Data Entry</h4>

            <div class="row">
        <div class="col-md-2 text-right">
                <asp:Label ID="LabelStudentID" runat="server" Text="StudentID"
                     AssociatedControlID="StudentID"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="StudentID" runat="server" ></asp:TextBox>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-2 text-right">
                  <asp:Label ID="LabelName" runat="server" Text="Name"
                     AssociatedControlID="Name"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-2 text-right">
                <asp:Label ID="LabelCredits" runat="server" Text="Credits"
                     AssociatedControlID="Credits"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Credits" runat="server" ></asp:TextBox>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-md-2 text-right">
                  <asp:Label ID="Label3" runat="server" Text="Emergency Phone Number"
                     AssociatedControlID="Phone"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
        </div>
    </div>
        </div>
        
        <div class="col-md-6">
            <div class="col-md-4 text-left">
                <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click">Add Student</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
                <br/><br/>
                <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
                <br/><br/>
                <asp:GridView ID="StudentGridView" runat="server"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
