CREATE TABLE "category" (
    "category_id" CHAR(4) NOT NULL,
    "category" VARCHAR(15) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(6) NOT NULL,
    "subcategory" VARCHAR(20) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(20) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);


CREATE TABLE "campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(50) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" DECIMAL NOT NULL,
    "pledged" DECIMAL NOT NULL,
    "outcome" VARCHAR(20) NOT NULL,
    "backers_count" VARCHAR(20) NOT NULL,
    "country" CHAR(2) NOT NULL,
    "currency" CHAR(3) NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" CHAR(4) NOT NULL,
    "subcategory_id" VARCHAR(6) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id"),
    CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id") REFERENCES "category" ("category_id"),
    CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);


