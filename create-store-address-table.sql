CREATE TABLE IF NOT EXISTS store-addresses (
    store_name          VARCHAR(15)     NOT NULL,
    physical_address    VARCHAR(),
    url_address         VARCHAR(28),
    store_id            INTEGER         NOT NULL,
    -- DO YOU NEED TO INCLUDE AN ID FOR THE ADDRESS

    PRIMARY KEY(store_id)
);
