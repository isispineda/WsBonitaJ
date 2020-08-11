USE BONITA_BPM
go
IF OBJECT_ID('dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention
    IF OBJECT_ID('dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_TIPODOCUMENTODGA_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_TIPODOCUMENTODGA_Audit_retention
    IF OBJECT_ID('dbo.sp_TIPODOCUMENTODGA_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_TIPODOCUMENTODGA_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_TIPODOCUMENTODGA_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_TIPODOCDGA_Auditt_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_TIPODOCDGA_Auditt_retention
    IF OBJECT_ID('dbo.sp_TIPODOCDGA_Auditt_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_TIPODOCDGA_Auditt_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_TIPODOCDGA_Auditt_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention
    IF OBJECT_ID('dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_RESTSCGOUTPUT_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_RESTSCGOUTPUT_Audit_retention
    IF OBJECT_ID('dbo.sp_RESTSCGOUTPUT_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_RESTSCGOUTPUT_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_RESTSCGOUTPUT_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention
    IF OBJECT_ID('dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_RESTDUCASCONSULTAR_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_RESTDUCASCONSULTAR_Audit_retention
    IF OBJECT_ID('dbo.sp_RESTDUCASCONSULTAR_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_RESTDUCASCONSULTAR_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_RESTDUCASCONSULTAR_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_RESTDUCAOUPUTLIST_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_RESTDUCAOUPUTLIST_Audit_retention
    IF OBJECT_ID('dbo.sp_RESTDUCAOUPUTLIST_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_RESTDUCAOUPUTLIST_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_RESTDUCAOUPUTLIST_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_RESTDGME_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_RESTDGME_Audit_retention
    IF OBJECT_ID('dbo.sp_RESTDGME_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_RESTDGME_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_RESTDGME_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_PUNTOCONTROL_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_PUNTOCONTROL_Audit_retention
    IF OBJECT_ID('dbo.sp_PUNTOCONTROL_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_PUNTOCONTROL_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_PUNTOCONTROL_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_PROCESO_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_PROCESO_Audit_retention
    IF OBJECT_ID('dbo.sp_PROCESO_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_PROCESO_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_PROCESO_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_PAIS_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_PAIS_Audit_retention
    IF OBJECT_ID('dbo.sp_PAIS_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_PAIS_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_PAIS_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_MENSAJE_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_MENSAJE_Audit_retention
    IF OBJECT_ID('dbo.sp_MENSAJE_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_MENSAJE_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_MENSAJE_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_LECTURAPUNTO_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_LECTURAPUNTO_Audit_retention
    IF OBJECT_ID('dbo.sp_LECTURAPUNTO_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_LECTURAPUNTO_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_LECTURAPUNTO_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_INSTITUCION_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_INSTITUCION_Audit_retention
    IF OBJECT_ID('dbo.sp_INSTITUCION_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_INSTITUCION_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_INSTITUCION_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_FRONTERA_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_FRONTERA_Audit_retention
    IF OBJECT_ID('dbo.sp_FRONTERA_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_FRONTERA_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_FRONTERA_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_FLUJO_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_FLUJO_Audit_retention
    IF OBJECT_ID('dbo.sp_FLUJO_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_FLUJO_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_FLUJO_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_DGADATOS_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_DGADATOS_Audit_retention
    IF OBJECT_ID('dbo.sp_DGADATOS_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_DGADATOS_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_DGADATOS_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_ALERTA_Audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_ALERTA_Audit_retention
    IF OBJECT_ID('dbo.sp_ALERTA_Audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_ALERTA_Audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_ALERTA_Audit_retention >>>'
END
go
IF OBJECT_ID('dbo.sp_ACCION_audit_retention') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_ACCION_audit_retention
    IF OBJECT_ID('dbo.sp_ACCION_audit_retention') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.sp_ACCION_audit_retention >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.sp_ACCION_audit_retention >>>'
END
go
IF OBJECT_ID('dbo.audit') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.audit
    IF OBJECT_ID('dbo.audit') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.audit >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.audit >>>'
END
go
IF OBJECT_ID('dbo.audit_details') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.audit_details
    IF OBJECT_ID('dbo.audit_details') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.audit_details >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.audit_details >>>'
END
go
IF OBJECT_ID('dbo.dash002') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.dash002
    IF OBJECT_ID('dbo.dash002') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.dash002 >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.dash002 >>>'
END
go
IF OBJECT_ID('dbo.dash001') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.dash001
    IF OBJECT_ID('dbo.dash001') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.dash001 >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.dash001 >>>'
END
go
IF OBJECT_ID('dbo.coex001') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.coex001
    IF OBJECT_ID('dbo.coex001') IS NOT NULL
        PRINT '<<< FAILED DROPPING PROCEDURE dbo.coex001 >>>'
    ELSE
        PRINT '<<< DROPPED PROCEDURE dbo.coex001 >>>'
END
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
create procedure [dbo].[coex001]
        @vplaca varchar(50) = '',
		@vnmoto varchar(50) = ''
as





		-- Eliminar espacios en blanco
		select @vplaca = rtrim(ltrim(@vplaca))
		select @vnmoto = rtrim(ltrim (@vnmoto))


		if @vplaca <> ''
		    begin
		        Select * from FLUJO Where PLACA = @vplaca   Order by FECHA_INICIO  DESC
		    end
		else
		    begin
			    if @vnmoto <> ''
			        begin
			            Select * from FLUJO Where NO_DOC_MOTORISTA = @vnmoto  Order by FECHA_INICIO  DESC
			        end
				else
				    begin 
				        select 'No existe informacion disponible de acuerdo a criterios seleccionados'
				    end 
			end


-- exec [dbo].[coe001]
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.coex001') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.coex001 >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.coex001 >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE procedure [dbo].[dash001]
@desde datetime,
@hasta datetime

as


declare 
        @f1 float,
        @f2 float,
		@f3 float,
	    @f4 float,
		@f5 float,
		@f6 float,
		@f7 float,
		@f8 float,
        @pf1 float,
        @pf2 float,
		@pf3 float,
	    @pf4 float,
		@pf5 float,
		@pf6 float,
		@pf7 float,
		@pf8 float,
		@tt1 float,
		@tt2 float,
		@tt3 float,
		@tt4 float,
		@tt5 float,
		@tt6 float,
		@tt7 float,
		@tt8 float,
		@c float,
		@p float,
		@tt float,
		@tp float,
		@tmin float,
		@tmax float,
		@tpmin1 float,
		@tpmin2 float,
		@tpmin3 float,
		@tpmin4 float,
		@tpmin5 float,
		@tpmin6 float,
		@tpmin7 float,
		@tpmin8 float,
		@tpmax1 float,
		@tpmax2 float,
		@tpmax3 float,
		@tpmax4 float,
		@tpmax5 float,
		@tpmax6 float,
		@tpmax7 float,
		@tpmax8 float,
		@tp1 float,
		@tp2 float,
		@tp3 float,
		@tp4 float,
		@tp5 float,
		@tp6 float,
		@tp7 float,
		@tp8 float



Select @f1 = count(*) from FLUJO Where FLUJO.CODIGO_PROCESO = '1'  and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E' and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f2 = count(*) from FLUJO Where FLUJO.CODIGO_PROCESO = '2' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f3 = count(*) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E02' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f4 = count(*) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E01' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f5 = count(*) from FLUJO Where FLUJO.PC_INGRESO = 'E01' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f6 = count(*) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f7 = count(*) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @f8 = count(*) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta

select @c = @f1 + @f2 + @f3 + @f4 + @f5 + @f6 + @f7 + @f8

Select @tt1 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where FLUJO.CODIGO_PROCESO = '1'  and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt2 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where FLUJO.CODIGO_PROCESO = '2' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt3 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E02' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt4 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E01' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt5 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt6 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt7 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tt8 = isnull(sum(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN)),0) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta

select @tt = @tt1 + @tt2 + @tt3 + @tt4 + @tt5 + @tt6 + @tt7 + @tt8


Select @tpmin1 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '1'  and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin2 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '2' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin3 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E02' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin4 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E01' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin5 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin6 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin7 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmin8 = min(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta

Select @tpmax1 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '1'  and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax2 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '2' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax3 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E02' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax4 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where FLUJO.CODIGO_PROCESO = '3' and FLUJO.PC_INGRESO = 'E01' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax5 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax6 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'R'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax7 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E02' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta
Select @tpmax8 = max(isnull(datediff(mi, FLUJO.FECHA_INICIO, FLUJO.FECHA_FIN),0)) from FLUJO Where  FLUJO.PC_INGRESO = 'E01' and  FLUJO.VACIO = 'S' and FLUJO.ESTADO_FLUJO = 'F' and FLUJO.TIPO_FINALIZACION = 'E'  and FLUJO.FECHA_INICIO between @desde and @hasta

if @c <> 0
    begin
        select @pf1 = @f1 / @c
        select @pf2 = @f2 / @c
        select @pf3 = @f3 / @c
        select @pf4 = @f4 / @c
        select @pf5 = @f5 / @c
        select @pf6 = @f6 / @c
        select @pf7 = @f7 / @c
        select @pf8 = @f8 / @c
    end
else
    begin
        select @pf1 = 0
        select @pf2 = 0
        select @pf3 = 0
        select @pf4 = 0
        select @pf5 = 0
        select @pf6 = 0
        select @pf7 = 0
        select @pf8 = 0
    end




select @p = @pf1 + @pf2 + @pf3 + @pf4 + @pf5 + @pf6 + @pf7 + @pf8

if @f1 <> 0
    select @tp1 = @tt1 / @f1
else
    select @tp1 = 0

if @f2 <> 0
    select @tp2 = @tt2 / @f2
else
    select @tp2 = 0

if @f3 <> 0
    select @tp3 = @tt3 / @f3
else
    select @tp3 = 0

if @f4 <> 0
    select @tp4 = @tt4 / @f4
else
    select @tp4 = 0

if @f5 <> 0
     select @tp5 = @tt5 / @f5
else
     select @tp5 = 0

if @f6 <> 0
    select @tp6 = @tt6 / @f6
else
    select @tp6 = 0

if @f7 <> 0
    select @tp7 = @tt7 / @f7
else
    select @tp7 = 0

if @f8 <> 0 
    select @tp8 = @tt8 / @f8
else 
    select @tp8 = 0 


if @c <> 0
     select @tp = @tt / @c
else
     select @tp = 0



create table #temp
(
linea int,
proceso varchar(50),
cantidad float,
pct float,
ttotal float,
tpunitario float,
tmin float,
tmax float
)


insert #temp values ( 1, 'IMPORTACIONES    ', @f1,  @pf1, @tt1, @tp1, isnull(@tpmin1,0), isnull(@tpmax1,0) ) 
insert #temp values ( 2,'EXPORTACIONES    ', @f2,  @pf2, @tt2, @tp2, isnull(@tpmin2,0), isnull(@tpmax2,0) ) 
insert #temp values ( 3, 'TRANSITO HACIA ES', @f3,  @pf3, @tt3, @tp3, isnull(@tpmin3,0), isnull(@tpmax3,0) ) 
insert #temp values ( 4,'TRANSITO HACIA GT', @f4,  @pf4, @tt4, @tp4, isnull(@tpmin4,0), isnull(@tpmax4,0) ) 
insert #temp values ( 5,'RETORNOS HACIA ES', @f5,  @pf5, @tt5, @tp5, isnull(@tpmin5,0), isnull(@tpmax5,0) ) 
insert #temp values ( 6,'RETORNOS HACIA GT', @f6,  @pf6, @tt6, @tp6, isnull(@tpmin6,0), isnull(@tpmax6,0) ) 
insert #temp values ( 7,'VACIOS HACIA ES  ', @f7,  @pf7, @tt7, @tp7, isnull(@tpmin7,0), isnull(@tpmax7,0) ) 
insert #temp values ( 8,'VACIOS HACIA GT  ', @f8,  @pf8, @tt8, @tp8, isnull(@tpmin8,0), isnull(@tpmax8,0) ) 

select @tmin = isnull(min(tmin),0) from #temp
select @tmax = isnull(max(tmax),0) from #temp


 -- insert #temp values ( 9, 'TOTALES          ', @c,  @p, @tt, @tp, @tmin, @tmax ) 


select   proceso,  cantidad, pct, ttotal, tpunitario , tmin, tmax  from #temp order by linea



-- exec [dbo].[dash001]
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.dash001') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.dash001 >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.dash001 >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
create procedure [dbo].[dash002]
as


declare 
        @mt_E1 float,
		@mt_E2 float,
		@mt_PF float,
		@mt_LS float,
		@X1 float,
		@X2 float,
		@PL1 varchar(50),
		@PL2 varchar(50),
		@mt_escaner float,
		@mt_escaner_espera float,
		@tmt_escaner float,
		@mt_inspeccion float,
		@mt_inspeccion_espera float,
		@tmt_inspeccion float,
		@mt_parqueo float,
		@mt_parqueo_espera float,
		@tmt_parqueo float,
		@mt_cuarentena float,
		@mt_cuarentena_espera float,
		@tmt_cuarentena float,
		@mt_pesaje float,
		@mt_pesaje_espera float,
		@tmt_pesaje float,
		@tmt_area float,
		@tmt_area_espera float,
		@tmt_NLS float,
		@capacidad_actual float



		 If (Select  OCUPADO from PUNTOCONTROL Where CODIGO_PC= 'E01' and ESTADO_REGISTRO = 'A') = 'S' 
		     select @mt_E1 = 1 
		 else 
			 select @mt_E1 = 0

		 If (Select OCUPADO from PUNTOCONTROL where CODIGO_PC= 'E02' and ESTADO_REGISTRO = 'A') = 'S' 
		     select @mt_E2 = 1 
		 else 
			 select @mt_E2 = 0

		
		Select @mt_PF = count(*) from FLUJO Where ESTADO_FLUJO = 'I'  and FECHA_ENTRADA_LISTA is not null  

		Select @mt_LS = count(*) from FLUJO Where ESTADO_FLUJO = 'I'  and SALIDA_LISTA = 'S' 



		-- select @capacidad_actual = CAPACIDAD_MT From FRONTERA Where FRONTERA.CODIGO_FRONTERA = '01' and FRONTERA.ESTADOO_REGISTRO = 'A'
		select @capacidad_actual = 0

		Select @X1 =MAX(datediff(mi, FECHA_INICIO, getdate())) from FLUJO Where ESTADO_FLUJO = 'I' and SALIDA_LISTA = 'N'

		select @PL1 = PLACA FROM FLUJO WHERE ESTADO_FLUJO = 'I' and SALIDA_LISTA = 'N' and  @X1 = datediff(mi, FECHA_INICIO, getdate())

		Select @X2 =MAX(datediff(mi, FECHA_SALIDA_LISTA, getdate())) from FLUJO Where ESTADO_FLUJO = 'I' and SALIDA_LISTA = 'S'

		Select @PL2 = PLACA from FLUJO Where ESTADO_FLUJO = 'I' and SALIDA_LISTA = 'S'


		Select @mt_escaner = count(*) From ACCION Where CODIGO_AREA = '01' and ESTADO_ACCION = 'I'

		Select @mt_escaner_espera = count(*) From ACCION Where CODIGO_AREA = '01' and ESTADO_ACCION = 'N'
		 
		 SELECT @tmt_escaner = @mt_escaner + @mt_escaner_espera


		 Select @mt_inspeccion = count(*) From ACCION Where CODIGO_AREA = '02' and ESTADO_ACCION = 'I'

		 Select @mt_inspeccion_espera =  count(*) From ACCION Where CODIGO_AREA = '02' and ESTADO_ACCION = 'N'

		 select @tmt_inspeccion = @mt_inspeccion + @mt_inspeccion_espera

		 Select @mt_parqueo = count(*) From ACCION Where CODIGO_AREA = '03' and ESTADO_ACCION = 'I'

		 Select @mt_parqueo_espera = count(*) From ACCION Where CODIGO_AREA = '03' and ESTADO_ACCION = 'N'

		 select @tmt_parqueo = @mt_parqueo + @mt_parqueo_espera



		 Select @mt_cuarentena  = count(*) From ACCION Where CODIGO_AREA = '04' and ESTADO_ACCION = 'I'

		 Select @mt_cuarentena_espera = count(*) From ACCION Where CODIGO_AREA = '04' and ESTADO_ACCION = 'N'

		 select @tmt_cuarentena = @mt_cuarentena + @mt_cuarentena_espera





		 select @mt_pesaje = count(*) From ACCION Where CODIGO_AREA = '05' and ESTADO_ACCION = 'I'

		 select @mt_pesaje_espera =  count(*) From ACCION Where CODIGO_AREA = '05' and ESTADO_ACCION = 'N'

		 select @tmt_pesaje = @mt_pesaje + @mt_pesaje_espera



		 select @tmt_area = @mt_escaner + @mt_inspeccion + @mt_parqueo + @mt_cuarentena + @mt_pesaje
 
         select @tmt_area_espera = @mt_escaner_espera + @mt_inspeccion_espera + @mt_parqueo_espera + @mt_cuarentena_espera + @mt_pesaje_espera

		 select @tmt_NLS = @tmt_escaner + @tmt_inspeccion + @tmt_parqueo + @tmt_cuarentena + @tmt_pesaje




		 select @mt_E1 as mt_E1, @mt_E2 as mt_E2, @mt_PF as mt_PF, @mt_LS as mt_LS, @capacidad_actual as capacidad_actual, 
		        isnull(@X1,0) as X1, isnull(@X2,0) as X2, isnull(@PL1, 'NA') as PL1, isnull(@PL2, 'NA') as PL2, 
				@mt_escaner as mt_escaner, @mt_escaner_espera as mt_escaner_espera, @tmt_escaner as tmt_escaner,
				@mt_inspeccion as mt_inspeccion, @mt_inspeccion_espera as mt_inspeccion_espera, @tmt_inspeccion as tmt_inspeccion,
				@mt_parqueo as mt_parqueo, @mt_parqueo_espera as mt_parqueo_espera, @tmt_parqueo as tmt_parqueo,
				@mt_cuarentena as mt_cuarentena, @mt_cuarentena_espera as mt_cuarentena_espera, @tmt_cuarentena as tmt_cuarentena, 
				@mt_pesaje as mt_pesaje, @mt_pesaje_espera as mt_pesaje_espera, @tmt_pesaje as tmt_pesaje,
				@tmt_area as tmt_area, @tmt_area_espera as tmt_area_espera, @tmt_NLS as tmt_NLS




-- exec [dbo].[dash002]
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.dash002') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.dash002 >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.dash002 >>>'
go
SET ANSI_NULLS ON
go
create procedure [dbo].[audit_details]
@tablename varchar(90) = '',
@desde varchar(50)

as



select @tablename = ltrim(rtrim(@tablename))

-- print "convert(varchar(30),'" + @desde + "', 120) "

exec("SELECT *
  FROM [BONITA_BPM].[dbo].[" + @tablename + "_Audit] 
  where AuditDateTime between dateadd(ms, -1000, '" + @desde + "') and dateadd(ms, 1000, '" + @desde + "')"    )


-- exec [dbo].[audit_details] 'ACCION', '20200801 06:03:25'
go
SET ANSI_NULLS OFF
go
IF OBJECT_ID('dbo.audit_details') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.audit_details >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.audit_details >>>'
go
SET ANSI_NULLS ON
go
create procedure [dbo].[audit]
@tablename varchar(90) = '',
@desde varchar(50),
@hasta varchar(50)

as

if @tablename = '' 
return 


select @tablename = ltrim(rtrim(@tablename))


exec("SELECT [AuditDataState]
      ,[AuditDMLAction]
      ,[AuditUser]
      ,[AuditDateTime]
      ,[UpdateColumns]
  FROM [BONITA_BPM].[dbo].[" + @tablename + "_Audit] 
  where AuditDateTime between '" + @desde + "'  and  '"  + @hasta +  "'" )


-- exec [dbo].[audit] 'ACCION', '20200701' , '20200831'
go
SET ANSI_NULLS OFF
go
IF OBJECT_ID('dbo.audit') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.audit >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.audit >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_ACCION_audit_retention
as

delete  FROM [BONITA_BPM].[dbo].[ACCION_Audit]
where  AuditDateTime < dateadd(yy, -1 , getdate())



return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_ACCION_audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_ACCION_audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_ACCION_audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_ALERTA_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].ALERTA_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_ALERTA_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_ALERTA_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_ALERTA_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_DGADATOS_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].DGADATOS_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_DGADATOS_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_DGADATOS_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_DGADATOS_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_FLUJO_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].FLUJO_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_FLUJO_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_FLUJO_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_FLUJO_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_FRONTERA_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].FRONTERA_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_FRONTERA_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_FRONTERA_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_FRONTERA_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_INSTITUCION_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].INSTITUCION_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_INSTITUCION_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_INSTITUCION_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_INSTITUCION_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_LECTURAPUNTO_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].LECTURAPUNTO_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_LECTURAPUNTO_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_LECTURAPUNTO_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_LECTURAPUNTO_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_MENSAJE_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].MENSAJE_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_MENSAJE_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_MENSAJE_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_MENSAJE_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_PAIS_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].PAIS_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_PAIS_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_PAIS_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_PAIS_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_PROCESO_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].PROCESO_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_PROCESO_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_PROCESO_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_PROCESO_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_PUNTOCONTROL_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].PUNTOCONTROL_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_PUNTOCONTROL_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_PUNTOCONTROL_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_PUNTOCONTROL_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_RESTDGME_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].RESTDGME_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_RESTDGME_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_RESTDGME_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_RESTDGME_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_RESTDUCAOUPUTLIST_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].RESTDUCAOUPUTLIST_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_RESTDUCAOUPUTLIST_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_RESTDUCAOUPUTLIST_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_RESTDUCAOUPUTLIST_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_RESTDUCASCONSULTAR_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].RESTDUCASCONSULTAR_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_RESTDUCASCONSULTAR_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_RESTDUCASCONSULTAR_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_RESTDUCASCONSULTAR_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_RESTPROCESSEDDUCALIST_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].RESTPROCESSEDDUCALIST_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_RESTPROCESSEDDUCALIST_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_RESTSCGOUTPUT_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].RESTSCGOUTPUT_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_RESTSCGOUTPUT_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_RESTSCGOUTPUT_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_RESTSCGOUTPUT_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_RESTTRANSPORTMEDIAINFO_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].RESTTRANSPORTMEDIAINFO_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_RESTTRANSPORTMEDIAINFO_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_TIPODOCDGA_Auditt_retention
as

delete  FROM [BONITA_BPM].[dbo].TIPODOCDGA_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_TIPODOCDGA_Auditt_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_TIPODOCDGA_Auditt_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_TIPODOCDGA_Auditt_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_TIPODOCUMENTODGA_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].TIPODOCUMENTODGA_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_TIPODOCUMENTODGA_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_TIPODOCUMENTODGA_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_TIPODOCUMENTODGA_Audit_retention >>>'
go
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE sp_TIPOMEDIOTRANSPORTE_Audit_retention
as

delete  FROM [BONITA_BPM].[dbo].TIPOMEDIOTRANSPORTE_Audit
where  AuditDateTime < dateadd(yy, -1 , getdate())

return
go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID('dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE dbo.sp_TIPOMEDIOTRANSPORTE_Audit_retention >>>'
go
