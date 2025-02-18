select e.first_name, e.last_name, e.department_id, d.department_name from employees e 
		left join departments d on e.department_id = d.department_id

		
create table locations (location_id int, street_address varchar(40), poctal_code varchar(40), city varchar(40), state_province varchar(40), country_id varchar(40))
insert into locations values 
(        1000,  '1297 Via Cola di Rie'     ,                 '989        ',  'Roma'             ,   '                 ' ,  'IT   '),      
(        1100,  '93091 Calle della Testa'  ,                 '10934      ',  'Venice'           ,   '                 ' ,  'IT   '),     
(        1200,  '2017 Shinjuku-ku '        ,                 '1689       ',  'Tokyo  '          ,   ' Tokyo Prefecture' ,  'JP   '),      
(        1300,  '9450 Kamiya-cho    '      ,                 '6823       ',  'Hiroshima'        ,   '                 ' ,  'JP   '),      
(        1400,  '2014 Jabberwocky Rd '     ,                 '26192      ',  'Southlake '       ,   ' Texas           ' ,  'US   '),     
(        1500,  '2011 Interiors Blvd '     ,                 '99236      ',  'South San Francisco', ' California      ' ,  'US   '),      
(        1600,  '2007 Zagora St      '     ,                 '50090      ',  'South Brunswick  ',   ' New Jersey      ' ,  'US   '),     
(        1700,  '2004 Charade Rd     '     ,                 '98199      ',  'Seattle          ',   ' Washington      ' ,  'US   '),      
(        1800,  '147 Spadina Ave     '     ,                 'M5V 2L7    ',  'Toronto          ',   ' Ontario         ' ,  'CA   '),     
(        1900,  '6092 Boxwood St     '     ,                 'YSW 9T2   ' ,  'Whitehorse       ',   ' Yukon           ' ,  'CA   '),      
(        2000,  '40-5-12 Laogianggen '     ,                 '190518   '  ,  'Beijing          ',   '                 ' ,  'CN   '),      
(        2100,  '1298 Vileparle (E)  '     ,                 '490231  '   ,  'Bombay           ',   ' Maharashtra     ' ,  'IN   '),      
(        2200,  '12-98 Victoria Street'    ,                 '2901   '    ,  'Sydney           ',   ' New South Wales ' ,  'AU   '),      
(        2300,  '198 Clementi North   '    ,                 '540198'     ,  'Singapore        ',   '                 ' ,  'SG   '),      
(        2400,  '8204 Arthur St       '    ,                 ''           ,  'London           ',   '                 ' ,  'UK   '),      
(        2500,  'Magdalen Centre, The Oxford Science Park',  'OX9 9ZB    ',  'Oxford           ',   ' Oxford          ' ,  'UK   '),      
(        2600,  '9702 Chester Road     '   ,                 '9629850293' ,  'Stretford        ',   ' Manchester      ' ,  'UK   '),      
(        2700,  'Schwanthalerstr. 7031 '   ,                 '80925    '  ,  'Munich           ',   ' Bavaria         ' ,  'DE   '),      
(        2800,  'Rua Frei Caneca 1360  '   ,                 '01307-002'  ,  'Sao Paulo        ',   ' Sao Paulo       ' ,  'BR   '),      
(        2900,  '20 Rue des Corps-Saints'  ,                 '1730   '    ,  'Geneva           ',   ' Geneve          ' ,  'CH   '),      
(        3000,  'Murtenstrasse 921      '  ,                 '3095  '     ,  'Bern             ',   ' BE              ' ,  'CH   '),     
(        3100,  'Pieter Breughelstraat 837',                 '3029SK'     ,  'Utrecht          ',   ' Utrecht         ' ,  'NL   '),      
(        3200,  'Mariano Escobedo 9991     ',                '11932'      ,  'Mexico City      ',   ' Distrito Federal,',  'MX   ')


select e.first_name, e.last_name, d.department_name, l.city, l.state_province from employees e 
	 join departments d on e.department_id = d.department_id
	 join locations l on d.location_id = l.location_id 


create table job_grades (grade_level varchar(14), lowest_sal int, highest_sal int)
insert into job_grades values 
('A',  1000,  2999),
('B',  3000,  5999),
('C',  6000,  9999),
('D',  10000,  14999),
('E',  15000, 24999),
('F',  25000, 40000)

select e.first_name, e.last_name, e.salary, j.grade_level 
		from employees e left join job_grades j		
			on e.salary between j.lowest_sal and j.highest_sal



select e.first_name, e.last_name, d.department_id, d.department_name
		from employees e join departments d
			on e.department_id = d.department_id and e.department_id in (80, 40)


	
select e.first_name, e.last_name, d.department_name, l.city, l.state_province 
		from employees e join departments d on e.department_id = d.department_id and e.first_name like '%z%' 
						 join locations l on d.location_id = l.location_id 



select e.first_name, e.last_name, d.department_id, d.department_name
		from employees e join departments d on e.department_id = d.department_id

select e1.first_name, e1.last_name, e1.salary 
		from employees e1 join employees e2 on e1.salary < e2.salary and e2.employee_id = 182


select d.department_name, l.city, l.state_province from departments d
		join locations l on d.location_id = l.location_id


select e.first_name, e.last_name, d.department_id, d.department_name from employees e 
		left join departments d on e.department_id = d.department_id 
		

select e1.first_name as Employee_Name, e2.first_name as Manager from employees e1 
		join employees e2 on e1.employee_id = e2.manager_id


select e1.first_name, e1.last_name, e1.department_id from employees e1 
		join employees e2 on e1.department_id = e2.department_id and e1.Last_name = 'Taylor'




create table job_history (employee_id int, start_date varchar(14), end_date varchar(14), job_id varchar(20), department_id int)
insert into job_history values
(         102,  '2001-01-13',  '2006-07-24',  'IT_PROG   ',             60), 
(         101,  '1997-09-21',  '2001-10-27',  'AC_ACCOUNT',            110), 
(         101,  '2001-10-28',  '2005-03-15',  'AC_MGR    ',            110), 
(         201,  '2004-02-17',  '2007-12-19',  'MK_REP    ',             20), 
(         114,  '2006-03-24',  '2007-12-31',  'ST_CLERK  ',             50), 
(         122,  '2007-01-01',  '2007-12-31',  'ST_CLERK  ',             50), 
(         200,  '1995-09-17',  '2001-06-17',  'AD_ASST   ',             90), 
(         176,  '2006-03-24',  '2006-12-31',  'SA_REP    ',             80),
(         176,  '2007-01-01',  '2007-12-31',  'SA_MAN    ',             80),
(         200,  '2002-07-01',  '2006-12-31',  'AC_ACCOUNT',             90)


select e.*from employees e join job_history jh on jh.start_date = e.hire_date and (e.hire_date between '1993-01-01' and '1997-09-31')
						join departments d on e.department_id = d.department_id
						join jobs j on jh.job_id = j.job_id
				