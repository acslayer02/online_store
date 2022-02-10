/* 
   ##  SQL Document
   ##  Author:         Tim Lopes
                       timlopes.work@gmail.com
   ##  ----U.C-----    www.timlopes.eu
   ##  Designed for:   Group project
   ##  Project:        Web Development 
   ##  Dated:          February 2022
*/
/* Creating the database */
create database online_store;
use online_store;

/* Creating Category, subcategory and product's table */
CREATE TABLE `categories` (
    `category_id` int auto_increment primary key,
    `category_name` varchar (100) not null
);
CREATE TABLE `subcategories` (
    `subcategory_id` int auto_increment primary key,
    `subcategory_name` varchar (100) not null,
    `category_id` int not null,
        constraint fk_category
        foreign key (category_id) 
        references categories(category_id)
                on update cascade
                on delete cascade
);
CREATE TABLE `products` (
    `product_id` int auto_increment primary key,
    `product_name` varchar (100) not null,
    `category_id` int not null,
        constraint fk_category
        foreign key (category_id) 
        references categories(category_id)
                on update cascade
                on delete cascade,
    `subcategory_id` int not null,
        constraint fk_subcategory
        foreign key(subcategory_id) 
        references subcategories(subcategory_id)
            on update cascade
            on delete cascade,
    `product_brand` varchar (100) not null, 
    `product_model` varchar (100) not null, 
    `made_in_year` date not null, 
    `product_serial_n` varchar (100) not null,
    `product_price` int (25) not null, 
    `product_description` varchar (250) not null, 
    `product_image` varchar (250), 
    `stutus` varchar (20) not null DEFAULT 'A', 
    `product_condition` varchar (250) not null, 
    `availability` int not null

) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/* Please, create your tables in this file. */


CREATE TABLE 'customers' (
    'Customer_id' int auto_increment primary key unique,
    'fname' varchar(20) not null,
    'mid_name' varchar(20),
    'lname' varchar (20) not null,
    'email' varchar (30) not null unique,
    'reg_date' date not null,
    'status(active)' boolean,
    'delivery_address' varchar (50) not null,
    'news_letter_subs' boolean,
    'selling_p_id' int unique not null,

) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
