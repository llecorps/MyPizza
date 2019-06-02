
--- ================================================================================
--- agence
--- ================================================================================

INSERT INTO MYPIZZA.agence (name, adress, description, owner) VALUES ('papa Tino', 'servette', 'quartier de la gare', 'tino');

--- ================================================================================
--- client
--- ================================================================================

INSERT INTO MYPIZZA.client
(login, password, name, adress, birthday, phone , fidelity , idagence)
VALUES ('mylogin', 'mypassword', 'john doo', 'nyon', '1984-03-12', 090807645, 10, 1);

--- ================================================================================
--- order
--- ================================================================================

INSERT INTO MYPIZZA.order (idclient, selection, qty, delivery)
VALUES (1, 'quatre fromages', 1, true);

--- ================================================================================
--- rate
--- ================================================================================

INSERT INTO MYPIZZA.rate (idorder, name, price, tax , discount)
VALUES (1, 'TVA', 5, 20, 0);


--- ================================================================================
--- basket
--- ================================================================================
INSERT INTO MYPIZZA.basket (amount, idclient, idorder, idrate, total, validation, payment)
VALUES (50, 1, 1, 5, 52, true, true);

--- ================================================================================
--- employee
--- ================================================================================

INSERT INTO MYPIZZA.employee (idagence, idingredient, idtask, name, role, startedat, available )
VALUES (1, 1, 1, 'melvin', 'cooker', '2018-07-01', true);

--- ================================================================================
--- ingredient
--- ================================================================================

INSERT INTO MYPIZZA.ingredient (name, designation )
VALUES ('poivre', 'épices');

--- ================================================================================
--- task
--- ================================================================================

INSERT INTO MYPIZZA.task (description, createdat, updated, inprogress )
VALUES ('sauce tomate', '2019-06-01', '2019-06-02', true );

--- ================================================================================
--- cook
--- ================================================================================

INSERT INTO MYPIZZA.cook (idemployee, name, description, createdat, updated )
VALUES (1, 'pasta', 'pâtes bolognaises', '2018-06-01', '2018-09-01');

--- ================================================================================
--- delivery
--- ================================================================================

INSERT INTO MYPIZZA.delivery (idbasket, idtask, onsite, amount, statuspayment )
VALUES (2, 1, true, 50, true);

--- ================================================================================
--- stock
--- ================================================================================


INSERT INTO MYPIZZA.stock (idingredient, description, qty, expiredat )
VALUES (1, 'épices' , 100, '2019-12-01');
