-- Following are for curated schema
-- -----------------------------------
use schema CURATED;
create or replace sequence IN_SALES_ORDER_SEQ 
  start = 1 
  increment = 1 
comment='This is sequence for India sales order table';

create or replace sequence US_SALES_ORDER_SEQ  
  start = 1 
  increment = 1 
  comment='This is sequence for USA sales order table';

create or replace sequence FR_SALES_ORDER_SEQ 
  start = 1 
  increment = 1 
  comment='This is sequence for France sales order table';

  show sequences;

  use schema CURATED;
-- curated India sales order table
create or replace table IN_SALES_ORDER (
 sales_order_key number(38,0),
 order_id varchar(),
 order_dt date,
 customer_name varchar(),
 mobile_key varchar(),
 country varchar(),
 region varchar(),
 order_quantity number(38,0),
 local_currency varchar(),
 local_unit_price number(38,0),
 promotion_code varchar(),
 local_total_order_amt number(10,2),
 local_tax_amt number(10,2),
 exhchange_rate number(15,7),
 us_total_order_amt number(23,8),
 usd_tax_amt number(23,8),
 payment_status varchar(),
 shipping_status varchar(),
 payment_method varchar(),
 payment_provider varchar(),
 conctact_no varchar(),
 shipping_address varchar()
);

-- curated US sales order table
create or replace table US_SALES_ORDER (
 sales_order_key number(38,0),
 order_id varchar(),
 order_dt date,
 customer_name varchar(),
 mobile_key varchar(),
 country varchar(),
 region varchar(),
 order_quantity number(38,0),
 local_currency varchar(),
 local_unit_price number(38,0),
 promotion_code varchar(),
 local_total_order_amt number(10,2),
 local_tax_amt number(10,2),
 exhchange_rate number(15,7),
 us_total_order_amt number(23,8),
 usd_tax_amt number(23,8),
 payment_status varchar(),
 shipping_status varchar(),
 payment_method varchar(),
 payment_provider varchar(),
 conctact_no varchar(),
 shipping_address varchar()
);

-- -- curated FR sales order table
create or replace table FR_SALES_ORDER (
 sales_order_key number(38,0),
 order_id varchar(),
 order_dt date,
 customer_name varchar(),
 mobile_key varchar(),
 country varchar(),
 region varchar(),
 order_quantity number(38,0),
 local_currency varchar(),
 local_unit_price number(38,0),
 promotion_code varchar(),
 local_total_order_amt number(10,2),
 local_tax_amt number(10,2),
 exhchange_rate number(15,7),
 us_total_order_amt number(23,8),
 usd_tax_amt number(23,8),
 payment_status varchar(),
 shipping_status varchar(),
 payment_method varchar(),
 payment_provider varchar(),
 conctact_no varchar(),
 shipping_address varchar()
);


show tables;

SELECT * FROM SALES_DWH.CURATED.IN_SALES_ORDER LIMIT 10;
SELECT * FROM SALES_DWH.CURATED.US_SALES_ORDER LIMIT 10;
SELECT * FROM SALES_DWH.CURATED.FR_SALES_ORDER LIMIT 10;
