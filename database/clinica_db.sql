PGDMP  5                    }         
   clinica_db    17.4    17.4 E    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            .           1262    16386 
   clinica_db    DATABASE     p   CREATE DATABASE clinica_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
    DROP DATABASE clinica_db;
                     postgres    false            �            1259    16387    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap r       postgres    false            �            1259    16390    backup    TABLE     �   CREATE TABLE public.backup (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Url" text NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.backup;
       public         heap r       postgres    false            �            1259    16395    civil_status    TABLE     W   CREATE TABLE public.civil_status (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL
);
     DROP TABLE public.civil_status;
       public         heap r       postgres    false            �            1259    16400    consult    TABLE     �  CREATE TABLE public.consult (
    "Id" uuid NOT NULL,
    "PatientId" uuid NOT NULL,
    "Motive" text NOT NULL,
    "Clinicalhistory" text,
    "BilogicalEvaluation" text,
    "PsychologicalEvaluation" text,
    "SocialEvaluation" text,
    "FunctionalEvaluation" text,
    "Weight" numeric NOT NULL,
    "Size" numeric NOT NULL,
    "Pulse" numeric,
    "OxygenSaturation" numeric,
    "SystolicPressure" numeric,
    "DiastolicPressure" numeric,
    "AntecedentPersonal" text NOT NULL,
    "AntecedentFamily" text,
    "ExamComplementaryId" uuid,
    "Diagnosis" text NOT NULL,
    "ImageExamId" uuid,
    "Recipe" text NOT NULL,
    "Nextappointment" timestamp with time zone NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "DeletedBy" text,
    "DeletedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "CreatedByGuid" uuid
);
    DROP TABLE public.consult;
       public         heap r       postgres    false            �            1259    16405    exam    TABLE     �  CREATE TABLE public.exam (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "GroupId" uuid NOT NULL,
    "CreatedAt" timestamp with time zone DEFAULT '-infinity'::timestamp with time zone NOT NULL,
    "CreatedBy" text DEFAULT ''::text NOT NULL,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text,
    "IsDeleted" boolean DEFAULT false NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text
);
    DROP TABLE public.exam;
       public         heap r       postgres    false            �            1259    16413    group    TABLE     R   CREATE TABLE public."group" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public."group";
       public         heap r       postgres    false            �            1259    16418    image    TABLE     w   CREATE TABLE public.image (
    "Id" uuid NOT NULL,
    "OriginalUrl" text NOT NULL,
    "CompactUrl" text NOT NULL
);
    DROP TABLE public.image;
       public         heap r       postgres    false            �            1259    16423    page    TABLE     N   CREATE TABLE public.page (
    "Id" uuid NOT NULL,
    "Url" text NOT NULL
);
    DROP TABLE public.page;
       public         heap r       postgres    false            �            1259    16428    page_permit    TABLE     v   CREATE TABLE public.page_permit (
    "Id" uuid NOT NULL,
    "PageId" uuid NOT NULL,
    "SubRolId" uuid NOT NULL
);
    DROP TABLE public.page_permit;
       public         heap r       postgres    false            �            1259    16431    patient    TABLE     �  CREATE TABLE public.patient (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Identification" text,
    "Phone" text,
    "Address" text,
    "Age" integer,
    "ContactPerson" text,
    "ContactPhone" text,
    "Birthday" timestamp with time zone,
    "TypeSex" uuid,
    "CivilStatusId" uuid,
    "AvatarId" uuid NOT NULL,
    "RolId" uuid NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "DeletedBy" text,
    "DeletedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "ConsultCount" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.patient;
       public         heap r       postgres    false            �            1259    16437    rol    TABLE     L   CREATE TABLE public.rol (
    "Id" uuid NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.rol;
       public         heap r       postgres    false            �            1259    16442    sub_rol    TABLE     k   CREATE TABLE public.sub_rol (
    "Id" uuid NOT NULL,
    name text NOT NULL,
    "RolId" uuid NOT NULL
);
    DROP TABLE public.sub_rol;
       public         heap r       postgres    false            �            1259    16447    user    TABLE       CREATE TABLE public."user" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Email" text DEFAULT ''::text NOT NULL,
    "Password" text DEFAULT ''::text NOT NULL,
    "AvatarId" uuid DEFAULT '03f1c228-f9fc-40a2-8a88-45d786148fe0'::uuid NOT NULL,
    "SubRolId" uuid NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "DeletedBy" text,
    "DeletedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text
);
    DROP TABLE public."user";
       public         heap r       postgres    false                      0    16387    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public               postgres    false    217   �Z                 0    16390    backup 
   TABLE DATA           B   COPY public.backup ("Id", "Name", "Url", "CreatedAt") FROM stdin;
    public               postgres    false    218   �[                 0    16395    civil_status 
   TABLE DATA           4   COPY public.civil_status ("Id", "Name") FROM stdin;
    public               postgres    false    219   �\                 0    16400    consult 
   TABLE DATA           �  COPY public.consult ("Id", "PatientId", "Motive", "Clinicalhistory", "BilogicalEvaluation", "PsychologicalEvaluation", "SocialEvaluation", "FunctionalEvaluation", "Weight", "Size", "Pulse", "OxygenSaturation", "SystolicPressure", "DiastolicPressure", "AntecedentPersonal", "AntecedentFamily", "ExamComplementaryId", "Diagnosis", "ImageExamId", "Recipe", "Nextappointment", "IsDeleted", "DeletedBy", "DeletedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "CreatedByGuid") FROM stdin;
    public               postgres    false    220   ]                  0    16405    exam 
   TABLE DATA           �   COPY public.exam ("Id", "Name", "GroupId", "CreatedAt", "CreatedBy", "DeletedAt", "DeletedBy", "IsDeleted", "UpdatedAt", "UpdatedBy") FROM stdin;
    public               postgres    false    221   �s       !          0    16413    group 
   TABLE DATA           /   COPY public."group" ("Id", "Name") FROM stdin;
    public               postgres    false    222   ��       "          0    16418    image 
   TABLE DATA           B   COPY public.image ("Id", "OriginalUrl", "CompactUrl") FROM stdin;
    public               postgres    false    223   f�       #          0    16423    page 
   TABLE DATA           +   COPY public.page ("Id", "Url") FROM stdin;
    public               postgres    false    224   &�       $          0    16428    page_permit 
   TABLE DATA           A   COPY public.page_permit ("Id", "PageId", "SubRolId") FROM stdin;
    public               postgres    false    225   0�       %          0    16431    patient 
   TABLE DATA           %  COPY public.patient ("Id", "Name", "Identification", "Phone", "Address", "Age", "ContactPerson", "ContactPhone", "Birthday", "TypeSex", "CivilStatusId", "AvatarId", "RolId", "IsDeleted", "DeletedBy", "DeletedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "ConsultCount") FROM stdin;
    public               postgres    false    226   (�       &          0    16437    rol 
   TABLE DATA           )   COPY public.rol ("Id", name) FROM stdin;
    public               postgres    false    227   �       '          0    16442    sub_rol 
   TABLE DATA           6   COPY public.sub_rol ("Id", name, "RolId") FROM stdin;
    public               postgres    false    228   ��       (          0    16447    user 
   TABLE DATA           �   COPY public."user" ("Id", "Name", "Email", "Password", "AvatarId", "SubRolId", "IsDeleted", "DeletedBy", "DeletedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy") FROM stdin;
    public               postgres    false    229   �       X           2606    16456 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public                 postgres    false    217            Z           2606    16458    backup PK_backup 
   CONSTRAINT     R   ALTER TABLE ONLY public.backup
    ADD CONSTRAINT "PK_backup" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public.backup DROP CONSTRAINT "PK_backup";
       public                 postgres    false    218            \           2606    16460    civil_status PK_civil_status 
   CONSTRAINT     ^   ALTER TABLE ONLY public.civil_status
    ADD CONSTRAINT "PK_civil_status" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public.civil_status DROP CONSTRAINT "PK_civil_status";
       public                 postgres    false    219            b           2606    16462    consult PK_consult 
   CONSTRAINT     T   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "PK_consult" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.consult DROP CONSTRAINT "PK_consult";
       public                 postgres    false    220            e           2606    16464    exam PK_exam 
   CONSTRAINT     N   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT "PK_exam" PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT "PK_exam";
       public                 postgres    false    221            g           2606    16466    group PK_group 
   CONSTRAINT     R   ALTER TABLE ONLY public."group"
    ADD CONSTRAINT "PK_group" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."group" DROP CONSTRAINT "PK_group";
       public                 postgres    false    222            i           2606    16468    image PK_image 
   CONSTRAINT     P   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_image" PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT "PK_image";
       public                 postgres    false    223            k           2606    16470    page PK_page 
   CONSTRAINT     N   ALTER TABLE ONLY public.page
    ADD CONSTRAINT "PK_page" PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public.page DROP CONSTRAINT "PK_page";
       public                 postgres    false    224            o           2606    16472    page_permit PK_page_permit 
   CONSTRAINT     \   ALTER TABLE ONLY public.page_permit
    ADD CONSTRAINT "PK_page_permit" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public.page_permit DROP CONSTRAINT "PK_page_permit";
       public                 postgres    false    225            t           2606    16474    patient PK_patient 
   CONSTRAINT     T   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "PK_patient" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT "PK_patient";
       public                 postgres    false    226            v           2606    16476 
   rol PK_rol 
   CONSTRAINT     L   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT "PK_rol" PRIMARY KEY ("Id");
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT "PK_rol";
       public                 postgres    false    227            y           2606    16478    sub_rol PK_sub_rol 
   CONSTRAINT     T   ALTER TABLE ONLY public.sub_rol
    ADD CONSTRAINT "PK_sub_rol" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.sub_rol DROP CONSTRAINT "PK_sub_rol";
       public                 postgres    false    228            }           2606    16480    user PK_user 
   CONSTRAINT     P   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_user" PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_user";
       public                 postgres    false    229            ]           1259    16481    IX_consult_CreatedByGuid    INDEX     Y   CREATE INDEX "IX_consult_CreatedByGuid" ON public.consult USING btree ("CreatedByGuid");
 .   DROP INDEX public."IX_consult_CreatedByGuid";
       public                 postgres    false    220            ^           1259    16482    IX_consult_ExamComplementaryId    INDEX     e   CREATE INDEX "IX_consult_ExamComplementaryId" ON public.consult USING btree ("ExamComplementaryId");
 4   DROP INDEX public."IX_consult_ExamComplementaryId";
       public                 postgres    false    220            _           1259    16483    IX_consult_ImageExamId    INDEX     U   CREATE INDEX "IX_consult_ImageExamId" ON public.consult USING btree ("ImageExamId");
 ,   DROP INDEX public."IX_consult_ImageExamId";
       public                 postgres    false    220            `           1259    16484    IX_consult_PatientId    INDEX     Q   CREATE INDEX "IX_consult_PatientId" ON public.consult USING btree ("PatientId");
 *   DROP INDEX public."IX_consult_PatientId";
       public                 postgres    false    220            c           1259    16485    IX_exam_GroupId    INDEX     G   CREATE INDEX "IX_exam_GroupId" ON public.exam USING btree ("GroupId");
 %   DROP INDEX public."IX_exam_GroupId";
       public                 postgres    false    221            l           1259    16486    IX_page_permit_PageId    INDEX     S   CREATE INDEX "IX_page_permit_PageId" ON public.page_permit USING btree ("PageId");
 +   DROP INDEX public."IX_page_permit_PageId";
       public                 postgres    false    225            m           1259    16487    IX_page_permit_SubRolId    INDEX     W   CREATE INDEX "IX_page_permit_SubRolId" ON public.page_permit USING btree ("SubRolId");
 -   DROP INDEX public."IX_page_permit_SubRolId";
       public                 postgres    false    225            p           1259    16488    IX_patient_AvatarId    INDEX     O   CREATE INDEX "IX_patient_AvatarId" ON public.patient USING btree ("AvatarId");
 )   DROP INDEX public."IX_patient_AvatarId";
       public                 postgres    false    226            q           1259    16489    IX_patient_CivilStatusId    INDEX     Y   CREATE INDEX "IX_patient_CivilStatusId" ON public.patient USING btree ("CivilStatusId");
 .   DROP INDEX public."IX_patient_CivilStatusId";
       public                 postgres    false    226            r           1259    16490    IX_patient_RolId    INDEX     I   CREATE INDEX "IX_patient_RolId" ON public.patient USING btree ("RolId");
 &   DROP INDEX public."IX_patient_RolId";
       public                 postgres    false    226            w           1259    16491    IX_sub_rol_RolId    INDEX     I   CREATE INDEX "IX_sub_rol_RolId" ON public.sub_rol USING btree ("RolId");
 &   DROP INDEX public."IX_sub_rol_RolId";
       public                 postgres    false    228            z           1259    16492    IX_user_AvatarId    INDEX     K   CREATE INDEX "IX_user_AvatarId" ON public."user" USING btree ("AvatarId");
 &   DROP INDEX public."IX_user_AvatarId";
       public                 postgres    false    229            {           1259    16493    IX_user_SubRolId    INDEX     K   CREATE INDEX "IX_user_SubRolId" ON public."user" USING btree ("SubRolId");
 &   DROP INDEX public."IX_user_SubRolId";
       public                 postgres    false    229            ~           2606    16494 +   consult FK_consult_exam_ExamComplementaryId    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_exam_ExamComplementaryId" FOREIGN KEY ("ExamComplementaryId") REFERENCES public.exam("Id");
 W   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_exam_ExamComplementaryId";
       public               postgres    false    220    221    4709                       2606    16499 $   consult FK_consult_image_ImageExamId    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_image_ImageExamId" FOREIGN KEY ("ImageExamId") REFERENCES public.image("Id");
 P   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_image_ImageExamId";
       public               postgres    false    220    4713    223            �           2606    16504 $   consult FK_consult_patient_PatientId    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_patient_PatientId" FOREIGN KEY ("PatientId") REFERENCES public.patient("Id") ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_patient_PatientId";
       public               postgres    false    226    4724    220            �           2606    16509 %   consult FK_consult_user_CreatedByGuid    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_user_CreatedByGuid" FOREIGN KEY ("CreatedByGuid") REFERENCES public."user"("Id");
 Q   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_user_CreatedByGuid";
       public               postgres    false    220    4733    229            �           2606    16514    exam FK_exam_group_GroupId    FK CONSTRAINT     �   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT "FK_exam_group_GroupId" FOREIGN KEY ("GroupId") REFERENCES public."group"("Id") ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.exam DROP CONSTRAINT "FK_exam_group_GroupId";
       public               postgres    false    221    4711    222            �           2606    16519 &   page_permit FK_page_permit_page_PageId    FK CONSTRAINT     �   ALTER TABLE ONLY public.page_permit
    ADD CONSTRAINT "FK_page_permit_page_PageId" FOREIGN KEY ("PageId") REFERENCES public.page("Id") ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.page_permit DROP CONSTRAINT "FK_page_permit_page_PageId";
       public               postgres    false    4715    224    225            �           2606    16524 +   page_permit FK_page_permit_sub_rol_SubRolId    FK CONSTRAINT     �   ALTER TABLE ONLY public.page_permit
    ADD CONSTRAINT "FK_page_permit_sub_rol_SubRolId" FOREIGN KEY ("SubRolId") REFERENCES public.sub_rol("Id") ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.page_permit DROP CONSTRAINT "FK_page_permit_sub_rol_SubRolId";
       public               postgres    false    4729    225    228            �           2606    16529 -   patient FK_patient_civil_status_CivilStatusId    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "FK_patient_civil_status_CivilStatusId" FOREIGN KEY ("CivilStatusId") REFERENCES public.civil_status("Id");
 Y   ALTER TABLE ONLY public.patient DROP CONSTRAINT "FK_patient_civil_status_CivilStatusId";
       public               postgres    false    4700    219    226            �           2606    16534 !   patient FK_patient_image_AvatarId    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "FK_patient_image_AvatarId" FOREIGN KEY ("AvatarId") REFERENCES public.image("Id") ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.patient DROP CONSTRAINT "FK_patient_image_AvatarId";
       public               postgres    false    4713    226    223            �           2606    16539    patient FK_patient_rol_RolId    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "FK_patient_rol_RolId" FOREIGN KEY ("RolId") REFERENCES public.rol("Id") ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.patient DROP CONSTRAINT "FK_patient_rol_RolId";
       public               postgres    false    227    226    4726            �           2606    16544    sub_rol FK_sub_rol_rol_RolId    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_rol
    ADD CONSTRAINT "FK_sub_rol_rol_RolId" FOREIGN KEY ("RolId") REFERENCES public.rol("Id") ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.sub_rol DROP CONSTRAINT "FK_sub_rol_rol_RolId";
       public               postgres    false    227    228    4726            �           2606    16549    user FK_user_image_AvatarId    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_user_image_AvatarId" FOREIGN KEY ("AvatarId") REFERENCES public.image("Id") ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public."user" DROP CONSTRAINT "FK_user_image_AvatarId";
       public               postgres    false    223    229    4713            �           2606    16554    user FK_user_sub_rol_SubRolId    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_user_sub_rol_SubRolId" FOREIGN KEY ("SubRolId") REFERENCES public.sub_rol("Id") ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."user" DROP CONSTRAINT "FK_user_sub_rol_SubRolId";
       public               postgres    false    229    4729    228                 x�m�[k1���?F2�d/�u�>Y�J�
!b�@�H.����k���<L�|̜3	2��ᵲ�MV�����_�[��(Θ���ф�q�۳u1�c�v&n�1~��{��=Ptj^c��9��Iz����O%԰��}�@�̘��lI��[����M� ֈN�~��(L�RG����5S�ǘ]*I#� !yb�5-/3��\2&���`t2ˢ!c5�%�����D.$����wsk�%ҎW�����t�4�>�p�) N�D}�;����_���~�ў�         �   x�%�Ir�0 �3�"'��FK�*W>����A쒃y}�����һAcg@ZR�J߁E�i��+o��f`�����9G���e\�[���3�S�y��Q���y�aʍ�G���❍�f�=u�|^멅=O�^()���$)cc��*cQj�}li���u��X��{X��Z�ŧ+VC@zM�8�Q��ԭPןM]׿D�K~         Y   x��1�0 �Y���R
�}��ma2i��?ޅP�Y�l�Yv�*d،j5��U�sޟ?8I�h��R�\<PG�Jͺ����^� ~��7            x��\�n#I�=��B@����B`=���9Lcf�Yu�U)�V�T��?�"(�[��HR(2^�򞹹��U3��{6�$RN����Uˡ������Vsm"�֛.��V�|�e���^Ƭ�>��G}�n��/�;�WKMBj�ԍ
)�ҭ���ݿ�����_G���|T+�ɬ�����vgDT�׭.Ҷ�Lٞh�П�5)�DV�Pk��u�U�E]�ԫ�[uJ%���L�"���IQ�P�m%�~{��nZ�{:�G}��}����~�/ި؇�-@z�C�7��Rj�#���jc��jm-#|�2�Ee��)�nO�ƨB$r���:l��"u�Tz�=�ݞ��_<Oo̱�N&�3ݝ��U+����ȫ���F��T֑z#�D�kMҍ�a֐�'�@@Q&��H$oϕT�)�h���{����n,�2��>��Xr4*$�KY��=�LM"�Ȓ���I��x�Lզ\~-�jp듄�JI��C	yu��|�a%�(s��v��_~s��Q�1v#��Je轍^[2�[�}�8�VpW�i28Cƪ��bu�ed.ޕ�y�7'�>���r��"���ukg����Z�&e��� LsVDi�@0��\�5'�L�
�RSV�����9Wc��W���q��xn�g���=�h?��b����5�I:�}�{�9�,�u��c�r\Z}C����ޥ� ��`��Jzw��1�$�W��&�s1-R����k��K�Qu�?�+��=!���)D؂0g��UWdG��]mߴ>��a��S��s�|
���&�d�C�{#��
�0�vc:j&�뽍��@n��ݨΉR��ؿ���d�u��U<֐ʶ�"������z�x�R�>���y��s�~9���v�!sdsK�f䴨ic�Z!�[s@6'X%�[��$�����F02i-2D�p9l
r)K���`���~���(y�О3:�њ�N�`�U�.(����p�&�X�nE��F�d�sZ�t�
r� )R�}W�0�.����/#��矟y���9����(�`�qBO�����VM�]
$�כ=xU�%�L�ٮ���$|��)q(�`���XCM��{��Z{V����RfPHA���CmKE�Q�0��@(��@�
��\zI}$b�E�Q��sR	�m���[&�'�ï�=�x�b[���,�0"1Vv����6`��@��k,0��u����]��5a��$���1U򤫪c.���>~��F㼕5i�H>�-��r0�B��Vܟ��'���A=���B\���S [�uD���|W�a�������ӹa��؇p���� ��u/�9�BD���u���U�E��@�I�-��UB�n��c��A�ql���,�鍄��5|�J����jtr:��JD�`Y{W�h(6J4&�����8e��9o&�TTܐ];\�J��QV�C �p�Hȇ���CP���(��*�x���[�]�hf�m��)�)����8ri�C�vI���n�:Ít�C�\`7ڭ�Z�!p)��7J�m��w��p9��:D��&AKb��v_�˄�6##32S\�����Oᤖ�At��U,���D�SͰ �� ��&��V�C���$�ˢ��<�m���&�l��}ի�n�b�T�\��zxX==��L�L�9~)p�����|N���ț��C+�)-A�:HC^��W�A���峉�� �u�r0��.ch}�K���V1�g@��S��׿Oo\���.x�=��Uď"�!�%.�����k�G�.�j�FH ���V�Fp�D1
��.E%�_�<�s���k��^g���,���O�%����3��M��#�0Θ`䊥j��0P�p��T,6�*���چ��������`8�{>~6���Ln������_C���^u����	��N�^U7��*�U&
2�$��g�9��hM�ܛ�եc;9k*�;�t?x{{P"�` ӿ5X�
�]���T�̙���@[�ה�Vi�@j���S�tJ?�և��K�(�"5�LD��
�t�*M�A�����UGȼ�M�Z�>�8�	{��ڃ=�q���;4���Q+u���|���mB�������Q�u�C�{��������m��	�8~*�[�Y	�O�N����A+�R8tf�}���&�q<Ϧ�u$3nJ����	�46�w�����ʭ!�J�,�)U�D)p�n3{��A?ÊΤ������́c׻t�����]�����3m�ޣ��?1'�ʗSqA�k����R��r,���Z�:��&�o$j�ŃMT���o�޴��K�z�F�6������;^{�z{g� <2��4�0B>��ʭ2Q��В&�S�*4�}���&�[6-�E8����ڏ0>
4����^��_L{�Q���$xݛb���`���qE1VL����p�Ja���)�DI	�*I�n��ւ!��0�l)�P��|�ƃ�j_�أ�K�����TkHu>p��Q\���C�8�>�!hbD���@:�IC�\3��$�+�X`j6�fl�H�8ZvkH�&� S��RvA�[�\�p�gKfE̦sL�Z�T��~����Vɇ��2�p7S�A� �����*rف��A�o�D�1:��ЈS~A���5 !;����v���N���~%�ƈ-C$�S&@gK�g)/><<n)�^ޕs��.��~�Ǡm�����ظ�"�T�vdC�1�Q�sS�5E�;���V:C0x��=.^*�ƜrSU�\��>�U7�㈔g<�6�?�[;\/W(a͑C�v����x��Rk+�F�׮e����J�<s�dL��ce��6��_�_���fz����NxX��zR$����fc#�'�}�Ѫ���%9D˥M��bG��"-'�x>#N!��gح��{����m$g7��HȤ��4���.��<��"�w�U�j�:l�xn�;ixYWs1�l�Y��~��[ J��$A�p�����\��Q��<,/��H���n��G��.8��y�$�g:b(�<=���v��̥�L֜_����|t
�v�佻۠訓�"���W�Hr���Y{��ql��V�o_~�ܰ���y�.���l����<����!2K��mr�M�����|C�å��`"jb��F������{��2�%�h!�z�7t��5�rݞcA��)���;����Ct�v�S�-�+�@F�3H�x�N��'�ו�1N�*:3�����yd�♨py)��F�<S�]�Ffk�L��\M�n-j�� �I'f�u�R_���Q�*K�T;5��jP\. �>X��������_n������_�~�͹ι�/`Ȣ�'W}�����*i��r�+xft�"Wmu��k�����åv� ~�iLBbĆ<�8r�K����:�\%O��N�f�4=�w�4،���1�S~S��U/۱���a�o��(b�[$AN߹�I��Ԃ��;�HfX��
�n���R�T�ߕ�?�=>}{�K��;�*�}���������7�ث?~+/�X�߿��o__v�i���ʸ��<t��se��ǻz�r��.=�k�v���ǪˤU)^��s�[��2�ȿV�j]i�����7��0#�J6�@N�e��l+��;s��Cc����@,G��
�2l5��ruc���֫)��{�\bJ,[�-k|=���u����9�2��������SX���]�H����{V���X��`ѝ3͌��m��p��炙��c��6��!d�޸�Zb��/x�������c����a�&?��U��4��.��a��
�T�J�zу- [��A��.=�F���.��M�� MǵU����<�-��Z��6dnb�<�W5-�!�\���4�u0�q|o�-6&������4̀���k�c\ e�O��hx���(n�#�gk�v ��8�}���d"K�����]��a;�I�7���U��Ղ
�ؼ+����2��	���rG�W���l��-ݦ�����Ss�������J��Տ��x��}�oK���';h� ΢1�kD���DrM�l��y��I�|<>�?��F��ֽ �  V�Kl���7�^��^]���m:T��թ���[�4V���/����ُ{��D���"�DiWM�'��B6ᣔ���V�EÖ��8�~ٛe�͗߿��cgD�T��^݁����4�n��N�n� �T{S�L=��IP"Y��0$=�4�&���S��{�vs��N���a�y�U���P�wFs����R:��6kpWZP9X c��ݹk�������s�\/�Ţ:��"����N��O�܃����/S�#^k��9���Y*9Ub���f�.�Sh�PN;�����)Fc<<�#��RDRR��`U�����C[ןV���l?9/�"'���~>� ���"�,%f���\�!+�s�0礡���\��2lϫ��(�헿��i��n�5F����۞�W��|G�B �m�P�̍-I嵄B�6��n峋���{��=�.!ΐD�D�PD�D.����ԅ8n���Z��U���D�N�]M��k;�]��E�N�]3�ZG5\!*���s���:B*���������}@�~S��<q������n-9�7�����"d^�F��R�qp��l\<3�u�U<�>��xy�`�P�B�bt> m�RpX�0���wpo2z��^�}�N�kg(�Z�v�U�`��¢#��T:IFZ�2OW����kV�r92��	�ƜV��u,����f��N�ɍ���%�Q�5�Ck/.�j��7�jtZ�	l��@���4�>�Cs�-lȬq���9.�-%myP��>y|q�����G-�%qjm��v��o�30/���1�56İ�ed>UC
��#V��F.��{>6d�{��ݟ�1,�ݰ�P�XK���W���]�^�"E�G�B�7�׫���Ū�P�H2	S�K��M��8k�՗BY�E�>�i�gy�/���>~�81Ǹ曔��J$��;Nt^�Bӵ��Ǐ*�5�-�2�@��X4�/�X9�KR8�x�(�4P�B6�58U�VcB����s|��<3�mB= ,�n�I����::�j�B��d�C���M(+�K�[���o���;�}Fm����
����%+��V���Ȗ�i�Y�&8Z�����-�\�Ư�K��=��B�pƄވ���x6x��H���*|�ݒL�kӡ��k��3@8��o�3[[V�=LJ���e��Y��MǞ�F�L7���ߩ3��(L5WK��޽L_i-C̉��E�KZ�7 �똵D��[pPa-������'�E!6jO�#���=�>�ɢ��^<b<�?k�iOwO���l����5�oiL�͈�2/�Ǔ���������u<Zow�3�W��:�7�	��4qRN�wn�-T�IU�.4�]D�k��KJ.�����}&�������&���)��y���9�w\��n���hX\,e�y�pn��և"����g�I���
@C�>.[��v%�
x�
�8$���%e�(��3�[�ʹ���Tεӄ���n���L=-k"��"<��Rm	�I��ݰ.�^V�5���'5�W�̋83r�F�9�,�gn*zڵ6��[�V�_�<�{���TJ#[F`���NN��T�f��܂�,��8�o�畼dH@b�c�ٸd���9��y}C���Om���kJ�T��l�<[D��ء�?t{�Ѵ��@�ȯ�~����LM�             x��\�r[Ǖ}>�
<:}�w��� 	����g��K_�{�N�2?k�"�Ȟ*�9�-�$��g�u���b��e��*��T�n[7�t����n�薛�#���)�JV%WR̤3�����S��ѕ5WD�1���~�xS](�u�(;<�D�*?����D\�?�ʿ����D�{�%��%7���T*�e˅�i���^��m�G�T�#p�*��T�1�l�f���������`�4��>0{��KQْ��E5(��k�6���?�5��q0V�Q�6��X_�:c�t2���9T�ieG��O���߹�k�^�s~_��c2S׫�������:���*|�2yMv_�&���r9`�Zp*��f-��V�W�#6di_��[����-�U��U׭����_o4;�U7:�>u�l7]E�MUS먽�\_�Ϭ`
�i|���o�_	�W�2:F7F��W�3ڲ���|��ߍ��!�<�W��Fv�^��W��>�6���  [�NI/.�j��f�߆/��`u���de��P����Fkf�����W.^i��g�<	Q�]���S2P�EA���A�w=Xz��@�T��6���ޕv���;��$R�� 餣�-B!��uV-���S1B+Q�~�Q�yy�ߝN���x�&�ՀS0�8��5�f��2d�=��Q�ZM	��-w��y����?B��O���L_x)s?�5:��W٠��Z��j#������[��	�N��L(�Փg?����1�QU��7���ȁj�:���Qz����u�ፁu�WήQD`��:S��9r	���}*h�d�.�g����c�Pzyw�+m�n/��fDq�Vg��0�U%��J���]������?���B
+�7iᨠ�>T�B���r(LS#|�ku�����æ��'�\I|�~u!Y;�wR��\l�?�5��zʽ��"?�������?����?�P��X��v�����1D��UȌ4�Z�C�)�5&4�H�����׏����ϯ�G9���h�������B��4%q��9�����U�MX}��I�CC�}ꪃ����*�m���K�-�7���fw�����?���ȯ!Q�/���,bWrm+�����J	yS>��;ޟ7js��}s��)) ;Z�{%HM��u�U�h��f��
�HAnĚL���r>v����~��n��ӏ�-��wS���5׿�K=Ou�����:FE��2�U�����;��������x �{`��o�V �@d^쭞W�Ze�4�n0��8��	5��3}ޝ��ƴ�XgV�C�u��)v�aP!W�ρw�� Y�K���7��xe��>ҋ����@��G ���h�r�_b=�+ǕL�z+PD���"X��j�R�^��腗�i/�;���,^� xW�4�=[l�i�x�-�o�b�4�[.��A��r��	��lNWP�
f�:K�X�E�~U��C�@��輽���	,0	�"����lK=�\W�̨ĬH�!��2��b���n{�߂�&Q��fr:���x&<mK���$#��K������=�0���͛��u��em" �N,��th�Rl��QQ,xt�&����'�@7��$f�.�D��=��p�zh.׌�m�`EZ����G�����t|����ݡr��~��R\+�W
��l��А}W�A*�&����re��.���Ç�B0�Z���t�Y	�N��k���g�b��b���{�\�����z&��Fr�<Sw�䤽���"�\��@�#Kv�v7x���yN��xM�E3-V�k0�:1��S��Fr&;t��a��vw��bU`4~���S�F|s佪B�V����V�L0���@,��n��[�M/V�xt[T�$�Z�J#v�<lK���O,o��o��Y��V�E�&!�RM�.*x'Y��*o����M�y����QX~s^j,���*BFEe0�y� 3Ñd����0�e��ED�Y
Jp��R���8Q���xH-.ow���,�=��J� ?�ns�z�"�"#�eRFh1�K@�B��� ���v5?�l��1���QeL&4>:��s�֑����$��Y���R�Y:�h�]��D[`*[��d�|�9!���G��
�%=+��R�0��aԘ�4��ez�z&����3��<4��R݊�o_�C�@�l��ZղQ�暐GGJ�7B
���.o?%�9���&λ��̠��e�$4qu�v:ĳ�:}��+z37�^*!��ٞ��$�a��,H$Q��v������Շ�I�Ʈ�Р�Z��6��� fK�`��gLtCT���$<6kr!��.�?�h�t#
�1t��~�lԘ}|\�9m?l77�w����D���c��ъ�V����k�a�/Ѻ����f����[|#"�Z$�RSS x6b݌�����t��a�Ŋ��pES��0�VC�^BA�RF�����\�#S��a�p�8Ǔ(e/� r֐h-(s��$"�TG�B�\�H���w��}w�m�v�=DU�6*�]|�,gEv1%pj�ޡ"��z�qHu䖻���v����xEvPk7�Y:3E��
ruyH%�� 'ת��y9�@����%~�E�����t $��Q�LuH�`hA��'ם��,�����Q�@���tk�+�פCL�K'��d�=ك3[.x�K�NA� ٔ/��O�>�Ĭn��������� ~8��9F���h�w� v���0]��k��$��Q��=����"hĠl�H�b��A|�k!8��5��e�d���(sA�g�hh��$������c9cT����n'�p��b��l�GsZ���\�>��k���v�V�-�R�p�&rnK<vw���n��5���7�����k�N :�@�*A�6�����`��W5Ȣ���؟v70sHQ����Y٬��;�K��[VȪX=Xl s��	���5X͕FDe��l��V	 ��b���n�u�a�����aw}Y$�}�ޞ�<���Ҿ��3n�W&K�{:ӫ�;v��ѽ*�!ש1��"����f=��I��V�I���<�N^բ�M��䬊'��-mR[�"��������������$ZWm<��Z��ݡ�Y%ET)��I[�m�����u�~7�堗KD�ۼ��X}��NNN����Ѳ��Iec���l��n���$NkWO5�R�!1'��)��,/iT����0�I�-���^��~�vq����J���쬚��P(uQ{��d�paK��c�S]�7�I� n�=�u���f?�,��e,���.�$V.N���,H���`�$l'���u2��?���w�p�R��*#S�Q1��+��I��)��e �3��d�=�#ʠ�S��M�F翚қ)��r�*�8�M�s�:� ����L
[�Rl4<\�G�r��z{�����&3����j]j*e�!�5���FL}�D�˙?���փ__b��[�Ki>Z7jL�J��XcՊS�#������ �����%�r���#��<J�JN��ȝ~i��H���Q��U�h�jl�~��S�Mw���K��B��>�ó�^�l�k�х�D	v��ţ�2&#�%9<^��ӽ��x���|�~
��E=�����0E�v3�1j�T�T͖}�%Q��n���y�1�+W��^��������!):�#]��f�K����)�z�� z�	������Y��M�uq04l�r�E���L�8h�wo��9�!���m4Hd��\A�w˵z�n
_���)M���2ذ�*]x���9����n����x���r�J�d⤧�;*OF4S\�� 7U`�T������a���n�8�������Y��f�=2�M�T�Q��<s�͗��t�y8�����EiÚ8;��q�7[�m��g��َ2R��>�z%Np�����
��`��B_"j3x�#|���2�\i-��D�M�#|�uF�44������Vʺ� f��T��9�.'Ǿ۾CO&q�E�q:!� �Ȩ^2�M�"�k�#�_��pڝOӸ�ѵi�4	�"皋j}�=� �  �1ՑT����!��=�~�=�o���j�D;qp^;�ѡ6WXM����{U	?�ј��n?�n7�;̪L���ow[R${��G>�j<�H���Z��.��5p#�z�O�`U��9���V�ۚD�+����$l�kH�LöZ.��\��l�����mg0#�<��|RA���Ǐ�4�^0f�(dU��;�^�;��������+�Q&�?nOS�YVO�������4Y�=�ᱩ���b���+)��	��l���kEN~��\��*�ԤX�:���W:���fw�D�NP>��"�נ���G��m���	Dǈ/���<2`�jx�>���f#�F��Lo�۟�(=������Nz�(z�:�պ�%���Un y�\Ays�ew�;}:��P=�a�	��Cr������������qH��1K��SZ�s�+�Z +;}%{�����q���Y�`(ˮjF�Ǉ�i�����/Z�j��s���l;"k����UH�+g�R�d�����!��~� Z���]>{�rt۫8b�������@��cv_���3h{�x��MN'�=Veh�
�>9�����+Jk�4�\J�B�p�e��E��J�cz��<�8�͕ �����*� t�S�*�2��d�l��3 ox���n��@,�����?��۞v�Ǜ�{�����-Y�$� 4n����z��#W{W璙>Fw��-/�b,	�RUJ�9�j�������2���,�B��/�=��"wy�>̲7j�%u�&GM1逶y�k�}���|��,4��j�Z�;���I�C�r0���)�V%�&�Š���3�����S�s�q��������	B�܍�3Cތţ�g����xSO���f`���F�0��V���� C�V���<"bp�Y���`/��0H��������RV!ZY&1���s3��>/�Ē~����g�ÐSςF��X��UH������/��'�Y�/L��hK�}U9d�3��¨��w���X2�f�9-�FQ�hg}c�h�4�r�'BD� m�b_�X~z�z!Ĵ!�鳈<MC4<��@hm�D��(`B06 ;LX���5�\Y!b�2|&��됥�!7��(8��|�JI����_SsI��9������o��_�V      !   �  x�M�Mr�0F��)|tH��K�多�eW�7�nH�8W�ғiR�x���AQ%�9)t`]��j׀�Ummt��)�%������|�/�����9/%O=�F�h��"Cm^��Ue�S���ͷ�M1�`+3��V��h��4|�Af�#�[���~���y2Z���Ae���S�p(ؙ��{��r{.��q���b��d�A1�j�B[O�@��U��f���>��u�A�$���t�=�gy�۹l�r��l���%��1@9�J�&c�����^��3:Em���Or�������y}:��z�K���,r}MLb�G��j�s0ؚ>x ��.�����o��H�� ���A�0r;��U.��t�;����=T�-���G��Ds:�\�e��y��٤J&ׂ�I����[	\�T��,z��X�Y�J����^�R'�D��:��/�����u��Ə/�4�_��       "   �	  x�͙I�#�E��A�c'����x�!�����tz�lP�*�kT��W��PTd9�$�����%R%c5�6�K�,����H�4���:�����?��sl��,J��&��P.��Y��ua �&e��&�g V䔔c�S�g��Lm����޻`��Z��f�H����5����yxi�7�/�$RSM���iRІ*�����C5/L7g�����u�9�3Ɋc�L�Q�v�eN3L~+f����h�^����7�����(�|�2��1b�� �������lN�|۷��D�Y�8$�'��&RFI�R�0�q�|��O=�����Α�O�Ct�u�e�>.7���KXto�wX���
H�T���7Z�w����F���q���
�h��S{K���:���.�=d>�_�n.�&n�y-��6
8�pw �@�@�S��\�	���q2;��v6��#�����(VͶ��9�`��)DFP)e&N�LTH��x���l����Õ��Mʈ�_��~����O$6z�4���B�.��#�Լ�֗0���HS[hJiL�#4�MJl�G�(W����%��yg�kw�u����l���}�F��$>�f�W 3�o����&M��V��3�'�:�'��Ѥ{[>Ġ��Έ��q��ظ�17�����Bky�7�����h,.�T0"�s�ǀ��+���A��B�'��H��Gf�iit!��(�`P��r��s��q�B`T���d�n5{GG�TT��Z�G��_�y��X��
�����Y�p$� �]�VD{�B�=�m������6�S�L��]�P�q���?4g�G�㦮y��ߟM7���f�A���ƃR	�D���� ���Lo�6�w��hIa�\U	�Rb8�NsJd ��[j�t>Z*�<,e=$`K��H�[�P�Y�,�7h�;���Ę�qo1��gL���SA��=�a�g�]S��-B���`�GE5%�9
/MJ$!��Y���O�ƌ]��76%�՘�j���w=�4
����h����9�T�4G����X����ܔo��`��J���2I>:lM∌��������~���x��i�k�;a�>��f�����EϤ0�����>0 )�˸�do�Ȭ�jd�N�r�%n���bv�ᆓ���b�Ϩ�Nb�9z�~\�����h&w^,8�^}aoo�4#%��)b�f�Q��q���!0m��rm�������׆��n
�>
<;<Y�&'%�MJE�A�x����,���DUӯ=B����;�ߠy��<���`���� ۃi=JN9�xC��,���ç��U=�'�<�Pi1\j��_f)I����AЄ��#y��ю�Y���óG�:����ߠyd�Ѿ#�5�&�}�p�a��X�����{�kѕw]�m?N�5�[�,t��4\`�pa�"#|֑��� X����@y�Y��5�{�����!��0�StotaL��$ �iL%}������e7�ד|�]��C� $� ���x�~`�(7�)p�d�����7&d�*m}\�e�T<�|��ߠy��761CJ N�w����19�K9�pa�:zu��؛���W ^04�!���
NB́`R�=G��"������5}e>� �}e5���c�h�`#��$	�x\��ؠ��']Ě�pa��k]�aR�2{��u��'�sr(��ap`�X��w:��s�4�����VQ�-�%�|[�@���^+K�����ߏ����ŅB]�=� #��>���aж�Qu��Sl^��6���@�+n0�~"_���r�v��K1���~ׅ�A� �Єz�. �ă�$g���S���6M�
�.u�FZ��9�M!�K�u���~��^͍�B���x?��gl"�\<�Ui1;V�%uw%�0lF
A�
$@K��Y���RQﹿ�mH���֫��p���Z�A(N1�mp�F�1�9��"(��R|c�h/����<�S�����~����Fb�(z��02O��<3p��!Z�]0M�eh_s��:�9�� )x��LR�_9�N˄	ZKk�ؽ֑��S��;v��D�n��0<�`˗1�y��P�5��hÍ�����Nmol�|Y�س�m��9&t-�Nb�*D���$޴kݳ���귁UM8�U�݇��=h!����{�\���<2F"P�r~�!���u�k�z�^!ywu�*�@y5��Yk��J���� 2�������f�y�_㢴�_�T.����y[�F	�����߃P�w^S���I�����O- ��%̠d��1 ���
(�8Oq�L`�� �����_+BN�u�HK�Bu�,�`���Ǵ,���cxP�h�9�j-XV�'~ʞW������f]!�A� ����-�^Ȍc�P�r�A|n;u0��h�R]-{�vs7����?�<���!      #   �   x��Kn�!��p�T�@w�&������ό��zaɒ�ɞ3M��"%(�t�L}���3L�v�kF�3'�	�BI<@�TX�M�Q+���w�n��i�21��'BO�hDu0���k�Ҧ�i��M�42�z6aG9)���?I�A@�t�iuAm\�{���?��s��e-K��9g2A�����Vj�=����c�V&֎	+�݋@S���؂������+�B�r��	�D��¶���>o���o1�?t�`�      $   �  x������*��y{�?("��� b�%\��(���K�6��I��\
����x�I�����a����F�ۗ,���:\dEi�^�`)�.��_�Z�b��8�A	s��x	�[r�����
f4�~��2���aCV��%4�A�,�CK?�Ⱦ�6�Y�,"΍ore���AD��^0���~Ǉ��j[��G;�*|�e/�6����t]����e� �v�����Z����'wQh;Ξ��(��x{��>�c��t[��1f�Su@���'� H�em�Z
�AW��eǛ�I��%���LI���F��:Ͼq>��1%�a�te�P��t�q}=FEf���Dw���Ѷ�O�F]�9�Tv/y˹O��pX&�ܱϛ�u��Q��E�
1�l���5���?�R@��̞`��P43�f�m��7��υm�R��+}T�f�ۘ?ɹ�"��3vw����;�;�<���'����~����9�      %   �  x��Yˎ�]S_Q�,V�˷�
� F�� @����#[��R+�o���|�,��nu���H��bI�%�E��s�TM���$�FJ��.<�R��U��))ٷ1��fx������~s�_E&���#$�B���7F���,�`��8��?���vKJ]��z�����'F��� �%q���Z.Ɏ�",��t��߾9��I<fyM���ȤYs*d�#7V4��4<8y�*�賮�1���D���2�"��{�Mq�J�[LK#�m��ۈ��㞊�8!�m2�5�������<j夒}�5�*�t� ��*���6MY��ʽ�{T� i)�h	����/�0�&�M\Wcy4!pJ�r�1�F�Y�ǪN���Uܔi;����T?��U�1����? DZm�c��Ɣb��z���i��n>���&ӿM\�A��hgCh�YӒ���ڸ/�p��s���?��� ���R�h�����߇�/�%�QΝ݅](e13�8ɂ��y-q�H8��lű1���o�}M`%�H^���I`p{��+��`҃x���)���%/���Qo:a�n���Χޡ#��R�"1��@���0BQ�-"P�wu;]U6��`�ξ�����1m�!�h�	�?�����=ψĒ�R��r:�=x�/���Bݿ�U_��sP,<�b���5���p��D����V��>Ne;�5���K����T(�Q��U7P�:ۓ\�n���`�js�����eZ]��,�X�X$Z��Sfe2A��xJ������c���1}��:��Z�0j��ŊxU$EZJ=Z�����P�d�ñ�"JT|_ ��#�Ԫ�b#����Ӗ�Y�gR�T��|؟�v��)=�/@_�*���x����.W�n�\*PE�Fbi�Ś���Ǡ34�[|�d�ҽ�!6�{��|�z;���Ox;P��v��˕Nm�o+d>�����쮧}CL����+��uC����2]��C�,��GS��.t����z��wLXi{����|�%Z%Kt����Ni���4�3������B�L��_��8��z�GP������w@�u�0#-G	���M�;�+�T5{w)!�D�g���&0	�`�Rڜ�)���8�[8�Ⱥ	��IQ�s4��٪wS��]�:s&z̗|�؜z��/pKF#�З҆���4z&��_@DՒe-�/a�}m8k)D�jH?f� Oc(���3F��%<5[HP$�4vi�h���;���[ a�R��X����Q��QS70�\
+J�!WƦRCa������;�:��������*p����K��d�y������M�� �P���l8xOVB�j2U��u�.���O�7�n��9�h�kuz����uB{�_���Nw�<%�<H'n4��|��
�7���	��HAsx����} h�3����c/o̳�-�@9�tr�e�ҝ���ɓ$�)(�P�� �#���	��!��A	1G�7缷�O�C�$��K����q�?�Ю��m�զ*�G��ަ*�RK4(�0�T��g�l�t�?�k~�L�d�{�O�; 9W����\�T�Eq���3|V5�]R����);^�b���5���V�/`.��fUw����SU�=	��e47.�"<����l����Q= �+�rQQHC�ݸ��^ڭ#�jj�Ռ�����T���b�W(��Ia�@z����a��m�t���-��'޼�p�."�DK%����bo报�T,ô_}vq����%JL6W���,�W��`��~~0�5H<�����B_^�|���0d?$�3z����qѢH?b���7"����C���U��4{�E)���LG��	^��	 T��=��'�t���� ������w'U���Aj���,C0i�y�]I��A~-P��UB��O8�pn���ڸ��wo����M��ʺ�����7�l[�[����p��{���|eX�ly���#�����sZ�0.��4��      &   �   x��=�0@ṹ�Q���7`f�[�-j�����[���+4k0u��Z�6k����n�����F w�ѲJ���0Z�V�*-OwS{뺟#���暽Ad��j��H�Y�ݧ۾����K�c�-�      '   h  x���Mn]!���Ud����i�y��N���w�6�y;���w�1n��[ R*�a	�Q�*S����o�TI(lH� B_�:�Z������q��c�o�e��1jz9����D�e�k�)M�A��0�ums�� �����(G���^/E�~��~^�ZL�Zo[������ָ�ec��Vj�k)+��k{��Q!Z����*��چHup�[�����ڈP���:�g�9�ď����ʾbю.%��5ڜ��l�с�;�\<�H&lK%]��EF�� �(V�N�[3}��>:�kX|���?}�����5�Y�1�gn�� &�w��~����-�?oqmw~~9��?��      (   �  x��X�r"I<g}�u�T���@lBb�@��%V�E�*}}?TU3�Uj3Z�c3X`F����݃�IĎ(�,��'ɐ!�#�8��GC��n�[[L�g�0�.2{|�⟦����_γ��~&��b�3���ج�����x������cUu�es�Ջi����M莺��8���	k9�Ad�g��F&8%Zf"�D�Hq�$A�M� ��fNs��R����rD(���%�r�%a�%�f�by�K L�g�/�S!Vǻ�	�|b&�D�Ʉ��
�b̧d�4����z�e<�w������㰂�/�v��;���x{���y���rtF6��[�ڼ&��e��|�a���T�d�G[���q����q&�Q�H��O�"��,�.���I~ǈ"��.Q]b"ZJʎ��)��6��8�o��L��\Pq�$�1a��0�"ʬ��Z�R���� ��]y��^�nԵU�k�1z}�z-����H\�2ې�0�N,��W9�/,��eN��d(���*W�0iN�#��I	_HT(h���r��^pih�g�N��M��pm{O'��e�u᫽��W��"�N��%zn�[�k�2��}>LW8�ڵ�Y�'`r��\���(���L�]9y�c��1ev$%F�&��A8��1���f�y{�2�����9/���~�z�Ƀ�.�-m�s>��/��E]@�g�[�V�W���uۙ�����Аq�KnV?9�%NK��Z��^���9�B�әm��`	�*	�I�
Q�L�D�V�e�m�-��o�~m�C��u��ު�a�������S/ޙ�v<�J?��r�R��v��G�Amnyf	�2���0UA)x���:�\�&��6%�$���|D-�Q`]�%0���Np��X�=�5$ �8T��aJ:��ʼ�b���������+�my.����N����:_o��f����6�߹�Z6:E�f�ٞ���5v�D��x���v���E��D*�*Q�+)9>��$���zK�Ȓ�H�`��i�����-��l��`�}O@٦mf�+��4]W�ϝI�������}�{`s�/7�ۙ-/\o5$��'��1��`������'�;*�n���p�
�4�������l�=��mt��P��7��ę�Wt:ƲJ�C���W�hڹ�m���ǗC�=���v������Ao}":�3UM��iDӣ�0�=�GMzQ��GX+��_?�F;Y�:�c�N�D�	��:�hnGFBqL0/�5`�)[,箈g1L76,���=֝7���p�B���l>�E�v���&_�䂍�׵n<���6������O�I%C��U� ���&����b��R�1��l�В ��Z�p�%��5����O��E!�˦?'� k���dA��e��W���EX�#n�Y�?�:eǶ���Jۗ�b\��z����.��w�quP��.��n�A-�>҄0� �d 6!L"I$"���1���-p�r��~�)�6l �y����ט���&�'�&l���7G����wt��9�nU��v�|��+���ucL����%���5��� CJL�H}���
�J|tL�%&'��~]dU����OP<0Q@	9#KET��l�,�8�ް/�V�v{7���m�޴[����X�-�}����fݡ��Ε�����C/�����2�O@ҷ�#��1��%d��P*��
��"�	�,8?�{d� xB��A��� ��F��Al�EG��Z�Ek�jTS�:��b����<��m;ԇ����F���Ώ��7}`�Hx�$�'c�� N(�CJ��~��B��[$[��~B"��=]n{~�>PI�&�V�W�x�u�U^��^xӫ��a0����.��#�a�yaX򿊄� ��gD�9���A"(C��G�6YQ����x�v��j�����Q6�F��{����qw��MV��farL_��Iu&�3J�f��H)��:64��U�NG#������N���f�����Cs�� ��~�?}��;q�P�     