<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="dangKy.aspx.cs" Inherits="Miu_sit.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hi font: bold 250px> Dang Ky</hi>
    <div id ="phanthan">
		<div class = "row1">
			<div id ="user" class ="col1">
				<form action="Link.html" method="post" name="Nhap Thong tin">
					Họ và tên  <input type="text" name="ten"/><br /><br /><br />
					Giới tính  <input type="radio" name="gender" value="Nam" checked/> Nam
					           <input type="radio" name="gender" value="Nu"/> Nữ<br/><br /><br />
					Ngày sinh  <input type="date" name ="ngaysinh" /><br/><br /><br />
					Số CMND    <input type="text" name="cmnd"  /><br /><br /><br />
					Địa chỉ nhà  <input type="text" name="diachi" />
					<p>Bạn phải điền đầy đủ tất cả các thông tin trên</p>
				</form>
			</div>

			<div id ="ticket" class="col1">
				<form action="Link.html" method="post" name="Đặt vé">
					Ghế <input type="radio" name="loai" value="VIP" checked/> VIP
						<input type="radio" name="loai" value="Thuong" checked> Thường 
					Số ghế <input type="number" name="vitri" min="1" max="100" step="1" value="1"/>
					    <p>Tùy vào loại ghế mà vé sẽ có giá khác nhau</p>
					FanShop <input type="radio" name="fanshop" value="Mua" checked> Mua
							<input type="radio" name="fanshop" value="KhongMua" checked> Không Mua
							<img src="App_Themes/Theme/images/gift.jpg" width="120" height =auto>
							<p>Combo có giá là 250000 VND, chỉ bán combo </p>
					Nhận vé <input type="radio" name="nhanve"  checked> Trụ sở công ty F
							<input type="radio" name="nhanve"  checked> Địa chỉ nhà bạn<br/><br /><br />
					Thanh toán  <input type="text" name="thanhtoan"/>
					<p>Thanh toán bằng tài khoản ngân hàng</p>
					<p>Sẽ xuất hiện mã giao dich sau khi thanh toán</p>
					<p>Dùng cho trường hợp hủy và đổi vé</p>
				</form>
			</div>
		</div>
	</div><!--phanthan-->
</asp:Content>
