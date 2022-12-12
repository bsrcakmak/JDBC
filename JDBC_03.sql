CREATE TABLE companies
(
  company_id SMALLINT,
  company VARCHAR(20),
  number_of_employees SMALLINT
);
INSERT INTO companies VALUES(100, 'IBM', 12000);
INSERT INTO companies VALUES(101, 'GOOGLE', 18000);
INSERT INTO companies VALUES(102, 'MICROSOFT', 10000);
INSERT INTO companies VALUES(103, 'APPLE', 21000);

SELECT * FROM companies;

-- 1. Örnek: Prepared statement kullanarak company adı IBM olan number_of_employees değerini
-- 9999 olarak güncelleyin.
update companies 
set number_of_employees = 9999
where company = 'IBM';


-- fonksiyon olusturuyoruz
create or replace function toplama(x numeric, y numeric)
returns numeric 
language plpgsql
as
$$    -- suslu parantez gibi kullanilir
begin

return x+y;

end
$$

select * from toplama(4,6) as toplam;







