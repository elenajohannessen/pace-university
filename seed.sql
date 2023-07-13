insert into
    product(prod, pname, price)
VALUES
('p1', 'tape', 2.5);

insert into
    product(prod, pname, price)
VALUES
('p2', 'tv', 250);

insert into
    product(prod, pname, price)
VALUES
('p3', 'vcr', 80);

insert into
    product(prod, pname, price)
VALUES
('d1', 'New York', 9000);

insert into
    depot(dep, addr, volume)
VALUES
('d1', 'New York', 9000);

insert into
    depot(dep, addr, volume)
VALUES
('d2', 'Syracuse', 6000);


insert into
    depot(dep, addr, volume)
VALUES
('d4', 'New York', 2000);


insert into stock(prod, dep, quantity)

values('p1','d1',1000);

insert into stock(prod, dep, quantity)

values('p1','d2',-100);

insert into stock(prod, dep, quantity)

values('p1','d4',1200);

insert into stock(prod, dep, quantity)

values('p3','d1',3000);

insert into stock(prod, dep, quantity)

values('p3','d4',2000);

insert into stock(prod, dep, quantity)

values('p2','d4',1500);

insert into stock(prod, dep, quantity)

values('p2','d1',-400);

insert into stock(prod, dep, quantity)

values('p2','d2',2000);


