use schema COMMON;
create or replace transient table EXCHANGE_RATE(
    date date, 
    usd2usd decimal(10,7),
    usd2eu decimal(10,7),
    usd2can decimal(10,7),
    usd2uk decimal(10,7),
    usd2inr decimal(10,7),
    usd2jp decimal(10,7)
);

SHOW TABLES;

select * from SALES_DWH.COMMON.EXCHANGE_RATE order by DATE;
