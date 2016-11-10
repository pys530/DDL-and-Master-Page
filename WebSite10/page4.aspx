<%@ Page Title="Page 4" Language="C#" MasterPageFile="~/Shi.Master" AutoEventWireup="true" CodeFile="page4.aspx.cs" Inherits="_Page4" %>

<script runat="server">
      void Button_Click(Object sender, EventArgs e) 
      {
         Label1.Text = "You selected Product ID: " + 
         DropDownList1.SelectedItem.Value + ".";         
      }
</script>

<asp:content id="BodyContent" contentplaceholderid="MainContent" runat="server">
    <!--Associate page4.aspx to the Master Page named Shi.master-->
    <div class="jumbotron">
        <h2>Page 4</h2>
        <p class="lead">Page should contain a DropDownList with its options’ values and text populated from two fields in Product table. 
            Option values should be set to the value of the primary key from the table. DDL should be sorted by text field.</p>

    <!--Page4.aspx functionality:
        o An option that uses the selected value from the DropDownList control to display all columns of the selected record.-->
        <label>Select Product:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PRODUCT_NAME" 
            DataValueField="PRODUCT_ID"></asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button1" Text="Submit" OnClick="Button_Click" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" />

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
                <asp:BoundField DataField="MANUFACTURER" HeaderText="MANUFACTURER" SortExpression="MANUFACTURER" />
                <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
                <asp:BoundField DataField="UNIT_PRICE" HeaderText="UNIT_PRICE" SortExpression="UNIT_PRICE" />
                <asp:BoundField DataField="UNIT_WEIGHT" HeaderText="UNIT_WEIGHT" SortExpression="UNIT_WEIGHT" />
                <asp:BoundField DataField="SUBCATEGORY_ID" HeaderText="SUBCATEGORY_ID" SortExpression="SUBCATEGORY_ID">
                    <ControlStyle Font-Size="Small" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString2 %>" SelectCommand="SELECT DISTINCT [PRODUCT_ID], [PRODUCT_NAME], [MANUFACTURER], [QUANTITY], [UNIT_PRICE], [UNIT_WEIGHT], [SUBCATEGORY_ID], [CATEGORY_ID] FROM [PRODUCT] ORDER BY [PRODUCT_NAME]"></asp:SqlDataSource>



    </div>


</asp:Content>
