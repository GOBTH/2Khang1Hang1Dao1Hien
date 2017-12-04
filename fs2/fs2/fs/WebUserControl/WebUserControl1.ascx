<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="fs.WebUserControl.WebUserControl1" %>
<h1>Đăng kí mua vé</h1>
<fieldset>
    <legend>Đăng kí</legend>
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" DataKeyNames="TENTK,VITRIGHE" DataSourceID="SqlDataMuaVe" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            <div id ="phanthan">
		        <div class = "row1">
			         <div id ="user" class ="col1">
                        TENTK:
                        <asp:Label ID="TENTKLabel1" runat="server" Text='<%# Eval("TENTK") %>' />
                        <br />
                        TEN:
                        <asp:TextBox ID="TENTextBox" runat="server" Text='<%# Bind("TEN") %>' />
                        <br />
                        GIOITINH:
                        <asp:TextBox ID="GIOITINHTextBox" runat="server" Text='<%# Bind("GIOITINH") %>' />
                        <br />
                        NGAYSINH:
                        <asp:TextBox ID="NGAYSINHTextBox" runat="server" Text='<%# Bind("NGAYSINH") %>' />
                        <br />
                        CMND:
                        <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
                        <br />
                        DIACHI:
                        <asp:TextBox ID="DIACHITextBox" runat="server" Text='<%# Bind("DIACHI") %>' />
                        <br />
                        SDT:
                        <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                        <br />
                   <p>Bạn phải điền đầy đủ tất cả các thông tin trên</p>
			    </div>
                <div id ="ticket" class="col1">
                        VITRIGHE:
                        <asp:Label ID="VITRIGHELabel1" runat="server" Text='<%# Eval("VITRIGHE") %>' />
                        <br />
                        <p>Tùy vào loại ghế mà vé sẽ có giá khác nhau</p>
                        FANSHOP:
                        <asp:TextBox ID="FANSHOPTextBox" runat="server" Text='<%# Bind("FANSHOP") %>' />
                        <br />
                        <p>Combo có giá là 250000 VND, chỉ bán combo </p>
                        NOINHANVE:
                        <asp:TextBox ID="NOINHANVETextBox" runat="server" Text='<%# Bind("NOINHANVE") %>' />
                        <br />
                        THANHTOAN:
                        <asp:TextBox ID="THANHTOANTextBox" runat="server" Text='<%# Bind("THANHTOAN") %>' />
                        <br />
                        <p>Thanh toán bằng tài khoản ngân hàng</p>
					    <p>Sẽ xuất hiện mã giao dich sau khi thanh toán</p>
					    <p>Dùng cho trường hợp hủy và đổi vé</p>
                 </div>
		       </div>
            </div>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            TENTK:
            <asp:TextBox ID="TENTKTextBox" runat="server" Text='<%# Bind("TENTK") %>' />
            <br />
            TEN:
            <asp:TextBox ID="TENTextBox" runat="server" Text='<%# Bind("TEN") %>' />
            <br />
            GIOITINH:
            <asp:TextBox ID="GIOITINHTextBox" runat="server" Text='<%# Bind("GIOITINH") %>' />
            <br />
            NGAYSINH:
            <asp:TextBox ID="NGAYSINHTextBox" runat="server" Text='<%# Bind("NGAYSINH") %>' />
            <br />
            CMND:
            <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            DIACHI:
            <asp:TextBox ID="DIACHITextBox" runat="server" Text='<%# Bind("DIACHI") %>' />
            <br />
            SDT:
            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            <br />
              VITRIGHE:
            <asp:TextBox ID="VITRIGHETextBox" runat="server" Text='<%# Bind("VITRIGHE") %>' />
            <br />
            FANSHOP:
            <asp:TextBox ID="FANSHOPTextBox" runat="server" Text='<%# Bind("FANSHOP") %>' />
            <br />
            NOINHANVE:
            <asp:TextBox ID="NOINHANVETextBox" runat="server" Text='<%# Bind("NOINHANVE") %>' />
            <br />
            THANHTOAN:
            <asp:TextBox ID="THANHTOANTextBox" runat="server" Text='<%# Bind("THANHTOAN") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            TENTK:
            <asp:Label ID="TENTKLabel" runat="server" Text='<%# Eval("TENTK") %>' />
            <br />
            VITRIGHE:
            <asp:Label ID="VITRIGHELabel" runat="server" Text='<%# Eval("VITRIGHE") %>' />
            <br />
            FANSHOP:
            <asp:Label ID="FANSHOPLabel" runat="server" Text='<%# Bind("FANSHOP") %>' />
            <br />
            NOINHANVE:
            <asp:Label ID="NOINHANVELabel" runat="server" Text='<%# Bind("NOINHANVE") %>' />
            <br />
            THANHTOAN:
            <asp:Label ID="THANHTOANLabel" runat="server" Text='<%# Bind("THANHTOAN") %>' />
            <br />
            TEN:
            <asp:Label ID="TENLabel" runat="server" Text='<%# Bind("TEN") %>' />
            <br />
            GIOITINH:
            <asp:Label ID="GIOITINHLabel" runat="server" Text='<%# Bind("GIOITINH") %>' />
            <br />
            NGAYSINH:
            <asp:Label ID="NGAYSINHLabel" runat="server" Text='<%# Bind("NGAYSINH") %>' />
            <br />
            CMND:
            <asp:Label ID="CMNDLabel" runat="server" Text='<%# Bind("CMND") %>' />
            <br />
            DIACHI:
            <asp:Label ID="DIACHILabel" runat="server" Text='<%# Bind("DIACHI") %>' />
            <br />
            SDT:
            <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataMuaVe" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [MUAVE]"></asp:SqlDataSource>
</fieldset>

