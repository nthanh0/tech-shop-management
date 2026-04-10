USE ShopManagement;
-- Danh mục & Nhà cung cấp
INSERT INTO Supplier (SupplierID, SupplierName, Address, Phone, Email) VALUES ('SUP01', N'Apple Việt Nam', N'Quận 1, TP HCM', '18001127', 'contact@apple.vn'), ('SUP02', N'Samsung Vina', N'Quận 1, TP HCM', '1800588889', 'info@samsung.com.vn'), ('SUP03', N'Synnex FPT', N'Cầu Giấy, Hà Nội', '02473006666', 'fpt@synnex.com'), ('SUP04', N'Digiworld', N'Quận 3, TP HCM', '02839290059', 'info@digiworld.com.vn'), ('SUP05', N'PETROSETCO', N'Bình Thạnh, TP HCM', '02838221666', 'contact@petrosetco.vn');

-- Nhân viên (15 người)
INSERT INTO Employee (EmployeeID, FullName, Phone, Email, Role) VALUES 
('EMP01', N'Trần Văn A', '0901234567', 'a.tran@shop.com', N'Quản lý'),
('EMP02', N'Nguyễn Thị B', '0912345678', 'b.nguyen@shop.com', N'Bán hàng'),
('EMP03', N'Lê Văn C', '0923456789', 'c.le@shop.com', N'Thủ kho'),
('EMP04', N'Phạm Thị D', '0934567890', 'd.pham@shop.com', N'Thu ngân'),
('EMP05', N'Hoàng Văn E', '0945678901', 'e.hoang@shop.com', N'Kỹ thuật'),
('EMP06', N'Nguyễn Văn Bình', '0956789012', 'binh.nguyen@shop.com', N'Bán hàng'),
('EMP07', N'Trần Thị Hoa', '0967890123', 'hoa.tran@shop.com', N'Thu ngân'),
('EMP08', N'Lý Hải Nam', '0978901234', 'nam.ly@shop.com', N'Thủ kho'),
('EMP09', N'Đặng Minh Tuấn', '0989012345', 'tuan.dang@shop.com', N'Kỹ thuật'),
('EMP10', N'Bùi Phương Thảo', '0990123456', 'thao.bui@shop.com', N'Chăm sóc khách hàng'),
('EMP11', N'Vũ Hoàng Long', '0909123456', 'long.vu@shop.com', N'Bán hàng'),
('EMP12', N'Phạm Bảo Anh', '0919234567', 'anh.pham@shop.com', N'Marketing'),
('EMP13', N'Đỗ Thùy Chi', '0929345678', 'chi.do@shop.com', N'Kế toán'),
('EMP14', N'Ngô Tiến Dũng', '0939456789', 'dung.ngo@shop.com', N'Bảo vệ'),
('EMP15', N'Trương Gia Bình', '0949567890', 'binh.truong@shop.com', N'Quản lý');

-- Khách hàng (15 người)
INSERT INTO Customer (CustomerID, FullName, Phone, Email, Address) VALUES 
('CUS01', N'Vũ Đại Dương', '0988111222', 'duongvu@gmail.com', N'Đống Đa, Hà Nội'),
('CUS02', N'Đặng Mai Linh', '0977222333', 'linhdang@gmail.com', N'Hai Bà Trưng, Hà Nội'),
('CUS03', N'Lý Quang Huy', '0966333444', 'huyly@gmail.com', N'Hoàn Kiếm, Hà Nội'),
('CUS04', N'Bùi Thị Xuân', '0955444555', 'xuanbui@gmail.com', N'Tây Hồ, Hà Nội'),
('CUS05', N'Đỗ Đức Phát', '0944555666', 'phatdo@gmail.com', N'Cầu Giấy, Hà Nội'),
('CUS06', N'Nguyễn Hoàng Nam', '0911222331', 'nam.hoang@gmail.com', N'Thanh Xuân, Hà Nội'),
('CUS07', N'Trần Thu Hà', '0922333442', 'ha.tran88@gmail.com', N'Ba Đình, Hà Nội'),
('CUS08', N'Lê Minh Triết', '0933444553', 'triet.le@outlook.com', N'Long Biên, Hà Nội'),
('CUS09', N'Phạm Thùy Dương', '0944555664', 'duong.pham@yahoo.com', N'Nam Từ Liêm, Hà Nội'),
('CUS10', N'Hoàng Quốc Trung', '0955666775', 'trung.hq@gmail.com', N'Bắc Từ Liêm, Hà Nội'),
('CUS11', N'Vũ Phương Anh', '0966777886', 'anhvp.student@utc.edu.vn', N'Cầu Giấy, Hà Nội'),
('CUS12', N'Đỗ Kim Chi', '0977888997', 'chi.do@gmail.com', N'Hoàng Mai, Hà Nội'),
('CUS13', N'Trương Công Vinh', '0988999008', 'vinh.truong@gmail.com', N'Hà Đông, Hà Nội'),
('CUS14', N'Phan Thanh Bình', '0912999119', 'binh.pt@gmail.com', N'Tây Hồ, Hà Nội'),
('CUS15', N'Ngô Bảo Châu', '0913888220', 'chau.ngo@gmail.com', N'Hai Bà Trưng, Hà Nội');

