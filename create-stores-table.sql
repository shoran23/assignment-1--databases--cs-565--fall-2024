CREATE TABLE IF NOT EXISTS stores (
    store_name  VARCHAR(15)     NOT NULL,           -- Store name max 15 char double check if this will be enough
    comment     TINYTEXT        DEFAULT NULL,       -- Comment for each store, text entry
    store_id    INTEGER         NOT NULL,           -- Store ID may be able to auto increment

    PRIMARY KEY (store_id)
);