PGDMP         9                 x            deepBlueHospital    12.1    12.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16935    deepBlueHospital    DATABASE     �   CREATE DATABASE "deepBlueHospital" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
 "   DROP DATABASE "deepBlueHospital";
                postgres    false            �            1259    16967 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16965    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16977    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16975    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16959    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16957    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16985 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16995    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16993    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16983    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    17003    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17001 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    17142    billing_billingqueue    TABLE     +  CREATE TABLE public.billing_billingqueue (
    id integer NOT NULL,
    "billAmount" numeric(10,2) NOT NULL,
    date_time timestamp with time zone NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    "isCash" boolean NOT NULL,
    doctor_id integer NOT NULL,
    patient_id integer NOT NULL
);
 (   DROP TABLE public.billing_billingqueue;
       public         heap    postgres    false            �            1259    17140    billing_billingqueue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.billing_billingqueue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.billing_billingqueue_id_seq;
       public          postgres    false    228            �           0    0    billing_billingqueue_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.billing_billingqueue_id_seq OWNED BY public.billing_billingqueue.id;
          public          postgres    false    227            �            1259    17063    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17061    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16949    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16947    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16938    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16936    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    17094    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17163    offline_token_entrytoken    TABLE     s   CREATE TABLE public.offline_token_entrytoken (
    id integer NOT NULL,
    phno character varying(10) NOT NULL
);
 ,   DROP TABLE public.offline_token_entrytoken;
       public         heap    postgres    false            �            1259    17161    offline_token_entrytoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offline_token_entrytoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.offline_token_entrytoken_id_seq;
       public          postgres    false    230            �           0    0    offline_token_entrytoken_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.offline_token_entrytoken_id_seq OWNED BY public.offline_token_entrytoken.id;
          public          postgres    false    229            �            1259    17181 "   queueAlgorithms_appointmentrecords    TABLE     �  CREATE TABLE public."queueAlgorithms_appointmentrecords" (
    id integer NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    actual_time numeric(10,1) NOT NULL,
    time_in timestamp with time zone NOT NULL,
    consultation_in timestamp with time zone NOT NULL,
    consultation_out timestamp with time zone NOT NULL,
    consultation_time numeric(10,1),
    is_follow_up boolean NOT NULL,
    doctor_required_id integer NOT NULL,
    patient_id integer NOT NULL
);
 8   DROP TABLE public."queueAlgorithms_appointmentrecords";
       public         heap    postgres    false            �            1259    17179 )   queueAlgorithms_appointmentrecords_id_seq    SEQUENCE     �   CREATE SEQUENCE public."queueAlgorithms_appointmentrecords_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."queueAlgorithms_appointmentrecords_id_seq";
       public          postgres    false    234            �           0    0 )   queueAlgorithms_appointmentrecords_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."queueAlgorithms_appointmentrecords_id_seq" OWNED BY public."queueAlgorithms_appointmentrecords".id;
          public          postgres    false    233            �            1259    17171    queueAlgorithms_billingrecords    TABLE     W  CREATE TABLE public."queueAlgorithms_billingrecords" (
    id integer NOT NULL,
    "billAmount" numeric(10,2) NOT NULL,
    date_time timestamp with time zone NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    actual_time numeric(10,1),
    "is_Cash" boolean NOT NULL,
    doctor_id integer NOT NULL,
    patient_id integer NOT NULL
);
 4   DROP TABLE public."queueAlgorithms_billingrecords";
       public         heap    postgres    false            �            1259    17169 %   queueAlgorithms_billingrecords_id_seq    SEQUENCE     �   CREATE SEQUENCE public."queueAlgorithms_billingrecords_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."queueAlgorithms_billingrecords_id_seq";
       public          postgres    false    232            �           0    0 %   queueAlgorithms_billingrecords_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."queueAlgorithms_billingrecords_id_seq" OWNED BY public."queueAlgorithms_billingrecords".id;
          public          postgres    false    231            �            1259    17122    registration_appointmentqueue    TABLE     �  CREATE TABLE public.registration_appointmentqueue (
    id integer NOT NULL,
    date_time timestamp with time zone NOT NULL,
    time_in timestamp with time zone NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    actual_time numeric(10,1),
    consultation_time_in timestamp with time zone NOT NULL,
    is_follow_up boolean NOT NULL,
    doctor_required_id integer NOT NULL,
    patient_id integer NOT NULL
);
 1   DROP TABLE public.registration_appointmentqueue;
       public         heap    postgres    false            �            1259    17120 $   registration_appointmentqueue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_appointmentqueue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.registration_appointmentqueue_id_seq;
       public          postgres    false    226            �           0    0 $   registration_appointmentqueue_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.registration_appointmentqueue_id_seq OWNED BY public.registration_appointmentqueue.id;
          public          postgres    false    225            �            1259    17106    registration_doctor    TABLE     �  CREATE TABLE public.registration_doctor (
    id integer NOT NULL,
    timepp numeric(10,1) NOT NULL,
    timefpp numeric(10,1) NOT NULL,
    name character varying(100) NOT NULL,
    phno character varying(10) NOT NULL,
    email_id character varying(254) NOT NULL,
    speciality character varying(20) NOT NULL,
    "feePerPatient" numeric(10,2) NOT NULL,
    "followUpFee" numeric(10,2) NOT NULL
);
 '   DROP TABLE public.registration_doctor;
       public         heap    postgres    false            �            1259    17104    registration_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.registration_doctor_id_seq;
       public          postgres    false    222            �           0    0    registration_doctor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.registration_doctor_id_seq OWNED BY public.registration_doctor.id;
          public          postgres    false    221            �            1259    17114    registration_patient    TABLE     �   CREATE TABLE public.registration_patient (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    phno character varying(10) NOT NULL
);
 (   DROP TABLE public.registration_patient;
       public         heap    postgres    false            �            1259    17112    registration_patient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registration_patient_id_seq;
       public          postgres    false    224            �           0    0    registration_patient_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.registration_patient_id_seq OWNED BY public.registration_patient.id;
          public          postgres    false    223            �
           2604    16970    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    16980    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16962    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16988    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16998    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    17006    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    17145    billing_billingqueue id    DEFAULT     �   ALTER TABLE ONLY public.billing_billingqueue ALTER COLUMN id SET DEFAULT nextval('public.billing_billingqueue_id_seq'::regclass);
 F   ALTER TABLE public.billing_billingqueue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �
           2604    17066    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16952    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16941    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    17166    offline_token_entrytoken id    DEFAULT     �   ALTER TABLE ONLY public.offline_token_entrytoken ALTER COLUMN id SET DEFAULT nextval('public.offline_token_entrytoken_id_seq'::regclass);
 J   ALTER TABLE public.offline_token_entrytoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �
           2604    17184 %   queueAlgorithms_appointmentrecords id    DEFAULT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" ALTER COLUMN id SET DEFAULT nextval('public."queueAlgorithms_appointmentrecords_id_seq"'::regclass);
 V   ALTER TABLE public."queueAlgorithms_appointmentrecords" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �
           2604    17174 !   queueAlgorithms_billingrecords id    DEFAULT     �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords" ALTER COLUMN id SET DEFAULT nextval('public."queueAlgorithms_billingrecords_id_seq"'::regclass);
 R   ALTER TABLE public."queueAlgorithms_billingrecords" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �
           2604    17125     registration_appointmentqueue id    DEFAULT     �   ALTER TABLE ONLY public.registration_appointmentqueue ALTER COLUMN id SET DEFAULT nextval('public.registration_appointmentqueue_id_seq'::regclass);
 O   ALTER TABLE public.registration_appointmentqueue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    17109    registration_doctor id    DEFAULT     �   ALTER TABLE ONLY public.registration_doctor ALTER COLUMN id SET DEFAULT nextval('public.registration_doctor_id_seq'::regclass);
 E   ALTER TABLE public.registration_doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �
           2604    17117    registration_patient id    DEFAULT     �   ALTER TABLE ONLY public.registration_patient ALTER COLUMN id SET DEFAULT nextval('public.registration_patient_id_seq'::regclass);
 F   ALTER TABLE public.registration_patient ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �          0    16967 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��       �          0    16977    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       �          0    16959    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   
�       �          0    16985 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   4�       �          0    16995    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   Q�       �          0    17003    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   n�       �          0    17142    billing_billingqueue 
   TABLE DATA           |   COPY public.billing_billingqueue (id, "billAmount", date_time, predicted_time, "isCash", doctor_id, patient_id) FROM stdin;
    public          postgres    false    228   ��       �          0    17063    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    16949    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    16938    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��       �          0    17094    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ��       �          0    17163    offline_token_entrytoken 
   TABLE DATA           <   COPY public.offline_token_entrytoken (id, phno) FROM stdin;
    public          postgres    false    230   ��       �          0    17181 "   queueAlgorithms_appointmentrecords 
   TABLE DATA           �   COPY public."queueAlgorithms_appointmentrecords" (id, predicted_time, actual_time, time_in, consultation_in, consultation_out, consultation_time, is_follow_up, doctor_required_id, patient_id) FROM stdin;
    public          postgres    false    234   ��       �          0    17171    queueAlgorithms_billingrecords 
   TABLE DATA           �   COPY public."queueAlgorithms_billingrecords" (id, "billAmount", date_time, predicted_time, actual_time, "is_Cash", doctor_id, patient_id) FROM stdin;
    public          postgres    false    232   ��       �          0    17122    registration_appointmentqueue 
   TABLE DATA           �   COPY public.registration_appointmentqueue (id, date_time, time_in, predicted_time, actual_time, consultation_time_in, is_follow_up, doctor_required_id, patient_id) FROM stdin;
    public          postgres    false    226   ��       �          0    17106    registration_doctor 
   TABLE DATA           �   COPY public.registration_doctor (id, timepp, timefpp, name, phno, email_id, speciality, "feePerPatient", "followUpFee") FROM stdin;
    public          postgres    false    222   �       �          0    17114    registration_patient 
   TABLE DATA           >   COPY public.registration_patient (id, name, phno) FROM stdin;
    public          postgres    false    224   3�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208                        0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    206                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0    billing_billingqueue_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.billing_billingqueue_id_seq', 1, false);
          public          postgres    false    227                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          postgres    false    202            	           0    0    offline_token_entrytoken_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.offline_token_entrytoken_id_seq', 1, false);
          public          postgres    false    229            
           0    0 )   queueAlgorithms_appointmentrecords_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."queueAlgorithms_appointmentrecords_id_seq"', 1, false);
          public          postgres    false    233                       0    0 %   queueAlgorithms_billingrecords_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."queueAlgorithms_billingrecords_id_seq"', 1, false);
          public          postgres    false    231                       0    0 $   registration_appointmentqueue_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.registration_appointmentqueue_id_seq', 1, false);
          public          postgres    false    225                       0    0    registration_doctor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.registration_doctor_id_seq', 1, false);
          public          postgres    false    221                       0    0    registration_patient_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registration_patient_id_seq', 1, false);
          public          postgres    false    223            �
           2606    17092    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    17019 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    16982 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    16972    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    17010 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    16964 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    17000 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    17034 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            	           2606    16990    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    17008 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    17048 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    17086     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            +           2606    17149 8   billing_billingqueue billing_billingqueue_patient_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT billing_billingqueue_patient_id_key UNIQUE (patient_id);
 b   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT billing_billingqueue_patient_id_key;
       public            postgres    false    228            -           2606    17147 .   billing_billingqueue billing_billingqueue_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT billing_billingqueue_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT billing_billingqueue_pkey;
       public            postgres    false    228                       2606    17072 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    16956 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    16954 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    16946 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    17101 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            /           2606    17168 6   offline_token_entrytoken offline_token_entrytoken_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.offline_token_entrytoken
    ADD CONSTRAINT offline_token_entrytoken_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.offline_token_entrytoken DROP CONSTRAINT offline_token_entrytoken_pkey;
       public            postgres    false    230            8           2606    17186 J   queueAlgorithms_appointmentrecords queueAlgorithms_appointmentrecords_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords"
    ADD CONSTRAINT "queueAlgorithms_appointmentrecords_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" DROP CONSTRAINT "queueAlgorithms_appointmentrecords_pkey";
       public            postgres    false    234            2           2606    17178 L   queueAlgorithms_billingrecords queueAlgorithms_billingrecords_patient_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords"
    ADD CONSTRAINT "queueAlgorithms_billingrecords_patient_id_key" UNIQUE (patient_id);
 z   ALTER TABLE ONLY public."queueAlgorithms_billingrecords" DROP CONSTRAINT "queueAlgorithms_billingrecords_patient_id_key";
       public            postgres    false    232            4           2606    17176 B   queueAlgorithms_billingrecords queueAlgorithms_billingrecords_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords"
    ADD CONSTRAINT "queueAlgorithms_billingrecords_pkey" PRIMARY KEY (id);
 p   ALTER TABLE ONLY public."queueAlgorithms_billingrecords" DROP CONSTRAINT "queueAlgorithms_billingrecords_pkey";
       public            postgres    false    232            (           2606    17127 @   registration_appointmentqueue registration_appointmentqueue_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.registration_appointmentqueue
    ADD CONSTRAINT registration_appointmentqueue_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.registration_appointmentqueue DROP CONSTRAINT registration_appointmentqueue_pkey;
       public            postgres    false    226            "           2606    17111 ,   registration_doctor registration_doctor_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.registration_doctor
    ADD CONSTRAINT registration_doctor_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.registration_doctor DROP CONSTRAINT registration_doctor_pkey;
       public            postgres    false    222            $           2606    17119 .   registration_patient registration_patient_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.registration_patient
    ADD CONSTRAINT registration_patient_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.registration_patient DROP CONSTRAINT registration_patient_pkey;
       public            postgres    false    224            �
           1259    17093    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    17030 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    17031 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    17016 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    17046 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    17045 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    17060 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    17059 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            
           1259    17087     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            )           1259    17160 '   billing_billingqueue_doctor_id_c774efdc    INDEX     m   CREATE INDEX billing_billingqueue_doctor_id_c774efdc ON public.billing_billingqueue USING btree (doctor_id);
 ;   DROP INDEX public.billing_billingqueue_doctor_id_c774efdc;
       public            postgres    false    228                       1259    17083 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    17084 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    17103 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220                        1259    17102 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            5           1259    17208 >   queueAlgorithms_appointmentrecords_doctor_required_id_75c4ab19    INDEX     �   CREATE INDEX "queueAlgorithms_appointmentrecords_doctor_required_id_75c4ab19" ON public."queueAlgorithms_appointmentrecords" USING btree (doctor_required_id);
 T   DROP INDEX public."queueAlgorithms_appointmentrecords_doctor_required_id_75c4ab19";
       public            postgres    false    234            6           1259    17209 6   queueAlgorithms_appointmentrecords_patient_id_dc49dcf6    INDEX     �   CREATE INDEX "queueAlgorithms_appointmentrecords_patient_id_dc49dcf6" ON public."queueAlgorithms_appointmentrecords" USING btree (patient_id);
 L   DROP INDEX public."queueAlgorithms_appointmentrecords_patient_id_dc49dcf6";
       public            postgres    false    234            0           1259    17197 1   queueAlgorithms_billingrecords_doctor_id_c883a3df    INDEX     �   CREATE INDEX "queueAlgorithms_billingrecords_doctor_id_c883a3df" ON public."queueAlgorithms_billingrecords" USING btree (doctor_id);
 G   DROP INDEX public."queueAlgorithms_billingrecords_doctor_id_c883a3df";
       public            postgres    false    232            %           1259    17138 9   registration_appointmentqueue_doctor_required_id_d9df59c9    INDEX     �   CREATE INDEX registration_appointmentqueue_doctor_required_id_d9df59c9 ON public.registration_appointmentqueue USING btree (doctor_required_id);
 M   DROP INDEX public.registration_appointmentqueue_doctor_required_id_d9df59c9;
       public            postgres    false    226            &           1259    17139 1   registration_appointmentqueue_patient_id_9e5f0080    INDEX     �   CREATE INDEX registration_appointmentqueue_patient_id_9e5f0080 ON public.registration_appointmentqueue USING btree (patient_id);
 E   DROP INDEX public.registration_appointmentqueue_patient_id_9e5f0080;
       public            postgres    false    226            ;           2606    17025 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    2812    207            :           2606    17020 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    209    2817            9           2606    17011 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2807    205    207            =           2606    17040 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2817    215            <           2606    17035 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    2825    215            ?           2606    17054 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2812    207    217            >           2606    17049 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2825    213            D           2606    17150 I   billing_billingqueue billing_billingqueue_doctor_id_c774efdc_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT billing_billingqueue_doctor_id_c774efdc_fk_registrat FOREIGN KEY (doctor_id) REFERENCES public.registration_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT billing_billingqueue_doctor_id_c774efdc_fk_registrat;
       public          postgres    false    228    2850    222            E           2606    17155 J   billing_billingqueue billing_billingqueue_patient_id_8f577a55_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT billing_billingqueue_patient_id_8f577a55_fk_registrat FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT billing_billingqueue_patient_id_8f577a55_fk_registrat;
       public          postgres    false    228    224    2852            @           2606    17073 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    2807    205            A           2606    17078 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    219    2825            H           2606    17198 `   queueAlgorithms_appointmentrecords queueAlgorithms_appo_doctor_required_id_75c4ab19_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords"
    ADD CONSTRAINT "queueAlgorithms_appo_doctor_required_id_75c4ab19_fk_registrat" FOREIGN KEY (doctor_required_id) REFERENCES public.registration_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" DROP CONSTRAINT "queueAlgorithms_appo_doctor_required_id_75c4ab19_fk_registrat";
       public          postgres    false    234    222    2850            I           2606    17203 X   queueAlgorithms_appointmentrecords queueAlgorithms_appo_patient_id_dc49dcf6_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords"
    ADD CONSTRAINT "queueAlgorithms_appo_patient_id_dc49dcf6_fk_registrat" FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" DROP CONSTRAINT "queueAlgorithms_appo_patient_id_dc49dcf6_fk_registrat";
       public          postgres    false    234    2852    224            F           2606    17187 S   queueAlgorithms_billingrecords queueAlgorithms_bill_doctor_id_c883a3df_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords"
    ADD CONSTRAINT "queueAlgorithms_bill_doctor_id_c883a3df_fk_registrat" FOREIGN KEY (doctor_id) REFERENCES public.registration_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords" DROP CONSTRAINT "queueAlgorithms_bill_doctor_id_c883a3df_fk_registrat";
       public          postgres    false    232    222    2850            G           2606    17192 T   queueAlgorithms_billingrecords queueAlgorithms_bill_patient_id_4cd2b0c2_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords"
    ADD CONSTRAINT "queueAlgorithms_bill_patient_id_4cd2b0c2_fk_registrat" FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."queueAlgorithms_billingrecords" DROP CONSTRAINT "queueAlgorithms_bill_patient_id_4cd2b0c2_fk_registrat";
       public          postgres    false    224    2852    232            B           2606    17128 [   registration_appointmentqueue registration_appoint_doctor_required_id_d9df59c9_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_appointmentqueue
    ADD CONSTRAINT registration_appoint_doctor_required_id_d9df59c9_fk_registrat FOREIGN KEY (doctor_required_id) REFERENCES public.registration_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.registration_appointmentqueue DROP CONSTRAINT registration_appoint_doctor_required_id_d9df59c9_fk_registrat;
       public          postgres    false    222    2850    226            C           2606    17133 S   registration_appointmentqueue registration_appoint_patient_id_9e5f0080_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_appointmentqueue
    ADD CONSTRAINT registration_appoint_patient_id_9e5f0080_fk_registrat FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.registration_appointmentqueue DROP CONSTRAINT registration_appoint_patient_id_9e5f0080_fk_registrat;
       public          postgres    false    226    2852    224            �      x������ � �      �      x������ � �      �     x�u��n�0�����	����^c��Jԡu��Է8�c���q����Ԩצ/��-n�Z�~ʨ�����K@.�M���V ��fg	�Rk ;�'���=9���MS�zU��X�nN�莱G�O�h���hQ���qgry�}P���츹p��1�S@�"e� p��9�OvT5XjS��������� >�C|��iy��/�����c�j��V�9q#	����q��E�	vk��d�T`O�y��$L�=bh�0���+BXқ�[�����?�R�������|�0m�|�Sݺ��FuC��+�k"�N�D�	B3b�&� ������:ܟ��[uS�e]���d�t���S����-JN=mUq���W����j�n��A	*�������$8���O�o���<F{qc;)cґ����gCa��\H^=��o�C�:?&N'DҸ�����ר��FX&��֌�Leb{32�.��mΈ��Tr�t�cj*ޏ��~��x�JL���>PRn� ���o/Z��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�e�K�0D��a�ϒ{ �ҺiD�Y��D���Xy�iƶ��B��=E�wPe� �A5p��L�pNx�MV<B��J��D�k�JS[�g�AM*+R%��5n�6��i��hC)�3eB�n�>Dz�(���$�9�B�޳����,�������/�7�_�2���"~ ?o�      �   �  x����n�0�5y�ُ������#Y�ġ�L������N�0�6p>.��9�!�!��h� �v�K���@/��@����VI�O`Gܘ9��d��c��"�9�n�K��J� �)zOa�C��Wm>��Sm��M�q�	Yvgȝ�QmNɅA_����-�S.c�
*ǟ��e���^����vS��,��ubm|�Q�6�n���B��S{;t��mM*Q4Y5�j��7��B�*U U!�-��PaL�UqʕXUa��7SZ^��O8��E�L*F�*�s�ﳋ���[�Kێ����ܗW�}��&�8�6�����4��?��%�G$U��E�.r]w�VL=��--�FY�X��Z�<~O�x�z����z�������]	����E3������
+Y����sS�f�`�L�#ŭD���W5���n����S!J��p���)����%-���=�����$ L4b�m:�0*+�������w!���]�  U-�W{8�VY��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     