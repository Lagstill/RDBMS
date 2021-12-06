use cloudkitchen;

CREATE TABLE Alltimefav (
	Name varchar(40),
    spice int,
    price int
);

CREATE TABLE Soups (
	Name varchar(40),
    spice int,
    sweet int,
    price int
);

CREATE TABLE Subziyan (
	Name varchar(40),
    spice int,
    price int
);

CREATE TABLE Bread (
	Name varchar(40),
    price int
);

CREATE TABLE Starters (
	Name varchar(40),
    spice int,
    sweet int,
    price int
);

CREATE TABLE Maincourse (
	Name varchar(50),
    spice int,
    sweet int,
    price int
);

CREATE TABLE Smoothies (
	Name varchar(40),
    Avail varchar(30),
    sweet int,
    price int
);

CREATE TABLE Tea (
	Name varchar(40),
    price int
);


INSERT INTO Alltimefav (name,spice,price) VALUES
		('French Fries',2,106);
INSERT INTO Alltimefav (name,spice,price) VALUES
		('Chilli Cheese Toast',6,115);
INSERT INTO Alltimefav (name,spice,price) VALUES
		('Chilli Cheese Garlic Toast',8,115);
INSERT INTO Alltimefav (name,spice,price) VALUES
		('Garlic Bread',3,98);
INSERT INTO Alltimefav (name,spice,price) VALUES
		('Garlic Bread with Chees',2,119);
        

INSERT INTO Subziyan (name,spice,price) VALUES
		('Shahi Paneer',4,210);
INSERT INTO Subziyan (name,spice,price) VALUES
		('Kadhai Paneer',8,210);
INSERT INTO Subziyan (name,spice,price) VALUES
		('Paneer Butter Masala',7,210);
INSERT INTO Subziyan (name,spice,price) VALUES
		('Mushroom Masala',10,215);
INSERT INTO Subziyan (name,spice,price) VALUES
		('Malai Kofta',3,210);
        
INSERT INTO Bread (name,price) VALUES
		('Tandoori Roti',30);
INSERT INTO Bread (name,price) VALUES
		('Roomali Roti',17);
INSERT INTO Bread (name,price) VALUES
		('Butter Roti',36);
INSERT INTO Bread (name,price) VALUES
		('Plain Naan',43);
INSERT INTO Bread (name,price) VALUES
		('Butter Naan',58);
INSERT INTO Bread (name,price) VALUES
		('Garlic Naan Butter',60);
INSERT INTO Bread (name,price) VALUES
		('Tawa Parantha',53);
INSERT INTO Bread (name,price) VALUES
		('Lacha Parantha',53);
INSERT INTO Bread (name,price) VALUES
		('Pudina Parantha',53);
INSERT INTO Bread (name,price) VALUES
		('Stuffed Kulcha (Aloo)',65);
INSERT INTO Bread (name,price) VALUES
		('Stuffed Kulcha (Paneer)',65);
INSERT INTO Bread (name,price) VALUES
		('Stuffed Kulcha (Onion)',65);
INSERT INTO Bread (name,price) VALUES
		('Papad',15);
        
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Spring Roll',3,1,145);
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Chilli Paneer Dry',5,0,195);
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Veg Manchurian Dry',4,3,153);
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Potatoes in Honey and chilli',6,4,175);
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Fried veggies',3,2,190);
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Crispy spinach and baby',3,1,198);
INSERT INTO Starters(name,spice,sweet,price) VALUES
		('Chilli mushroom dry',7,0,193);
        
INSERT INTO Soups(name,spice,sweet,price) VALUES
		('Hot & Sour',5,1,109);
INSERT INTO Soups(name,spice,sweet,price) VALUES
		('Lemon & Coriander',4,2,109);
INSERT INTO Soups(name,spice,sweet,price) VALUES
		('Veg. Noodle Soup',6,3,109);
INSERT INTO Soups(name,spice,sweet,price) VALUES
		('Sweet Corn',3,5,109);
INSERT INTO Soups(name,spice,sweet,price) VALUES
		('Veg. Munchow',5,2,109);
INSERT INTO Soups(name,spice,sweet,price) VALUES
		('Veg. Clear Soup',5,5,109);
        
INSERT INTO maincourse(name,spice,sweet,price) VALUES
		('Veg. Chopsouey',7,3,195);
INSERT INTO maincourse(name,spice,sweet,price) VALUES
		('Chilly Paneer Gravy',8,5,205);
INSERT INTO maincourse(name,spice,sweet,price) VALUES
		('Manchurian Gravy',9,4,175);
INSERT INTO maincourse(name,spice,sweet,price) VALUES
		('Sweet & Sour Veg.',4,5,175);
INSERT INTO maincourse(name,spice,sweet,price) VALUES
		('Mix. Veg. in Hot Garlic Sauce',10,4,185);
INSERT INTO maincourse(name,spice,sweet,price) VALUES
		('Shreded Potatoes in Hot Garlic Sauce',10,2,153);
        

INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Fruit Punch','Available',8,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Red Sea','Not Available',5,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Virgin Colada','Available',7,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Pomi Twist','Available',9,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Ginger Fizz','Not Available',4,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Blue Lagoon','Available',10,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Peach Apricot','Not Available',8,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Kiwi Smoothie','Available',7,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Graeen Hayland','Not Available',10,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('White Rosy','Available',6,150);
INSERT INTO smoothies(name,avail,sweet,price) VALUES
		('Watermelon Mojito','Available',9,150);
        
INSERT INTO TEA(NAME,PRICE) VALUES
		('Tea',40);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Coffe Mocachino',51);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Coffe Americano (Black)',55);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Coffe Espresso',60);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Ice Tea(Lemon)',51);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Coffe Cappucino',51);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Espresso(Black)',55);
INSERT INTO TEA(NAME,PRICE) VALUES
		('Cold Coffee (Frappe)',70);


        
