-- region dimension
use schema CONSUMPTION;
create or replace sequence REGION_DIM_SEQ start = 1 increment = 1;
create or replace transient table REGION_DIM(
    region_id_pk number primary key,
    Country text, 
    Region text,
    isActive text(1)
);

SHOW COLUMNS IN TABLE SALES_DWH.CONSUMPTION.REGION_DIM_SEQ

-- product dimension
use schema CONSUMPTION;
create or replace sequence PRODUCT_DIM_SEQ start = 1 increment = 1;
create or replace transient table PRODUCT_DIM(
    product_id_pk number primary key,
    Mobile_key text,
    Brand text, 
    Model text,
    Color text,
    Memory text,
    isActive text(1)
);

-- promo_code dimension
use schema CONSUMPTION;
create or replace sequence PROMO_CODE_DIM_SEQ start = 1 increment = 1;
create or replace transient table PROMO_CODE_DIM(
    promo_code_id_pk number primary key,
    promotion_code text,
    country text,
    region text,
    isActive text(1)
);

SHOW COLUMNS IN TABLE SALES_DWH.CONSUMPTION.PROMO_CODE_DIM;


-- customer dimension
use schema CONSUMPTION;
create or replace sequence CUSTOMER_DIM_SEQ start = 1 increment = 1;
create or replace transient table CUSTOMER_DIM(
    customer_id_pk number primary key,
    customer_name text,
    CONCTACT_NO text,
    SHIPPING_ADDRESS text,
    country text,
    region text,
    isActive text(1)
);


-- payment dimension
use schema CONSUMPTION;
create or replace sequence PAYMENT_DIM_SEQ start = 1 increment = 1;
create or replace transient table PAYMENT_DIM(
    payment_id_pk number primary key,
    PAYMENT_METHOD text,
    PAYMENT_PROVIDER text,
    country text,
    region text,
    isActive text(1)
);

-- date dimension
use schema CONSUMPTION;
create or replace sequence DATE_DIM_SEQ start = 1 increment = 1;
create or replace transient table DATE_DIM(
    date_id_pk int primary key,
    order_dt date,
    order_year int,
    oder_month int,
    order_quater int,
    order_day int,
    order_dayofweek int,
    order_dayname text,
    order_dayofmonth int,
    order_weekday text
);

SHOW COLUMNS IN TABLE SALES_DWH.CONSUMPTION.DATE_DIM

-- fact tables 
use schema CONSUMPTION;
create or replace sequence SALES_FACT_SEQ start = 1 increment = 1;
create or replace table SALES_FACT (
 order_id_pk number(38,0),
 order_code varchar(),
 date_id_fk number(38,0),
 region_id_fk number(38,0),
 customer_id_fk number(38,0),
 payment_id_fk number(38,0),
 product_id_fk number(38,0),
 promo_code_id_fk number(38,0),
 order_quantity number(38,0),
 local_total_order_amt number(10,2),
 local_tax_amt number(10,2),
 exhchange_rate number(15,7),
 us_total_order_amt number(23,8),
 usd_tax_amt number(23,8)
);

-- Table Containts
alter table SALES_FACT add
    constraint fk_sales_region FOREIGN KEY (REGION_ID_FK) REFERENCES region_dim (REGION_ID_PK) NOT ENFORCED;

alter table SALES_FACT add
    constraint fk_sales_date FOREIGN KEY (DATE_ID_FK) REFERENCES date_dim (DATE_ID_PK) NOT ENFORCED;

alter table SALES_FACT add
    constraint fk_sales_customer FOREIGN KEY (CUSTOMER_ID_FK) REFERENCES customer_dim (CUSTOMER_ID_PK) NOT ENFORCED;
--
alter table SALES_FACT add
    constraint fk_sales_payment FOREIGN KEY (PAYMENT_ID_FK) REFERENCES payment_dim (PAYMENT_ID_PK) NOT ENFORCED;

alter table SALES_FACT add
    constraint fk_sales_product FOREIGN KEY (PRODUCT_ID_FK) REFERENCES product_dim (PRODUCT_ID_PK) NOT ENFORCED;

alter table SALES_FACT add
    constraint fk_sales_promot FOREIGN KEY (PROMO_CODE_ID_FK) REFERENCES promo_code_dim (PROMO_CODE_ID_PK) NOT ENFORCED;

show tables;

SELECT * FROM SALES_DWH.CONSUMPTION.PROMO_CODE_DIM ;
SELECT * FROM SALES_DWH.CONSUMPTION.DATE_DIM ;
SELECT * FROM SALES_DWH.CONSUMPTION.PAYMENT_DIM ;
SELECT * FROM SALES_DWH.CONSUMPTION.REGION_DIM ;
SELECT * FROM SALES_DWH.CONSUMPTION.PRODUCT_DIM ;
SELECT * FROM SALES_DWH.CONSUMPTION.REGION_DIM ;


