-- Determine what join type is more optimal
        -- should use INNER join or NATURAL JOIN
        -- work on the difference between Product and Cross product (NATURAL JOIN or CROSS JOIN)
        -- take a look at the differences in product when using the different joins to combine the tables
        -- determine which ones will be more efficient for this type of application
-- be sure to use dot syntax to specify table columns as needed
-- go through all examples and double-check the result to the provided data



-- Get the name of the store and its URL where any spices were purchased.
SELECT DISTINCT
    store_name,
    url_address
FROM
    stores
NATURAL JOIN
    store_addresses
    USING(store_id)
NATURAL JOIN
    spice_purchases
    USING(store_id);





-- Get the name of the store and its URL where spices were purchased, including their barcode.
SELECT DISTINCT
    store_name,
    url_address,
    barcode
FROM
    stores
JOIN
    store_addresses
    USING(store_id)
JOIN
    spice_purchases
    USING(store_id);






-- Get stores who only have an online address.
 SELECT
    store_name,
    store_id,
    comment
 FROM
     stores
JOIN
    store_addresses
    USING(store_id)
 WHERE
     store_addresses.physical_address IS NULL;




-- Get stores who have an online and a physical address.
SELECT
    store_name,
    store_id,
    comment
FROM
    stores
JOIN
    store_addresses
    USING(store_id)
WHERE
    store_addresses.physical_address IS NOT NULL AND store_addresses.url_address IS NOT NULL;





-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.
SELECT DISTINCT
    store_name,
    brand
FROM
    stores
JOIN
    spices
WHERE
    store_name=brand;




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
JOIN
    spice_purchases
    USING(barcode)
JOIN
    stores
    USING(store_id)
JOIN
    store_addresses
    USING(store_id)
WHERE
    spice_name="Sumac";
