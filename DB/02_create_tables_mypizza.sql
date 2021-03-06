PGDMP                         w           mypizza    10.6    11.1 _    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Q           1262    16400    mypizza    DATABASE     y   CREATE DATABASE mypizza WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE mypizza;
             usr_mypizza    false                        2615    16406    mypizza    SCHEMA        CREATE SCHEMA mypizza;
    DROP SCHEMA mypizza;
             usr_mypizza    false            �            1259    16441    agence    TABLE       CREATE TABLE mypizza.agence (
    idagence integer NOT NULL,
    name character varying(20) NOT NULL,
    adress character varying(40) NOT NULL,
    description character varying(50),
    owner character varying(20) NOT NULL,
    idclient integer,
    idemployee integer
);
    DROP TABLE mypizza.agence;
       mypizza         usr_mypizza    false    4            �            1259    16439    agence_id_seq    SEQUENCE     w   CREATE SEQUENCE mypizza.agence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE mypizza.agence_id_seq;
       mypizza       usr_mypizza    false    4    200            R           0    0    agence_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE mypizza.agence_id_seq OWNED BY mypizza.agence.idagence;
            mypizza       usr_mypizza    false    199            �            1259    16489    basket    TABLE     �   CREATE TABLE mypizza.basket (
    idbasket integer NOT NULL,
    amount integer,
    total integer,
    validation boolean,
    payment character varying,
    idclient integer,
    idorder integer,
    idrate integer
);
    DROP TABLE mypizza.basket;
       mypizza         usr_mypizza    false    4            �            1259    16487    basket_id_seq    SEQUENCE     w   CREATE SEQUENCE mypizza.basket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE mypizza.basket_id_seq;
       mypizza       usr_mypizza    false    4    210            S           0    0    basket_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE mypizza.basket_id_seq OWNED BY mypizza.basket.idbasket;
            mypizza       usr_mypizza    false    209            �            1259    16433    client    TABLE     <  CREATE TABLE mypizza.client (
    idclient integer NOT NULL,
    login character varying(10) NOT NULL,
    password character varying(10) NOT NULL,
    name character varying(20) NOT NULL,
    adress character varying(40) NOT NULL,
    birthday date,
    phone integer,
    fidelity integer,
    idagence integer
);
    DROP TABLE mypizza.client;
       mypizza         usr_mypizza    false    4            �            1259    16431    client_id_seq    SEQUENCE     w   CREATE SEQUENCE mypizza.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE mypizza.client_id_seq;
       mypizza       usr_mypizza    false    4    198            T           0    0    client_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE mypizza.client_id_seq OWNED BY mypizza.client.idclient;
            mypizza       usr_mypizza    false    197            �            1259    16473    cook    TABLE     �   CREATE TABLE mypizza.cook (
    idcook integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(50) NOT NULL,
    createdat date,
    updated date,
    idemployee integer
);
    DROP TABLE mypizza.cook;
       mypizza         usr_mypizza    false    4            �            1259    16471    cook_id_seq    SEQUENCE     u   CREATE SEQUENCE mypizza.cook_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE mypizza.cook_id_seq;
       mypizza       usr_mypizza    false    4    206            U           0    0    cook_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE mypizza.cook_id_seq OWNED BY mypizza.cook.idcook;
            mypizza       usr_mypizza    false    205            �            1259    16517    delivery    TABLE     �   CREATE TABLE mypizza.delivery (
    iddelivery integer NOT NULL,
    onsite boolean,
    athome boolean,
    amount integer,
    statuspayment boolean,
    idbasket integer,
    idtask integer
);
    DROP TABLE mypizza.delivery;
       mypizza         usr_mypizza    false    4            �            1259    16515    delivery_id_seq    SEQUENCE     y   CREATE SEQUENCE mypizza.delivery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE mypizza.delivery_id_seq;
       mypizza       usr_mypizza    false    216    4            V           0    0    delivery_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE mypizza.delivery_id_seq OWNED BY mypizza.delivery.iddelivery;
            mypizza       usr_mypizza    false    215            �            1259    16535    employee    TABLE       CREATE TABLE mypizza.employee (
    idemployee integer NOT NULL,
    name character varying(20) NOT NULL,
    role character varying(10) NOT NULL,
    startedat date,
    endedat date,
    available boolean,
    idagence integer,
    idtask integer,
    idingredient integer
);
    DROP TABLE mypizza.employee;
       mypizza         usr_mypizza    false    4            �            1259    16533    employee_id_seq    SEQUENCE     y   CREATE SEQUENCE mypizza.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE mypizza.employee_id_seq;
       mypizza       usr_mypizza    false    218    4            W           0    0    employee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE mypizza.employee_id_seq OWNED BY mypizza.employee.idemployee;
            mypizza       usr_mypizza    false    217            �            1259    16481 
   ingredient    TABLE     �   CREATE TABLE mypizza.ingredient (
    idingredient integer NOT NULL,
    name character varying(20) NOT NULL,
    designation character varying(50) NOT NULL
);
    DROP TABLE mypizza.ingredient;
       mypizza         usr_mypizza    false    4            �            1259    16479    ingredient_id_seq    SEQUENCE     {   CREATE SEQUENCE mypizza.ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE mypizza.ingredient_id_seq;
       mypizza       usr_mypizza    false    208    4            X           0    0    ingredient_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE mypizza.ingredient_id_seq OWNED BY mypizza.ingredient.idingredient;
            mypizza       usr_mypizza    false    207            �            1259    16457    order    TABLE     �   CREATE TABLE mypizza."order" (
    idorder integer NOT NULL,
    selection character varying(20) NOT NULL,
    qty integer,
    delivery boolean,
    idclient integer
);
    DROP TABLE mypizza."order";
       mypizza         usr_mypizza    false    4            �            1259    16455    order_id_seq    SEQUENCE     v   CREATE SEQUENCE mypizza.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE mypizza.order_id_seq;
       mypizza       usr_mypizza    false    202    4            Y           0    0    order_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE mypizza.order_id_seq OWNED BY mypizza."order".idorder;
            mypizza       usr_mypizza    false    201            �            1259    16500    rate    TABLE     �   CREATE TABLE mypizza.rate (
    idrate integer NOT NULL,
    name character varying(20) NOT NULL,
    price integer,
    tax integer,
    discount integer,
    idorder integer
);
    DROP TABLE mypizza.rate;
       mypizza         usr_mypizza    false    4            �            1259    16498    rate_id_seq    SEQUENCE     u   CREATE SEQUENCE mypizza.rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE mypizza.rate_id_seq;
       mypizza       usr_mypizza    false    212    4            Z           0    0    rate_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE mypizza.rate_id_seq OWNED BY mypizza.rate.idrate;
            mypizza       usr_mypizza    false    211            �            1259    16509    stock    TABLE     �   CREATE TABLE mypizza.stock (
    idstock integer NOT NULL,
    description character varying(20) NOT NULL,
    qty integer,
    expiredat date,
    idingredient integer
);
    DROP TABLE mypizza.stock;
       mypizza         usr_mypizza    false    4            �            1259    16507    stock_id_seq    SEQUENCE     v   CREATE SEQUENCE mypizza.stock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE mypizza.stock_id_seq;
       mypizza       usr_mypizza    false    4    214            [           0    0    stock_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE mypizza.stock_id_seq OWNED BY mypizza.stock.idstock;
            mypizza       usr_mypizza    false    213            �            1259    16465    task    TABLE     �   CREATE TABLE mypizza.task (
    idtask integer NOT NULL,
    description character varying(20) NOT NULL,
    createdat date,
    updated date,
    inprogress boolean,
    idemployee integer
);
    DROP TABLE mypizza.task;
       mypizza         usr_mypizza    false    4            �            1259    16463    task_id_seq    SEQUENCE     u   CREATE SEQUENCE mypizza.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE mypizza.task_id_seq;
       mypizza       usr_mypizza    false    204    4            \           0    0    task_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE mypizza.task_id_seq OWNED BY mypizza.task.idtask;
            mypizza       usr_mypizza    false    203            �           2604    16444    agence idagence    DEFAULT     n   ALTER TABLE ONLY mypizza.agence ALTER COLUMN idagence SET DEFAULT nextval('mypizza.agence_id_seq'::regclass);
 ?   ALTER TABLE mypizza.agence ALTER COLUMN idagence DROP DEFAULT;
       mypizza       usr_mypizza    false    199    200    200            �           2604    16492    basket idbasket    DEFAULT     n   ALTER TABLE ONLY mypizza.basket ALTER COLUMN idbasket SET DEFAULT nextval('mypizza.basket_id_seq'::regclass);
 ?   ALTER TABLE mypizza.basket ALTER COLUMN idbasket DROP DEFAULT;
       mypizza       usr_mypizza    false    209    210    210            �           2604    16436    client idclient    DEFAULT     n   ALTER TABLE ONLY mypizza.client ALTER COLUMN idclient SET DEFAULT nextval('mypizza.client_id_seq'::regclass);
 ?   ALTER TABLE mypizza.client ALTER COLUMN idclient DROP DEFAULT;
       mypizza       usr_mypizza    false    198    197    198            �           2604    16476    cook idcook    DEFAULT     h   ALTER TABLE ONLY mypizza.cook ALTER COLUMN idcook SET DEFAULT nextval('mypizza.cook_id_seq'::regclass);
 ;   ALTER TABLE mypizza.cook ALTER COLUMN idcook DROP DEFAULT;
       mypizza       usr_mypizza    false    206    205    206            �           2604    16520    delivery iddelivery    DEFAULT     t   ALTER TABLE ONLY mypizza.delivery ALTER COLUMN iddelivery SET DEFAULT nextval('mypizza.delivery_id_seq'::regclass);
 C   ALTER TABLE mypizza.delivery ALTER COLUMN iddelivery DROP DEFAULT;
       mypizza       usr_mypizza    false    216    215    216            �           2604    16538    employee idemployee    DEFAULT     t   ALTER TABLE ONLY mypizza.employee ALTER COLUMN idemployee SET DEFAULT nextval('mypizza.employee_id_seq'::regclass);
 C   ALTER TABLE mypizza.employee ALTER COLUMN idemployee DROP DEFAULT;
       mypizza       usr_mypizza    false    217    218    218            �           2604    16484    ingredient idingredient    DEFAULT     z   ALTER TABLE ONLY mypizza.ingredient ALTER COLUMN idingredient SET DEFAULT nextval('mypizza.ingredient_id_seq'::regclass);
 G   ALTER TABLE mypizza.ingredient ALTER COLUMN idingredient DROP DEFAULT;
       mypizza       usr_mypizza    false    208    207    208            �           2604    16460    order idorder    DEFAULT     m   ALTER TABLE ONLY mypizza."order" ALTER COLUMN idorder SET DEFAULT nextval('mypizza.order_id_seq'::regclass);
 ?   ALTER TABLE mypizza."order" ALTER COLUMN idorder DROP DEFAULT;
       mypizza       usr_mypizza    false    201    202    202            �           2604    16503    rate idrate    DEFAULT     h   ALTER TABLE ONLY mypizza.rate ALTER COLUMN idrate SET DEFAULT nextval('mypizza.rate_id_seq'::regclass);
 ;   ALTER TABLE mypizza.rate ALTER COLUMN idrate DROP DEFAULT;
       mypizza       usr_mypizza    false    211    212    212            �           2604    16512    stock idstock    DEFAULT     k   ALTER TABLE ONLY mypizza.stock ALTER COLUMN idstock SET DEFAULT nextval('mypizza.stock_id_seq'::regclass);
 =   ALTER TABLE mypizza.stock ALTER COLUMN idstock DROP DEFAULT;
       mypizza       usr_mypizza    false    213    214    214            �           2604    16468    task idtask    DEFAULT     h   ALTER TABLE ONLY mypizza.task ALTER COLUMN idtask SET DEFAULT nextval('mypizza.task_id_seq'::regclass);
 ;   ALTER TABLE mypizza.task ALTER COLUMN idtask DROP DEFAULT;
       mypizza       usr_mypizza    false    203    204    204            9          0    16441    agence 
   TABLE DATA                     mypizza       usr_mypizza    false    200   Rg       C          0    16489    basket 
   TABLE DATA                     mypizza       usr_mypizza    false    210   �g       7          0    16433    client 
   TABLE DATA                     mypizza       usr_mypizza    false    198   �h       ?          0    16473    cook 
   TABLE DATA                     mypizza       usr_mypizza    false    206   :i       I          0    16517    delivery 
   TABLE DATA                     mypizza       usr_mypizza    false    216   �i       K          0    16535    employee 
   TABLE DATA                     mypizza       usr_mypizza    false    218   fj       A          0    16481 
   ingredient 
   TABLE DATA                     mypizza       usr_mypizza    false    208   k       ;          0    16457    order 
   TABLE DATA                     mypizza       usr_mypizza    false    202   �k       E          0    16500    rate 
   TABLE DATA                     mypizza       usr_mypizza    false    212   l       G          0    16509    stock 
   TABLE DATA                     mypizza       usr_mypizza    false    214   �l       =          0    16465    task 
   TABLE DATA                     mypizza       usr_mypizza    false    204   m       ]           0    0    agence_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('mypizza.agence_id_seq', 1, true);
            mypizza       usr_mypizza    false    199            ^           0    0    basket_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('mypizza.basket_id_seq', 2, true);
            mypizza       usr_mypizza    false    209            _           0    0    client_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('mypizza.client_id_seq', 1, true);
            mypizza       usr_mypizza    false    197            `           0    0    cook_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('mypizza.cook_id_seq', 1, true);
            mypizza       usr_mypizza    false    205            a           0    0    delivery_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('mypizza.delivery_id_seq', 2, true);
            mypizza       usr_mypizza    false    215            b           0    0    employee_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('mypizza.employee_id_seq', 1, true);
            mypizza       usr_mypizza    false    217            c           0    0    ingredient_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('mypizza.ingredient_id_seq', 1, true);
            mypizza       usr_mypizza    false    207            d           0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('mypizza.order_id_seq', 1, true);
            mypizza       usr_mypizza    false    201            e           0    0    rate_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('mypizza.rate_id_seq', 1, true);
            mypizza       usr_mypizza    false    211            f           0    0    stock_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('mypizza.stock_id_seq', 1, true);
            mypizza       usr_mypizza    false    213            g           0    0    task_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('mypizza.task_id_seq', 1, true);
            mypizza       usr_mypizza    false    203            �           2606    16446    agence agence_pk 
   CONSTRAINT     U   ALTER TABLE ONLY mypizza.agence
    ADD CONSTRAINT agence_pk PRIMARY KEY (idagence);
 ;   ALTER TABLE ONLY mypizza.agence DROP CONSTRAINT agence_pk;
       mypizza         usr_mypizza    false    200            �           2606    16497    basket basket_pk 
   CONSTRAINT     U   ALTER TABLE ONLY mypizza.basket
    ADD CONSTRAINT basket_pk PRIMARY KEY (idbasket);
 ;   ALTER TABLE ONLY mypizza.basket DROP CONSTRAINT basket_pk;
       mypizza         usr_mypizza    false    210            �           2606    16438    client client_pk 
   CONSTRAINT     U   ALTER TABLE ONLY mypizza.client
    ADD CONSTRAINT client_pk PRIMARY KEY (idclient);
 ;   ALTER TABLE ONLY mypizza.client DROP CONSTRAINT client_pk;
       mypizza         usr_mypizza    false    198            �           2606    16478    cook cook_pk 
   CONSTRAINT     O   ALTER TABLE ONLY mypizza.cook
    ADD CONSTRAINT cook_pk PRIMARY KEY (idcook);
 7   ALTER TABLE ONLY mypizza.cook DROP CONSTRAINT cook_pk;
       mypizza         usr_mypizza    false    206            �           2606    16522    delivery delivery_pk 
   CONSTRAINT     [   ALTER TABLE ONLY mypizza.delivery
    ADD CONSTRAINT delivery_pk PRIMARY KEY (iddelivery);
 ?   ALTER TABLE ONLY mypizza.delivery DROP CONSTRAINT delivery_pk;
       mypizza         usr_mypizza    false    216            �           2606    16540    employee employee_pk 
   CONSTRAINT     [   ALTER TABLE ONLY mypizza.employee
    ADD CONSTRAINT employee_pk PRIMARY KEY (idemployee);
 ?   ALTER TABLE ONLY mypizza.employee DROP CONSTRAINT employee_pk;
       mypizza         usr_mypizza    false    218            �           2606    16486    ingredient ingredient_pk 
   CONSTRAINT     a   ALTER TABLE ONLY mypizza.ingredient
    ADD CONSTRAINT ingredient_pk PRIMARY KEY (idingredient);
 C   ALTER TABLE ONLY mypizza.ingredient DROP CONSTRAINT ingredient_pk;
       mypizza         usr_mypizza    false    208            �           2606    16462    order order_pk 
   CONSTRAINT     T   ALTER TABLE ONLY mypizza."order"
    ADD CONSTRAINT order_pk PRIMARY KEY (idorder);
 ;   ALTER TABLE ONLY mypizza."order" DROP CONSTRAINT order_pk;
       mypizza         usr_mypizza    false    202            �           2606    16505    rate rate_pk 
   CONSTRAINT     O   ALTER TABLE ONLY mypizza.rate
    ADD CONSTRAINT rate_pk PRIMARY KEY (idrate);
 7   ALTER TABLE ONLY mypizza.rate DROP CONSTRAINT rate_pk;
       mypizza         usr_mypizza    false    212            �           2606    16514    stock stock_pk 
   CONSTRAINT     R   ALTER TABLE ONLY mypizza.stock
    ADD CONSTRAINT stock_pk PRIMARY KEY (idstock);
 9   ALTER TABLE ONLY mypizza.stock DROP CONSTRAINT stock_pk;
       mypizza         usr_mypizza    false    214            �           2606    16470    task task_pk 
   CONSTRAINT     O   ALTER TABLE ONLY mypizza.task
    ADD CONSTRAINT task_pk PRIMARY KEY (idtask);
 7   ALTER TABLE ONLY mypizza.task DROP CONSTRAINT task_pk;
       mypizza         usr_mypizza    false    204            �           2606    16523    client agence_idagence_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.client
    ADD CONSTRAINT agence_idagence_fk FOREIGN KEY (idagence) REFERENCES mypizza.agence(idagence);
 D   ALTER TABLE ONLY mypizza.client DROP CONSTRAINT agence_idagence_fk;
       mypizza       usr_mypizza    false    200    198    3741            �           2606    16546    employee agence_idagence_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.employee
    ADD CONSTRAINT agence_idagence_fk FOREIGN KEY (idagence) REFERENCES mypizza.agence(idagence);
 F   ALTER TABLE ONLY mypizza.employee DROP CONSTRAINT agence_idagence_fk;
       mypizza       usr_mypizza    false    218    200    3741            �           2606    16586    delivery basket_idbasket_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.delivery
    ADD CONSTRAINT basket_idbasket_fk FOREIGN KEY (idbasket) REFERENCES mypizza.basket(idbasket);
 F   ALTER TABLE ONLY mypizza.delivery DROP CONSTRAINT basket_idbasket_fk;
       mypizza       usr_mypizza    false    216    210    3751            �           2606    16528    agence client_idclient_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.agence
    ADD CONSTRAINT client_idclient_fk FOREIGN KEY (idclient) REFERENCES mypizza.client(idclient);
 D   ALTER TABLE ONLY mypizza.agence DROP CONSTRAINT client_idclient_fk;
       mypizza       usr_mypizza    false    3739    198    200            �           2606    16556    order client_idclient_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza."order"
    ADD CONSTRAINT client_idclient_fk FOREIGN KEY (idclient) REFERENCES mypizza.client(idclient);
 E   ALTER TABLE ONLY mypizza."order" DROP CONSTRAINT client_idclient_fk;
       mypizza       usr_mypizza    false    202    198    3739            �           2606    16571    basket client_idclient_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.basket
    ADD CONSTRAINT client_idclient_fk FOREIGN KEY (idclient) REFERENCES mypizza.client(idclient);
 D   ALTER TABLE ONLY mypizza.basket DROP CONSTRAINT client_idclient_fk;
       mypizza       usr_mypizza    false    210    3739    198            �           2606    16541    agence employee_idemployee_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.agence
    ADD CONSTRAINT employee_idemployee_fk FOREIGN KEY (idemployee) REFERENCES mypizza.employee(idemployee);
 H   ALTER TABLE ONLY mypizza.agence DROP CONSTRAINT employee_idemployee_fk;
       mypizza       usr_mypizza    false    3759    200    218            �           2606    16561    task employee_idemployee_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.task
    ADD CONSTRAINT employee_idemployee_fk FOREIGN KEY (idemployee) REFERENCES mypizza.employee(idemployee);
 F   ALTER TABLE ONLY mypizza.task DROP CONSTRAINT employee_idemployee_fk;
       mypizza       usr_mypizza    false    218    3759    204            �           2606    16566    cook employee_idemployee_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mypizza.cook
    ADD CONSTRAINT employee_idemployee_fk FOREIGN KEY (idemployee) REFERENCES mypizza.employee(idemployee);
 F   ALTER TABLE ONLY mypizza.cook DROP CONSTRAINT employee_idemployee_fk;
       mypizza       usr_mypizza    false    218    3759    206            �           2606    16576    basket order_idorder_fk    FK CONSTRAINT        ALTER TABLE ONLY mypizza.basket
    ADD CONSTRAINT order_idorder_fk FOREIGN KEY (idorder) REFERENCES mypizza."order"(idorder);
 B   ALTER TABLE ONLY mypizza.basket DROP CONSTRAINT order_idorder_fk;
       mypizza       usr_mypizza    false    210    3743    202            �           2606    16581    rate order_idorder_fk    FK CONSTRAINT     }   ALTER TABLE ONLY mypizza.rate
    ADD CONSTRAINT order_idorder_fk FOREIGN KEY (idorder) REFERENCES mypizza."order"(idorder);
 @   ALTER TABLE ONLY mypizza.rate DROP CONSTRAINT order_idorder_fk;
       mypizza       usr_mypizza    false    212    202    3743            �           2606    16551    employee task_idtask_fk    FK CONSTRAINT     z   ALTER TABLE ONLY mypizza.employee
    ADD CONSTRAINT task_idtask_fk FOREIGN KEY (idtask) REFERENCES mypizza.task(idtask);
 B   ALTER TABLE ONLY mypizza.employee DROP CONSTRAINT task_idtask_fk;
       mypizza       usr_mypizza    false    218    204    3745            �           2606    16591    delivery task_idtask_fk    FK CONSTRAINT     z   ALTER TABLE ONLY mypizza.delivery
    ADD CONSTRAINT task_idtask_fk FOREIGN KEY (idtask) REFERENCES mypizza.task(idtask);
 B   ALTER TABLE ONLY mypizza.delivery DROP CONSTRAINT task_idtask_fk;
       mypizza       usr_mypizza    false    216    204    3745            9   �   x�%��
�@D{�b�(�ԩRXb j��[dA�.{���hlo�a��-���c^��+�id70r��8�7�U���rTB��ױ�&a�v�9L~a.��}�"��B'Ο�Y?���z�&a�~1F���i�����e��!8�      C   �   x�-�1�0F������!*trr�P�
����ä)�*���D���|m�7��n8�_&YW����d�R�ȇyL֠���ĒJ&Z<�O��ɿB�sDR��v<]��=B�M$k���*v�����A?-�      7   �   x�5�O�0��~������N<a��}��o�&N���F�~���(�[yQ]���3��J5A��G:ݠ"0pc>z�%.Fi�'�S+�u�V+W�P�'���T��q�ܳF������]�[�
��+��K�8���m�KiB��xO�Q���y�M~<      ?   �   x�E�=
�0����mm!��A'��`��3y�`�C��8^ŋIpp�~ڮo���p����Q�?�4:��CK4E5���w�L�Hc��
:+�Ɇ�/D�O�[�C)9c�"��(��O~th"�|�B�k������W�:2ƾ�1E      I   }   x���v
Q���Wȭ,Ȭ�J�KI��,K-�T��L��u��3KRuK2�sAtn~i^��BqIbIiqAben*�����X��
f� Y�
a�>���
F:
%E�@�~�>>:
�0>P�PӚ�� �*-�      K   �   x�5�M�0໿"7갻l��q0u��)�Cj'�_��%��n�ge�>@���6<���]� ��ouHgU�٣�$�3 #��R�{?K���'��oiGB��)��UW4�p�&�H�֎�v�s~��K���ꮪx�	��1�-��/9�      A   b   x���v
Q���Wȭ,Ȭ�J���K/JM�L�+Q��LA�t�sSuRR�3��K2��4�}B]�4u��3ˊRՁ��+2�S��5���� ��!$      ;   u   x�ȱ
�0�=O��B(t���A(�u�Z���,���}|u�V�u�=1�3��dQ<I���_+��d��n�)��$���&-���Eq�ȗͩ>G��5�H��QBy3ƜRV%�      E   j   x���v
Q���Wȭ,Ȭ�J�+J,IU��L�:
y��@��(3H�$V�(�d'���(d����i*�9���+h�(���9��(��(�( ���5 .�      G   ~   x���v
Q���Wȭ,Ȭ�J�+.�O�V��L3tRR���2J2��t
K*uR+
2�RSKt2S2�ҁ��ԼM�0G�P�`C��+2�S��u�|#CK]C#]C���5 �&�      =   �   x�U˱� �ᝧ���`M�NLM�v'p���A��8v:�7�A��k�ANOp{�ǡ.Y�jkΥ`0�hC�~��#��Fe
[0gR�k��1��]�����C��5�P%�i��]�T�㷖][����!9��	!?1E     