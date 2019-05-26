
CREATE SEQUENCE MYPIZZA.client_id_seq;

CREATE TABLE MYPIZZA.client (
                idclient INTEGER NOT NULL DEFAULT nextval('MYPIZZA.client_id_seq'),
                login VARCHAR(10) NOT NULL,
                password VARCHAR(10) NOT NULL,
                name VARCHAR(20) NOT NULL,
                adress VARCHAR(40) NOT NULL,
                birthday DATE,
                phone INTEGER,
                fidelity INTEGER,
                CONSTRAINT client_pk PRIMARY KEY (idclient)
);

ALTER SEQUENCE MYPIZZA.client_id_seq OWNED BY MYPIZZA.client.idclient;


CREATE SEQUENCE MYPIZZA.agence_id_seq;

CREATE TABLE MYPIZZA.agence (
                idagence INTEGER NOT NULL DEFAULT nextval('MYPIZZA.agence_id_seq'),
                name VARCHAR(20) NOT NULL,
                adress VARCHAR(40) NOT NULL,
                description VARCHAR(50),
                owner VARCHAR(20) NOT NULL,
                CONSTRAINT agence_pk PRIMARY KEY (idagence)
);

ALTER SEQUENCE MYPIZZA.agence_id_seq OWNED BY MYPIZZA.agence.idagence;

CREATE SEQUENCE MYPIZZA.employee_id_seq;

CREATE TABLE MYPIZZA.employee (
                idemployee INTEGER NOT NULL DEFAULT nextval('MYPIZZA.employee_id_seq'),
                name VARCHAR(20) NOT NULL,
                role VARCHAR(10) NOT NULL,
                startedat DATE,
                endedat DATE,
                available BOOLEAN,
                CONSTRAINT employee_pk PRIMARY KEY (idemployee)
);

ALTER SEQUENCE MYPIZZA.employee_id_seq OWNED BY MYPIZZA.agence.idemployee;

CREATE SEQUENCE MYPIZZA.order_id_seq;

CREATE TABLE MYPIZZA.order (
                idorder INTEGER NOT NULL DEFAULT nextval('MYPIZZA.order_id_seq'),
                selection VARCHAR(20) NOT NULL,
                qty INTEGER,
                delivery BOOLEAN,
                CONSTRAINT order_pk PRIMARY KEY (idorder)
);

ALTER SEQUENCE MYPIZZA.order_id_seq OWNED BY MYPIZZA.order.idorder;

CREATE SEQUENCE MYPIZZA.task_id_seq;

CREATE TABLE MYPIZZA.task (
                idtask INTEGER NOT NULL DEFAULT nextval('MYPIZZA.task_id_seq'),
                description VARCHAR(20) NOT NULL,
                createdat DATE,
                updated DATE,
                inprogress BOOLEAN,
                CONSTRAINT task_pk PRIMARY KEY (idtask)
);

ALTER SEQUENCE MYPIZZA.task_id_seq OWNED BY MYPIZZA.task.idtask;

CREATE SEQUENCE MYPIZZA.cook_id_seq;

CREATE TABLE MYPIZZA.cook (
                idcook INTEGER NOT NULL DEFAULT nextval('MYPIZZA.cook_id_seq'),
                name VARCHAR(20) NOT NULL,
                description VARCHAR(50) NOT NULL,
                createdat DATE,
                updated DATE,
                CONSTRAINT cook_pk PRIMARY KEY (idcook)
);

ALTER SEQUENCE MYPIZZA.cook_id_seq OWNED BY MYPIZZA.cook.idcook;

CREATE SEQUENCE MYPIZZA.ingredient_id_seq;

CREATE TABLE MYPIZZA.ingredient (
                idingredient INTEGER NOT NULL DEFAULT nextval('MYPIZZA.ingredient_id_seq'),
                name VARCHAR(20) NOT NULL,
                designation VARCHAR(50) NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (idingredient)
);

ALTER SEQUENCE MYPIZZA.ingredient_id_seq OWNED BY MYPIZZA.ingredient.idingredient;

CREATE SEQUENCE MYPIZZA.basket_id_seq;

CREATE TABLE MYPIZZA.basket (
                idbasket INTEGER NOT NULL DEFAULT nextval('MYPIZZA.basket_id_seq'),
                amount INTEGER,
                total INTEGER,
                validation BOOLEAN,
                payment VARCHAR,
                CONSTRAINT basket_pk PRIMARY KEY (idbasket)
);

