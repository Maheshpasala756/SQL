use practice;

create table Customers(
Customer_Id int,
Name varchar(20),
City varchar(10));

create table Orders(
Order_Id int,
Customer_Id int,
Product varchar(10));

insert into Customers values(1,'Alice', 'New York'),(2,'Bob', 'Chicago'),(3,'Charlie','Miami');

insert into Orders values(101,1,'Laptop'),(102,1,'Mouse'),(103,2,'Kayboard'),(104,4,'Monitor');

select * from Customers;

select * from Orders;

-- Scenario 1: Get the list of customers who have placed orders

select C.Customer_ID,C.Name,C.City
from Customers C inner join Orders O 
on C.Customer_ID = O.Customer_ID;


-- Scenario 2: Get all customers and their orders (if any)

select C.Customer_ID, C.Name, O.Order_ID, O.Product
from Customers C left join Orders O 
on C.Customer_ID = O.Customer_ID;


-- Scenario 3: Show all orders and the customer who placed them (if known)

select C.Customer_ID, C.Name, O.Order_ID, O.Product
from Customers C right join Orders O 
on C.Customer_ID = O.Customer_ID;


-- Scenario 4: Show all customers and all orders, matched where possible

select C.Customer_ID, C.Name, O.Order_ID, O.Product
from Customers C left join Orders O 
on C.Customer_ID = O.Customer_ID
union all
select C.Customer_ID, C.Name, O.Order_ID, O.Product
from Customers C right join Orders O 
on C.Customer_ID = O.Customer_ID;


-- Scenario 5: Get customers who ordered a “Mouse”

select C.Customer_ID, C.Name
from Customers C inner join Orders O 
on C.Customer_ID = O.Customer_ID
WHERE O.Product ='Mouse';
