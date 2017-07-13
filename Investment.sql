select CONCAT(NAME,CONCAT('(',LEFT(Occupation,1),')'))from OCCUPATIONS ORDER BY NAME; 
select CONCAT('There are total',' ',COUNT(Occupation),' ', LOWER(Occupation),'s','.') from OCCUPATIONS GROUP BY Occupation ORDER by COUNT(occupation)


SET @d=0,@a=0,@p=0,@s=0; 
SELECT MIN(Doctor),MIN(Professor),MIN(SINGER),MIN(Actor) FROM 
(SELECT IF(OCCUPATION='Actor',NAME,NULL) AS Actor, 
  IF(OCCUPATION='Doctor',NAME,NULL) AS Doctor, 
  IF(OCCUPATION='Professor',NAME,NULL) AS Professor, 
  F(OCCUPATION='Singer',NAME,NULL) AS SINGER, 
  case OCCUPATION when 'ACTOR' THEN @a:=@a+1 when 'Doctor' THEN @d:=@d+1 when 'Professor' THEN @p:=@p+1 when 'Singer' THEN @s:=@s+1 end as idn 
  FROM OCCUPATIONS 
  ORDER BY NAME) AS TMP
GROUP BY TMP.idn ;



================
https://click.pstmrk.it/2sm/www.hackerrank.com%2Ftests%2F19l3ab20tf3%2Flogin%3Fb%3DeyJ1c2VybmFtZSI6Im1yd2NAbWUuY29tIiwicGFzc3dvcmQiOiJkYWZiMGU5ZCIsImhpZGUiOnRydWV9/tWNqTQ/EDcI/g_MtXKjeMN/aHJ3LXRlc3QtaW52aXRl

================
SELECT count(CustomerName) as N, City, CustomerName, Country
FROM Customers
group by Country, City
having count(*)=1;

---------
SELECT * FROM Customers WHERE CustomerID in
(SELECT CustomerID
FROM Customers
group by Country, City
having count(*)=1);

----------
SELECT * from Customers where CustomerID in
(select CustomerID from Customers where CustomerID >10)
and CustomerID in (select CustomerID from Customers where CustomerID < 80)
group by Country, City
having count(*) = 1
order by City, Country;

=============
1. ";" at the end of each query
2.	concat(,,,)
	count()
	lower()
	left(string,n)
	avg()
	floor()
3. select * from Table_1 T1, Table_2 T2
4. 	order by desc/asc
	group by
	between
	having
5. Case 
	when	THEN
	when	THEN
	else
	end
