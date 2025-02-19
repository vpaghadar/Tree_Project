PGDMP     8    &                |         	   Tree_View    10.23    10.23     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    65574 	   Tree_View    DATABASE     �   CREATE DATABASE "Tree_View" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "Tree_View";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    65577    t_nodes    TABLE     �   CREATE TABLE public.t_nodes (
    c_nodeid bigint NOT NULL,
    c_nodename character varying(500),
    c_parentnodeid bigint,
    c_isactive boolean NOT NULL,
    c_startdate date DEFAULT CURRENT_DATE
);
    DROP TABLE public.t_nodes;
       public         postgres    false    3            �            1259    65575    t_nodes_c_nodeId_seq    SEQUENCE     �   ALTER TABLE public.t_nodes ALTER COLUMN c_nodeid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."t_nodes_c_nodeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    3    197            �
          0    65577    t_nodes 
   TABLE DATA               `   COPY public.t_nodes (c_nodeid, c_nodename, c_parentnodeid, c_isactive, c_startdate) FROM stdin;
    public       postgres    false    197   �       �
           0    0    t_nodes_c_nodeId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."t_nodes_c_nodeId_seq"', 20, true);
            public       postgres    false    196            q
           2606    65584    t_nodes t_nodes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.t_nodes
    ADD CONSTRAINT t_nodes_pkey PRIMARY KEY (c_nodeid);
 >   ALTER TABLE ONLY public.t_nodes DROP CONSTRAINT t_nodes_pkey;
       public         postgres    false    197            �
   s   x�eʽ� ����^4p�i;vh��j�\=����e����
�w�x6$HR]Ȧ ������ε�0">im����&�z�;T���x~O��i�svA����g����L��q�-+     