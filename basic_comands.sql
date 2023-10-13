

create TABLE masina(
  id int primary key ,
  marca varchar(20),
  culoare varchar(20),
  pret decimal(10)
);

insert into masina(id, marca, culoare, pret)
values
    ( 1,'toyota','albastru',2500),
    (2,'ford','negru',2800),
    (3,'honda','verde',3000),
    (4,'chevrolet','rosu',1500);

-- Find All Columns and Rows in a Table

select *from masina;

-- Retrieving Specific Columns of Information
select marca from masina;
select culoare from masina;

-- retrieving multiple columns
select id,pret from masina;


-- aliasing column names
select marca as brand from masina;

-- finding the data you want  (am pus sa imi afiseze doar id urile pare )
select id from masina where id%2=0;

-- equality operator (i am dat sa imi afiseze id ul in fnctie de marca dorita )
select id from masina where marca='ford';

-- inequality operator 
select  id ,culoare from masina where id%2!=0;
select id, culoare from masina where id%2<>0;

-- relational operators
select marca from masina where id <3;
select marca from masina where id<=3;
select marca from masina where id>4;
select marca from masina where id>=4;

-- more than one condition
select marca from masina where id>3 and pret>4000;


-- searching in a set of values 
select id,culoare from masina where id in (1,2,3);
select id,marca from masina where marca in('bmw');
select*from masina where pret in (6000);

-- searching within a range of values
select id, marca from masina where pret between 2500 and 6000;
select * from masina where id between 1 and 5;

-- pattern matching 
select id, culoare from masina where marca like 'bmw';
select * from masina where culoare like 'gri';


-- missing values
select * from masina where pret is null;



