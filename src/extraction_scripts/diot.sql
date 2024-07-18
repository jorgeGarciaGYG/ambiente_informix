create database if not exists informativa;

-- select c_ent_receptora, c_llave_det, n_materia, n_medio_recepcion, f_presentacion, d_hpresentacion, n_numero_operacion, ltrim(d_rfc) as d_rfc, n_ejercicio, d_sello_electron, n_serie, d_num_oper_sat, n_version, d_idregimen, d_anexos, f_registro
-- from diot.m_dotdeclarantes
-- where f_registro between '2023-12-30 00:00' and '2023-12-30 00:00'
-- limit 10;

-- @concat('select c_ent_receptora, c_llave_det, n_materia, n_medio_recepcion, f_presentacion, d_hpresentacion, n_numero_operacion, ltrim(d_rfc) as d_rfc, n_ejercicio, d_sello_electron, n_serie, d_num_oper_sat, n_version, d_idregimen, d_anexos, f_registro from ', pipeline().parameters.tableName, ' where f_registro between ', pipeline().parameters.fechaInicio, 'and', pipeline().parameters.fechaFin, ';')
-- @concat('select c_ent_receptora, c_llave_det, n_materia, n_medio_recepcion, f_presentacion, d_hpresentacion, n_numero_operacion, ltrim(d_rfc) as d_rfc, n_ejercicio, d_sello_electron, n_serie, d_num_oper_sat, n_version, d_idregimen, d_anexos, f_registro from ', pipeline().parameters.tableName, ';')

-- odetal
SELECT b.* FROM m_dotdeclarantes a, d_dotDetalle b WHERE a.f_registro BETWEEN '2023-12-31 00:00' AND '2023-12-31 00:20' AND a.c_ent_receptora = b.c_ent_receptora AND a.c_llave_det = b.c_llave_det;
