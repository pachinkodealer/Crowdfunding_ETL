Select * from Subcategory;
select * from Contacts;
select * from Campaign;
select * from Category;

CREATE TABLE Subcategory (
    Subcategory_ID varchar NOT NULL,
    Subcategory varchar   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        Subcategory_ID
     )
);

CREATE TABLE Contacts (
    Contact_ID int NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    Email varchar   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        Contact_ID
     )
);

CREATE TABLE Category (
    Category_ID varchar NOT NULL,
    Category varchar   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        Category_ID
     )
);

CREATE TABLE Campaign (
    cf_id int NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar   NOT NULL,
    description varchar   NOT NULL,
    goal varchar   NOT NULL,
    pledged varchar   NOT NULL,
    outcome varchar   NOT NULL,
    backers_count int   NOT NULL,
    country varchar   NOT NULL,
    currency varchar   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar   NOT NULL,
    subcategory_id varchar   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_id
     )
);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES Contacts (Contact_ID);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id FOREIGN KEY(category_id)
REFERENCES Category (Category_ID);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES Subcategory (Subcategory_ID);
