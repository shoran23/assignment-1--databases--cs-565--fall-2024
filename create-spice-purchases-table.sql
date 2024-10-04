CREATE TABLE IF NOT EXISTS spice_purchases (
    store_id INT NOT NULL,
    barcode VARCHAR(14),
    FOREIGN KEY(store_id) REFERENCES stores(store_id),
    FOREIGN KEY(barcode) REFERENCES spices(barcode),

    PRIMARY KEY(store_id, barcode)
);