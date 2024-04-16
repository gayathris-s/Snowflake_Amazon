-- create database
create database if not exists SALES_DWH;

use database SALES_DWH;

create schema if not exists SOURCE; -- will have source stage etc
create schema if not exists CURATED; -- data curation and de-duplication
create schema if not exists CONSUMPTION; -- fact & dimension
create schema if not exists AUDIT; -- to capture all audit records
create schema if not exists COMMON; -- for file formats sequence object etc
