-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/eVa6jD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--Load this last
CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "cat_id" varchar   NOT NULL,
    "subcat_id" varchar   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);


--Load this first
CREATE TABLE "Category" (
    "cat_id" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "cat_id"
     )
);

--Load this second
CREATE TABLE "Subcategory" (
    "subcat_id" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcat_id"
     )
);

--Load this third
CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

--Run these after the tables
ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_cat_id" FOREIGN KEY("cat_id")
REFERENCES "Category" ("cat_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcat_id" FOREIGN KEY("subcat_id")
REFERENCES "Subcategory" ("subcat_id");

