create table category(
		category_id varchar(4) primary key,
		category_name varchar(100)
		);
select * from category;

create table subcategory(
		subcategory_id varchar(8) primary key,
		subcategory_name varchar(100)
		);
select * from subcategory;

create table contacts(
		contact_id int primary key,
		first_name varchar(100),
		last_name varchar(100),
		email varchar(100) unique
		);
select * from contacts;


CREATE TABLE campaign(
    cf_id int PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(50),
    launched_date DATE,
    end_date DATE,
    category_id varchar(4),
    subcategory_id varchar(8),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

select * from campaign;



		
