SELECT
    Beverage_category,
    Beverage_prep,
    Calories
FROM {{ ref('starbucks_drink.SQL') }}  -- 注意: "starbucks_drink" としています
WHERE Calories >= 350;
