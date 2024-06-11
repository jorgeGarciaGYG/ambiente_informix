create database if not exists pagos;
-- create schema nepe;

create table if not exists nepe.d_anulatransa
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_claveinformatica integer not null ,
    c_claveanula smallint not null ,
    f_anulacion date not null ,
    c_claveaplicacion smallint not null ,
    d_usuarioanula char(8) not null 
  );
  create table if not exists nepe.cat_fp 
  (
    fpag integer,
    nomb char(51),
    nomb1 char(50),
    ccont char(1),
    cping char(2),
    genero char(1),
    gpo char(1),
    clase char(1),
    cta_esp char(2),
    sub_cta char(2),
    rigido char(3),
    efivir char(1),
    ref0 char(1)
  );
  create table if not exists nepe.dd_cbconsdia
  (
    n_cve_arr smallint,
    n_cve_alr smallint,
    f_recaudacion date,
    n_concepto integer,
    n_forma_pago integer,
    i_importe money(14,0),
    d_origen char(1)
  );
  create table if not exists nepe.dd_cbconsdiat
  (
    n_cve_arr smallint,
    n_cve_alr smallint,
    f_recaudacion date,
    n_concepto integer,
    n_forma_pago integer,
    i_importe money(14,0),
    d_origen char(1)
  );
  create table if not exists nepe.dd_cbconsmen 
  (
    n_cve_arr smallint,
    n_cve_alr smallint,
    f_recaudacion char(6),
    n_concepto integer,
    n_forma_pago integer,
    i_importe money(14,0),
    d_origen char(1)
  );
  create table if not exists nepe.dd_cbconsment
  (
    n_cve_arr smallint,
    n_cve_alr smallint,
    f_recaudacion char(6),
    n_concepto integer,
    n_forma_pago integer,
    i_importe money(14,0),
    d_origen char(1)
  );
  create table if not exists nepe.cat_con 
  (
    concep integer,
    ccont char(1),
    conting char(2),
    fracc char(2),
    inciso char(2),
    subinc char(2),
    ssinc char(2),
    otro char(2),
    nomb char(54),
    nomb1 char(54),
    rubro char(1),
    ing_ley char(1)
  );
  create table if not exists nepe.d_correperiodo
  (
    c_ent_receptora integer,
    c_llave_det integer,
    n_cve_per integer,
    n_periodo smallint,
    n_cve_ejer integer,
    n_ejercicio smallint,
    n_cve_con integer,
    i_importe money(14,0),
    n_correcveperiodo integer,
    n_correperiodo smallint,
    n_correcveejercicio integer,
    n_correejercicio smallint,
    n_correcveconcepto integer,
    n_correconcepto integer
  );
  create table if not exists nepe.d_correrfc
  (
    c_ent_receptora integer,
    c_llave_det integer,
    d_rfc char(13)
  );
  create table if not exists nepe.d_correccion 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    n_tipodecambio smallint,
    n_ent_receptora integer,
    f_presentacion date,
    n_numero_operacion decimal(12,0),
    i_importe_efectivo money(14,0)
  );
  create table if not exists nepe.d_cbcontable
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_cve_alr smallint,
    f_recaudacion date,
    n_medio_recepcion smallint,
    d_rfc char(13),
    n_clave_act char(6),
    n_entidad_fed smallint,
    n_municipio smallint,
    n_tipocontri smallint,
    n_concepto integer,
    n_forma_pago integer,
    i_importe money(14,0),
    n_tipodepago smallint
  );
  create table if not exists nepe.d_pgplazasucur 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    n_plaza smallint,
    n_cve_suc_ban integer
  );
  create table if not exists nepe.d_dedatospapel 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    n_idforma smallint,
    n_localsede smallint,
    d_refima char(80)
  );
  create table if not exists nepe.dd_deanterior 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    f_anterior date,
    d_folioanterior varchar(14)
  );
  create table if not exists nepe.d_deocadenas 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    c_claveinformatica integer,
    d_cadena varchar(250)
  );
  create table if not exists nepe.m_decat_conver 
  (
    c_idforma smallint,
    c_claveinformatica integer,
    n_claveinformativa integer,
    n_renglon integer,
    d_descripcion char(60),
    n_columna integer,
    d_col_matriz char(60),
    n_tipodato smallint,
    primary key (c_idforma,c_claveinformatica) 
  );
  create table if not exists nepe.dd_dedetdecimal 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    c_claveinformatica integer,
    n_dato decimal(8,4)
  );
  create table if not exists nepe.d_derfcdesgloce 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    c_claveinformatica integer,
    d_rfc char(13)
  );
  create table if not exists nepe.d_detalledesgloce 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    c_claveinformatica integer,
    i_retenciondeduccion money(14,0)
  );
  create table if not exists nepe.d_dedevolucion 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    d_banco varchar(50,10),
    d_cuenta varchar(30,10)
  );
  create table if not exists nepe.d_dedomfiscal 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    d_calle varchar(60,10),
    d_numeroexterior varchar(40,10),
    d_numerointerior varchar(10,2),
    d_entrecalle varchar(60,20),
    d_ycalle varchar(60,20),
    d_colonia varchar(60,10),
    d_municipio varchar(60,20),
    n_codigopostal integer,
    d_localidad varchar(60,20),
    d_entidad varchar(60,20),
    d_telefono varchar(10),
    d_correoele varchar(60)
  );
  create table if not exists nepe.d_pgentidadfed 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    n_claveinformatica integer,
    n_claveentidad smallint
  );
  create table if not exists nepe.d_deinformativo 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    c_claveinformatica integer,
    i_importe money(14,0)
  );
  create table if not exists nepe.m_pgmovimiento 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    n_materia smallint not null ,
    n_medio_recepcion smallint not null ,
    f_presentacion date not null ,
    d_hpresentacion datetime hour to minute not null ,
    f_recaudacion date not null ,
    n_numero_operacion decimal(12,0) not null ,
    d_rfc char(13) not null ,
    i_importe_efectivo money(14,0) not null ,
    d_sello_electron varchar(173) not null ,
    f_fecharegistro datetime year to minute not null 
  );
  create table if not exists nepe.dd_nombrepf 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_idpaterno integer,
    d_apellidopaterno varchar(60,10),
    c_idmaterno integer,
    d_apellidomaterno varchar(60,10),
    d_nombres varchar(60,10)
  );
  create table if not exists nepe.cs_nombreunico 
  (
    c_nombreunico serial not null ,
    d_nombre varchar(60,10) not null ,
    primary key (c_nombreunico)  constraint nepe.xpkcs_nombreunico
  );
  create table if not exists nepe.d_deperiodo 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    n_periodo integer,
    n_ejercicio integer,
    n_tipodeclaracion smallint,
    d_numdeclaanual varchar(10)
  );
  create table if not exists nepe.d_pganualdecla 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_clavefecha integer not null ,
    f_declaracion date not null ,
    n_clavenumdecla integer not null ,
    d_numdeclaanual varchar(10) not null 
  );
  create table if not exists nepe.d_pganualptu 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_claveptu integer not null ,
    i_ptu money(14,0) not null 
  );
  create table if not exists nepe.m_pgcat_conver 
  (
    c_idforma smallint,
    c_clave_int integer,
    n_clave_ext integer,
    n_renglon integer,
    d_descripcion char(100),
    n_columna integer,
    d_col_matriz char(45),
    n_tipodato smallint
  );
  create table if not exists nepe.d_pgcompensacion 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    c_consec smallint not null ,
    n_cve_con integer not null ,
    d_valor varchar(50)
  );
  create table if not exists nepe.d_pgdatospapel 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    n_idforma smallint,
    n_localsede smallint,
    d_refima char(80)
  );
  create table if not exists nepe.dd_pgdetchar 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    c_claveinformatica integer not null ,
    d_dato varchar(250)
  );
  create table if not exists nepe.d_pgfcausacion 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_cve_con integer not null ,
    d_valor date not null 
  );
  create table if not exists nepe.d_pginformativop
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_cve_inf integer,
    i_impte_inf money(14,0)
  );
  create table if not exists nepe.d_pgnumcredito
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    n_claveinformatica integer,
    n_numcredito decimal(16,0)
  );
  create table if not exists nepe.d_pgotrosestimulos 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    c_consec smallint not null ,
    n_cve_con integer not null ,
    d_valor varchar(50)
  );
  create table if not exists nepe.d_pgperiodop 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    c_n_periodo smallint not null ,
    n_cve_per integer,
    n_cve_ejer integer,
    n_ejercicio smallint,
    n_cve_tipo integer,
    n_tipodepago smallint
  );
  create table if not exists nepe.d_pgtransaccionp 
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_cve_con integer not null ,
    i_importe money(14,0)
  );
  create table if not exists nepe.d_pgfpagant
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    c_numtrans smallint not null ,
    n_cvef_pagant integer,
    f_pago_anterior date,
    n_cve_imppant integer,
    i_imptepagant money(14,0) not null 
  );
  create table if not exists nepe.d_pgocadenas
  (
    c_ent_receptora integer not null ,
    c_llave_det integer not null ,
    n_cve_cadena integer not null ,
    d_cadena varchar(250)
  );
  create table if not exists nepe.d_dereprelegal
  (
    c_ent_receptora integer,
    c_llave_det integer,
    d_rfc char(13),
    d_nombre varchar(180,20),
    d_apellidopaterno varchar(60),
    d_apellidomaterno varchar(60)
  );

  
