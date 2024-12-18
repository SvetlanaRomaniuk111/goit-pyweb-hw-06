PGDMP  (    (                |         
   university    17.1 (Debian 17.1-1.pgdg120+1)    17.0 -    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            R           1262    25303 
   university    DATABASE     u   CREATE DATABASE university WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE university;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            S           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    25568    grades    TABLE     �   CREATE TABLE public.grades (
    id integer NOT NULL,
    student_id integer,
    subject_id integer,
    grade integer,
    grade_date date NOT NULL,
    CONSTRAINT grades_grade_check CHECK (((grade >= 0) AND (grade <= 100)))
);
    DROP TABLE public.grades;
       public         heap r       postgres    false    4            �            1259    25567    grades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.grades_id_seq;
       public               postgres    false    4    226            T           0    0    grades_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;
          public               postgres    false    225            �            1259    25530    groups    TABLE     a   CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.groups;
       public         heap r       postgres    false    4            �            1259    25529    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public               postgres    false    4    218            U           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public               postgres    false    217            �            1259    25537    students    TABLE     ~   CREATE TABLE public.students (
    id integer NOT NULL,
    fullname character varying(150) NOT NULL,
    group_id integer
);
    DROP TABLE public.students;
       public         heap r       postgres    false    4            �            1259    25536    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public               postgres    false    220    4            V           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public               postgres    false    219            �            1259    25556    subjects    TABLE     |   CREATE TABLE public.subjects (
    id integer NOT NULL,
    name character varying(175) NOT NULL,
    teacher_id integer
);
    DROP TABLE public.subjects;
       public         heap r       postgres    false    4            �            1259    25555    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public               postgres    false    4    224            W           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public               postgres    false    223            �            1259    25549    teachers    TABLE     h   CREATE TABLE public.teachers (
    id integer NOT NULL,
    fullname character varying(150) NOT NULL
);
    DROP TABLE public.teachers;
       public         heap r       postgres    false    4            �            1259    25548    teachers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teachers_id_seq;
       public               postgres    false    222    4            X           0    0    teachers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;
          public               postgres    false    221            �           2604    25571 	   grades id    DEFAULT     f   ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);
 8   ALTER TABLE public.grades ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    25533 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    25540    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    25559    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    25552    teachers id    DEFAULT     j   ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);
 :   ALTER TABLE public.teachers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            L          0    25568    grades 
   TABLE DATA                 public               postgres    false    226   D/       D          0    25530    groups 
   TABLE DATA                 public               postgres    false    218   C       F          0    25537    students 
   TABLE DATA                 public               postgres    false    220   }C       J          0    25556    subjects 
   TABLE DATA                 public               postgres    false    224   YE       H          0    25549    teachers 
   TABLE DATA                 public               postgres    false    222   �E       Y           0    0    grades_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.grades_id_seq', 540, true);
          public               postgres    false    225            Z           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 3, true);
          public               postgres    false    217            [           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 30, true);
          public               postgres    false    219            \           0    0    subjects_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.subjects_id_seq', 6, true);
          public               postgres    false    223            ]           0    0    teachers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teachers_id_seq', 3, true);
          public               postgres    false    221            �           2606    25574    grades grades_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_pkey;
       public                 postgres    false    226            �           2606    25535    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public                 postgres    false    218            �           2606    25542    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    220            �           2606    25561    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public                 postgres    false    224            �           2606    25554    teachers teachers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
       public                 postgres    false    222            �           2606    25575    grades grades_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_student_id_fkey;
       public               postgres    false    3239    226    220            �           2606    25580    grades grades_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_subject_id_fkey;
       public               postgres    false    224    226    3243            �           2606    25543    students students_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.students DROP CONSTRAINT students_group_id_fkey;
       public               postgres    false    220    218    3237            �           2606    25562 !   subjects subjects_teacher_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_teacher_id_fkey;
       public               postgres    false    3241    222    224            L      x��]I��;N�ׯ���7�ĈA��
