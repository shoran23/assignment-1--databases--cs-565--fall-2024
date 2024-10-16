USE kitchen_pantry;

-- Get the name of the store and its URL where any spices were purchased.
-- π store_name, url_address (stores ⋈ store_addresses ⋈ spice_purchases)
SELECT DISTINCT
    store_name,
    url_address
FROM
    stores
NATURAL JOIN
    store_addresses
NATURAL JOIN
    spice_purchases;



-- Get the name of the store and its URL where spices were purchased, including their barcode.
-- π store_name, url_address, barcode (stores ⋈ store_addresses ⋈ spice_purchases)
SELECT DISTINCT
    store_name,
    url_address,
    barcode
FROM
    stores
NATURAL JOIN
    store_addresses
NATURAL JOIN
    spice_purchases;




-- Get stores who only have an online address.
-- σ store_addresses.physical_address = NULL( π store_name, store_id, comment (stores ⋈ store_addresses))
SELECT
    store_name,
    store_id,
    comment
FROM
    stores
NATURAL JOIN
    store_addresses
WHERE
    store_addresses.physical_address IS NULL;




-- Get stores who have an online and a physical address.
-- σ store_addresses.physical_address != NULL ∧ store_addresses.url_address != NULL (π store_name, store_id, comment (stores ⋈ store_addresses))
SELECT
    store_name,
    store_id,
    comment
FROM
    stores
NATURAL JOIN
    store_addresses
WHERE
    store_addresses.physical_address IS NOT NULL AND store_addresses.url_address IS NOT NULL;





-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.
-- σ stores.store_name = spices.brand (π store_name, brand (stores × spices))
SELECT DISTINCT
    store_name,
    brand
FROM
    stores
CROSS JOIN
    spices
WHERE
    stores.store_name=spices.brand;




-- Get spices whose names contain “cinnamon”.
-- σ LIKE UPPER("%cinnamon%") (spices)
SELECT
    *
FROM
    spices
WHERE UPPER(SPICE_NAME) LIKE UPPER("%cinnamon%");



-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
-- σ spices.spice_name = "Sumac" (π brand, store_name, url_address (π spices × spice_purchases × store_addresses))
SELECT
    brand,
    store_name,
    url_address
FROM
    spices
CROSS JOIN
    spice_purchases
    USING(barcode)
CROSS JOIN
    stores
    USING(store_id)
CROSS JOIN
    store_addresses
    USING(store_id)
WHERE
    spices.spice_name="Sumac";