ALTER SEQUENCE MYPIZZA.basket_id_seq OWNED BY MYPIZZA.basket.idbasket;

CREATE SEQUENCE MYPIZZA.rate_id_seq;

CREATE TABLE MYPIZZA.rate (
                idrate INTEGER NOT NULL DEFAULT nextval('MYPIZZA.rate_id_seq'),
                name VARCHAR(20) NOT NULL,
                price INTEGER,
                tax integer,
                discount INTEGER,
                CONSTRAINT rate_pk PRIMARY KEY (idrate)
);

ALTER SEQUENCE MYPIZZA.rate_id_seq OWNED BY MYPIZZA.rate.idrate;

CREATE SEQUENCE MYPIZZA.stock_id_seq;

CREATE TABLE MYPIZZA.stock (
                idstock INTEGER NOT NULL DEFAULT nextval('MYPIZZA.stock_id_seq'),
                description VARCHAR(20) NOT NULL,
                qty INTEGER,
                expiredat DATE,
                CONSTRAINT stock_pk PRIMARY KEY (idstock)
);

ALTER SEQUENCE MYPIZZA.stock_id_seq OWNED BY MYPIZZA.stock.idstock;

CREATE SEQUENCE MYPIZZA.delivery_id_seq;

CREATE TABLE MYPIZZA.delivery (
                iddelivery INTEGER NOT NULL DEFAULT nextval('MYPIZZA.delivery_id_seq'),
                onsite BOOLEAN,
                athome BOOLEAN,
                amount INTEGER,
                statuspayment BOOLEAN,
                CONSTRAINT delivery_pk PRIMARY KEY (iddelivery)
);

ALTER SEQUENCE MYPIZZA.delivery_id_seq OWNED BY MYPIZZA.delivery.iddelivery;

ALTER TABLE MYPIZZA.client ADD CONSTRAINT agence_idagence_fk
FOREIGN KEY (idagence)
REFERENCES MYPIZZA.agence (idagence)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.agence ADD CONSTRAINT client_idclient_fk
FOREIGN KEY (idclient)
REFERENCES MYPIZZA.client (idclient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.agence ADD CONSTRAINT employee_idemployee_fk
FOREIGN KEY (idemployee)
REFERENCES MYPIZZA.employee (idemployee)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.employee ADD CONSTRAINT agence_idagence_fk
FOREIGN KEY (idagence)
REFERENCES MYPIZZA.agence (idagence)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.employee ADD CONSTRAINT task_idtask_fk
FOREIGN KEY (idtask)
REFERENCES MYPIZZA.task (idtask)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.order ADD CONSTRAINT client_idclient_fk
FOREIGN KEY (idclient)
REFERENCES MYPIZZA.client (idclient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.task ADD CONSTRAINT employee_idemployee_fk
FOREIGN KEY (idemployee)
REFERENCES MYPIZZA.employee (idemployee)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.cook ADD CONSTRAINT employee_idemployee_fk
FOREIGN KEY (idemployee)
REFERENCES MYPIZZA.employee (idemployee)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.ingredient ADD CONSTRAINT ingredient_idingredienz_fk
FOREIGN KEY (idingredient)
REFERENCES MYPIZZA.employee (idingredient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.basket ADD CONSTRAINT client_idclient_fk
FOREIGN KEY (idclient)
REFERENCES MYPIZZA.client (idclient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.basket ADD CONSTRAINT order_idorder_fk
FOREIGN KEY (idorder)
REFERENCES MYPIZZA.order (idorder)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.basket ADD CONSTRAINT rate_idrate_fk
FOREIGN KEY (idrate)
REFERENCES MYPIZZA.order (idrate)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.rate ADD CONSTRAINT order_idorder_fk
FOREIGN KEY (idorder)
REFERENCES MYPIZZA.order (idorder)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.stock ADD CONSTRAINT ingredient_idingredient_fk
FOREIGN KEY (idingredient)
REFERENCES MYPIZZA.employee (idingredient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.delivery ADD CONSTRAINT basket_idbasket_fk
FOREIGN KEY (idbasket)
REFERENCES MYPIZZA.basket (idbasket)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.delivery ADD CONSTRAINT employee_idemployee_fk
FOREIGN KEY (idemployee)
REFERENCES MYPIZZA.employee (idemployee)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MYPIZZA.delivery ADD CONSTRAINT task_idtask_fk
FOREIGN KEY (idtask)
REFERENCES MYPIZZA.task (idtask)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
