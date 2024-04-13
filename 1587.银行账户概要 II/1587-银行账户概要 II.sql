# Write your MySQL query statement below

select name as NAME,balance as BALANCE

from (

    select A.name,sum(B.amount) as balance from

      Users as A,

      Transactions as B

    where A.account = B.account

    group by A.name

)as temp where temp.balance > 10000