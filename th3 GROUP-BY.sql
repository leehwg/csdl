---a. Hiển thị tiền lương cao nhất, thấp nhất, tổng lương và lương trung bình
---của các nhân viên. Đặt tên cột lần lượt là Maximum, Minimum, Sum và
---Average. Làm tròn kết quả không có số lẽ. Ghi câu lệnh lại thành tập tin
---lab5_6.sql
SELECT MAX(SALARY), MIN(SALARY), SUM(SALARY), AVG(SALARY)
FROM EMPLOYEES

---b. Thay đổi lab5_6.sql để có kết quả theo từng nhóm công việc.
SELECT MAX(SALARY), MIN(SALARY), SUM(SALARY), AVG(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID

---c. Viết vấn tin để hiển thị tổng số nhân viên của mỗi nhóm công việc.
SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID

SELECT JOB_ID, COUNT(JOB_ID)
FROM EMPLOYEES
GROUP BY JOB_ID

---d. Hiển thị tổng số nhân viên quản lý
SELECT COUNT(DISTINCT MANAGER_ID)
FROM EMPLOYEES
--- Kiểm tra 
SELECT DISTINCT MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NOT NULL

---e. Viết vấn tin hiển thị chênh lệch giữa lương cao nhất và thấp nhất. Đặt tên cột
---là DIFFERENCE. SELECT max(salary)-min(salary) as Differece FROM
---employees
select max(SALARY)- min(SALARY) as 'Difference'
from EMPLOYEES

---f.Hiển thị mã số nhà quản lý và tiền lương thấp nhất của nhân viên trong nhóm
---nhà quản lý đó.. Chỉ hiển thị tiền lương thấp nhất trên 6000 dolar, sắp xếp thứ
---tự giảm dần theo tiền lương thấp nhất.
select m.MANAGER_ID, min(e.SALARY) as 'Lương thấp nhất'
from EMPLOYEES e
join EMPLOYEES m
on e.EMPLOYEE_ID = m.EMPLOYEE_ID
group by m.MANAGER_ID
having min(e.SALARY)>6000
order by min(e.SALARY) desc

---#where-->group by-->having

