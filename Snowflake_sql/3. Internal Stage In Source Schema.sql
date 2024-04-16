use schema SOURCE;
create or replace stage MY_INTERNAL_STG

desc stage MY_INTERNAL_STG;
list @MY_INTERNAL_STG;

list @my_internal_stg/sales/source=FR;
list @my_internal_stg/sales/source=US;
list @my_internal_stg/sales/source=IN;

list @my_internal_stg/sales/source=IN/format=csv;

drop stage my_internal_stg
