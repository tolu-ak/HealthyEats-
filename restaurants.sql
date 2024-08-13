USE healthyeatswebsite;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE profiles (
    profile_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address TEXT,
    phone_number VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE nigerianfoods (
    meal_id INT AUTO_INCREMENT PRIMARY KEY,
    meal_name VARCHAR(255),
    meal_description TEXT,
    meal_image VARCHAR(255)
);

INSERT INTO nigerianfoods (name, calories, carbohydrates, fat, protein, sodium, iron, cholesterol) VALUES
('Chicken Jolofrice', 309, 14.00, 15.00, 20.00, 0.44, 0.01, 0.00),
('Nigerian Fried Rice', 330, 45.00, 9.00, 0.65, 0.00, 0.03, 0.00),
('Ola-Ola amala', 470, 103.00, 6.00, 0.00, 0.05, 8.00, 0.00),
('Eba', 285, 64.00, 0.60, 5.00, 5.00, 0.00, 0.00),
('Pounded yam', 353, 75.80, 1.10, 7.10, 12.00, 0.00, 0.00),
('Egusi soup', 159, 3.00, 13.90, 8.60, 0.02, 13.90, 0.00),
('Ogbono soup', 150, 18.00, 2.00, 3.00, 12.60, 0.00, 0.00),
('Akara', 142, 86.20, 2.00, 29.80, 0.36, 0.00, 0.00),
('Efo riro', 355, 17.20, 23.30, 24.00, 1.06, 28.40, 0.09),
('Banga soup', 380, 1.20, 41.20, 1.00, 0.20, 0.00, 0.00),
('Moi moi', 239, 27.60, 9.40, 12.20, 276.00, 21.00, 0.01),
('Fufu', 393, 81.10, 8.00, 2.70, 0.08, 5.20, 0.02),
('Chin chin', 100, 13.00, 5.00, 3.00, 0.06, 0.00, 0.00),
('Kilishi', 80, 6.00, 1.00, 12.00, 0.69, 0.04, 0.00),
('Suya', 334, 3.10, 18.90, 36.80, 0.00, 0.01, 0.00),
('Pepper soup', 104, 9.40, 4.60, 6.40, 0.97, 0.01, 0.00),
('Nigerian plantain chips', 140, 20.00, 6.00, 0.00, 0.10, 0.00, 0.00);


SELECT * FROM nigerianfoods;


CREATE TABLE healthy_meal_alternatives (
    alternative_id INT AUTO_INCREMENT PRIMARY KEY,
    meal_id INT,
    alternative_name VARCHAR(255),
    alternative_description TEXT,
    alternative_image VARCHAR(255),
    FOREIGN KEY (meal_id) REFERENCES meals(meal_id)
);

INSERT INTO healthy_meal_alternatives (name, calories, carbohydrates, fat, protein, sodium, iron, cholesterol) VALUES
('Chicken Quinoa', 110, 13.00, 2.00, 11.00, 0.52, 8.00, 0.00),
('Cauliflower Fried Rice', 60, 8.00, 3.00, 3.00, 0.29, 4.00, 0.00),
('Plantain mash', 122, 31.9, 0.2, 1.3, 4.00, 2.20, 0.00),
('Low carb Cauliflower mash', 111, 4.20, 9.80, 2.50, 0.16, 2.00, 0.03),
('Oatmeal mash', 68, 11.90, 1.40, 2.40, 49.00, 4.20, 0.00),
('Melon seed soup', 105, 9.00, 7.00, 5.00, 15.00, 13.90, 0.00),
('Okra spinach soup', 50, 7.00, 1.50, 3.00, 15.00, 10.00, 0.00),
('Baked red bean cake', 160, 86.20, 2.00, 29.80, 0.36, 0.00, 0.00),                    
('Spinach soup', 201, 15.90, 12.00, 7.70, 0.70, 5.80, 0.03),
('Palm Nut Soup', 130, 9.00, 5.00, 24.00, 0.00, 0.00, 0.00),
('Vegetable Steamed Bean Cakes', 90, 20.00, 0.00, 1.00, 0.01, 0.00, 0.00),
('Plantain Fufu', 350, 81.00, 0.40, 5.00, 0.00, 0.00, 0.00),
('Baked whole wheat chin chin', 450, 58, 20.00, 8.00, 200.00, 15.00,30.00),
('Oven spicy beef', 250, 2.00, 18.00, 20.00, 75.00, 12.00, 70.00),                        
('Grilled beef jerky', 90, 11.00, 0.50, 9.00, 0.30, 6.00, 0.02),
('Vegetable soup', 78, 15.00, 1.00, 3.00, 0.50, 0.01, 0.00),
('Baked potato chips', 120, 22.00, 3.00, 2.00, 0.00, 2.00, 0.00);


SELECT * FROM  healthy_meal_alternatives;


CREATE TABLE restaurant_suggestions (
    suggestion_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_name VARCHAR(255),
    restaurant_location VARCHAR(255),
    restaurant_rating DECIMAL(2,1),
    restaurant_image VARCHAR(255)
);
CREATE TABLE jollofrice(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO jollofrice (name, location, link, rating, image)
VALUES
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamloops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Vansuya Restaurant and Lounge', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 3.9, '');


CREATE TABLE friedrice(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO friedrice (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),

('Vansuya Restaurant and Lounge', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 3.9, '');


CREATE TABLE amala(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO amala (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Jambo Grill', 'Vancouver, BC', 'https://jambogrill.ca/', 4.2, ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8, '');


CREATE TABLE eba(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)S
);

INSERT INTO eba(name, location, link, rating, image)
VALUES
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8,'');

CREATE TABLE poundedyam(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO poundedyam (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8,'');



CREATE TABLE egusi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO egusi (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8,'');


CREATE TABLE ogbona(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO ogbona (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8,'');


CREATE TABLE akara(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO akara (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', '4.4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', '3.7', 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', '4.9', 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', '3.7', 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', '4.6', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');


CREATE TABLE eforiro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO eforiro (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8,'');



CREATE TABLE bangasoup(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO bangasoup (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');

CREATE TABLE moinmoin(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO moinmoin (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');


CREATE TABLE fufu(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO fufu (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');

CREATE TABLE chinchin(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO chinchin (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');
CREATE TABLE kilishi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO kilishi (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('The House of the Carribean', 'Kelowna, BC', 'https://www.skipthedishes.com/house-of-the-caribbean?serviceType=collection&utm_source=google&utm_medium=organic&utm_campaign=foodorder', 4.7, ''),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');


CREATE TABLE suya(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO suya (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', '4.8','');

CREATE TABLE peppersoup(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO peppersoup (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Alebi African Cuisine', 'Surrey, BC', 'https://alebiafricanrestaurant.com/', 3.7, 'https://tb-static.uber.com/prod/image-proc/processed_images/7183d2406f91f2979d569da23814be04/16bb0a3ab8ea98cfe8906135767f7bf4.webp'),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, ''),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', '4.3', ''),
('Dosa Paragon', 'Victoria, BC', 'https://dosaparagon.com/location/yates_street/?', 4.8,'');

CREATE TABLE plantainchips(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO plantainchips (name, location, link, rating, image)
VALUES 
('Taste of Africa', 'Surrey, BC', 'https://zomi.menu/pick-up?shop=11607&utm=&table=', 4.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmas-YKVZadzM6r34f8n7a5oncqjpwg-lqYg&s'),
('Ten 13 Caribbean Inspired Cuisine', 'Kelowna, BC', 'https://www.instagram.com/ten13kelowna/?igsh=MXI4bGl6cjU4OTdtcA%3D%3D', 4.9, ''),
('Aboki Grill', 'Vancouver, BC', 'https://nigeriancuisinevancouver.com/', 4.9, 'https://tb-static.uber.com/prod/image-proc/processed_images/a600cc02fbec23d476511ce6551c6a0f/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
('Afrofusion', 'Kamploops, BC', 'https://afrofusion-bc.com/', 3.7, 'https://img.restaurantguru.com/r612-Afrofusion-interior.jpg'),
('Simba Grill', 'Burnaby, BC', 'https://simbasgrill.com/', 4.6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzO9dgImr-z5iWlI4QKihDk8IIH_cDcH6pQ&s'),
('Nubian Delicacies', 'Victoria, BC', 'https://nubiancaferestaurant.com/', 4.3, ''),








CREATE TABLE jollofrice(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO jollofrice (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '');


CREATE TABLE friedrice(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO friedrice (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', 4.3, '');



CREATE TABLE amala(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO amala (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', 4.3, ''),
('360 Grill and Lounge', 'Calgary, AB', 'https://www.360grillandlounge.ca//', 3.9, '');

CREATE TABLE eba(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO eba(name, location, link, rating, image)
VALUES 

('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('360 Grill and Lounge', 'Calgary, AB', 'https://www.360grillandlounge.ca//', 3.9, '');



CREATE TABLE poundedyam(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO poundedyam (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('Mon Amie Resto', 'Edmonton, AB', 'https://www.monamieresto.ca/', 3.7, '');

CREATE TABLE egusi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO egusi (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('Mon Amie Resto', 'Edmonton, AB', 'https://www.monamieresto.ca/', 3.7, '');



CREATE TABLE ogbona(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO ogbona (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('Mon Amie Resto', 'Edmonton, AB', 'https://www.monamieresto.ca/', 3.7, '');

CREATE TABLE akara(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO akara (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Comfort’s Akara', 'Calgary, AB', 'https://www.comfortakara.com/shop' , 5.0, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '');




CREATE TABLE eforiro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO eforiro (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('360 Grill and Lounge', 'Calgary, AB', 'https://www.360grillandlounge.ca//', 3.9, '');


CREATE TABLE bangasoup(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO bangasoup (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', 4.3, ''),
('Mon Amie Resto', 'Edmonton, AB', 'https://www.monamieresto.ca/', 3.7, '');

CREATE TABLE moinmoin(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO moinmoin (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Mo’s Kitchen Inc', 'Calgary,AB', 'http://www.moskitchen.ca/', 4.7, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Mon Amie Resto', 'Edmonton, AB', 'https://www.monamieresto.ca/', 3.7, '');

CREATE TABLE fufu(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO fufu (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', '');

CREATE TABLE chinchin(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO chinchin (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('360 Grill and Lounge', 'Calgary, AB', 'https://www.360grillandlounge.ca//', 3.9, '');

CREATE TABLE kilishi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO kilishi (name, location, link, rating, image)
VALUES 
('Kilimanjaro VIP', 'Edmonton, AB', 'https://www.kilimanjarovip.ca/', 4.4, ''),
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', 4.3, '');

CREATE TABLE suya(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO suya (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Mon Amie Resto', 'Edmonton, AB', 'https://www.monamieresto.ca/', 3.7, '');('360 Grill and Lounge', 'Calgary, AB', 'https://www.360grillandlounge.ca//', 3.9, '');


CREATE TABLE peppersoup(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO peppersoup (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('FraMe Cuisine', 'Calgary, AB', 'https://www.framecuisine.com/', 4.9, '')
('Liberian Cuisine Bar and Grill', 'Edmonton,AB', 'https://orderdbc.com/Liberian/online-order/?trk=gpo', '4.3', ''),
('360 Grill and Lounge', 'Calgary, AB', 'https://www.360grillandlounge.ca//', 3.9, '');



CREATE TABLE plantainchips(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO plantainchips (name, location, link, rating, image)
VALUES 
('Ola’s Dining Nigerian Kitchen, Edmonton AB', 'https://www.olasdining.com/', 5.0, ''),
('Flavors Restaurant', 'Calgary, BC','https://flavourcuisineandcatering.com/', 4.6, ''),
('Ahinke’s Kitchen', 'Calgary,AB', 'https://www.ahinkeskitchen.com/', 4.2, ''),
('Delish Dining', 'Calgary,AB', 'https://delishdining.ca/', 4.4, ''),
('Merilyn’s Kitchen', 'Calgary, AB', '');










CREATE TABLE jollofrice(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO jollofrice (name, location, link, rating, image)
VALUES 
('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Fola Bakery and African Kitchen', 'Regina,SK', '4.2','');



CREATE TABLE friedrice(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO friedrice (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');



CREATE TABLE amala(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO amala (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');







CREATE TABLE eba(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO eba(name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');



CREATE TABLE poundedyam(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO poundedyam (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');






CREATE TABLE egusi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO egusi (name, location, link, rating, image)
VALUES 
('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');




CREATE TABLE ogbona(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO ogbona (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');


CREATE TABLE akara(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO akara (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');






CREATE TABLE eforiro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO eforiro (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');

CREATE TABLE bangasoup(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO bangasoup (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');


CREATE TABLE moinmoin(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO moinmoin (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');






CREATE TABLE fufu(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO fufu (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');




CREATE TABLE chinchin(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO chinchin (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');


CREATE TABLE kilishi(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO kilishi (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');



CREATE TABLE suya(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO suya (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');

CREATE TABLE peppersoup(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO peppersoup (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');




CREATE TABLE plantainchips(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255),
    rating DECIMAL(2, 1),
    image VARCHAR(255)
);

INSERT INTO plantainchips (name, location, link, rating, image)
VALUES 

('Sub-Saharan Cuisine', 'Saskatoon,SK', 'https://www.google.com/maps/uv?pb=!1s0x5304f7e697d295ad%3A0xf2e1b8b2d6a0b714!15sCgIYIQ&viewerState=lb&cr=lm_1e&sa=X&ved=2ahUKEwi5ufil7eiHAxXcFjQIHZDdDoYQzeMEegQIBBAA', '5.0', ''),
('Global Pot Fusion Cuisine', 'Saskatoon, SK', 'https://www.globalpot.org/', '4.9', ''),
('Africa Jazz Lounge', '''Regina,SK', 'https://africajazzlounge.com/', '4.8', ''),
('Laghos African Kithcnette', 'Regina,SK', 'https://www.laghoskitchenette.com/', '4.3', '');


SELECT * FROM restaurant_suggestions;




