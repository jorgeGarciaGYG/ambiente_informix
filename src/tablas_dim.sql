create database if not exists informativa;
-- create schema dim;

  create table if not exists dim.d_dmcampos 
  (
    c_indicetabla smallint not null ,
    c_indicecampo smallint not null ,
    d_nombrecampo varchar(20) not null ,
    d_descripcion varchar(250) not null ,
    primary key (c_indicetabla,c_indicecampo) 
  );

  create table if not exists dim.d_dmcatalogo 
  (
    c_version integer,
    c_claveinformatica integer not null ,
    n_claveext integer not null ,
    n_anexo smallint not null ,
    n_transacc smallint not null ,
    n_recorrido smallint not null ,
    d_anexodescr varchar(60) not null ,
    d_transaccdescr varchar(60) not null ,
    d_cveinfdescr varchar(255) not null ,
    n_tipodato smallint not null ,
    n_claveresp smallint not null ,
    n_parametro2 smallint not null ,
    n_parametro3 smallint not null ,
    n_indicetabla smallint not null ,
    n_indicecampodato smallint not null ,
    n_indicecampoclave smallint not null ,
    primary key (c_version,c_claveinformatica) 
  );

  create table if not exists dim.dd_dmcontanexo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_contenido integer not null ,
    n_contenido smallint not null 
  );

  create table if not exists dim.dd_dmdetdeclargo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    n_dato decimal(18,3) not null 
  );

  create table if not exists dim.m_dmdeclarantes 
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

  create table if not exists dim.d_dmdetimagen 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    d_dato varchar(30) not null 
  );

  create table if not exists dim.d_dmdetalle 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    n_cve_consecutivo integer not null 
  );

  create table if not exists dim.d_dmdetchar 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    d_dato varchar(255) not null 
  );

  create table if not exists dim.d_dmdetallecurp 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    n_cve_curp_3o integer not null ,
    d_curp_3o char(18) not null 
  );

  create table if not exists dim.d_dmdetdecimal
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    n_dato decimal(8,4) not null 
  );

  create table if not exists dim.d_dmdetentcorto 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    n_dato smallint not null 
  );

  create table if not exists dim.d_dmdetentlargo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    n_dato integer not null 
  );

  create table if not exists dim.d_dmdetfecha 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    f_dato date not null 
  );

  create table if not exists dim.d_dmdetimporte 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    i_dato money(14,0) not null 
  );

  create table if not exists dim.d_dmdetobserv 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    d_dato char(350) not null 
  );

  create table if not exists dim.d_dmdetalleper 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    n_cve_mes_inic integer,
    n_mes_inic smallint,
    n_cve_mes_fin integer,
    n_mes_fin smallint
  );

  create table if not exists dim.d_dmdetallerfc 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    n_cve_rfc_3o integer not null ,
    d_rfc_3o char(13) not null 
  );

  create table if not exists dim.dd_dmdatieps 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_iden_padron char(17) not null 
  );

  create table if not exists dim.dd_dmdetimpdec 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    i_dato money(18,4) not null 
  );

  create table if not exists dim.d_dmdetimplargo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_claveinformatica integer not null ,
    i_dato decimal(18,5) not null 
  );

  create table if not exists dim.d_dmperiodo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_periodo smallint not null 
  );

  create table if not exists dim.dd_dmdatnotcomp 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_oper_ant varchar(14,5) not null ,
    f_ant date not null 
  );

  create table if not exists dim.dd_dmdatnotario 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    n_periodicidad smallint not null ,
    n_mes_ini smallint not null ,
    n_mes_fin smallint not null ,
    n_tipo_declar smallint not null 
  );

  create table if not exists dim.d_dmpfisica 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_curp char(18),
    d_apell_pat varchar(43),
    d_apell_mat varchar(43),
    d_nombres varchar(43)
  );

  create table if not exists dim.dd_dmgrldeclargo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    n_dato decimal(18,3) not null 
  );

  create table if not exists dim.d_dmgeneral
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_total_tercer integer,
    n_total_terceros integer
  );

  create table if not exists dim.d_dmgralimagen 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    d_dato varchar(30) not null 
  );

  create table if not exists dim.d_dmgralchar 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    d_dato varchar(120) not null 
  );

  create table if not exists dim.d_dmgraldecimal 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    n_dato decimal(8,4) not null 
  );

  create table if not exists dim.d_dmgralentcorto 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    n_dato smallint not null 
  );

  create table if not exists dim.d_dmgralentlargo 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    n_dato integer not null 
  );

  create table if not exists dim.d_dmgralfecha 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    f_dato date not null 
  );

  create table if not exists dim.d_dmgralimporte 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_claveinformatica integer not null ,
    i_dato money(14,0) not null 
  );

  create table if not exists dim.d_dmgralperiodo
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_mes_inic integer,
    n_mes_inic smallint,
    n_cve_mes_fin integer,
    n_mes_fin smallint
  );

  create table if not exists dim.d_dmhojasimag
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_claveinformatica integer not null ,
    n_numhojas varchar(10) not null 
  );

  create table if not exists dim.d_dmidenimagen 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_claveinformatica integer not null ,
    d_dato char(80) not null 
  );

  create table if not exists dim.dd_dmitercurp 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_cve_curp integer not null ,
    d_curp char(18) not null 
  );

  create table if not exists dim.dd_dmiterrfc 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    c_consecutivo integer not null ,
    c_iteracion integer not null ,
    c_cve_rfc integer not null ,
    d_rfc char(13) not null 
  );

  create table if not exists dim.d_dmreplegal 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_rfc char(13),
    d_curp char(18),
    d_apell_pat varchar(43),
    d_apell_mat varchar(43),
    d_nombres varchar(43)
  );

  create table if not exists dim.d_dmpmoral 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_razon_social varchar(120) not null 
  );

  create table if not exists dim.d_dmnumhojas 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_claveinformatica integer not null ,
    n_numhojas smallint not null 
  );

  create table if not exists dim.d_dmnombre 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    d_nombre varchar(60) not null 
  );

  create table if not exists dim.d_dmdatospapel
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    n_localsede smallint not null ,
    d_refima char(80) not null ,
    n_endorser decimal(28,0) not null ,
    d_cadincon char(10) not null ,
    n_numlote integer not null ,
    n_presentfmt smallint,
    n_numhojasdigit smallint,
    d_foliosdigitdecla char(12)
  );

  create table if not exists dim.d_dmsumarioscomp 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_oper_ant integer,
    d_oper_ant varchar(14,5),
    n_cve_fant integer,
    f_ant date
  );

  create table if not exists dim.d_dmsumarios
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_anexo smallint not null ,
    n_cve_contenido integer not null ,
    n_contenido smallint not null ,
    n_cve_tipo_declar integer not null ,
    n_tipo_declar smallint not null 
  );

  create table if not exists dim.m_dmtablas 
  (
    c_indicetabla smallint not null ,
    d_nombretabla varchar(20) not null ,
    d_descripcion varchar(250) not null ,
    primary key (c_indicetabla) 
  );

