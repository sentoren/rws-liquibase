--liquibase formatted sql

--changeset storen:1 labels:1.0
--comment: create books table
create table books (
    id serial primary key,
    title varchar(80) not null,
    author_lastname varchar(50),
    author_firstname varchar(50),
    release_year smallint
)
--rollback DROP TABLE books;

--changeset storen:2 labels:1.0
--comment: create company table
create table company (
    id serial primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;
