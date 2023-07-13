create table product(prod VARCHAR, pname varchar, price decimal);
create table depot(dep VARCHAR, addr varchar, volume decimal);
create table stock(prod varchar, dep varchar, quantity integer);

alter TABLE product add CONSTRAINT pk_product PRIMARY KEY(prod);
alter TABLE depot add CONSTRAINT pk_depot PRIMARY KEY(dep);
alter TABLE stock add CONSTRAINT pk_stock PRIMARY KEY(prod,dep);

ALTER TABLE stock add CONSTRAINT fk_prod_stock FOREIGN KEY(prod) REFERENCES product(prod);
ALTER TABLE stock add CONSTRAINT fk_depot_stock FOREIGN KEY(dep) REFERENCES depot(dep);


