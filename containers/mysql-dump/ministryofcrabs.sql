CREATE TABLE food(id int not null auto_increment, name varchar(20) not null, description varchar(200) null, size varchar(3) null, price double not null, primary key(id));

INSERT INTO
    food(
    name,
    description,
    size,
    price
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
             87.34
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
  100.00
),
( 'Butter Crab',
  'This dish is the best way to appreciate the full flavour of
these amazing crustaceans. Our Butter Crab is best
served chilled, with warm butter (6 hours’ notice required).
However, we are also happy to make this dish available
warm (no prior notice required). Order male crabs for
more claw meat, and female crabs for tender sweet meat.',
  'SM',
  23.00);