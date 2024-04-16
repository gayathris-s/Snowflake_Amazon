use schema COMMON;
-- create file formats csv (India), json (France), Parquet (USA)
create or replace file format MY_CSV_FORMAT
  type = csv
  field_delimiter = ','
  skip_header = 1
  null_if = ('null', 'null')
  empty_field_as_null = true
  field_optionally_enclosed_by = '\042'
  compression = auto;

-- json file format with strip outer array true
create or replace file format MY_JSON_FORMAT
  type = json
  strip_outer_array = true
  compression = auto;

-- parquet file format
create or replace file format MY_PARQUET_FORMAT
  type = parquet
  compression = snappy;

  show file formats;
  desc file format MY_CSV_FORMAT;
