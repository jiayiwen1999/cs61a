.read data.sql


CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) as average_price from products group by category;


CREATE TABLE lowest_prices AS
  SELECT store,item,min(price) from inventory group by item;

CREATE TABLE shopping_list AS
  SELECT item as item_name,store as store_name from lowest_prices,products where item = name group by category having min(MSRP/rating) ;


CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) from stores,shopping_list where store = store_name;