LOAD FROM 'data/nepe/pmov.txt' INSERT INTO nepe.m_pgmovimiento;
LOAD FROM 'data/nepe/pper.txt' INSERT INTO nepe.d_pgperiodo;
LOAD FROM 'data/nepe/ptra.txt' INSERT INTO nepe.d_pgtransaccion;
LOAD FROM 'data/nepe/pinf.txt' INSERT INTO nepe.d_pginformativo;
LOAD FROM 'data/nepe/ppag.txt' INSERT INTO nepe.d_pgfpagant;
LOAD FROM 'data/nepe/ppza.txt' INSERT INTO nepe.d_pgplazasucur;
LOAD FROM 'data/nepe/pcad.txt' INSERT INTO nepe.d_pgocadenas;
LOAD FROM 'data/nepe/cbcn.txt' INSERT INTO nepe.d_cbcontable;
LOAD FROM 'data/nepe/corr.txt' INSERT INTO nepe.d_correccion;
LOAD FROM 'data/nepe/cper.txt' INSERT INTO nepe.d_correperiodo;
LOAD FROM 'data/nepe/crfc.txt' INSERT INTO nepe.d_correrfc;
LOAD FROM 'data/nepe/dper.txt' INSERT INTO nepe.d_deperiodo;
LOAD FROM 'data/nepe/dpap.txt' INSERT INTO nepe.d_dedatospapel;
LOAD FROM 'data/nepe/ppap.txt' INSERT INTO nepe.d_pgdatospapel;
LOAD FROM 'data/nepe/ddom.txt' INSERT INTO nepe.d_dedomfiscal;
LOAD FROM 'data/nepe/drep.txt' INSERT INTO nepe.d_dereprelegal;
LOAD FROM 'data/nepe/dinf.txt' INSERT INTO nepe.d_deinformativo;
LOAD FROM 'data/nepe/ddev.txt' INSERT INTO nepe.d_dedevolucion;
LOAD FROM 'data/nepe/drfc.txt' INSERT INTO nepe.d_derfcdesgloce;
LOAD FROM 'data/nepe/dcad.txt' INSERT INTO nepe.d_deocadenas;
LOAD FROM 'data/nepe/pptu.txt' INSERT INTO nepe.d_pganualptu;
LOAD FROM 'data/nepe/pdec.txt' INSERT INTO nepe.d_pganualdecla;
LOAD FROM 'data/nepe/anut.txt' INSERT INTO nepe.d_anulatransa;
LOAD FROM 'data/nepe/pcre.txt' INSERT INTO nepe.d_pgnumcredito;
LOAD FROM 'data/nepe/pfed.txt' INSERT INTO nepe.d_pgentidadfed;
LOAD FROM 'data/nepe/ddsg.txt' INSERT INTO nepe.d_detalledesgloce;
LOAD FROM 'data/nepe/pdch.txt' INSERT INTO nepe.dd_pgdetchar;
LOAD FROM 'data/nepe/cbmt.txt' INSERT INTO nepe.dd_cbconsment_;
LOAD FROM 'data/nepe/cbme.txt' INSERT INTO nepe.dd_cbconsmen_;
LOAD FROM 'data/nepe/cbda.txt' INSERT INTO nepe.dd_cbconsdia_;
LOAD FROM 'data/nepe/cbdt.txt' INSERT INTO nepe.dd_cbconsdiat_;
LOAD FROM 'data/nepe/pcnv.txt' INSERT INTO nepe.m_pgcat_conver;
LOAD FROM 'data/nepe/dcnv.txt' INSERT INTO nepe.m_decat_conver;
LOAD FROM 'data/nepe/ccon.txt' INSERT INTO nepe.cat_con;
LOAD FROM 'data/nepe/cfp_.txt' INSERT INTO nepe.cat_fp;
LOAD FROM 'data/nepe/dnom.txt' INSERT INTO nepe.dd_nombrepf;
LOAD FROM 'data/nepe/cnom.txt' INSERT INTO nepe.cs_nombreunico;
LOAD FROM 'data/nepe/dant.txt' INSERT INTO nepe.dd_deanterior;
LOAD FROM 'data/nepe/ddec.txt' INSERT INTO nepe.dd_dedetdecimal;
LOAD FROM 'data/nepe/pfca.txt' INSERT INTO nepe.d_pgfcausacion;
LOAD FROM 'data/nepe/poes.txt' INSERT INTO nepe.d_pgotrosestimulos;
LOAD FROM 'data/nepe/pcom.txt' INSERT INTO nepe.d_pgcompensacion;
LOAD FROM 'data/nepe/pbca.txt' INSERT INTO nepe.d_pgbonoscarbono;