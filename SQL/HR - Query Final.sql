--1. Melakukan JOIN, INNER JOIN Tabel employee dan distribution_centers
--2. Hasil output disimpan menjadi file dataset baru distri_employees.csv

SELECT 
	employee.Fisrt_Name,Last_Name,Gender,Age,Length_Service,Absent_Hours,distribution_centers_id,
	distribution_centers.id,name,latitude,longitude
FROM 
	employee 
INNER JOIN distribution_centers ON employee.distribution_centers_id = distribution_centers.id;


--3. Melakukan data manipulation terhadap dataset distri_employees.csv (tabel distri_employees)

SELECT * FROM distri_employees;

--4. Menggabungkan field first_name dan last_name menjadi field 'name'

SELECT CONCAT_WS(' ',fisrt_name, last_name) AS name FROM distri_employees;

--5. Mengganti nama field name untuk distribution_centers menjadi location lewat edit properties tabel
--6. Memilih/select kolom name, age, gender, length_service, absent_hours, distribution_centers_id,location, latitude,longitude

SELECT CONCAT_WS(' ',fisrt_name, last_name) AS name, 
	    age, gender, length_service, absent_hours, distribution_centers_id, location, latitude, longitude
FROM distri_employees;

--7. Hasil output disimpan dengan nama file employeesfinal.csv untuk digunakan pada colab python checkpoint 5 (Visualisasi)