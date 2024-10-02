CREATE TABLE IF NOT EXISTS spice-purchases (
    spice_name      VARCHAR(15)     NOT NULL,
    store_name      VARCHAR(15)     NOT NULL,
    store_id        INTEGER         NOT NULL,
    barcode         VARCHAR(14)     NOT NULL,

    PRIMARY KEY(store_id, barcode)
);