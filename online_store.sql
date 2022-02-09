/* 
   ##  CSS Document
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
    `category_id` int auto_increment primary key unique,
    `category_name` varchar (100) not null,
);
CREATE TABLE `subcategories` (
    `subcategory_id` int auto_increment primary key unique,
    `subcategory_name` varchar (100) not null,
    `category_id` int not null,
        constraint fk_category
        foreign key (category_id) 
        references categories(category_id)
                on update cascade
                on delete cascade
);
CREATE TABLE `products` (
    `product_id` int auto_increment primary key unique,
    `product_name` varchar (100) not null,
    `category_id` int not null,
        constraint fk_category
        foreign key (category_id) 
        references categories(category_id)
                on update cascade
                on delete cascade
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
    `availability` int not null,

) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/* Please, create your tables in this file. */
