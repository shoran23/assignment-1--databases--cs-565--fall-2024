INSERT INTO store_addresses
    (physical_address, url_address, store_id)
VALUES
    ('517 E 117th St, New York, NY 10035-4409', 'https://www.costco.com/', @COSTCO_ID),
    ('2131 Broadway, New York, NY 10023', 'https://www.fairwaymarket.com/sm/planning/rsid/4000/', @FAIRWAY_ID),
    ('480-500 Van Brunt St, Brooklyn, NY 11231', 'https://www.foodbazaar.com/', @FOOD_BAZAAR_ID),
    (NULL, 'https://www.freshdirect.com/', @FRESH_DIRECT_ID),
    (NULL, 'https://www.iherb.com/', @IHERB_ID),
    ('138-37 Queens Blvd, Briarwood, NY 11435', 'https://keyfoodstores.keyfood.com/store/keyFood/en/', @KEY_FOOD_ID),
    ('675 6th Ave, New York, NY 10010', 'https://www.traderjoes.com/home', @TRADER_JOES_ID),
    ('214 3rd St, Brooklyn, NY 11215-2702', 'https://www.wholefoodsmarket.com/', @WHOLE_FOODS_ID),
    (NULL, 'https://www.amazon.com/', @AMAZON_ID);