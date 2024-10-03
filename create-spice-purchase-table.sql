CREATE TABLE IF NOT EXISTS spice-purchases (
    spice_name      VARCHAR(15)     NOT NULL,   -- possibly unnecessary
    store_name      VARCHAR(15)     NOT NULL,   -- possibly unnecessary
    store_id        INTEGER         NOT NULL,
    barcode         VARCHAR(14)     NOT NULL,
    FOREIGN KEY(store_id) REFERENCE stores(store_id),

    PRIMARY KEY(store_id, barcode)
);