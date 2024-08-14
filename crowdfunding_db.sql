--1. List the cf_id, company name, outcome, cat_id, and subcat_id for each campaign
SELECT cf_id, company_name, outcome, cat_id, subcat_id
FROM "Campaign";


--2. List all categories and category ids
SELECT cat_id, category
FROM "Category";


--3. List all contact_id, first and last names and emails
SELECT contact_id, first_name, last_name, email
FROM "Contacts";


--4. List all subcategories and subcategory ids
SELECT subcat_id, subcategory
FROM "Subcategory";


