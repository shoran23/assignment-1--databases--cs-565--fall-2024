INSERT INTO stores
    (store_name, comment, store_id)
VALUES
    ('Costco', NULL, @COSTCO_ID),
    ('Fairway', NULL, @FAIRWAY_ID),
    ('Food Bazaar', NULL, @FOOD_BAZAAR_ID),
    ('Fresh Direct', 'Fresh Directly only sells online.', @FRESH_DIRECT_ID),
    ('iHerb', 'iHerb only sells online', @IHERB_ID),
    ('Key Food', NULL, @KEY_FOOD_ID),
    ('Trader Joe’s', NULL, @TRADER_JOES_ID),
    ('Whole Foods', NULL, @WHOLE_FOODS_ID),
    ('Amazon', NULL, @AMAZON_ID);