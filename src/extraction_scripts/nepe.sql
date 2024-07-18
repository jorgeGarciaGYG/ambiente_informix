-- extraction query for pgmovimiento
select c_ent_receptora,
    c_llave_det,
    n_materia,
    n_medio_recepcion,
    f_presentacion,
    d_hpresentacion,
    f_recaudacion,
    n_numero_operacion,
    ltrim(d_rfc) as d_rfc,
    i_importe_efectivo,
    d_sello_electron,
    f_fecharegistro
from nepe.m_pgmovimiento;


  create table if not exists nepe.d_dereprelegal
  (
    c_ent_receptora integer,
    c_llave_det integer,
    d_rfc char(13),
    d_nombre varchar(180,20),
    d_apellidopaterno varchar(60),
    d_apellidomaterno varchar(60)
  );

    create table if not exists nepe.d_correrfc
  (
    c_ent_receptora integer,
    c_llave_det integer,
    d_rfc char(13)
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

    create table if not exists nepe.d_derfcdesgloce 
  (
    c_ent_receptora integer,
    c_llave_det integer,
    c_numtrans smallint,
    c_claveinformatica integer,
    d_rfc char(13)
  );