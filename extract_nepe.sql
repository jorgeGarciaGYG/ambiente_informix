create database if not exists pagos;

select
    c_ent_receptora,
    c_llave_det,
    n_materia,
    n_medio_recepcion,
    f_presentacion,
    d_hpresentacion,
    f_recaudacion,
    n_numero_operacion,
    ltrim (d_rfc) as d_rfc,
    i_importe_efectivo,
    d_sello_electron,
    f_fecharegistro
from
    nepe.m_pgmovimiento
limit
    10;