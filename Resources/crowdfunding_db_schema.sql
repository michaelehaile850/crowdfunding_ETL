
create table category(
		category_id varchar(4) primary key unique,
		category_name varchar(100)
		);
		
select * from category;


create table subcategory(
		subcategory_id varchar(8) primary key unique,
		subcategory_name varchar(100)
		);
select * from subcategory;


create table contacts(
		contact_id int primary key unique,
		first_name varchar(100),
		last_name varchar(100),
		email varchar(100) unique
		);
select * from contacts;



CREATE TABLE campaign (
    cf_id INT PRIMARY KEY unique,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(50),
    launch_date TIMESTAMP WITHOUT TIME ZONE,
    end_date TIMESTAMP WITHOUT TIME ZONE,
    category_id VARCHAR(4) ,
    subcategory_id VARCHAR(8) ,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

select * from campaign;






		
