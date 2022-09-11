CREATE TABLE food(id int not null auto_increment, name varchar(20) not null, description longtext null, size varchar(3) null, price double not null, image longtext not null, primary key(id));

INSERT INTO
    food(
    name,
    description,
    size,
    price,
    image
) VALUES (
             'Pepper Crabs',
             'Black Pepper has been the true “king of spice” of Sri
Lanka for centuries, since red chilli was not native to the
island. This signature dish is made using peppercorns
that are hand-crushed and rolled on a “miris gala”
(traditional grinding stone), whole peppercorns and a
pepper dashi, fusing two native Sri Lankan ingredients
together: Black Pepper and Mud Crab.',
             'L',
             87.34,
          'https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/hansard_slider1-1568x1045.jpg'
         ),
( 'Garlic Chili Crab',
  'A Ministry of Crab original, where Mediterranean flavours
and Japanese food philosophies meet Sri Lankan Crab. It
is a blend of the distinct flavours of Italian olive oil, garlic,
Sri Lankan chilli flakes, and Japanese soy sauce. The thick
shell of the Sri Lankan Mud Crab adds an unbelievable
depth to the flavoured oil, which is great to be soaked up
with our Kade Bread.',
  'XL',
  100.00,
 'https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/14-1568x1144.jpg'
),
( 'Butter Crab',
  'This dish is the best way to appreciate the full flavour of
these amazing crustaceans. Our Butter Crab is best
served chilled, with warm butter (6 hours’ notice required).
However, we are also happy to make this dish available
warm (no prior notice required). Order male crabs for
more claw meat, and female crabs for tender sweet meat.',
  'SM',
  23.00,
 'https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/9-1568x1045.jpg'
  ),
( 'Chilli Crab',
    'This dish gave Sri Lankan crabs the iconic status they
enjoy in Southeast Asia. Our version is created with
Dharshan’s original recipe, that uses the fiery red
chillies of Sri Lanka; adding a warmth, sweetness and
incredible depth of flavour to the dish.',
    'L',
    125.00,
 'https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/7-1-1568x2101.jpg'),
( 'Baked Crab',
    'Inspired by the classic, Dharshan created this version as
he feels that the “main ingredient in Baked Crab should
be crab”. Likened by many to a crab risotto, this dish is
rich and savoury with a hint of soy sauce that brings out
the umami.',
    'XL',
    300.00,
 'https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/5-1-1568x1045.jpg'),
( 'Moc(k) Baked Crab',
    'A flavour bomb that substitutes crab with savoury button
mushrooms in a rich béchamel sauce. Spice up this
delicious starter with a dash of homemade hot sauce',
    'XL',
    300.00,
 'https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/4-2-1568x2352.jpg');