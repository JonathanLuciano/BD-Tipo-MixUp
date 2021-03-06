PGDMP         .                z        	   tipomixup    14.2    14.2 @    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    16394 	   tipomixup    DATABASE     f   CREATE DATABASE tipomixup WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE tipomixup;
                postgres    false            ?            1259    16403    cliente    TABLE     a   CREATE TABLE public.cliente (
    numcompras integer NOT NULL,
    idcliente integer NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    16413    empleado    TABLE     ?   CREATE TABLE public.empleado (
    salario integer NOT NULL,
    diacontrato integer NOT NULL,
    mescontrato integer NOT NULL,
    aniocontrato integer NOT NULL,
    idempleado integer NOT NULL
);
    DROP TABLE public.empleado;
       public         heap    postgres    false            ?            1259    16538    empleadocontratacliente    TABLE     ?   CREATE TABLE public.empleadocontratacliente (
    contratadorempleado integer NOT NULL,
    contratadocliente integer NOT NULL,
    diacontrato integer,
    mescontrato integer,
    aniocontrato integer
);
 +   DROP TABLE public.empleadocontratacliente;
       public         heap    postgres    false            ?            1259    16568    empleadoproponeproducto    TABLE     ?   CREATE TABLE public.empleadoproponeproducto (
    tipoproducto character varying(10) NOT NULL,
    serie integer NOT NULL,
    numidentificadorempleado integer NOT NULL
);
 +   DROP TABLE public.empleadoproponeproducto;
       public         heap    postgres    false            ?            1259    16483    evaluacioncliente    TABLE     ?   CREATE TABLE public.evaluacioncliente (
    identificadorcliente integer NOT NULL,
    identificadorempleado integer NOT NULL,
    evaluacionacliente integer
);
 %   DROP TABLE public.evaluacioncliente;
       public         heap    postgres    false            ?            1259    16423    evaluacionempleado    TABLE     ?   CREATE TABLE public.evaluacionempleado (
    numidcliente integer NOT NULL,
    numidempleado integer NOT NULL,
    evaluacionemp integer
);
 &   DROP TABLE public.evaluacionempleado;
       public         heap    postgres    false            ?            1259    16465    evaluacionempleadoempleado    TABLE     ?   CREATE TABLE public.evaluacionempleadoempleado (
    identificadorevaluador integer NOT NULL,
    identificadorevaluado integer NOT NULL,
    evaluacionfinal integer
);
 .   DROP TABLE public.evaluacionempleadoempleado;
       public         heap    postgres    false            ?            1259    16593    gadget    TABLE     c   CREATE TABLE public.gadget (
    numeroserie integer NOT NULL,
    nombre character varying(20)
);
    DROP TABLE public.gadget;
       public         heap    postgres    false            ?            1259    16613    musica    TABLE     ?   CREATE TABLE public.musica (
    nombre character varying(20),
    artista character varying(20),
    duracion integer,
    numdeserie integer NOT NULL
);
    DROP TABLE public.musica;
       public         heap    postgres    false            ?            1259    16603    pelicula    TABLE     ?   CREATE TABLE public.pelicula (
    reparto character varying(50),
    nomdirector character varying(20),
    numerodeserie integer NOT NULL,
    nombre character varying(20)
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            ?            1259    16398    persona    TABLE     >  CREATE TABLE public.persona (
    nompila character varying(20),
    apepat character varying(20),
    apemat character varying(20),
    numidentificador integer NOT NULL,
    genero character varying(1),
    edad integer,
    telefono integer,
    direccion character varying(30),
    correo character varying(30)
);
    DROP TABLE public.persona;
       public         heap    postgres    false            ?            1259    16563    producto    TABLE     ?   CREATE TABLE public.producto (
    tipo character varying(10) NOT NULL,
    numserie integer NOT NULL,
    precio integer,
    "tamaño" character varying(15),
    formato character varying(10),
    material character varying(15)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            ?            1259    16553 	   promocion    TABLE     ?   CREATE TABLE public.promocion (
    numero integer NOT NULL,
    premio character varying(15),
    diaentrega integer,
    mesentrega integer,
    anioentrega integer,
    empleadocreador integer NOT NULL,
    seriepremio integer
);
    DROP TABLE public.promocion;
       public         heap    postgres    false            ?            1259    16583    series    TABLE     w   CREATE TABLE public.series (
    nombre character varying(20),
    temporadas integer,
    noserie integer NOT NULL
);
    DROP TABLE public.series;
       public         heap    postgres    false            I          0    16403    cliente 
   TABLE DATA           8   COPY public.cliente (numcompras, idcliente) FROM stdin;
    public          postgres    false    210   ?U       J          0    16413    empleado 
   TABLE DATA           _   COPY public.empleado (salario, diacontrato, mescontrato, aniocontrato, idempleado) FROM stdin;
    public          postgres    false    211   ?U       N          0    16538    empleadocontratacliente 
   TABLE DATA           ?   COPY public.empleadocontratacliente (contratadorempleado, contratadocliente, diacontrato, mescontrato, aniocontrato) FROM stdin;
    public          postgres    false    215   TV       Q          0    16568    empleadoproponeproducto 
   TABLE DATA           `   COPY public.empleadoproponeproducto (tipoproducto, serie, numidentificadorempleado) FROM stdin;
    public          postgres    false    218   ?V       M          0    16483    evaluacioncliente 
   TABLE DATA           l   COPY public.evaluacioncliente (identificadorcliente, identificadorempleado, evaluacionacliente) FROM stdin;
    public          postgres    false    214   ?W       K          0    16423    evaluacionempleado 
   TABLE DATA           X   COPY public.evaluacionempleado (numidcliente, numidempleado, evaluacionemp) FROM stdin;
    public          postgres    false    212   ZX       L          0    16465    evaluacionempleadoempleado 
   TABLE DATA           t   COPY public.evaluacionempleadoempleado (identificadorevaluador, identificadorevaluado, evaluacionfinal) FROM stdin;
    public          postgres    false    213   ?X       S          0    16593    gadget 
   TABLE DATA           5   COPY public.gadget (numeroserie, nombre) FROM stdin;
    public          postgres    false    220   ?Y       U          0    16613    musica 
   TABLE DATA           G   COPY public.musica (nombre, artista, duracion, numdeserie) FROM stdin;
    public          postgres    false    222   Z       T          0    16603    pelicula 
   TABLE DATA           O   COPY public.pelicula (reparto, nomdirector, numerodeserie, nombre) FROM stdin;
    public          postgres    false    221   ?Z       H          0    16398    persona 
   TABLE DATA           w   COPY public.persona (nompila, apepat, apemat, numidentificador, genero, edad, telefono, direccion, correo) FROM stdin;
    public          postgres    false    209   ?[       P          0    16563    producto 
   TABLE DATA           X   COPY public.producto (tipo, numserie, precio, "tamaño", formato, material) FROM stdin;
    public          postgres    false    217   x^       O          0    16553 	   promocion 
   TABLE DATA           v   COPY public.promocion (numero, premio, diaentrega, mesentrega, anioentrega, empleadocreador, seriepremio) FROM stdin;
    public          postgres    false    216   ?_       R          0    16583    series 
   TABLE DATA           =   COPY public.series (nombre, temporadas, noserie) FROM stdin;
    public          postgres    false    219   5`       ?           2606    16412    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    210            ?           2606    16422    empleado empleado_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (idempleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    211            ?           2606    16542 4   empleadocontratacliente empleadocontratacliente_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.empleadocontratacliente
    ADD CONSTRAINT empleadocontratacliente_pkey PRIMARY KEY (contratadorempleado, contratadocliente);
 ^   ALTER TABLE ONLY public.empleadocontratacliente DROP CONSTRAINT empleadocontratacliente_pkey;
       public            postgres    false    215    215            ?           2606    16572 4   empleadoproponeproducto empleadoproponeproducto_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.empleadoproponeproducto
    ADD CONSTRAINT empleadoproponeproducto_pkey PRIMARY KEY (tipoproducto, serie, numidentificadorempleado);
 ^   ALTER TABLE ONLY public.empleadoproponeproducto DROP CONSTRAINT empleadoproponeproducto_pkey;
       public            postgres    false    218    218    218            ?           2606    16487 (   evaluacioncliente evaluacioncliente_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacioncliente
    ADD CONSTRAINT evaluacioncliente_pkey PRIMARY KEY (identificadorcliente, identificadorempleado);
 R   ALTER TABLE ONLY public.evaluacioncliente DROP CONSTRAINT evaluacioncliente_pkey;
       public            postgres    false    214    214            ?           2606    16439 *   evaluacionempleado evaluacionempleado_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacionempleado
    ADD CONSTRAINT evaluacionempleado_pkey PRIMARY KEY (numidempleado, numidcliente);
 T   ALTER TABLE ONLY public.evaluacionempleado DROP CONSTRAINT evaluacionempleado_pkey;
       public            postgres    false    212    212            ?           2606    16482 :   evaluacionempleadoempleado evaluacionempleadoempleado_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacionempleadoempleado
    ADD CONSTRAINT evaluacionempleadoempleado_pkey PRIMARY KEY (identificadorevaluador, identificadorevaluado);
 d   ALTER TABLE ONLY public.evaluacionempleadoempleado DROP CONSTRAINT evaluacionempleadoempleado_pkey;
       public            postgres    false    213    213            ?           2606    16602    gadget gadget_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.gadget
    ADD CONSTRAINT gadget_pkey PRIMARY KEY (numeroserie);
 <   ALTER TABLE ONLY public.gadget DROP CONSTRAINT gadget_pkey;
       public            postgres    false    220            ?           2606    16617    musica musica_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.musica
    ADD CONSTRAINT musica_pkey PRIMARY KEY (numdeserie);
 <   ALTER TABLE ONLY public.musica DROP CONSTRAINT musica_pkey;
       public            postgres    false    222            ?           2606    16607    pelicula pelicula_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (numerodeserie);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    221            ?           2606    16402    persona persona_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (numidentificador);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    209            ?           2606    16837    producto producto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (numserie);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    217            ?           2606    16557    promocion promocion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.promocion
    ADD CONSTRAINT promocion_pkey PRIMARY KEY (numero, empleadocreador);
 B   ALTER TABLE ONLY public.promocion DROP CONSTRAINT promocion_pkey;
       public            postgres    false    216    216            ?           2606    16835    series series_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (noserie);
 <   ALTER TABLE ONLY public.series DROP CONSTRAINT series_pkey;
       public            postgres    false    219            ?           2606    16779 +   empleadocontratacliente fkcontratadocliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.empleadocontratacliente
    ADD CONSTRAINT fkcontratadocliente FOREIGN KEY (contratadocliente) REFERENCES public.cliente(idcliente) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.empleadocontratacliente DROP CONSTRAINT fkcontratadocliente;
       public          postgres    false    3218    210    215            ?           2606    16784 -   empleadocontratacliente fkcontratadorempleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.empleadocontratacliente
    ADD CONSTRAINT fkcontratadorempleado FOREIGN KEY (contratadorempleado) REFERENCES public.empleado(idempleado) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.empleadocontratacliente DROP CONSTRAINT fkcontratadorempleado;
       public          postgres    false    211    215    3220            ?           2606    16558    promocion fkempleadocreador    FK CONSTRAINT     ?   ALTER TABLE ONLY public.promocion
    ADD CONSTRAINT fkempleadocreador FOREIGN KEY (empleadocreador) REFERENCES public.empleado(idempleado);
 E   ALTER TABLE ONLY public.promocion DROP CONSTRAINT fkempleadocreador;
       public          postgres    false    216    211    3220            ?           2606    16774    cliente fkidcliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fkidcliente FOREIGN KEY (idcliente) REFERENCES public.persona(numidentificador) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fkidcliente;
       public          postgres    false    209    210    3216            ?           2606    16769    empleado fkidempleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fkidempleado FOREIGN KEY (idempleado) REFERENCES public.persona(numidentificador) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.empleado DROP CONSTRAINT fkidempleado;
       public          postgres    false    209    3216    211            ?           2606    16789 (   evaluacioncliente fkidentificadorcliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacioncliente
    ADD CONSTRAINT fkidentificadorcliente FOREIGN KEY (identificadorcliente) REFERENCES public.cliente(idcliente) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.evaluacioncliente DROP CONSTRAINT fkidentificadorcliente;
       public          postgres    false    3218    214    210            ?           2606    16794 )   evaluacioncliente fkidentificadorempleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacioncliente
    ADD CONSTRAINT fkidentificadorempleado FOREIGN KEY (identificadorempleado) REFERENCES public.empleado(idempleado) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.evaluacioncliente DROP CONSTRAINT fkidentificadorempleado;
       public          postgres    false    3220    211    214            ?           2606    16809 2   evaluacionempleadoempleado fkidentificadorevaluado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacionempleadoempleado
    ADD CONSTRAINT fkidentificadorevaluado FOREIGN KEY (identificadorevaluado) REFERENCES public.empleado(idempleado) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.evaluacionempleadoempleado DROP CONSTRAINT fkidentificadorevaluado;
       public          postgres    false    213    211    3220            ?           2606    16814 3   evaluacionempleadoempleado fkidentificadorevaluador    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacionempleadoempleado
    ADD CONSTRAINT fkidentificadorevaluador FOREIGN KEY (identificadorevaluador) REFERENCES public.empleado(idempleado) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.evaluacionempleadoempleado DROP CONSTRAINT fkidentificadorevaluador;
       public          postgres    false    213    211    3220            ?           2606    16843    series fknoserie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.series
    ADD CONSTRAINT fknoserie FOREIGN KEY (noserie) REFERENCES public.producto(numserie) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.series DROP CONSTRAINT fknoserie;
       public          postgres    false    3232    217    219            ?           2606    16858    musica fknumdeserie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.musica
    ADD CONSTRAINT fknumdeserie FOREIGN KEY (numdeserie) REFERENCES public.producto(numserie) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.musica DROP CONSTRAINT fknumdeserie;
       public          postgres    false    3232    217    222            ?           2606    16853    pelicula fknumerodeserie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT fknumerodeserie FOREIGN KEY (numerodeserie) REFERENCES public.producto(numserie) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT fknumerodeserie;
       public          postgres    false    3232    217    221            ?           2606    16848    gadget fknumeroserie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.gadget
    ADD CONSTRAINT fknumeroserie FOREIGN KEY (numeroserie) REFERENCES public.producto(numserie) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.gadget DROP CONSTRAINT fknumeroserie;
       public          postgres    false    3232    220    217            ?           2606    16799 !   evaluacionempleado fknumidcliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacionempleado
    ADD CONSTRAINT fknumidcliente FOREIGN KEY (numidcliente) REFERENCES public.cliente(idcliente) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.evaluacionempleado DROP CONSTRAINT fknumidcliente;
       public          postgres    false    3218    212    210            ?           2606    16804 "   evaluacionempleado fknumidempleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacionempleado
    ADD CONSTRAINT fknumidempleado FOREIGN KEY (numidempleado) REFERENCES public.empleado(idempleado) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.evaluacionempleado DROP CONSTRAINT fknumidempleado;
       public          postgres    false    3220    212    211            ?           2606    16824 2   empleadoproponeproducto fknumidentificadorempleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.empleadoproponeproducto
    ADD CONSTRAINT fknumidentificadorempleado FOREIGN KEY (numidentificadorempleado) REFERENCES public.empleado(idempleado) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.empleadoproponeproducto DROP CONSTRAINT fknumidentificadorempleado;
       public          postgres    false    211    3220    218            ?           2606    16838    empleadoproponeproducto fkserie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.empleadoproponeproducto
    ADD CONSTRAINT fkserie FOREIGN KEY (serie) REFERENCES public.producto(numserie) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.empleadoproponeproducto DROP CONSTRAINT fkserie;
       public          postgres    false    3232    218    217            ?           2606    16863    promocion fkseriepremio    FK CONSTRAINT     ?   ALTER TABLE ONLY public.promocion
    ADD CONSTRAINT fkseriepremio FOREIGN KEY (seriepremio) REFERENCES public.producto(numserie) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.promocion DROP CONSTRAINT fkseriepremio;
       public          postgres    false    217    216    3232            I   5   x????0?7??LH?W/L??#?R(???tk0??????8??_?|ۆ?      J   z   x?-??1?R0[?r???X??????ЁÆ?)?"Ò?rLd?|???O??L?
9v?-j]?>Ӂ6O?4??u???
?V9W"d???+?????ݖR?=J3???v?a}???#?h?$?      N   ,   x?34?4?44?4?4202?24?L8??\K (f
???qqq ??      Q     x?e?1n?0???:L!?Vd??S? ]??Q??6??8?{????lʁ?????:?i?^??ai'?FL????Z9??1???!8l????C0?7:?T>???<1d??3c?'?F%?,?kN???A?hHP???7?HY.?Ɩ;?zG??-S߯_???pb'-`??%??
[?,??<??bZҚ??;b???D8?(uh?`??-kX?̏???Xn?R9??)?!??7uN(ݕ?Z?tJ???]˴CR?uN??1?!??k?l?????xM9;?X>?J)?D?x?      M   ?   x?E?I!C?x?~RNp???9??6??!*M????H8???G4?E+875,?bh?/?O???F;?ڲ^p???W9?Y??Hx"?`\?&???vAmز?m?j????Or?r?é?+?Y??UL??9????J)?1k      K   }   x?5?? ?3?? ???:²????J?-j`?N?y?uyD?(隃?LGc???V??]??pю?B??????Q?4c?????09??Nn?.??>???
???/???>~?c?(?      L   ?   x?E??? D?Z̾??H/鿎e`??#4YM?.M???-??~???Y@?Dt?>?,??x[???a?? 
?໤????C]?;????ш??Z?@YL+?????؆B?!ܵPP?j-p?Z?GbP?m?v????sO??_???3?]?Y?xY9?s??ǙVǐM+????????H]      S   J   x????M,*		?2?J???R??+I??LOR\??!?I9?%\e?y?\??????%?)?E?\1z\\\ L??      U   ?   x????@?뽧?'0??`e4$??Xhis?
?]rwH??=?)???w??B???>??Uv????9?c???soN??m???rYa??=9+u?nƖ??????*UJS)2NV?b':???#?ثt4????lg*np?%?Ϥ?????2Kg??0?? ?8      T   ?   x?-?Kj?@????:Aa?8@[C?I?q?t#?j":??8?=}?F??Y3٨X?@????;*?'?K??4???>M3???2?N{??@?U???$%???Oe8҄-?$??8??6Q?+?P)??쬡59?
?b?|??t?*7V+}????(g?q????:G??dv??~??7?M8?2?w?ko~u???`O??.??[g?O0xa\pN?????(?`L      H   ?  x?m??r?0?????0??????N???i&?eo֠?<Q????J??y???s??hZjh??X(hy???????HhN???E?R?c?????7?#X|G????y?|?P:*L????4?so?	4?`d?????AM0?&?P?	???v?j?3?$??????"ݟǎ?'i:xt?̓*AW??Q?E?m??
???fw0NR????,'?GЅ?k?:͒5?Ɍ???L?pO?;7\?Ҍ?$??t?E???+???mQ_??h^??\??i4N?A??>?~??+(9+1?4?A?Y??i?5??= ?`K?r??VZӓ??H?	?E???T@g?ɭ?탨?bS?D?=X?y7Z??9??y??8?'??j@?{?v?????aӑ?&??f??AF?K?S??A??4??tut?~?{?Qcw???|j̲??QXTF?S?3x??6ˢoJ?B???????³?	?=?m{`?	u?@3<?m?8???;??~?2?L?????R4??dcW8'h????z?9*??Ꮎ??p*?p5?z?e??k^ޯ?v?0<?A?X?Al???a?=?^?	(??Y???Gߚ?u_??,???U`I?)y՟_?ң3??*???:??w?@??AV?`???"?'?S?g???9?"?e?EOn?ط??%?F????sҨ	?O]^??u??f~i?qo?Q????d???h???7*?      P   ?   x???An?0E??)r?h??>A6)?Tu?7?m?@*???Ҡ??{???f??~??C?H
^?????y)??S?6???NJw?~h?d8?!b(?3	7???????k?????????C??"?h((??*f?6???ٌ?
}??D???P??vp?#?~L},?\?ؾ???Kh?H?-??{??I
??U?5w???hy4?oঞQ??>]d?0???ʱJ???#????????i2f?f]?7??      O   ?   x?E???0D经Aq?&?0!!??D%B?:?h?ő?9???\???x??w?AG??k??Vp??<?KAB0&#d?(?C1?R???,A??Y?0u??G?|l?۬3?{Ҽy?sD?v?ږf{2-?e}?Si?o9??J?/Pkh?2???H~?$;x      R   M   x?s*JM???KWHJL?4?4?r?I,????4?r???KU(O,*?4?4????????L?(?4?4?????2L?b???? ??     