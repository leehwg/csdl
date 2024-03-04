---a.Thêm ràng buộc khóa chính mức table cho table EMP trên cột ID. Đặt tên
---ràng buộc là my_emp_id_pk
DROP TABLE EMP
go
CREATE TABLE EMP
(
ID numeric (7,0) PRIMARY KEY,
LAST_NAME varchar(25),
FIRST_NAME varchar(25),
DEPT_ID varchar(7)
)
---cách 2
DROP TABLE EMP
GO
CREATE TABLE EMP
(
ID numeric(7,0),
LAST_NAME varchar(25),
FIRST_NAME varchar(25),
DEPT_ID varchar(7),
PRIMARY KEY(ID)
)
---cách 3
DROP TABLE EMP
GO
CREATE TABLE EMP
(
ID numeric(7,0) NOT NULL,
LAST_NAME varchar(25),
FIRST_NAME varchar(25),
DEPT_ID varchar(7)
)
ALTER TABLE EMP
ADD CONSTRAINT emp_id PRIMARY KEY(ID)

---b.Thêm ràng buộc khóa chính mức table cho table DEPT trên cột ID. Đặt tên
---ràng buộc là my_deptid_pk.
DROP TABLE DEPT
GO
CREATE TABLE DEPT
(
ID numeric (7,0) NOT NULL,
NAME Varchar(25)
)
ALTER TABLE DEPT
ADD CONSTRAINT dept_id PRIMARY KEY(ID)

---c. Thêm cột DEPT_ID vào table EMP. Thêm ràng buộc khóa ngoài cho table
---EMP để bảo đảm là không thể gán cho nhân viên một phòng ban chưa có.
---Đặt tên ràng buộc là my_emp_dept_id_fk.
ALTER TABLE EMP
ALTER COLUMN dept_id numeric(7,0)
go
ALTER TABLE EMP
ADD CONSTRAINT EMP_DEPT_id_dept_id FOREIGN KEY(dept_id) REFERENCES DEPT(ID)
