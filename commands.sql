-- Get the name of the store and its URL where any spices were purchased.
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
SELECT DISTINCT
    store_name,
    brand
FROM
    stores
CROSS JOIN
    spices
WHERE
    stores.store_name=brand;




-- Get spices whose names contain “cinnamon”.
SELECT
    *
FROM
    spices
WHERE UPPER(SPICE_NAME) LIKE UPPER("%cinnamon%");



-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
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
