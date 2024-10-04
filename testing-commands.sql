--SELECT physical_address, url_address FROM store_addresses INNER JOIN stores USING (store_id);
--select store_name from stores inner join store_addresses using (store_id) where store_addresses.physical_address='675 6th Ave, New York, NY 10010';

SELECT store_name, store_id, comment FROM stores INNER JOIN store_addresses using (store_id) WHERE store_addresses.physical_address IS NULL;