-- carga de datos

LOAD FROM 'data/dim/decla.txt' INSERT INTO dim.m_dmdeclarantes;
LOAD FROM 'data/dim/moral.txt' INSERT INTO dim.d_dmpmoral;
LOAD FROM 'data/dim/fisic.txt' INSERT INTO dim.d_dmpfisica;
LOAD FROM 'data/dim/legal.txt' INSERT INTO dim.d_dmreplegal;
LOAD FROM 'data/dim/sumar.txt' INSERT INTO dim.d_dmsumarios;
LOAD FROM 'data/dim/sumac.txt' INSERT INTO dim.d_dmsumarioscomp;
LOAD FROM 'data/dim/gener.txt' INSERT INTO dim.d_dmgeneral;
LOAD FROM 'data/dim/grlpe.txt' INSERT INTO dim.d_dmgralperiodo;
LOAD FROM 'data/dim/grlel.txt' INSERT INTO dim.d_dmgralentlargo;
LOAD FROM 'data/dim/grlec.txt' INSERT INTO dim.d_dmgralentcorto;
LOAD FROM 'data/dim/grlim.txt' INSERT INTO dim.d_dmgralimporte;
LOAD FROM 'data/dim/grlch.txt' INSERT INTO dim.d_dmgralchar;
LOAD FROM 'data/dim/grlde.txt' INSERT INTO dim.d_dmgraldecimal;
LOAD FROM 'data/dim/grlfe.txt' INSERT INTO dim.d_dmgralfecha;
LOAD FROM 'data/dim/detal.txt' INSERT INTO dim.d_dmdetalle;
LOAD FROM 'data/dim/detrf.txt' INSERT INTO dim.d_dmdetallerfc;
LOAD FROM 'data/dim/detcu.txt' INSERT INTO dim.d_dmdetallecurp;
LOAD FROM 'data/dim/detpe.txt' INSERT INTO dim.d_dmdetalleper;
LOAD FROM 'data/dim/detel.txt' INSERT INTO dim.d_dmdetentlargo;
LOAD FROM 'data/dim/detec.txt' INSERT INTO dim.d_dmdetentcorto;
LOAD FROM 'data/dim/detde.txt' INSERT INTO dim.d_dmdetdecimal;
LOAD FROM 'data/dim/detim.txt' INSERT INTO dim.d_dmdetimporte;
LOAD FROM 'data/dim/detch.txt' INSERT INTO dim.d_dmdetchar;
LOAD FROM 'data/dim/detfe.txt' INSERT INTO dim.d_dmdetfecha;
LOAD FROM 'data/dim/detob.txt' INSERT INTO dim.d_dmdetobserv;
LOAD FROM 'data/dim/nombr.txt' INSERT INTO dim.d_dmnombre;
LOAD FROM 'data/dim/papel.txt' INSERT INTO dim.d_dmdatospapel;
LOAD FROM 'data/dim/idimg.txt' INSERT INTO dim.d_dmidenimagen;
LOAD FROM 'data/dim/grimg.txt' INSERT INTO dim.d_dmgralimagen;
LOAD FROM 'data/dim/deimg.txt' INSERT INTO dim.d_dmdetimagen;
LOAD FROM 'data/dim/nhoja.txt' INSERT INTO dim.d_dmnumhojas;
LOAD FROM 'data/dim/hoimg.txt' INSERT INTO dim.d_dmhojasimag;
LOAD FROM 'data/dim/dnota.txt' INSERT INTO dim.dd_dmdatnotario;
LOAD FROM 'data/dim/dncom.txt' INSERT INTO dim.dd_dmdatnotcomp;
LOAD FROM 'data/dim/cnanx.txt' INSERT INTO dim.dd_dmcontanexo;
LOAD FROM 'data/dim/itrfc.txt' INSERT INTO dim.dd_dmiterrfc;
LOAD FROM 'data/dim/itcur.txt' INSERT INTO dim.dd_dmitercurp;
LOAD FROM 'data/dim/dieps.txt' INSERT INTO dim.dd_dmdatieps;
LOAD FROM 'data/dim/dimpd.txt' INSERT INTO dim.dd_dmdetimpdec;
LOAD FROM 'data/dim/gdecl.txt' INSERT INTO dim.dd_dmgrldeclargo;
LOAD FROM 'data/dim/ddecl.txt' INSERT INTO dim.dd_dmdetdeclargo;
LOAD FROM 'data/dim/dmper.txt' INSERT INTO dim.d_dmperiodo;
LOAD FROM 'data/dim/catal.txt' INSERT INTO dim.d_dmcatalogo;
LOAD FROM 'data/dim/tabla.txt' INSERT INTO dim.m_dmtablas;
LOAD FROM 'data/dim/campo.txt' INSERT INTO dim.d_dmcampos;
LOAD FROM 'data/dim/dimpl.txt' INSERT INTO dim.d_dmdetimplargo;

