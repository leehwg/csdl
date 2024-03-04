﻿---a. Phòng nhân sự cần danh sách mã số phòng ban không có công việc
---‘ST_CLERK’. Sử dụng toán tử tập hợp để tạo báo cáo này.
---mã số quốc gia và tên quốc gia. Sử dụng toán tử tập hợp để tạo báo cáo này.
				WHERE LOCATION_ID IN
					(SELECT LOCATION_ID
					FROM DEPARTMENTS))

---CÁC QUỐC GIA
SELECT COUNTRY_ID, COUNTRY_NAME


---KIỂM TRA SỐ LIỆU
SELECT distinct l.COUNTRY_ID
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID
JOIN LOCATIONS l
ON d.LOCATION_ID = l.LOCATION_ID


---c.Tạo danh sách các công việc cho các phòng ban 10, 50, 20 (kết quả theo
---đúng thứ tự phòng ban như vậy). Hiển thị mã số công việc và mã số phòng
---ban sử dụng toán tử tập hợp.
SELECT JOB_ID, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID =10
UNION ALL
SELECT JOB_ID,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID =50
UNION ALL
SELECT JOB_ID,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID =20

---d. Tạo báo cáo danh sách bao gồm mã nhân viên, mã công việc của các nhân
---viên có tên công việc giống như tên công việc khi họ bắt đầu vào làm (nghĩa là,
---họ đã từng thay đổi công việc nhưng bây giờ quay lại làm công việc ban đầu)
SELECT EMPLOYEE_ID, JOB_ID
FROM EMPLOYEES
INTERSECT 
SELECT EMPLOYEE_ID, JOB_ID
FROM JOB_HISTORY

---e. Phòng nhân sự cần báo cáo như sau :
--- Tên nhân viên, mã phòng ban của nhân viên từ bảng
EMPLOYEES 
--- Mã phòng ban, tên phòng ban của các
phòng ban từ bảng