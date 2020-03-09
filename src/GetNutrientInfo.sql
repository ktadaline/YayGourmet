SELECT food_nutrient.amount, food_portion.portion_description, food.description FROM food_nutrient
JOIN food ON food.fdc_id = food_nutrient.fdc_id
JOIN food_portion ON food.fdc_id = food_portion.fdc_id
JOIN nutrient ON food_nutrient.nutrient_id = nutrient.id
WHERE food.description like '%carrot%'

SELECT food_nutrient.amount, food_portion.portion_description, food.description FROM food_nutrient
JOIN food ON food.fdc_id = food_nutrient.fdc_id
JOIN food_portion ON food.fdc_id = food_portion.fdc_id
JOIN nutrient ON food_nutrient.nutrient_id = nutrient.id
WHERE food.description  'carrot%'

select top 500 food.description as 'Food', food_nutrient.amount as 'Fiber', food_portion.portion_description, food_portion.gram_weight
FROM food
JOIN food_nutrient ON food_nutrient.fdc_id = food.fdc_id
JOIN nutrient ON food_nutrient.nutrient_id = nutrient.id
JOIN food_portion ON food_portion.fdc_id = food.fdc_id 
WHERE food.description like 'egg%' AND nutrient.name = 'Fiber, total dietary' AND food_portion.portion_description IS NOT NULL AND food_portion.portion_description!='Quantity not specified'
 
select top 100 food.description as 'Food', food_nutrient.amount as 'Sodium', food_portion.portion_description, food_portion.gram_weight
FROM food
JOIN food_nutrient ON food_nutrient.fdc_id = food.fdc_id
JOIN nutrient ON food_nutrient.nutrient_id = nutrient.id
JOIN food_portion ON food_portion.fdc_id = food.fdc_id 
WHERE food.description like 'egg%' AND nutrient.name = 'Sodium, Na' AND food_portion.portion_description IS NOT NULL AND food_portion.portion_description!='Quantity not specified'


select top 500 food.description as 'Food', food_nutrient.amount as 'Calories', food_portion.portion_description, food_portion.gram_weight
FROM food
JOIN food_nutrient ON food_nutrient.fdc_id = food.fdc_id
JOIN nutrient ON food_nutrient.nutrient_id = nutrient.id
JOIN food_portion ON food_portion.fdc_id = food.fdc_id 
WHERE food.description like '%cake%' AND nutrient.name = 'Energy' AND food_portion.portion_description IS NOT NULL AND food_portion.portion_description!='Quantity not specified'
 