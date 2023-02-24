DROP TABLE IF EXISTS admin;
CREATE TABLE IF NOT EXISTS admin
(
    id          INTEGER   NOT NULL,
    name        VARCHAR   NOT NULL,
    address     VARCHAR   NOT NULL,
    department VARCHAR   NOT NULL,
    last_login  TIMESTAMP NOT NULL
);

DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer
(
    id        INTEGER     NOT NULL,
    name      VARCHAR     NOT NULL,
    account   VARCHAR     NOT NULL,
    address   VARCHAR     NOT NULL,
    mobile    VARCHAR(11) NOT NULL,
    email     VARCHAR     NOT NULL,
    password  VARCHAR     NOT NULL,
    account_status VARCHAR     NOT NULL,
    last_login TIMESTAMP   NOT NULL
);

DROP TABLE IF EXISTS account;
CREATE TABLE IF NOT EXISTS account
(
    id        INTEGER     NOT NULL
);

DROP TABLE IF EXISTS account_info;
CREATE TABLE IF NOT EXISTS account_info
(
    id        INTEGER     NOT NULL
);

DROP TABLE IF EXISTS recipient;
CREATE TABLE IF NOT EXISTS customer
(
    id        INTEGER     NOT NULL
);

DROP TABLE IF EXISTS pay_bill;
CREATE TABLE IF NOT EXISTS pay_bill
(
    id        INTEGER     NOT NULL
);

DROP TABLE IF EXISTS utility;
CREATE TABLE IF NOT EXISTS utility
(
    id        INTEGER     NOT NULL
--pin, change pin
);

DROP TABLE IF EXISTS transaction;
CREATE TABLE IF NOT EXISTS transaction
(
    id        INTEGER     NOT NULL
);

DROP TABLE IF EXISTS funds_transfer;
CREATE TABLE IF NOT EXISTS funds_transfer
(
    id        INTEGER     NOT NULL
);

DROP TABLE IF EXISTS cheque_book;
CREATE TABLE IF NOT EXISTS cheque_book
(
    id                 INTEGER NOT NULL,
    customer_name          VARCHAR NOT NULL,
    account_id         INTEGER NOT NULL,
    cheque_book_status VARCHAR NOT NULL
);
