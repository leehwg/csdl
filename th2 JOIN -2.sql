﻿---a. Viết vấn tin hiển thị tên nhân viên, mã số phòng ban và tên phòng ban cho tất cả các nhân viên.
SELECT e.FIRST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
---b.Tạo danh sách các công việc duy nhất trong phòng ban có mã số 30, bao gồm cột mã số vị trí của phòng ban trong kết quả.
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
---ban và tên thành phố của tất cả các nhân viên có thu nhập từ hoa hồng.
SELECT e.FIRST_NAME, d.DEPARTMENT_ID, c.CITY
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON d.DEPARTMENT_ID=e.DEPARTMENT_ID
JOIN LOCATIONS c
ON c.LOCATION_ID = d.LOCATION_ID
WHERE e.COMMISSION_PCT IS NOT NULL

---e. Viết vấn tin hiển thị tên nhân viên, mã số công việc, mã số phòng ban
---và tên phòng ban cho tất cả các nhân viên làm việc ở Toronto.
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON d.DEPARTMENT_ID=e.DEPARTMENT_ID
JOIN LOCATIONS c
ON c.LOCATION_ID = d.LOCATION_ID
WHERE c.CITY='Toronto'
---mã số người quản lý
from EMPLOYEES e
join EMPLOYEES m
on e.MANAGER_ID = m.EMPLOYEE_ID
---King (không có người quản lý).
from EMPLOYEES e
join EMPLOYEES m
on e.MANAGER_ID = m.EMPLOYEE_ID
where m.FIRST_NAME = 'Adam'
---làm chung phòng ban với nhân viên đó
---nhận vào làm sau ngày vào làm của Davies.
---quản lý của họ, cùng với tên của người quản lý và ngày vào làm. Nhãn của
---các cột là Employee, Emp Hired, Manager, Mgr Hired.