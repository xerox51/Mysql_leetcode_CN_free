select Employee.Name as Name

from (

  select ManagerId as Id

  from Employee

  group by ManagerId

  having count(Id) >= 5

) as Manager join Employee

on Manager.Id = Employee.Id