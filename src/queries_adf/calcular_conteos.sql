create database if not exists informativa;

select "odecla" as nombre_archivo, count(a.c_llave_det) as conteo from diot.m_dotdeclarantes as a where a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "omoral" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotpmoral as b  where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "ofisic" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotpfisica as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "operio" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotperiodo as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "osumar" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotsumarios as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "osumac" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotsumacomp as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "ogener" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotgeneral as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "ogrlim" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotgralimporte as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "odetal" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetalle as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "odetrf" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetallerfc as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "odetex" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetalleext as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "odetec" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetentCorto as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01"
union all
select "odetim" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetimporte as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between "2023-12-30 00:00" and "2023-12-30 00:01";

-- @concat(
--     'select "odecla" as nombre_archivo, count(a.c_llave_det) as conteo from diot.m_dotdeclarantes as a where a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "omoral" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotpmoral as b  where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "ofisic" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotpfisica as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "operio" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotperiodo as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "osumar" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotsumarios as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "osumac" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotsumacomp as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "ogener" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotgeneral as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "ogrlim" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotgralimporte as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "odetal" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetalle as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "odetrf" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetallerfc as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "odetex" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetalleext as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "odetec" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetentCorto as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"',
--     ' union all ',
--     'select "odetim" as nombre_archivo, count(b.c_llave_det) as conteo from diot.m_dotdeclarantes as a, diot.d_dotdetimporte as b where a.c_ent_receptora = b.c_ent_receptora and a.c_llave_det = b.c_llave_det and a.f_registro between ', '"', pipeline().parameters.fechaInicioExtraccion, '"', ' and ', '"', pipeline().parameters.fechaFinExtraccion, '"', ';'
-- )