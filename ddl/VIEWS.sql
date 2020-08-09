USE BONITA_BPM
go
IF OBJECT_ID('dbo.vFLUJO') IS NOT NULL
BEGIN
    DROP VIEW dbo.vFLUJO
    IF OBJECT_ID('dbo.vFLUJO') IS NOT NULL
        PRINT '<<< FAILED DROPPING VIEW dbo.vFLUJO >>>'
    ELSE
        PRINT '<<< DROPPED VIEW dbo.vFLUJO >>>'
END
go
create view [dbo].[vFLUJO]

AS


SELECT f.*,
    case 
	   when f.ESTADO_FLUJO = 'I' then 'INICIADO' 
	   when f.ESTADO_FLUJO = 'F' then 'FINALIZADO'
	   else 'NO DETERMINADO'
	END AS FLUJO_ESTADO,
	a.ID_ACCION,
	a.INICIO_FECHA,
	a.ORIGEN_ACCION,
	a.CODIGO_AREA,
	a.CODIGO_INSTITUCION,
	a.FECHA_ADICION AS  ACCION_FECHA_ADICION,
	a.FIN_FECHA AS ACCION_FECHA_FIN,
    b.NOMBRE_FRONTERA,
	m.NOMBRE_TIPO_MT,
    case 
	   when f.PC_INGRESO = 'E01' then 'ENTRADA DESDE ES' 
	   when f.PC_INGRESO = 'E02' then 'ENTRADA DESDE GT'
	   else 'NO DETERMINADO'
	END AS PC_INGRESO_NOMBRE,
	r.NOMBRE_AREA,
	i.NOMBRE_INSTITUCION,
	case
	when f.CODIGO_PROCESO = '1'   then 'IMPORTACIONES'
	when f.CODIGO_PROCESO = '2'   then 'EXPORTACIONES'
	when f.CODIGO_PROCESO = '3' and f.PC_INGRESO = 'E02' then 'TRANSITOS HACIA ES'
	when f.CODIGO_PROCESO = '3' and f.PC_INGRESO = 'E01' then 'TRANSITOS HACIA GT'
	when f.PC_INGRESO = 'E01' then 'RETORNOS HACIA ES'
	when f.PC_INGRESO = 'E02' then 'RETORNOS HACIA GT'
	when f.PC_INGRESO = 'E02' and  f.VACIO = 'S' then 'VACIOS HACIA ES'
	when f.PC_INGRESO = 'E01' and  f.VACIO = 'S' then 'VACIOS HACIA GT'
	else 'NO DETERMINADO'
	END AS PROCESO,
	CASE 
	when f.TIPO_FINALIZACION = 'P' THEN 'PEDIENTE DE FINALIZAR'
	when f.TIPO_FINALIZACION = 'E' THEN 'FINALIZADO'
	when f.TIPO_FINALIZACION = 'R' THEN 'RETORNADO'
	when f.TIPO_FINALIZACION = 'C' THEN 'CANCELADO'
	else 'NO DETERMINADO'
	END AS TIPO_FINALIZACION_DESC,	   
	case
	when f.ESTADO_FLUJO = 'I' then 'INICIADO'
    when f.ESTADO_FLUJO = 'F' then 'FINALIZADO'
	else 'NO DETERMINADO'
	END AS ESTADO_FLUJO_DESC,	   

	datepart(yy, f.FECHA_INICIO) as FECHA_INICIO_ANIO,
	datepart(MM, f.FECHA_INICIO) as FECHA_INICIO_MES_N,
	case 
	WHEN datepart(MM, f.FECHA_INICIO) = 1 then '01 - ENERO'
	WHEN datepart(MM, f.FECHA_INICIO) = 2 then '02 - FEBRERO'
	WHEN datepart(MM, f.FECHA_INICIO) = 3 then '03 - MARZO'
	WHEN datepart(MM, f.FECHA_INICIO) = 4 then '04 - ABRIL'
	WHEN datepart(MM, f.FECHA_INICIO) = 5 then '05 - MAYO'
	WHEN datepart(MM, f.FECHA_INICIO) = 6 then '06 - JUNIO'
	WHEN datepart(MM, f.FECHA_INICIO) = 7 then '07 - JULIO'
	WHEN datepart(MM, f.FECHA_INICIO) = 8 then '08 - AGOSTO'
	WHEN datepart(MM, f.FECHA_INICIO) = 9 then '09 - SEPTIEMBRE'
	WHEN datepart(MM, f.FECHA_INICIO) = 10 then '10 - OCTUBRE'
	WHEN datepart(MM, f.FECHA_INICIO) = 11 then '11 - NOVIEMBRE'
	WHEN datepart(MM, f.FECHA_INICIO) = 12 then '12 - DICIEMBRE'
	END as FECHA_INICIO_MES,
    right('00' + cast(datepart(dd, f.FECHA_INICIO) as VARCHAR(2)),2) as FECHA_INICIO_DIA,
    right('00' + cast(datepart(HH, f.FECHA_INICIO) as VARCHAR(2)),2) as FECHA_INICIO_HORA,
	datepart(yy, f.FECHA_FIN) as FECHA_FIN_ANIO,
	datepart(MM, f.FECHA_FIN) as FECHA_FIN_MES_N,
	case 
	WHEN datepart(MM, f.FECHA_FIN) = 1 then '01 - ENERO'
	WHEN datepart(MM, f.FECHA_FIN) = 2 then '02 - FEBRERO'
	WHEN datepart(MM, f.FECHA_FIN) = 3 then '03 - MARZO'
	WHEN datepart(MM, f.FECHA_FIN) = 4 then '04 - ABRIL'
	WHEN datepart(MM, f.FECHA_FIN) = 5 then '05 - MAYO'
	WHEN datepart(MM, f.FECHA_FIN) = 6 then '06 - JUNIO'
	WHEN datepart(MM, f.FECHA_FIN) = 7 then '07 - JULIO'
	WHEN datepart(MM, f.FECHA_FIN) = 8 then '08 - AGOSTO'
	WHEN datepart(MM, f.FECHA_FIN) = 9 then '09 - SEPTIEMBRE'
	WHEN datepart(MM, f.FECHA_FIN) = 10 then '10 - OCTUBRE'
	WHEN datepart(MM, f.FECHA_FIN) = 11 then '11 - NOVIEMBRE'
	WHEN datepart(MM, f.FECHA_FIN) = 12 then '12 - DICIEMBRE'
	END as FECHA_FIN_MES,
    right('00' + cast(datepart(dd, f.FECHA_FIN) as VARCHAR(2)),2) as FECHA_FIN_DIA,
    right('00' + cast(datepart(HH, f.FECHA_FIN) as VARCHAR(2)),2) as FECHA_FIN_HORA,

	CASE 
	when f.FECHA_FIN IS NULL then datediff(mi,  f.FECHA_INICIO, getdate()) 
	when f.FECHA_FIN IS not NULL then datediff(mi,  f.FECHA_INICIO, f.FECHA_FIN) 
	end as DURACION
	
FROM  dbo.FLUJO  f
full join dbo.ACCION a on a.persistenceId = f.persistenceId
left join dbo.AREA r on r.CODIGO_AREA = a.CODIGO_AREA
left join dbo.INSTITUCION i on a.CODIGO_INSTITUCION = i.CODIGO_INSTITUCION
left join dbo.FRONTERA b  on b.CODIGO_FRONTERA = f.CODIGO_FRONTERA
left join dbo.TIPOMEDIOTRANSPORTE m on m.CODIGO_TIPO_MT = f.CODIGO_TIPO_MT
go
IF OBJECT_ID('dbo.vFLUJO') IS NOT NULL
    PRINT '<<< CREATED VIEW dbo.vFLUJO >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW dbo.vFLUJO >>>'
go