�*��	!1@ �?;��7`�JG����4�c{9ٿ��O��?��������������/����O��o�����o�����ˏ��~��{N���~���/��w����l�yI��7LZ�t���D_�0i���t:�N����I�o�W�/.�t9ҪKZ�R��]���}J6������#.�|�Ʈa��H�do_\1�%�Ϭ��8}1��t�}��MZM����NK�>_��u���Aq=�c{����N��K�+�@�r�;��	l,T�x�fkKE�ގ�V�{� ��}���X:�Op:╃�B��Ļ�q�S��W����r��;���ѩ���M�x��b���p�5�ˑV�x���g5��_�.{[�����ac�n��i�S��4�p�	h��4��l�>�ԅ�8�`.��9�9����=���[����z�H>���ܰ��刏i��`�������Z#�����jx��un�h�2�_~�p��+�t�5�AuV�����������3��ݷG-�҂��G�_�4���d9?�:�5Z�8I�8B�ގ8��Я���%���atNG�s�;�򙎸�d#*B���nW �|�#N���q��P����~@N_��{.G��(��|=�䞲~	��m��g�~<+�6���3,{IG�)D&������4#:��*|�{��~]��\)�u��#���u�����D`$A���/WTz�RO���qxW�g�;ɗ~�s:�2ui�X��V:�䧄��xe�0wT�������y4��z�{��$��#~�_G�v�+.d���z=�=�����?J;���1��/�����k0�kt�[����!�V&��Ӭ5���#�������J[�oK낽ϯ'�|n切}����#^R�u�	ٖ�7z)o�~�k���qYOG�y�����Cn�OQa�#��}.��҂:ߗ��L�:x���)l��#����	l2���7V���ѹ�#����>Ά%]m߆�?>��+�8��J��i�#�U�׎��k8$�c��R��պ�}Ts(鑗ߠ	�|�k,�uִt��Ü�G�1J��{�@�ڑ?9	=��S����v8�h^@�dv�;��ߡQ4�쌭��٨�Ҫ���X�-���A�%R����G1H�z�|�%%�a������uhd��,������\y%l�ԏ|����#/����/��Wg:���9�ox�b�)����ҿ�J�_\>�`���������0�����j����Y,������#����.�zĢM���������v�Bf¹.�E�Ϊg������풇	^=�g�VĎ�����}z�hy�*TF���+ۂ�i&�����M���3���� H<�aT:�]�<��u)�c!���#_��+�ꑏ�9@P�b��� Hˑo�%<�4��~e^��A��n����4X�%�ï����ąƁ��l�^l��|�)��p{��3����C�gTY����~p�J>��&OH.&�A�����{��?r;����p���?��jC�_������ӑ7���G�4,&n2�e�"�۠��f [p��l�C��� �_��T`0[>1���ql��JP�S|�h��'Y^]�Qw� �!��7���@�9
���uP��9�Q� N%�w���E�áD݊��p�r�j1��g��&���1׭��\_�����@�hK��d 55����Fr����ɠ?6@���5hb U�-�%��Yڭ�-� ��A�l��E·q�2g�{�C�g] �y�j9�����-�4��P�"�k0&Nt��2���Npr˩h�u6�C?qaԷ&�?y�wuy.3�=@HOqN��V�Q���%�d�� �O����� ��g	�	vz�A�^�n w���9�ɓ�7[DS	�okԨ"��H6@�E|y�$gNm2\��{�#��x� �F�j2�d\���0�ɕ)��ȩ@h��6�d 9�
+mMR�nm'6 S�ߠkHb�~,=\Faڊ��V�5��%:4�E���	7��uE��j���4��l�w��iz~
xp&��j�5/�~���(��6@�����w�F<�\uH���%v8�g�.�(~ۂ7g�q�#�j ��`���}x�ƭ��k:
jΒ�w�岎�����5�;����
�\���:�{��{��r�=	�SY���+����`Q6@�4|�l��H��%�V`�<<�/����Q� z�`M<
���)Oaԍ6@�	������J(��)�����f8a��P[�b �N�~�n=�����4Yoý�v�kQc�[˝��K���K/�g6�0��r��z�W� g0) \2�Ym�� !���x$9��s<�`�:ΒмxQ �fY��m��V��ct ���� ?��B!`�~��~�-Ch���@.�#��<�mpٚ��'��<<�b �Bt ��@��Hp�lM����؅n Α=T��&8U�͓]Y���)��
�dW��w�ኮA������QR��ԥ�l �G^}�+�;�&x�>ٕu�嫔�as�� _�n �m6�X�&Lveu;�=��v!nd ����� �h�;���ٝzz����,^���.�=�VĻ$���Z5��£��|%8uX'�����uJ�m�'�r�M˓G�d �2����w�c���t1 �m���] `�{Z�wS<N}+��b ��z"�'�R��}�'�R���g��{7���lƟ�Hp
0ӜQ�&ikb��0g����]��E��lFI[K�)�@nH�Ю(A1 �݇O�GP�7)Wzz@e�+���� t(���9�Lze�B��2�8�p��S&���c	�kb1��*�׮{���0��� (�pв��>�C?�ӽc�j }*�ф�h4%�h�a�z��PT�� \F]]C&+f>\H�zX�K%x)PX �)� 5�&q�]��¶E�a���P����Lv�n�~�E.�]����7�&�ү i�
�1Or�_��rx�\Y�ѡ7o��I��X��'=�܊��d���"��G���!4�l ���?!!R|��8x[�/����U�\�h���W��x(
�D�jX��Cx�d ���ʿ��K2b*^-�^{�����g�a�h6 �
=<7j��QG��dI���[��ᅿ�@^�se���k��6q�����W�$�������ÔW�t����d1�s&L��RVA��g�q�'������ (n��q�P�[�[K���@v(<��R��+قh]�!;W���K
�|x)Tpw2����e_竝/|H�P$�"�F��S��`��OΫ��Y�Q>B�� V@LX�}+�~��
��d��K�]���z/*@(��`R�*拗Ї���NlH��^�y��V�r=�Pp�T���c~A3���TpcX^M����C����p83�Ї%�Z� �u@�K,�vሽǙ^�ґ&@1D�G� �F��ն
�[��\��V �����2�����
i�[a��f}s˭�����d -N��}kb�;�OwZ���?�.p���6���%r+�`ҳp�F8N�� �*��'C�x�n4حje�{'� �ɇ_n����q"����n�û�:���-�\:���v�?4��Vx5I�F,ya�uP+����M�i���`�� �����h�p2&~�ɚ��P��Q�����M)��䕒h
�V8���@<>Qڊ��.��L� ��0���Fy���}��b;]»��nf��Emi���K8e�ܖ�퇷
u�����?:�Y?ҫ��\tyg��/������Oo�^੿�n��<u�*g�1_�-���N{���Lq�� �gN5�&O?���0�zy�P��;�q�O�M>\��_�V����{3��ޝyY��#�R(�C����_�_L�?���)�O�` �  V6@xco��j�>�5�=��4� �Hh��2���<�P������2U1���iT \�y8�ukb�%���ѨZ 4�?��V8,�ӭխ��
�;~�i7�j囇��5'��SќW�F1@{�5����"�Nne�8�t��[�-� �]�� ���/S(�$��J���V|� B� �dW��"[z)��dWJl ◼]��_)}Y��Pz�lM����OA��2�7.�d8���K������Z���N��j �0�pi�?(� 8l���\Y�-���4ɕ��7O{k%��7������j�B�`R+�q���'|�Z�#�j&�R����ҤVv�v�� oB5��~N��Vv���>��� �p	�%���P�%�Kж�_��&����4?,����^׶�x���P��� �G�o k+��?U&����v����dV���9��7#���O:�����<���Y��m�.>���M��-f�`����a.���� Z̛����~q;^�mi+�* ��vB�W`���ڛ��#?��}+b65Xa2�	9%����5r"�(�#�i+b� =�rhѩ����@����"Ofewh_-ޠ?ʓYY �oǟrʓY�����/��ɬ�i
���y2+��2��1ʓYٯo�*�Af���~?;�ch|�'����
�@��I��7���Lۏ�g
�#f�p]D�����R8�� +�����}x�+S3 �%����� д��V�r��fŽ	�t�`)�dfP'6�7�:�饯4OV&}���x�u�t�G�򫅙����O䙧�k�Q:��b7y_�X��y�'H����^ �	<�a����!1nERL��K.����X�D ����Y�"櫥����8�/�] 2#h��e+�U�	<�n %�*�h2��%^�?����S��r      D   N   x���v
Q���W((M��L�K/�/-(Vs�	uV�0�QP�N�T״��$����83/='�8��@���E) �\\ �)�      F   �  x����n�@��<���JQTC���	�PH#L�z�]�޵�kQ���u��=}�ow�|�[=��V���tGgˇ6v����t�sQ������YC���!{�m������C8� 'B~'��`I
�3F{��F��'a�VڭPh�n
�Q�9J��W
�s����6�oIS�y`Z�a�x�U��v���s�}8G���!M�Y�jM��S*��ƤQ���V�4�"8`l�%��ZSG�m�_'��X����k��{��-�ބUl�@3�,�Q�&��5��W��Yþ�u������N~m������q�k<F#�1s�����UQ��VQ��Pz���
CM��9��_K���ё����(Q�	�Ѱɬ91]`�Ii��~���+�wr0����,)�N,	���U�'�v�(]˴��l0�[2�%:1E���IR�����%z4��2'�      J   p   x���v
Q���W((M��L�+.M�JM.)Vs�	uV�0�QP/��KW�Q0Դ��$B�PKIFj%	Z��ZR���Z���bԒ�ZB�S�W�:���a�Q���
��� �+YD      H   h   x���v
Q���W((M��L�+IML�H-*Vs�	uV�0�QP�OJ-*Qp-.H,�JT״��$B�P�W~F��[~Q
������2�3�s��ˁr �\\ 54�     