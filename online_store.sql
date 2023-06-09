PGDMP         8                {            postgres    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     |   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3344                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16415    employeedata    TABLE     �   CREATE TABLE public.employeedata (
    id integer NOT NULL,
    placeofbirth character(250),
    placeofresidence character(250)
);
     DROP TABLE public.employeedata;
       public         heap    postgres    false            �            1259    16410 
   employment    TABLE     p   CREATE TABLE public.employment (
    id integer NOT NULL,
    workingdays character(250),
    salary integer
);
    DROP TABLE public.employment;
       public         heap    postgres    false            �            1259    16398    list    TABLE     l   CREATE TABLE public.list (
    id integer NOT NULL,
    name character(250),
    datebirth date NOT NULL
);
    DROP TABLE public.list;
       public         heap    postgres    false            �            1259    16403 	   listposts    TABLE     t   CREATE TABLE public.listposts (
    id integer NOT NULL,
    posts character(250),
    discipline character(250)
);
    DROP TABLE public.listposts;
       public         heap    postgres    false            
          0    16415    employeedata 
   TABLE DATA           J   COPY public.employeedata (id, placeofbirth, placeofresidence) FROM stdin;
    public          postgres    false    218          	          0    16410 
   employment 
   TABLE DATA           =   COPY public.employment (id, workingdays, salary) FROM stdin;
    public          postgres    false    217   �                 0    16398    list 
   TABLE DATA           3   COPY public.list (id, name, datebirth) FROM stdin;
    public          postgres    false    215   �                 0    16403 	   listposts 
   TABLE DATA           :   COPY public.listposts (id, posts, discipline) FROM stdin;
    public          postgres    false    216   �       x           2606    16421    employeedata employeedata_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.employeedata
    ADD CONSTRAINT employeedata_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.employeedata DROP CONSTRAINT employeedata_pkey;
       public            postgres    false    218            v           2606    16414    employment employment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.employment
    ADD CONSTRAINT employment_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.employment DROP CONSTRAINT employment_pkey;
       public            postgres    false    217            r           2606    16402    list list_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.list
    ADD CONSTRAINT list_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.list DROP CONSTRAINT list_pkey;
       public            postgres    false    215            t           2606    16409    listposts listposts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.listposts
    ADD CONSTRAINT listposts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.listposts DROP CONSTRAINT listposts_pkey;
       public            postgres    false    216            
   i   x�3�0'�89�\a�М�ļ����v	���hď̈7�N��.�H-I-J*-Jh���x7�{nbQ�@;d �H�wSΐ|��K2�% Fr���qqq :�Uf      	   W   x�3����KI��QOM�K-2F
�46500�2�A`
cΐR��uB2J�Fb� ���(s$ (,AA`:���\��qqq ���v         �   x�3��,K��/Sp��,)ʬTA�����T� �L��8�2�A!
��v](t,uM��9}��R��2��sGR� ����������	�wb^JQ~^20E����捜�
]#]#S.SN��2`J�(���"F��� g	�+         �   x�����0��= і�"1@/�kH$�(�%�K���	���u0e�YUr��j"��a _0��/0�y��z������U]�=������������d��Z�0�=��x/�C,�������m�IBS�     