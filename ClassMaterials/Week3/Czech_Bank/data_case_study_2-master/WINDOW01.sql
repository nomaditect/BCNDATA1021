use bank;
select loan_id, account_id, amount, payments, duration, amount-payments as 'Balance',
avg(amount-payments) over (partition by duration) as Avg_Balance
from bank.loan
where amount > 100000
order by duration, balance desc;

