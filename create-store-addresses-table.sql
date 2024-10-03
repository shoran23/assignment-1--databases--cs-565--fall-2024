CREATE TABLE IF NOT EXISTS store_addresses (
    physical_address VARCHAR(48),
    url_address VARCHAR(64) NOT NULL,
    store_id INTEGER NOT NULL,
    FOREIGN KEY (store_id) REFERENCES stores(store_id),

    PRIMARY KEY(url_address, store_id)
);
