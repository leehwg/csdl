---a.Viết câu lệnh tạo table DEPT dựa trên bảng sau. Ghi lại thành tập tin
---script lab9_1.sql, sau đó thi hành câu lệnh để tạo table. Xem lại table
---đã được tạo chưa.
USE HR
go
CREATE TABLE DEPT
(
ID numeric (7,0),
NAME Varchar(25)
)
---b. Lấy dữ liệu từ table DEPARTMENTS thêm vào table DEPT.
INSERT INTO DEPT (ID, NAME)
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM DEPARTMENTS

---c. Viết câu lệnh tạo table EMP dựa trên bảng sau. Ghi lại thành tập tin
---script lab9_3.sql, sau đó thi hành câu lệnh để tạo table. Xem lại table đã
---được tạo chưa.
DROP TABLE EMP
GO
CREATE TABLE EMP
(
ID numeric(7,0),
LAST_NAME varchar(25),
FIRST_NAME varchar(25),
DEPT_ID varchar(7)
)
---d.Thay đổi table EMP cho phép họ nhân viên dài hơn. Xem lại thay đổi.
ALTER TABLE EMP
ALTER COLUMN LAST_NAME varchar(30)

---e. e. Xem lại hai table DEPT và EMP đã có trong kho dữ liệu chưa
SELECT *
FROM INFORMATION_SCHEMA.tables

---f.Tạo table EMPLOYEES2 dựa vào cấu trúc của table EMPLOYEES (bao gồm
---các cột EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY và
---DEPARTMENT_ID). Tên của các cột trong table mới lần lượt là ID,
---FIRST_NAME, LAST_NAME, SALARY và DEPT_ID
DROP TABLE EMPLOYEE2
GO
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID
INTO EMPLOYEE2
FROM EMPLOYEES

---g. Xóa table EMP.DROP TABLE EMP---h. Đổi tên table EMPLOYEES2 thành EMP.ALTER TABLE EMPDROP ID---i. Xóa cột đầu tiên của table EMP, xem lại cấu trúc của EMP.