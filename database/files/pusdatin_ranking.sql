CREATE TABLE pusdatin_ranking.public.bdt_status_cacats (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(40) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_ijazahs (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(30) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_jabatans (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(70) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_kawin_buktis (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(30) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_kawins (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(20) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_keberadaans (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(50) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_keluargas (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(30) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_pekerjaans (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(70) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_pendidikan_levels (
	"id" serial NOT NULL,
	nama varchar(10) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_pendidikans (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(30) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_penyakits (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(70) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_rumah_tanggas (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(30) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.bdt_status_sekolahs (
	"id" serial NOT NULL,
	kode char(2) NOT NULL,
	nama varchar(50) NOT NULL,
	created_at timestamp DEFAULT NULL::timestamp without time zone,
	updated_at timestamp DEFAULT NULL::timestamp without time zone,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.data_rows (
	"id" serial NOT NULL,
	data_type_id integer NOT NULL,
	field varchar(255) NOT NULL,
	"type" varchar(255) NOT NULL,
	display_name varchar(255) NOT NULL,
	required bool DEFAULT false NOT NULL,
	browse bool DEFAULT true NOT NULL,
	"read" bool DEFAULT true NOT NULL,
	edit bool DEFAULT true NOT NULL,
	"add" bool DEFAULT true NOT NULL,
	"delete" bool DEFAULT true NOT NULL,
	details text,
	"order" integer DEFAULT 1 NOT NULL,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.data_types (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	slug varchar(255) NOT NULL,
	display_name_singular varchar(255) NOT NULL,
	display_name_plural varchar(255) NOT NULL,
	icon varchar(255),
	model_name varchar(255),
	description varchar(255),
	generate_permissions bool DEFAULT false NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	server_side smallint DEFAULT '0'::smallint NOT NULL,
	controller varchar(255),
	policy_name varchar(255),
	details text,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.menu_items (
	"id" serial NOT NULL,
	menu_id integer,
	title varchar(255) NOT NULL,
	url varchar(255) NOT NULL,
	target varchar(255) DEFAULT '_self'::character varying NOT NULL,
	icon_class varchar(255),
	color varchar(255),
	parent_id integer,
	"order" integer NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	route varchar(255),
	"parameters" text,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.menus (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.migrations (
	"id" serial NOT NULL,
	migration varchar(255) NOT NULL,
	batch integer NOT NULL,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.password_resets (
	email varchar(255) NOT NULL,
	"token" varchar(255) NOT NULL,
	created_at timestamp
);
CREATE TABLE pusdatin_ranking.public.permission_role (
	permission_id bigint NOT NULL,
	role_id bigint NOT NULL,
	PRIMARY KEY (permission_id,role_id)
);
CREATE TABLE pusdatin_ranking.public.permissions (
	"id" serial NOT NULL,
	"key" varchar(255) NOT NULL,
	"table_name" varchar(255),
	created_at timestamp,
	updated_at timestamp,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.roles (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	display_name varchar(255) NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.settings (
	"id" serial NOT NULL,
	"key" varchar(255) NOT NULL,
	display_name varchar(255) NOT NULL,
	"value" text,
	details text,
	"type" varchar(255) NOT NULL,
	"order" integer DEFAULT 1 NOT NULL,
	"group" varchar(255),
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.translations (
	"id" serial NOT NULL,
	"table_name" varchar(255) NOT NULL,
	"column_name" varchar(255) NOT NULL,
	foreign_key integer NOT NULL,
	locale varchar(255) NOT NULL,
	"value" text NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	PRIMARY KEY ("id")
);
CREATE TABLE pusdatin_ranking.public.user_roles (
	user_id bigint NOT NULL,
	role_id bigint NOT NULL,
	PRIMARY KEY (user_id,role_id)
);
CREATE TABLE pusdatin_ranking.public.users (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	email_verified_at timestamp,
	"password" varchar(255) NOT NULL,
	remember_token varchar(100),
	created_at timestamp,
	updated_at timestamp,
	avatar varchar(255) DEFAULT 'users/default.png'::character varying,
	role_id bigint,
	settings text,
	PRIMARY KEY ("id")
);
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('00', 'Tidak cacat', '2019-07-30 07:59:34', '2019-07-30 07:59:34');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('01', 'Tuna daksa / cacat tubuh', '2019-07-30 08:16:28', '2019-07-30 08:16:28');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('02', 'Tuna netra / buta', '2019-07-30 08:33:00', '2019-07-30 08:34:30');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('03', 'Tuna rungu', '2019-07-30 08:34:43', '2019-07-30 08:34:43');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('04', 'Tuna wicara', '2019-07-30 08:34:52', '2019-07-30 08:34:52');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('05', 'Tuna rungu & wicara', '2019-07-30 08:35:08', '2019-07-30 08:35:08');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('06', 'Tuna netra & cacat tubuh', '2019-07-30 08:35:28', '2019-07-30 08:35:28');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('07', 'Tuna netra, rungu, & wicara', '2019-07-30 08:35:56', '2019-07-30 08:35:56');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('08', 'Tuna rungu, wicara, & cacat tubuh', '2019-07-30 08:38:58', '2019-07-30 08:38:58');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('09', 'Tuna rungu, wicara, netra, & cacat tubuh', '2019-07-30 08:40:29', '2019-07-30 08:40:29');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('10', 'Cacat mental retardasi', '2019-07-30 08:40:43', '2019-07-30 08:40:43');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('11', 'Mantan penderita gangguan jiwa', '2019-07-30 08:40:57', '2019-07-30 08:40:57');
INSERT INTO pusdatin_ranking.public.bdt_status_cacats(kode, nama, created_at, updated_at) VALUES ('12', 'Cacat fisik & mental', '2019-07-30 08:41:20', '2019-07-30 08:41:20');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('0 ', 'Tidak punya ijazah', '2019-07-30 09:50:36', '2019-07-30 09:50:36');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('1 ', 'SD / sederajat', '2019-07-30 09:50:48', '2019-07-30 09:50:48');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('2 ', 'SMP / sederajat', '2019-07-30 09:51:00', '2019-07-30 09:51:00');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('3 ', 'SMA / sederajat', '2019-07-30 09:51:09', '2019-07-30 09:51:09');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('4 ', 'D1 / D2 / D3', '2019-07-30 09:51:23', '2019-07-30 09:51:23');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('5 ', 'D4 / S1', '2019-07-30 09:51:32', '2019-07-30 09:51:32');
INSERT INTO pusdatin_ranking.public.bdt_status_ijazahs(kode, nama, created_at, updated_at) VALUES ('6 ', 'S2 / S3', '2019-07-30 09:51:41', '2019-07-30 09:51:41');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('1 ', 'Berusaha sendiri', '2019-07-30 10:03:37', '2019-07-30 10:03:37');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('2 ', 'Berusaha dibantu buruh tidak tetap / tidak dibayar', '2019-07-30 10:04:09', '2019-07-30 10:04:09');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('3 ', 'Berusaha dibantu buruh tetap / dibayar', '2019-07-30 10:04:25', '2019-07-30 10:04:25');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('4 ', 'Buruh / karyawan / pegawai swasta', '2019-07-30 10:05:17', '2019-07-30 10:05:17');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('5 ', 'PNS / TNI / Polri / BUMN / BUMD / anggota legislatif', '2019-07-30 10:05:46', '2019-07-30 10:05:46');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('6 ', 'Pekerja bebas pertanian', '2019-07-30 10:06:13', '2019-07-30 10:06:13');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('7 ', 'Pekerja bebas non-pertanian', '2019-07-30 10:06:25', '2019-07-30 10:06:25');
INSERT INTO pusdatin_ranking.public.bdt_status_jabatans(kode, nama, created_at, updated_at) VALUES ('8 ', 'Pekerja keluarga / tidak dibayar', '2019-07-30 10:06:38', '2019-07-30 10:06:38');
INSERT INTO pusdatin_ranking.public.bdt_status_kawin_buktis(kode, nama, created_at, updated_at) VALUES ('1 ', 'Tidak', '2019-07-30 05:07:05', '2019-07-30 05:07:05');
INSERT INTO pusdatin_ranking.public.bdt_status_kawin_buktis(kode, nama, created_at, updated_at) VALUES ('2 ', 'Ya, dapat ditunjukkan', '2019-07-30 05:07:17', '2019-07-30 05:07:17');
INSERT INTO pusdatin_ranking.public.bdt_status_kawin_buktis(kode, nama, created_at, updated_at) VALUES ('3 ', 'Ya, tidak dapat ditunjukkan', '2019-07-30 05:07:29', '2019-07-30 05:07:29');
INSERT INTO pusdatin_ranking.public.bdt_status_kawins(kode, nama, created_at, updated_at) VALUES ('1 ', 'Belum kawin', '2019-07-30 04:59:59', '2019-07-30 04:59:59');
INSERT INTO pusdatin_ranking.public.bdt_status_kawins(kode, nama, created_at, updated_at) VALUES ('2 ', 'Kawin / nikah', '2019-07-30 05:01:14', '2019-07-30 05:01:14');
INSERT INTO pusdatin_ranking.public.bdt_status_kawins(kode, nama, created_at, updated_at) VALUES ('3 ', 'Cerai hidup', '2019-07-30 05:01:24', '2019-07-30 05:01:24');
INSERT INTO pusdatin_ranking.public.bdt_status_kawins(kode, nama, created_at, updated_at) VALUES ('4 ', 'Cerai mati', '2019-07-30 05:01:33', '2019-07-30 05:01:33');
INSERT INTO pusdatin_ranking.public.bdt_status_keberadaans(kode, nama, created_at, updated_at) VALUES ('1 ', 'Tinggal di Ruta', '2019-07-30 10:09:03', '2019-07-30 10:09:03');
INSERT INTO pusdatin_ranking.public.bdt_status_keberadaans(kode, nama, created_at, updated_at) VALUES ('2 ', 'Meninggal', '2019-07-30 10:09:10', '2019-07-30 10:09:10');
INSERT INTO pusdatin_ranking.public.bdt_status_keberadaans(kode, nama, created_at, updated_at) VALUES ('3 ', 'Tidak tinggal di Ruta / Pindah', '2019-07-30 10:09:35', '2019-07-30 10:09:35');
INSERT INTO pusdatin_ranking.public.bdt_status_keberadaans(kode, nama, created_at, updated_at) VALUES ('4 ', 'Anggota Rumah Tangga Baru', '2019-07-30 10:09:50', '2019-07-30 10:09:50');
INSERT INTO pusdatin_ranking.public.bdt_status_keberadaans(kode, nama, created_at, updated_at) VALUES ('5 ', 'Kesalahan Prelist', '2019-07-30 10:10:02', '2019-07-30 10:10:02');
INSERT INTO pusdatin_ranking.public.bdt_status_keberadaans(kode, nama, created_at, updated_at) VALUES ('6 ', 'Tidak Ditemukan', '2019-07-30 10:10:11', '2019-07-30 10:10:11');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('1 ', 'Kepala keluarga', '2019-07-30 04:50:55', '2019-07-30 04:50:55');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('2 ', 'Istri / suami', '2019-07-30 04:51:05', '2019-07-30 04:51:05');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('3 ', 'Anak', '2019-07-30 04:51:25', '2019-07-30 04:51:25');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('4 ', 'Menantu', '2019-07-30 04:51:34', '2019-07-30 04:51:34');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('5 ', 'Cucu', '2019-07-30 04:51:43', '2019-07-30 04:51:43');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('6 ', 'Orang tua / mertua', '2019-07-30 04:51:54', '2019-07-30 04:51:54');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('7 ', 'Pembantu rumah tangga', '2019-07-30 04:52:34', '2019-07-30 04:52:34');
INSERT INTO pusdatin_ranking.public.bdt_status_keluargas(kode, nama, created_at, updated_at) VALUES ('8 ', 'Lainnya', '2019-07-30 04:52:43', '2019-07-30 04:52:43');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('1 ', 'Pertanian tanaman padi & palawija', '2019-07-30 09:54:37', '2019-07-30 09:54:37');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('2 ', 'Hortikultura', '2019-07-30 09:54:51', '2019-07-30 09:54:51');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('3 ', 'Perkebunan', '2019-07-30 09:54:58', '2019-07-30 09:54:58');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('4 ', 'Perikanan tangkap', '2019-07-30 09:55:07', '2019-07-30 09:55:07');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('5 ', 'Perikanan budidaya', '2019-07-30 09:55:18', '2019-07-30 09:55:18');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('6 ', 'Peternakan', '2019-07-30 09:55:26', '2019-07-30 09:55:26');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('7 ', 'Kehutanan & pertanian lainnya', '2019-07-30 09:55:46', '2019-07-30 09:55:46');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('8 ', 'Pertambangan / penggalian', '2019-07-30 09:56:35', '2019-07-30 09:56:35');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('9 ', 'Industri pengolahan', '2019-07-30 09:57:02', '2019-07-30 09:57:02');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('10', 'Listrik dan gas', '2019-07-30 09:57:12', '2019-07-30 09:57:12');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('11', 'Bangunan / konstruksi', '2019-07-30 09:58:00', '2019-07-30 09:58:00');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('12', 'Perdagangan', '2019-07-30 09:58:09', '2019-07-30 09:58:09');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('13', 'Hotel & rumah makan', '2019-07-30 09:58:22', '2019-07-30 09:58:22');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('14', 'Transportasi & pergudangan', '2019-07-30 09:58:39', '2019-07-30 09:58:39');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('15', 'Informasi & komunikasi', '2019-07-30 09:58:52', '2019-07-30 09:58:52');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('16', 'Keuangan & asuransi', '2019-07-30 09:59:06', '2019-07-30 09:59:06');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('17', 'Jasa pendidikan', '2019-07-30 09:59:28', '2019-07-30 09:59:28');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('18', 'Jasa kesehatan', '2019-07-30 09:59:37', '2019-07-30 09:59:37');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('19', 'Jasa kemasyarakatan, pemerintahan & perorangan', '2019-07-30 10:00:05', '2019-07-30 10:00:05');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('20', 'Pemulung', '2019-07-30 10:00:15', '2019-07-30 10:00:15');
INSERT INTO pusdatin_ranking.public.bdt_status_pekerjaans(kode, nama, created_at, updated_at) VALUES ('21', 'Lainnya', '2019-07-30 10:00:21', '2019-07-30 10:00:21');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('1', '2019-07-30 09:45:41', '2019-07-30 09:45:41');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('2', '2019-07-30 09:45:45', '2019-07-30 09:45:45');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('3', '2019-07-30 09:45:49', '2019-07-30 09:45:49');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('4', '2019-07-30 09:45:52', '2019-07-30 09:45:52');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('5', '2019-07-30 09:45:56', '2019-07-30 09:45:56');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('6', '2019-07-30 09:45:59', '2019-07-30 09:45:59');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('7', '2019-07-30 09:46:03', '2019-07-30 09:46:03');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('8', '2019-07-30 09:46:06', '2019-07-30 09:46:06');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikan_levels(nama, created_at, updated_at) VALUES ('Tamat', '2019-07-30 09:46:17', '2019-07-30 09:46:17');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('01', 'SD / SDLB', '2019-07-30 09:32:13', '2019-07-30 09:32:13');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('02', 'Paket A', '2019-07-30 09:32:23', '2019-07-30 09:32:23');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('03', 'M. Ibtidaiyah', '2019-07-30 09:32:36', '2019-07-30 09:32:36');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('04', 'SMP / SMPLB', '2019-07-30 09:32:49', '2019-07-30 09:32:49');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('05', 'Paket B', '2019-07-30 09:33:00', '2019-07-30 09:33:00');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('06', 'M. Tsanawiyah', '2019-07-30 09:33:21', '2019-07-30 09:33:21');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('07', 'SMA / SMK / SMALB', '2019-07-30 09:33:38', '2019-07-30 09:33:38');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('08', 'Paket C', '2019-07-30 09:33:46', '2019-07-30 09:33:46');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('09', 'M. Aliyah', '2019-07-30 09:33:54', '2019-07-30 09:33:54');
INSERT INTO pusdatin_ranking.public.bdt_status_pendidikans(kode, nama, created_at, updated_at) VALUES ('10', 'Perguruan tinggi', '2019-07-30 09:34:05', '2019-07-30 09:34:05');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('0 ', 'Tidak ada', '2019-07-30 08:15:56', '2019-07-30 08:15:56');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('1 ', 'Hipertensi (tekanan darah tinggi)', '2019-07-30 08:54:25', '2019-07-30 08:54:25');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('2 ', 'Rematik', '2019-07-30 08:54:34', '2019-07-30 08:54:34');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('3 ', 'Asma', '2019-07-30 08:54:41', '2019-07-30 08:54:41');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('4 ', 'Masalah jantung', '2019-07-30 08:54:00', '2019-07-30 08:56:52');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('5 ', 'Diabetes (kencing manis)', '2019-07-30 08:57:15', '2019-07-30 08:57:15');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('6 ', 'Tuberculosis (TBC)', '2019-07-30 08:57:28', '2019-07-30 08:57:28');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('7 ', 'Stroke', '2019-07-30 08:57:35', '2019-07-30 08:57:35');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('8 ', 'Kanker atau tumor ganas', '2019-07-30 08:57:51', '2019-07-30 08:57:51');
INSERT INTO pusdatin_ranking.public.bdt_status_penyakits(kode, nama, created_at, updated_at) VALUES ('9 ', 'Lainnya (gagal ginjal, paru-paru, flek, dan sejenisnya)', '2019-07-30 08:59:06', '2019-07-30 08:59:06');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('1 ', 'Kepala rumah tangga', '2019-07-30 04:40:36', '2019-07-30 04:42:29');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('2 ', 'Istri / suami', '2019-07-30 04:40:48', '2019-07-30 04:42:38');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('3 ', 'Anak', '2019-07-30 04:41:01', '2019-07-30 04:41:01');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('4 ', 'Menantu', '2019-07-30 04:41:13', '2019-07-30 04:41:13');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('5 ', 'Cucu', '2019-07-30 04:41:20', '2019-07-30 04:41:20');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('6 ', 'Orang tua / mertua', '2019-07-30 04:41:38', '2019-07-30 04:42:47');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('7 ', 'Pembantu rumah tangga', '2019-07-30 04:42:21', '2019-07-30 04:42:21');
INSERT INTO pusdatin_ranking.public.bdt_status_rumah_tanggas(kode, nama, created_at, updated_at) VALUES ('8 ', 'Lainnya', '2019-07-30 04:43:12', '2019-07-30 04:43:12');
INSERT INTO pusdatin_ranking.public.bdt_status_sekolahs(kode, nama, created_at, updated_at) VALUES ('0 ', 'Tidak / belum pernah sekolah', '2019-07-30 09:21:12', '2019-07-30 09:21:12');
INSERT INTO pusdatin_ranking.public.bdt_status_sekolahs(kode, nama, created_at, updated_at) VALUES ('1 ', 'Masih sekolah', '2019-07-30 09:21:21', '2019-07-30 09:21:21');
INSERT INTO pusdatin_ranking.public.bdt_status_sekolahs(kode, nama, created_at, updated_at) VALUES ('2 ', 'Tidak bersekolah lagi', '2019-07-30 09:21:35', '2019-07-30 09:21:58');
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'id', 'number', 'ID', 't', 'f', 'f', 'f', 'f', 'f', null, 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'name', 'text', 'Name', 't', 't', 't', 't', 't', 't', null, 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'email', 'text', 'Email', 't', 't', 't', 't', 't', 't', null, 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'password', 'password', 'Password', 't', 'f', 'f', 't', 't', 'f', null, 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'remember_token', 'text', 'Remember Token', 'f', 'f', 'f', 'f', 'f', 'f', null, 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 'f', null, 6);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'updated_at', 'timestamp', 'Updated At', 'f', 'f', 'f', 'f', 'f', 'f', null, 7);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'avatar', 'image', 'Avatar', 'f', 't', 't', 't', 't', 't', null, 8);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'user_belongsto_role_relationship', 'relationship', 'Role', 'f', 't', 't', 't', 't', 'f', '{"model":"TCG\\Voyager\\Models\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 'f', 't', 't', 't', 't', 'f', '{"model":"TCG\\Voyager\\Models\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'settings', 'hidden', 'Settings', 'f', 'f', 'f', 'f', 'f', 'f', null, 12);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (2, 'id', 'number', 'ID', 't', 'f', 'f', 'f', 'f', 'f', null, 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (2, 'name', 'text', 'Name', 't', 't', 't', 't', 't', 't', null, 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (2, 'created_at', 'timestamp', 'Created At', 'f', 'f', 'f', 'f', 'f', 'f', null, 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (2, 'updated_at', 'timestamp', 'Updated At', 'f', 'f', 'f', 'f', 'f', 'f', null, 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (3, 'id', 'number', 'ID', 't', 'f', 'f', 'f', 'f', 'f', null, 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (3, 'name', 'text', 'Name', 't', 't', 't', 't', 't', 't', null, 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (3, 'created_at', 'timestamp', 'Created At', 'f', 'f', 'f', 'f', 'f', 'f', null, 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (3, 'updated_at', 'timestamp', 'Updated At', 'f', 'f', 'f', 'f', 'f', 'f', null, 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (3, 'display_name', 'text', 'Display Name', 't', 't', 't', 't', 't', 't', null, 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (1, 'role_id', 'text', 'Role', 't', 't', 't', 't', 't', 't', null, 9);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (9, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (10, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (11, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (13, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (13, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_kawin_buktis,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (13, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (14, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_cacats,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (10, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (9, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_rumah_tanggas,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (9, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (10, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_keluargas,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (11, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:20","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (14, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (15, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (10, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (11, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_kawins,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (13, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (11, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (15, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_penyakits,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (14, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (15, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (9, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (14, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (15, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:70","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (21, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (21, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_sekolahs,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (21, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (21, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (22, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (22, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_pendidikans,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (22, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (22, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (13, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (11, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (15, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (22, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (14, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (21, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (10, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (23, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (23, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (23, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_pendidikan_levels,nama|max:10","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (25, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (25, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_ijazahs,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (25, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:30","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (25, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (26, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (26, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_pekerjaans,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (26, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:70","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (26, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (27, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (27, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_jabatans,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (27, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:70","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (27, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (29, 'id', 'text', 'Id', 't', 'f', 'f', 'f', 'f', 'f', '{}', 1);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (29, 'kode', 'text', 'Kode', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|unique:bdt_status_keberadaans,kode|max:2","messages":{"unique":"This :attribute already exists.","required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 2);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (29, 'nama', 'text', 'Nama', 't', 't', 't', 't', 't', 't', '{"validation":{"rule":"required|max:50","messages":{"required":"This :attribute field is a must.","max":"This :attribute field maximum :max."}}}', 3);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (29, 'created_at', 'timestamp', 'Created At', 'f', 't', 't', 'f', 'f', 't', '{}', 4);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (29, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (9, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (23, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (25, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (26, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_rows(data_type_id, field, "type", display_name, required, browse, "read", edit, "add", "delete", details, "order") VALUES (27, 'updated_at', 'timestamp', 'Updated At', 'f', 't', 't', 'f', 'f', 'f', '{}', 5);
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('users', 'users', 'User', 'Users', 'voyager-person', 'TCG\Voyager\Models\User', '', 't', '2019-07-30 04:12:45', '2019-07-30 04:12:45', 0, 'TCG\Voyager\Http\Controllers\VoyagerUserController', 'TCG\Voyager\Policies\UserPolicy', null);
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\Voyager\Models\Menu', '', 't', '2019-07-30 04:12:45', '2019-07-30 04:12:45', 0, '', null, null);
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\Voyager\Models\Role', '', 't', '2019-07-30 04:12:45', '2019-07-30 04:12:45', 0, '', null, null);
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_rumah_tanggas', 'status-rumah-tangga', 'Status Rumah Tangga', 'Status Rumah Tangga', null, 'App\Model\Bdt\BdtStatusRumahTangga', null, 't', '2019-07-30 04:39:44', '2019-07-30 10:11:36', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_cacats', 'status-cacat', 'Status Cacat', 'Status Cacat', null, 'App\Model\Bdt\BdtStatusCacat', null, 't', '2019-07-30 07:58:08', '2019-07-30 10:11:45', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_sekolahs', 'status-sekolah', 'Status Sekolah', 'Status Sekolah', 'voyager-company', 'App\Model\Bdt\BdtStatusSekolah', null, 't', '2019-07-30 09:17:42', '2019-07-30 10:12:30', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_pendidikan_levels', 'status-pendidikan-level', 'Status Pendidikan Level', 'Status Pendidikan Level', 'voyager-company', 'App\Model\Bdt\BdtStatusPendidikanLevel', null, 't', '2019-07-30 09:41:03', '2019-07-30 10:12:42', 0, null, null, '{"order_column":"id","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_ijazahs', 'status-ijazah', 'Status Ijazah', 'Status Ijazah', 'voyager-documentation', 'App\Model\Bdt\BdtStatusIjazah', null, 't', '2019-07-30 09:50:11', '2019-07-30 10:12:50', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_pekerjaans', 'status-pekerjaan', 'Status Pekerjaan', 'Status Pekerjaan', 'voyager-company', 'App\Model\Bdt\BdtStatusPekerjaan', null, 't', '2019-07-30 09:54:16', '2019-07-30 10:13:20', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_keluargas', 'status-keluarga', 'Status Keluarga', 'Status Keluarga', null, 'App\Model\Bdt\BdtStatusKeluarga', null, 't', '2019-07-30 04:50:38', '2019-07-30 10:11:13', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_kawin_buktis', 'status-kawin-bukti', 'Status Bukti Perkawinan', 'Status Bukti Perkawinan', 'voyager-documentation', 'App\Model\Bdt\BdtStatusKawinBukti', null, 't', '2019-07-30 05:21:07', '2019-07-30 10:11:18', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_kawins', 'status-kawin', 'Status Perkawinan', 'Status Perkawinan', null, 'App\Model\Bdt\BdtStatusKawin', null, 't', '2019-07-30 04:57:44', '2019-07-30 10:11:22', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_penyakits', 'status-penyakit', 'Status Penyakit', 'Status Penyakit', 'voyager-frown', 'App\Model\Bdt\BdtStatusPenyakit', null, 't', '2019-07-30 08:15:26', '2019-07-30 10:11:27', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_pendidikans', 'status-pendidikan', 'Status Pendidikan', 'Status Pendidikan', 'voyager-company', 'App\Model\Bdt\BdtStatusPendidikan', null, 't', '2019-07-30 09:31:56', '2019-07-30 10:11:32', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_jabatans', 'status-jabatan', 'Status Jabatan', 'Status Jabatan', 'voyager-company', 'App\Model\Bdt\BdtStatusJabatan', null, 't', '2019-07-30 10:03:12', '2019-07-30 10:13:26', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.data_types("name", slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) VALUES ('bdt_status_keberadaans', 'status-keberadaan', 'Status Keberadaan', 'Status Keberadaan', 'voyager-file-text', 'App\Model\Bdt\BdtStatusKeberadaan', null, 't', '2019-07-30 10:08:49', '2019-07-30 10:13:30', 0, null, null, '{"order_column":"kode","order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Dashboard', '', '_self', 'voyager-boat', null, null, 1, '2019-07-30 04:12:45', '2019-07-30 04:12:45', 'voyager.dashboard', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Users', '', '_self', 'voyager-person', null, null, 3, '2019-07-30 04:12:45', '2019-07-30 04:12:45', 'voyager.users.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Roles', '', '_self', 'voyager-lock', null, null, 2, '2019-07-30 04:12:45', '2019-07-30 04:12:45', 'voyager.roles.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Menu Builder', '', '_self', 'voyager-list', null, 5, 1, '2019-07-30 04:12:45', '2019-07-30 04:44:02', 'voyager.menus.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Database', '', '_self', 'voyager-data', null, 5, 2, '2019-07-30 04:12:45', '2019-07-30 04:44:02', 'voyager.database.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Compass', '', '_self', 'voyager-compass', null, 5, 3, '2019-07-30 04:12:45', '2019-07-30 04:44:02', 'voyager.compass.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'BREAD', '', '_self', 'voyager-bread', null, 5, 4, '2019-07-30 04:12:45', '2019-07-30 04:44:02', 'voyager.bread.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Hooks', '', '_self', 'voyager-hook', null, 5, 5, '2019-07-30 04:12:45', '2019-07-30 04:44:02', 'voyager.hooks', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Bukti Perkawinan', '', '_self', 'voyager-documentation', null, 15, 4, '2019-07-30 05:21:07', '2019-07-30 05:21:46', 'voyager.status-kawin-bukti.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Master Data', '/admin', '_self', 'voyager-folder', '#000000', null, 4, '2019-07-30 04:45:36', '2019-07-30 04:45:44', null, '');
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Cacat', '', '_self', 'voyager-bubble-hear', '#000000', 15, 5, '2019-07-30 07:58:08', '2019-07-30 08:12:21', 'voyager.status-cacat.index', '');
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Penyakit', '', '_self', 'voyager-frown', null, 15, 6, '2019-07-30 08:15:26', '2019-07-30 08:15:38', 'voyager.status-penyakit.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Media', '', '_self', 'voyager-images', null, null, 5, '2019-07-30 04:12:45', '2019-07-30 04:45:50', 'voyager.media.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Tools', '', '_self', 'voyager-tools', null, null, 6, '2019-07-30 04:12:45', '2019-07-30 04:45:50', null, null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Settings', '', '_self', 'voyager-settings', null, null, 7, '2019-07-30 04:12:45', '2019-07-30 04:45:50', 'voyager.settings.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Rumah Tangga', '', '_self', 'voyager-home', '#000000', 15, 1, '2019-07-30 04:34:32', '2019-07-30 04:46:30', 'voyager.status-rumah-tangga.index', '');
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Sekolah', '', '_self', 'voyager-company', '#000000', 15, 7, '2019-07-30 09:17:42', '2019-07-30 09:20:45', 'voyager.status-sekolah.index', '');
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Pendidikan', '', '_self', 'voyager-company', null, 15, 8, '2019-07-30 09:31:56', '2019-07-30 09:46:55', 'voyager.status-pendidikan.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Pendidikan Level', '', '_self', 'voyager-company', null, 15, 9, '2019-07-30 09:41:03', '2019-07-30 09:46:57', 'voyager.status-pendidikan-level.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Ijazah', '', '_self', 'voyager-documentation', null, null, 8, '2019-07-30 09:50:11', '2019-07-30 09:50:11', 'voyager.status-ijazah.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Pekerjaan', '', '_self', 'voyager-company', null, null, 9, '2019-07-30 09:54:16', '2019-07-30 09:54:16', 'voyager.status-pekerjaan.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Jabatan', '', '_self', 'voyager-company', null, null, 10, '2019-07-30 10:03:12', '2019-07-30 10:03:12', 'voyager.status-jabatan.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Keberadaan', '', '_self', 'voyager-file-text', null, null, 11, '2019-07-30 10:08:49', '2019-07-30 10:08:49', 'voyager.status-keberadaan.index', null);
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Keluarga', '', '_self', 'voyager-people', '#000000', 15, 2, '2019-07-30 04:50:39', '2019-07-30 05:10:40', 'voyager.status-keluarga.index', '');
INSERT INTO pusdatin_ranking.public.menu_items(menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, "parameters") VALUES (1, 'Status Perkawinan', '', '_self', 'voyager-people', '#000000', 15, 3, '2019-07-30 04:57:44', '2019-07-30 05:10:46', 'voyager.status-kawin.index', '');
INSERT INTO pusdatin_ranking.public.menus("name", created_at, updated_at) VALUES ('admin', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2014_10_12_000000_create_users_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_01_01_000000_create_data_types_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_05_19_173453_create_menu_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_10_21_190000_create_roles_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_10_21_190000_create_settings_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_11_30_135954_create_permission_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_01_14_005015_create_translations_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2018_03_11_000000_add_user_settings', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO pusdatin_ranking.public.migrations(migration, batch) VALUES ('2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (1, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (2, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (3, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (4, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (5, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (6, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (7, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (8, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (9, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (10, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (11, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (12, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (13, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (14, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (15, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (16, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (17, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (18, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (19, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (20, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (21, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (22, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (23, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (24, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (25, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (26, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (37, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (38, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (39, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (40, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (41, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (42, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (43, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (44, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (45, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (46, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (47, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (48, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (49, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (50, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (51, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (57, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (58, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (59, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (60, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (61, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (62, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (63, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (64, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (65, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (66, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (67, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (68, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (69, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (70, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (71, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (82, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (83, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (84, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (85, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (86, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (87, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (88, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (89, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (90, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (91, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (92, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (93, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (94, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (95, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (96, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (97, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (98, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (99, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (100, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (101, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (102, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (103, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (104, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (105, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (106, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (107, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (108, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (109, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (110, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (111, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (112, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (113, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (114, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (115, 1);
INSERT INTO pusdatin_ranking.public.permission_role(permission_id, role_id) VALUES (116, 1);
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (1, 'browse_admin', null, '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (2, 'browse_bread', null, '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (3, 'browse_database', null, '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (4, 'browse_media', null, '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (5, 'browse_compass', null, '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (6, 'browse_menus', 'menus', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (7, 'read_menus', 'menus', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (8, 'edit_menus', 'menus', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (9, 'add_menus', 'menus', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (10, 'delete_menus', 'menus', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (11, 'browse_roles', 'roles', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (12, 'read_roles', 'roles', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (13, 'edit_roles', 'roles', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (14, 'add_roles', 'roles', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (15, 'delete_roles', 'roles', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (16, 'browse_users', 'users', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (17, 'read_users', 'users', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (18, 'edit_users', 'users', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (19, 'add_users', 'users', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (20, 'delete_users', 'users', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (21, 'browse_settings', 'settings', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (22, 'read_settings', 'settings', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (23, 'edit_settings', 'settings', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (24, 'add_settings', 'settings', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (25, 'delete_settings', 'settings', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (26, 'browse_hooks', null, '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (37, 'browse_bdt_status_rumah_tanggas', 'bdt_status_rumah_tanggas', '2019-07-30 04:39:44', '2019-07-30 04:39:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (38, 'read_bdt_status_rumah_tanggas', 'bdt_status_rumah_tanggas', '2019-07-30 04:39:44', '2019-07-30 04:39:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (39, 'edit_bdt_status_rumah_tanggas', 'bdt_status_rumah_tanggas', '2019-07-30 04:39:44', '2019-07-30 04:39:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (40, 'add_bdt_status_rumah_tanggas', 'bdt_status_rumah_tanggas', '2019-07-30 04:39:44', '2019-07-30 04:39:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (41, 'delete_bdt_status_rumah_tanggas', 'bdt_status_rumah_tanggas', '2019-07-30 04:39:44', '2019-07-30 04:39:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (42, 'browse_bdt_status_keluargas', 'bdt_status_keluargas', '2019-07-30 04:50:38', '2019-07-30 04:50:38');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (43, 'read_bdt_status_keluargas', 'bdt_status_keluargas', '2019-07-30 04:50:38', '2019-07-30 04:50:38');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (44, 'edit_bdt_status_keluargas', 'bdt_status_keluargas', '2019-07-30 04:50:39', '2019-07-30 04:50:39');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (45, 'add_bdt_status_keluargas', 'bdt_status_keluargas', '2019-07-30 04:50:39', '2019-07-30 04:50:39');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (46, 'delete_bdt_status_keluargas', 'bdt_status_keluargas', '2019-07-30 04:50:39', '2019-07-30 04:50:39');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (47, 'browse_bdt_status_kawins', 'bdt_status_kawins', '2019-07-30 04:57:44', '2019-07-30 04:57:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (48, 'read_bdt_status_kawins', 'bdt_status_kawins', '2019-07-30 04:57:44', '2019-07-30 04:57:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (49, 'edit_bdt_status_kawins', 'bdt_status_kawins', '2019-07-30 04:57:44', '2019-07-30 04:57:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (50, 'add_bdt_status_kawins', 'bdt_status_kawins', '2019-07-30 04:57:44', '2019-07-30 04:57:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (51, 'delete_bdt_status_kawins', 'bdt_status_kawins', '2019-07-30 04:57:44', '2019-07-30 04:57:44');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (57, 'browse_bdt_status_kawin_buktis', 'bdt_status_kawin_buktis', '2019-07-30 05:21:07', '2019-07-30 05:21:07');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (58, 'read_bdt_status_kawin_buktis', 'bdt_status_kawin_buktis', '2019-07-30 05:21:07', '2019-07-30 05:21:07');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (59, 'edit_bdt_status_kawin_buktis', 'bdt_status_kawin_buktis', '2019-07-30 05:21:07', '2019-07-30 05:21:07');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (60, 'add_bdt_status_kawin_buktis', 'bdt_status_kawin_buktis', '2019-07-30 05:21:07', '2019-07-30 05:21:07');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (61, 'delete_bdt_status_kawin_buktis', 'bdt_status_kawin_buktis', '2019-07-30 05:21:07', '2019-07-30 05:21:07');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (62, 'browse_bdt_status_cacats', 'bdt_status_cacats', '2019-07-30 07:58:08', '2019-07-30 07:58:08');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (63, 'read_bdt_status_cacats', 'bdt_status_cacats', '2019-07-30 07:58:08', '2019-07-30 07:58:08');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (64, 'edit_bdt_status_cacats', 'bdt_status_cacats', '2019-07-30 07:58:08', '2019-07-30 07:58:08');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (65, 'add_bdt_status_cacats', 'bdt_status_cacats', '2019-07-30 07:58:08', '2019-07-30 07:58:08');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (66, 'delete_bdt_status_cacats', 'bdt_status_cacats', '2019-07-30 07:58:08', '2019-07-30 07:58:08');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (67, 'browse_bdt_status_penyakits', 'bdt_status_penyakits', '2019-07-30 08:15:26', '2019-07-30 08:15:26');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (68, 'read_bdt_status_penyakits', 'bdt_status_penyakits', '2019-07-30 08:15:26', '2019-07-30 08:15:26');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (69, 'edit_bdt_status_penyakits', 'bdt_status_penyakits', '2019-07-30 08:15:26', '2019-07-30 08:15:26');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (70, 'add_bdt_status_penyakits', 'bdt_status_penyakits', '2019-07-30 08:15:26', '2019-07-30 08:15:26');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (71, 'delete_bdt_status_penyakits', 'bdt_status_penyakits', '2019-07-30 08:15:26', '2019-07-30 08:15:26');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (82, 'browse_bdt_status_sekolahs', 'bdt_status_sekolahs', '2019-07-30 09:17:42', '2019-07-30 09:17:42');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (83, 'read_bdt_status_sekolahs', 'bdt_status_sekolahs', '2019-07-30 09:17:42', '2019-07-30 09:17:42');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (84, 'edit_bdt_status_sekolahs', 'bdt_status_sekolahs', '2019-07-30 09:17:42', '2019-07-30 09:17:42');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (85, 'add_bdt_status_sekolahs', 'bdt_status_sekolahs', '2019-07-30 09:17:42', '2019-07-30 09:17:42');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (86, 'delete_bdt_status_sekolahs', 'bdt_status_sekolahs', '2019-07-30 09:17:42', '2019-07-30 09:17:42');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (87, 'browse_bdt_status_pendidikans', 'bdt_status_pendidikans', '2019-07-30 09:31:56', '2019-07-30 09:31:56');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (88, 'read_bdt_status_pendidikans', 'bdt_status_pendidikans', '2019-07-30 09:31:56', '2019-07-30 09:31:56');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (89, 'edit_bdt_status_pendidikans', 'bdt_status_pendidikans', '2019-07-30 09:31:56', '2019-07-30 09:31:56');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (90, 'add_bdt_status_pendidikans', 'bdt_status_pendidikans', '2019-07-30 09:31:56', '2019-07-30 09:31:56');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (91, 'delete_bdt_status_pendidikans', 'bdt_status_pendidikans', '2019-07-30 09:31:56', '2019-07-30 09:31:56');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (92, 'browse_bdt_status_pendidikan_levels', 'bdt_status_pendidikan_levels', '2019-07-30 09:41:03', '2019-07-30 09:41:03');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (93, 'read_bdt_status_pendidikan_levels', 'bdt_status_pendidikan_levels', '2019-07-30 09:41:03', '2019-07-30 09:41:03');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (94, 'edit_bdt_status_pendidikan_levels', 'bdt_status_pendidikan_levels', '2019-07-30 09:41:03', '2019-07-30 09:41:03');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (95, 'add_bdt_status_pendidikan_levels', 'bdt_status_pendidikan_levels', '2019-07-30 09:41:03', '2019-07-30 09:41:03');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (96, 'delete_bdt_status_pendidikan_levels', 'bdt_status_pendidikan_levels', '2019-07-30 09:41:03', '2019-07-30 09:41:03');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (97, 'browse_bdt_status_ijazahs', 'bdt_status_ijazahs', '2019-07-30 09:50:11', '2019-07-30 09:50:11');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (98, 'read_bdt_status_ijazahs', 'bdt_status_ijazahs', '2019-07-30 09:50:11', '2019-07-30 09:50:11');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (99, 'edit_bdt_status_ijazahs', 'bdt_status_ijazahs', '2019-07-30 09:50:11', '2019-07-30 09:50:11');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (100, 'add_bdt_status_ijazahs', 'bdt_status_ijazahs', '2019-07-30 09:50:11', '2019-07-30 09:50:11');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (101, 'delete_bdt_status_ijazahs', 'bdt_status_ijazahs', '2019-07-30 09:50:11', '2019-07-30 09:50:11');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (102, 'browse_bdt_status_pekerjaans', 'bdt_status_pekerjaans', '2019-07-30 09:54:16', '2019-07-30 09:54:16');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (103, 'read_bdt_status_pekerjaans', 'bdt_status_pekerjaans', '2019-07-30 09:54:16', '2019-07-30 09:54:16');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (104, 'edit_bdt_status_pekerjaans', 'bdt_status_pekerjaans', '2019-07-30 09:54:16', '2019-07-30 09:54:16');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (105, 'add_bdt_status_pekerjaans', 'bdt_status_pekerjaans', '2019-07-30 09:54:16', '2019-07-30 09:54:16');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (106, 'delete_bdt_status_pekerjaans', 'bdt_status_pekerjaans', '2019-07-30 09:54:16', '2019-07-30 09:54:16');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (107, 'browse_bdt_status_jabatans', 'bdt_status_jabatans', '2019-07-30 10:03:12', '2019-07-30 10:03:12');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (108, 'read_bdt_status_jabatans', 'bdt_status_jabatans', '2019-07-30 10:03:12', '2019-07-30 10:03:12');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (109, 'edit_bdt_status_jabatans', 'bdt_status_jabatans', '2019-07-30 10:03:12', '2019-07-30 10:03:12');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (110, 'add_bdt_status_jabatans', 'bdt_status_jabatans', '2019-07-30 10:03:12', '2019-07-30 10:03:12');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (111, 'delete_bdt_status_jabatans', 'bdt_status_jabatans', '2019-07-30 10:03:12', '2019-07-30 10:03:12');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (112, 'browse_bdt_status_keberadaans', 'bdt_status_keberadaans', '2019-07-30 10:08:49', '2019-07-30 10:08:49');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (113, 'read_bdt_status_keberadaans', 'bdt_status_keberadaans', '2019-07-30 10:08:49', '2019-07-30 10:08:49');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (114, 'edit_bdt_status_keberadaans', 'bdt_status_keberadaans', '2019-07-30 10:08:49', '2019-07-30 10:08:49');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (115, 'add_bdt_status_keberadaans', 'bdt_status_keberadaans', '2019-07-30 10:08:49', '2019-07-30 10:08:49');
INSERT INTO pusdatin_ranking.public.permissions("id", "key", "table_name", created_at, updated_at) VALUES (116, 'delete_bdt_status_keberadaans', 'bdt_status_keberadaans', '2019-07-30 10:08:49', '2019-07-30 10:08:49');
INSERT INTO pusdatin_ranking.public.roles("id", "name", display_name, created_at, updated_at) VALUES (1, 'admin', 'Administrator', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.roles("id", "name", display_name, created_at, updated_at) VALUES (2, 'user', 'Normal User', '2019-07-30 04:12:45', '2019-07-30 04:12:45');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('site.logo', 'Site Logo', '', '', 'image', 3, 'Site');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin');
INSERT INTO pusdatin_ranking.public.settings("key", display_name, "value", details, "type", "order", "group") VALUES ('admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
INSERT INTO pusdatin_ranking.public.users("id", "name", email, email_verified_at, "password", remember_token, created_at, updated_at, avatar, role_id, settings) VALUES (1, 'Dzulfaqar', 'dzulfaqar@gmail.com', null, '$2y$10$jtBnZWJFXaKRt8Z4Smp5V.hX/VpDoDu3l9tCMYCaVrjoZro66MukW', null, '2019-07-30 04:17:43', '2019-07-30 04:22:10', 'users/July2019/TWfZL1C0uuSzctkvHGOW.png', 1, '{"locale":"en"}');
ALTER TABLE pusdatin_ranking.public.data_rows
	ADD FOREIGN KEY (data_type_id) 
	REFERENCES data_types ("id");


ALTER TABLE pusdatin_ranking.public.menu_items
	ADD FOREIGN KEY (menu_id) 
	REFERENCES menus ("id");


ALTER TABLE pusdatin_ranking.public.permission_role
	ADD FOREIGN KEY (permission_id) 
	REFERENCES permissions ("id");

ALTER TABLE pusdatin_ranking.public.permission_role
	ADD FOREIGN KEY (role_id) 
	REFERENCES roles ("id");


ALTER TABLE pusdatin_ranking.public.user_roles
	ADD FOREIGN KEY (user_id) 
	REFERENCES users ("id");

ALTER TABLE pusdatin_ranking.public.user_roles
	ADD FOREIGN KEY (role_id) 
	REFERENCES roles ("id");


ALTER TABLE pusdatin_ranking.public.users
	ADD FOREIGN KEY (role_id) 
	REFERENCES roles ("id");


