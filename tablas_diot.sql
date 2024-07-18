create database if not exists informativa;
-- create schema diot;

create table if not exists diot.m_dotdeclarantes
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    n_materia smallint not null ,
    n_medio_recepcion smallint not null ,
    f_presentacion date not null ,
    d_hpresentacion datetime hour to minute not null ,
    n_numero_operacion decimal(12,0) not null ,
    d_rfc char(13) not null ,
    n_ejercicio smallint not null ,
    d_sello_electron char(172) not null ,
    n_serie decimal(21,0) not null ,
    d_num_oper_sat varchar(14,5) not null ,
    n_version integer not null ,
    d_idregimen char(8) not null ,
    d_anexos char(20) not null ,
    f_registro datetime year to minute not null 
  );

  create table if not exists diot.d_dotdetalle
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    n_cve_consecutivo integer not null 
  );

  create table if not exists diot.d_dotdetalleext
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    d_nombre varchar(43) not null ,
    d_pais char(2) not null ,
    d_nacionalidad varchar(40) not null ,
    d_num_id_fiscal varchar(40)
  );

  create table if not exists diot.d_dotdetallerfc
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    n_cve_rfc_3o integer not null ,
    d_rfc_3o char(13) not null 
  );

  create table if not exists diot.d_dotdetentcorto
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    n_dato smallint not null 
  );

  create table if not exists diot.d_dotdetimporte
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    i_dato money(14,0) not null 
  );

  create table if not exists diot.d_dotgeneral
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_total_tercer integer not null ,
    n_total_terceros integer not null 
  );

  create table if not exists diot.d_dotgralimporte
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    i_dato money(14,0) not null 
  );

  create table if not exists diot.d_dotperiodo
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_periodo smallint not null ,
    n_periodicidad smallint
  );

  create table if not exists diot.d_dotpfisica
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_curp char(18),
    d_apellido_pat varchar(43) not null ,
    d_apellido_mat varchar(43),
    d_nombres varchar(43) not null 
  );

  create table if not exists diot.d_dotpmoral
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_razon_social varchar(120) not null 
  );

  create table if not exists diot.d_dotsumacomp
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_oper_ant integer,
    d_oper_ant varchar(14,5) not null ,
    n_cve_fant integer not null ,
    f_ant date not null 
  );

  create table if not exists diot.d_dotsumarios
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_contenido integer not null ,
    n_contenido smallint not null ,
    n_cve_tipo_declar integer not null ,
    n_tipo_declar smallint not null 
  );


-- LOAD FROM 'data/diot/odecla.txt' INSERT INTO diot.m_dotdeclarantes;
-- LOAD FROM 'data/diot/odetal.txt' INSERT INTO diot.d_dotdetalle;
-- LOAD FROM 'data/diot/odetex.txt' INSERT INTO diot.d_dotdetalleext;
-- LOAD FROM 'data/diot/odetrf.txt' INSERT INTO diot.d_dotdetallerfc;
-- LOAD FROM 'data/diot/odetec.txt' INSERT INTO diot.d_dotdetentcorto;
-- LOAD FROM 'data/diot/odetim.txt' INSERT INTO diot.d_dotdetimporte;
-- LOAD FROM 'data/diot/ogener.txt' INSERT INTO diot.d_dotgeneral;
-- LOAD FROM 'data/diot/ogrlim.txt' INSERT INTO diot.d_dotgralimporte;
-- LOAD FROM 'data/diot/operio.txt' INSERT INTO diot.d_dotperiodo;
-- LOAD FROM 'data/diot/ofisic.txt' INSERT INTO diot.d_dotpfisica;
-- LOAD FROM 'data/diot/omoral.txt' INSERT INTO diot.d_dotpmoral;
-- LOAD FROM 'data/diot/osumac.txt' INSERT INTO diot.d_dotsumacomp;
-- LOAD FROM 'data/diot/osumar.txt' INSERT INTO diot.d_dotsumarios;


