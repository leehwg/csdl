---a. Viết vấn tin hiển thị tên nhân viên, mã số phòng ban và tên phòng ban cho tất cả các nhân viên.
SELECT e.FIRST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
---b.Tạo danh sách các công việc duy nhất trong phòng ban có mã số 30, bao gồm cột mã số vị trí của phòng ban trong kết quả.SELECT JOB_ID, d.LOCATION_IDFROM EMPLOYEES eJOIN DEPARTMENTS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_IDSELECT DISTINCT JOB_ID, d.LOCATION_IDFROM EMPLOYEES eJOIN DEPARTMENTS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_IDWHERE d.DEPARTMENT_ID=30---c. Viết vấn tin hiển thị tên nhân viên, mã số phòng ban, mã số vị trí phòng
---ban và tên thành phố của tất cả các nhân viên có thu nhập từ hoa hồng.
SELECT e.FIRST_NAME, d.DEPARTMENT_ID, c.CITY
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON d.DEPARTMENT_ID=e.DEPARTMENT_ID
JOIN LOCATIONS c
ON c.LOCATION_ID = d.LOCATION_ID
WHERE e.COMMISSION_PCT IS NOT NULL

---e. Viết vấn tin hiển thị tên nhân viên, mã số công việc, mã số phòng ban
---và tên phòng ban cho tất cả các nhân viên làm việc ở Toronto.SELECT e.FIRST_NAME, d.DEPARTMENT_ID, c.CITY
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON d.DEPARTMENT_ID=e.DEPARTMENT_ID
JOIN LOCATIONS c
ON c.LOCATION_ID = d.LOCATION_ID
WHERE c.CITY='Toronto'---f.Hiển thị tên nhân viên và mã số nhân viên, cùng với tên người quản lý và
---mã số người quản lýselect e.FIRST_NAME as 'Employee', e.EMPLOYEE_ID as 'Emp#', m.FIRST_NAME as 'manager', e.MANAGER_ID as'Mgrn'
from EMPLOYEES e
join EMPLOYEES m
on e.MANAGER_ID = m.EMPLOYEE_ID---g. Thay đổi lab4_6.sql để hiển thị tất cả các nhân viên bao gồm nhân viên
---King (không có người quản lý).select e.FIRST_NAME , e.EMPLOYEE_ID , m.FIRST_NAME , e.MANAGER_ID 
from EMPLOYEES e
join EMPLOYEES m
on e.MANAGER_ID = m.EMPLOYEE_ID
where m.FIRST_NAME = 'Adam'---h. Tạo vấn tin hiển thị tên nhân viên, mã số phòng ban và tất cả các nhân viên
---làm chung phòng ban với nhân viên đó---i. Tạo vấn tin hiển thị tên nhân viên, ngày vào làm của những nhân viên được
---nhận vào làm sau ngày vào làm của Davies.---j. Hiển thị tên và ngày vào làm của những nhân viên được nhận vào làm trước
---quản lý của họ, cùng với tên của người quản lý và ngày vào làm. Nhãn của
---các cột là Employee, Emp Hired, Manager, Mgr Hired.
