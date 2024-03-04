---a. Viết vấn tin hiển thị tên và ngày vào làm của các nhân viên trong phòng ban
---của nhân viên tên Zlotkey, không bao gồm Zlotkey
select LAST_NAME, HIRE_DATE
from EMPLOYEES
where DEPARTMENT_ID in (
select DEPARTMENT_ID
from EMPLOYEES
where LAST_NAME ='Zlotkey')

---b. Tạo vấn tin hiển thị mã số nhân viên và tên nhân viên của các nhân viên
---có thu nhập cao hơn tiền lương trung bình. Sắp xếp kết quả theo thứ tự
---tiền lương giảm dần.
select EMPLOYEE_ID, FIRST_NAME
from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES)
order by SALARY desc;

---c. Viết vấn tin hiển thị mã số nhân viên và tên nhân viên của các nhân viên làm
---việc cùng phòng với những nhân viên có chữ u trong tên
select EMPLOYEE_ID, LAST_NAME
from EMPLOYEES
where DEPARTMENT_ID in (
select DEPARTMENT_ID
from EMPLOYEES
where LAST_NAME like '%u%')

---d.Hiển thị tên, mã số phòng ban và mã số công việc của tất cả các nhân viên
---có vị trí phòng ban là 1700.
select FIRST_NAME, DEPARTMENT_ID, JOB_ID
 from EMPLOYEES
 where DEPARTMENT_ID in(
 select DEPARTMENT_ID
 from DEPARTMENTS
 where LOCATION_ID = 1700)

 ---e. Hiển thị tên và tiền lương của những nhân viên do King quản lý.
 select LAST_NAME, SALARY
 from EMPLOYEES
 where MANAGER_ID in(
 select EMPLOYEE_ID
 from EMPLOYEES
where LAST_NAME = 'King')

---f. Hiển thị mã số phòng ban, tên nhân viên và mã số công việc của mọi nhân
---viên trong phòng ban tên Executive.