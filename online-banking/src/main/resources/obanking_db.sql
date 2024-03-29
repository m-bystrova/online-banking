-- DROP TABLE IF EXISTS admin;
-- CREATE TABLE IF NOT EXISTS admin
-- (
--     id         INTEGER   NOT NULL,
--     name       VARCHAR   NOT NULL,
--     last_login TIMESTAMP NOT NULL
-- );

DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer
(
    id         INTEGER     NOT NULL,
    customer_type_id         INTEGER   NOT NULL,
    name       VARCHAR     NOT NULL,
    address    VARCHAR     NOT NULL,
    mobile     VARCHAR(11) NOT NULL,
    email      VARCHAR     NOT NULL,
    password   VARCHAR     NOT NULL,
    last_login TIMESTAMP   NOT NULL -- to account
);


DROP TABLE IF EXISTS customer_type;
CREATE TABLE IF NOT EXISTS customer_type
(
    id           INTEGER NOT NULL,
    customer_type VARCHAR NOT NULL
);


DROP TABLE IF EXISTS account;
CREATE TABLE IF NOT EXISTS account
(
    id                      INTEGER   NOT NULL,
    customer_id             INTEGER   NOT NULL,
    account_type_id         INTEGER   NOT NULL,
    account_status          VARCHAR   NOT NULL,
    account_activation_date TIMESTAMP NOT NULL, -- to customer
    total_balance           NUMERIC   NOT NULL
);

DROP TABLE IF EXISTS account_type;
CREATE TABLE IF NOT EXISTS account_type
(
    id           INTEGER NOT NULL,
    account_type VARCHAR NOT NULL
);

DROP TABLE IF EXISTS transaction;
CREATE TABLE IF NOT EXISTS transaction
(
    id                 INTEGER   NOT NULL,
    amount             NUMERIC   NOT NULL,
    from_account       INTEGER   NOT NULL,
    to_account         INTEGER   NOT NULL,
    transaction_status VARCHAR   NOT NULL,
    transaction_time   TIMESTAMP NOT NULL
);