-- ==============================================
-- 1. Tài khoản cho 15 Nhân viên (ACC01 - ACC15)
-- ==============================================
INSERT INTO Account (AccountID, Username, Password, Role, IsActive, EmployeeID, CustomerID) VALUES 
('ACC01', 'admin', '123', 'Admin', 1, 'EMP01', NULL),
('ACC02', 'nhanvien_b', '123', 'Sales', 1, 'EMP02', NULL),
('ACC03', 'thukho_c', '123', 'Inventory', 1, 'EMP03', NULL),
('ACC04', 'thungan_d', '123', 'Sales', 1, 'EMP04', NULL),
('ACC05', 'kythuat_e', '123', 'Technician', 1, 'EMP05', NULL),
('ACC06', 'nhanvien_binh', '123', 'Sales', 1, 'EMP06', NULL),
('ACC07', 'thungan_hoa', '123', 'Sales', 1, 'EMP07', NULL),
('ACC08', 'thukho_nam', '123', 'Inventory', 1, 'EMP08', NULL),
('ACC09', 'kythuat_tuan', '123', 'Technician', 1, 'EMP09', NULL),
('ACC10', 'cskh_thao', '123', 'Sales', 1, 'EMP10', NULL),
('ACC11', 'nhanvien_long', '123', 'Sales', 1, 'EMP11', NULL),
('ACC12', 'marketing_anh', '123', 'Marketing', 1, 'EMP12', NULL),
('ACC13', 'ketoan_chi', '123', 'Accountant', 1, 'EMP13', NULL),
('ACC14', 'baove_dung', '123', 'Guard', 1, 'EMP14', NULL),
('ACC15', 'admin_binh', '123', 'Admin', 1, 'EMP15', NULL);

-- ==============================================
-- 2. Tài khoản cho 15 Khách hàng (ACC16 - ACC30)
-- ==============================================
INSERT INTO Account (AccountID, Username, Password, Role, IsActive, EmployeeID, CustomerID) VALUES 
('ACC16', 'khachhang_duong', '123', 'Customer', 1, NULL, 'CUS01'),
('ACC17', 'khachhang_linh', '123', 'Customer', 1, NULL, 'CUS02'),
('ACC18', 'khachhang_huy', '123', 'Customer', 1, NULL, 'CUS03'),
('ACC19', 'khachhang_xuan', '123', 'Customer', 1, NULL, 'CUS04'),
('ACC20', 'khachhang_phat', '123', 'Customer', 1, NULL, 'CUS05'),
('ACC21', 'khachhang_nam', '123', 'Customer', 1, NULL, 'CUS06'),
('ACC22', 'khachhang_ha', '123', 'Customer', 1, NULL, 'CUS07'),
('ACC23', 'khachhang_triet', '123', 'Customer', 1, NULL, 'CUS08'),
('ACC24', 'khachhang_thuyduong', '123', 'Customer', 1, NULL, 'CUS09'),
('ACC25', 'khachhang_trung', '123', 'Customer', 1, NULL, 'CUS10'),
('ACC26', 'khachhang_phuonganh', '123', 'Customer', 1, NULL, 'CUS11'),
('ACC27', 'khachhang_kimchi', '123', 'Customer', 1, NULL, 'CUS12'),
('ACC28', 'khachhang_vinh', '123', 'Customer', 1, NULL, 'CUS13'),
('ACC29', 'khachhang_binh', '123', 'Customer', 1, NULL, 'CUS14'),
('ACC30', 'khachhang_chau', '123', 'Customer', 1, NULL, 'CUS15');
