<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl2.ascx.cs" Inherits="fs.WebUserControl.WebUserControl2" %>
<h1> Đăng Kí Tài Khoản</h1>
<fieldset>
    <legend> Cập Nhạt Thông Tin</legend>
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" DataKeyNames="TENTK" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            TENTK:
            <asp:Label ID="TENTKLabel1" runat="server" Text='<%# Eval("TENTK") %>' />
            <br />
            MATKHAU:
            <asp:TextBox ID="MATKHAUTextBox" runat="server" Text='<%# Bind("MATKHAU") %>' />
            <br />
            EMAIL:
            <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            TENTK:
            <asp:TextBox ID="TENTKTextBox" runat="server" Text='<%# Bind("TENTK") %>' />
            <br />
            MATKHAU:
            <asp:TextBox ID="MATKHAUTextBox" runat="server" Text='<%# Bind("MATKHAU") %>' />
            <br />
            EMAIL:
            <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            TENTK:
            <asp:Label ID="TENTKLabel" runat="server" Text='<%# Eval("TENTK") %>' />
            <br />
            MATKHAU:
            <asp:Label ID="MATKHAULabel" runat="server" Text='<%# Bind("MATKHAU") %>' />
            <br />
            EMAIL:
            <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TAIKHOAN] WHERE [TENTK] = @original_TENTK AND [MATKHAU] = @original_MATKHAU AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL))" InsertCommand="INSERT INTO [TAIKHOAN] ([TENTK], [MATKHAU], [EMAIL]) VALUES (@TENTK, @MATKHAU, @EMAIL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [TENTK], [MATKHAU], [EMAIL] FROM [TAIKHOAN]" UpdateCommand="UPDATE [TAIKHOAN] SET [MATKHAU] = @MATKHAU, [EMAIL] = @EMAIL WHERE [TENTK] = @original_TENTK AND [MATKHAU] = @original_MATKHAU AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TENTK" Type="String" />
            <asp:Parameter Name="original_MATKHAU" Type="String" />
            <asp:Parameter Name="original_EMAIL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENTK" Type="String" />
            <asp:Parameter Name="MATKHAU" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MATKHAU" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="original_TENTK" Type="String" />
            <asp:Parameter Name="original_MATKHAU" Type="String" />
            <asp:Parameter Name="original_EMAIL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</fieldset>
