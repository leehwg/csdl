---a. Thực hiện câu lệnh sau để tạo table tên MY_EMPLOYEE :
CREATE TABLE my_employee
(
ID int PRIMARY KEY,
last_name VARCHAR(25),
first_name VARCHAR(25),
user_id VARCHAR(8),
salary NUMERIC(9,2)
)
---b. Hiển thị cấu trúc table tên MY_EMPLOYEESelect *from INFORMATION_SCHEMA.COLUMNSwhere INFORMATION_SCHEMA.COLUMNS.TABLE_NAME='my_employee'---c. Thực hiện chuyển chế độ transaction từ AUTO_COMMIT sang IMPLICITSET IMPLICIT_TRANSACTIONS ONINSERT INTO my_employeeVALUES (1,'Patel', 'Ralph rpatel', USER_ID(),895)---d.Thêm dòng thứ hai trong bảng dữ liệu đã cho vào table MY_EMPLOYEE, liệt
---kê các cột được thêm dữ liệu trong câu lệnh INSERT, xem lại các dòng đã
---thêm vào table MY_EMPLOYEEINSERT INTO my_employee (ID, last_name, first_name, user_id, salary)VALUES (2, 'Dancs', 'Betty bdancs', USER_ID(), 860)---e. Thêm 2 dòng dữ liệu kế trong bảng dữ liệu mẫu vào tableINSERT INTO my_employee (ID, last_name, first_name, user_id, salary)VALUES (3, 'Biri', 'Ben bbiri', USER_ID(), 1100 )INSERT INTO my_employee (ID, last_name, first_name, user_id, salary)VALUES (4, 'Newman', 'Chad cnewman', USER_ID(), 750)---f. Xem lại nội dung bảng dữ liệuSELECT * FROM my_employee---g. Buộc dữ liệu đã thêm vào là thường trực (COMMIT)COMMIT---h. Thay đổi họ của nhân viên 3 thành Drexler.UPDATE my_employeeSET last_name = 'Drexler'WHERE ID=3---i. Thay đổi lương cho các nhân viên có tiền lương nhỏ hơn 900 thành 1000.UPDATE my_employeeSET salary=1000WHERE salary<100---j. Xóa nhân viên Dancs.DELETEFROM my_employeeWHERE last_name like 'Dancs'---HOẶCDELETEFROM my_employeeWHERE ID=2---k. Chấp nhận tất cả những thay đổi ở trên (COMMIT)COMMIT---l. Thêm dòng dữ liệu cuối cùng trong bảng dữ liệu mẫu vào table MY_EMPLOYEE.INSERT INTO my_employee (ID, last_name, first_name, user_id, salary)VALUES (5, 'Ropeburn', 'Audrey aropebur', USER_ID(), 1550 )---m. Đánh dấu điểm bảo lưu trong xử lý Transaction (SAVE TRANSACTION)SAVE TRAN Dencaul---n. Xóa dữ liệu toàn bộ table.DELETE FROM my_employeeSELECT * FROM my_employee---o.ROLLBACK TRAN DencaulSELECT * FROM my_employee---COMMIT SELECT * FROM my_employeeDROP TABLE my_employee