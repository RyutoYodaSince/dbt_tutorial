SELECT
    Beverage_category,
    Beverage_prep,
    Calories
FROM {{ ref('starbucks_drink.SQL') }}  
WHERE Calories >= 350;
