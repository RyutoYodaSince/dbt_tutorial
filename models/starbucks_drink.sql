SELECT
    Beverage_category,
    Beverage_prep,
    Calories
FROM {{ ref('starbucks_drink') }}  
WHERE Calories >= 350;