LOAD FROM 'data_hist/diot/dic31/odecla.txt' INSERT INTO diot.m_dotdeclarantes;
LOAD FROM 'data_hist/diot/dic31/odetal.txt' INSERT INTO diot.d_dotdetalle;
LOAD FROM 'data_hist/diot/dic31/odetex.txt' INSERT INTO diot.d_dotdetalleext;
LOAD FROM 'data_hist/diot/dic31/odetrf.txt' INSERT INTO diot.d_dotdetallerfc;
LOAD FROM 'data_hist/diot/dic31/odetec.txt' INSERT INTO diot.d_dotdetentcorto;
LOAD FROM 'data_hist/diot/dic31/odetim.txt' INSERT INTO diot.d_dotdetimporte;
LOAD FROM 'data_hist/diot/dic31/ogener.txt' INSERT INTO diot.d_dotgeneral;
LOAD FROM 'data_hist/diot/dic31/ogrlim.txt' INSERT INTO diot.d_dotgralimporte;
LOAD FROM 'data_hist/diot/dic31/operio.txt' INSERT INTO diot.d_dotperiodo;
LOAD FROM 'data_hist/diot/dic31/ofisic.txt' INSERT INTO diot.d_dotpfisica;
LOAD FROM 'data_hist/diot/dic31/omoral.txt' INSERT INTO diot.d_dotpmoral;
LOAD FROM 'data_hist/diot/dic31/osumac.txt' INSERT INTO diot.d_dotsumacomp;
LOAD FROM 'data_hist/diot/dic31/osumar.txt' INSERT INTO diot.d_dotsumarios;

LOAD FROM 'data_hist/diot/ene01/odecla.txt' INSERT INTO diot.m_dotdeclarantes;
LOAD FROM 'data_hist/diot/ene01/odetal.txt' INSERT INTO diot.d_dotdetalle;
LOAD FROM 'data_hist/diot/ene01/odetex.txt' INSERT INTO diot.d_dotdetalleext;
LOAD FROM 'data_hist/diot/ene01/odetrf.txt' INSERT INTO diot.d_dotdetallerfc;
LOAD FROM 'data_hist/diot/ene01/odetec.txt' INSERT INTO diot.d_dotdetentcorto;
LOAD FROM 'data_hist/diot/ene01/odetim.txt' INSERT INTO diot.d_dotdetimporte;
LOAD FROM 'data_hist/diot/ene01/ogener.txt' INSERT INTO diot.d_dotgeneral;
LOAD FROM 'data_hist/diot/ene01/ogrlim.txt' INSERT INTO diot.d_dotgralimporte;
LOAD FROM 'data_hist/diot/ene01/operio.txt' INSERT INTO diot.d_dotperiodo;
LOAD FROM 'data_hist/diot/ene01/ofisic.txt' INSERT INTO diot.d_dotpfisica;
LOAD FROM 'data_hist/diot/ene01/omoral.txt' INSERT INTO diot.d_dotpmoral;
LOAD FROM 'data_hist/diot/ene01/osumac.txt' INSERT INTO diot.d_dotsumacomp;
LOAD FROM 'data_hist/diot/ene01/osumar.txt' INSERT INTO diot.d_dotsumarios;

LOAD FROM 'data_hist/diot/ene02/odecla.txt' INSERT INTO diot.m_dotdeclarantes;
LOAD FROM 'data_hist/diot/ene02/odetal.txt' INSERT INTO diot.d_dotdetalle;
LOAD FROM 'data_hist/diot/ene02/odetex.txt' INSERT INTO diot.d_dotdetalleext;
LOAD FROM 'data_hist/diot/ene02/odetrf.txt' INSERT INTO diot.d_dotdetallerfc;
LOAD FROM 'data_hist/diot/ene02/odetec.txt' INSERT INTO diot.d_dotdetentcorto;
LOAD FROM 'data_hist/diot/ene02/odetim.txt' INSERT INTO diot.d_dotdetimporte;
LOAD FROM 'data_hist/diot/ene02/ogener.txt' INSERT INTO diot.d_dotgeneral;
LOAD FROM 'data_hist/diot/ene02/ogrlim.txt' INSERT INTO diot.d_dotgralimporte;
LOAD FROM 'data_hist/diot/ene02/operio.txt' INSERT INTO diot.d_dotperiodo;
LOAD FROM 'data_hist/diot/ene02/ofisic.txt' INSERT INTO diot.d_dotpfisica;
LOAD FROM 'data_hist/diot/ene02/omoral.txt' INSERT INTO diot.d_dotpmoral;
LOAD FROM 'data_hist/diot/ene02/osumac.txt' INSERT INTO diot.d_dotsumacomp;
LOAD FROM 'data_hist/diot/ene02/osumar.txt' INSERT INTO diot.d_dotsumarios;