USE BONITA_BPM
go
CREATE TABLE dbo.ACCION
(
    persistenceId          bigint        IDENTITY,
    ACCION_OBSERVACION     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CORREO_ALERTA          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ENVIAR_ALERTA          nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_ACCION          nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION          nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION     nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FIN_FECHA              nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ACCION              int           NULL,
    INICIO_FECHA           nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ORIGEN_ACCION          nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO          int           NULL,
    TIEMPO_MINIMO          int           NULL,
    USUARIO_ADICION        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_FIN            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_INICIO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_RESPONSABLE    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion     bigint        NULL,
    CODIGO_AREA_PID        bigint        NULL,
    CODIGO_INSTITUCION_PID bigint        NULL,
    ID_FLUJO_PID           bigint        NULL,
    CODIGO_AREA            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_INSTITUCION     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_PROMEDIO        int           NULL,
    CONSTRAINT PK__ACCION__92E8260140AAA286
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.ACCION') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ACCION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ACCION >>>'
go
CREATE TABLE dbo.ALERTA
(
    persistenceId      bigint        IDENTITY,
    CORREO_ALERTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_ALERTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ALERTA       nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ACCION          int           NULL,
    ID_ALERTA          int           NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__ALERTA__92E826010F464008
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.ALERTA') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ALERTA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ALERTA >>>'
go
CREATE TABLE dbo.AREA
(
    persistenceId      bigint        IDENTITY,
    CODIGO_AREA        nvarchar(4)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_AREA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO      int           NULL,
    TIEMPO_MINIMO      int           NULL,
    persistenceVersion bigint        NULL,
    TIEMPO_PROMEDIO    int           NULL,
    CONSTRAINT PK__AREA__92E8260115D1F7FA
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.AREA') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.AREA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.AREA >>>'
go
CREATE TABLE dbo.DGADATOS
(
    persistenceId        bigint        IDENTITY,
    CODIGO_DOCUMENTO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_INFORMACION   nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION   nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    IDFLUJO              int           NULL,
    ID_REGISTRO          int           NULL,
    NUMERO_DOCUMENTO     nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_DESTINO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_ORIGEN          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SELECTIVIDAD         nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_ADICION      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion   bigint        NULL,
    CODIGO_CASO          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONSTRAINT PK__DGADATOS__92E826013AFB8940
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.DGADATOS') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.DGADATOS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.DGADATOS >>>'
go
CREATE TABLE dbo.FRONTERA
(
    persistenceId      bigint        IDENTITY,
    CODIGO_FRONTERA    nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_FRONTERA    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_FRONTERA      nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__FRONTERA__92E82601190B94EB
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.FRONTERA') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.FRONTERA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.FRONTERA >>>'
go
CREATE TABLE dbo.FLUJO
(
    persistenceId            bigint        IDENTITY,
    APELLIDOS_MOTORISTA      nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FRONTERA          nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_PROCESO           nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_TIPO_MT           nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONTENEDOR               nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CORREO_AVISO             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_FLUJO             nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION            nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_FIN                nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_INICIO             nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION       nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_NAC_MOTORISTA      nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_VENC_DOC_MOTORISTA nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ORIGEN_LECTURA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    MARCHAMO                 nvarchar(10)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRES_MOTORISTA        nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NO_DOC_MOTORISTA         nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OBSERVACION_FLUJO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_DOCUMENTO           nvarchar(3)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PARABRISAS               nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PC_INGRESO               nvarchar(3)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PC_SALIDA                nvarchar(4)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PESO                     nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PLACA                    nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ROSTRO_MOTORISTA         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SALIDA_LISTA             nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TELEFONO_AVISO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_DOCUMENTO           nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_FINALIZACION        nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_FLUJO               nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRASERA                  nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    T_MAXIMO                 int           NULL,
    T_MINIMO                 int           NULL,
    USUARIO_ADICION          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    VACIO                    nvarchar(5)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion       bigint        NULL,
    CODIGO_CASO              nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_LECTURA_PUNTO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ENTRADA_LISTA      nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_SALIDA_LISTA       nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RESPUESTA_DGA            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RESPUESTA_DGME           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RESPUESTA_MAG            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO            int           NULL,
    TIEMPO_MINIMO            int           NULL,
    CONSTRAINT PK__FLUJO__92E82601F098B177
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.FLUJO') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.FLUJO >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.FLUJO >>>'
go
CREATE TABLE dbo.INSTITUCION
(
    persistenceId        bigint        IDENTITY,
    CODIGO_INSTITUCION   nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CORREO_ALERTA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO      nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION   nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_INSTITUCION   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SIGLAS_INSTITUCION   nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_ADICION      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion   bigint        NULL,
    CONSTRAINT PK__INSTITUC__92E826011AC0E998
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.INSTITUCION') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.INSTITUCION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.INSTITUCION >>>'
go
CREATE TABLE dbo.LECTURAPUNTO
(
    persistenceId        bigint        IDENTITY,
    ACCION_PLUMA         nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_MENSAJE       nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_PC            nvarchar(4)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_TIPO_MT       nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONTENEDOR           nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_LECTURA       nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO      nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_INSTRUCCION    nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_LECTURA        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION   nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN1           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN2           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN3           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN4           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ORIGEN_LA         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_VIDEO             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    MARCHAMO             nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NO_PLUMA             int           NULL,
    PARABRISAS           nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PC_CONTENEDOR        float(53)     NULL,
    PC_MARCHAMO          float(53)     NULL,
    PC_PARABRISAS        float(53)     NULL,
    PC_PESO              float(53)     NULL,
    PC_PLACA             float(53)     NULL,
    PC_ROSTRO            float(53)     NULL,
    PC_TRASERA           float(53)     NULL,
    PESO                 nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PLACA                nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ROSTRO               nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_LECTURA         nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRASERA              nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_ADICION      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion   bigint        NULL,
    CODIGO_CASO          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONSTRAINT PK__LECTURAP__92E8260174FF0A9F
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.LECTURAPUNTO') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.LECTURAPUNTO >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.LECTURAPUNTO >>>'
go
CREATE TABLE dbo.MENSAJE
(
    persistenceId       bigint        IDENTITY,
    CODIGO_MENSAJE      nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DESCRIPCION_MENSAJE nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO     nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion  bigint        NULL,
    CONSTRAINT PK__MENSAJE__92E826010454C9C5
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.MENSAJE') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.MENSAJE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.MENSAJE >>>'
go
CREATE TABLE dbo.PAIS
(
    persistenceId      bigint        IDENTITY,
    CODIGO_PAIS        int           NULL,
    ESTADO_REGISTRO    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_PAIS        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__PAIS__92E82601F99BA310
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.PAIS') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PAIS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PAIS >>>'
go
CREATE TABLE dbo.PROCESO
(
    persistenceId      bigint        IDENTITY,
    CODIGO_PROCESO     nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_PROCESO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO      int           NULL,
    TIEMPO_MINIMO      int           NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__PROCESO__92E82601A4CE2748
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.PROCESO') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PROCESO >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PROCESO >>>'
go
CREATE TABLE dbo.TIPOMEDIOTRANSPORTE
(
    persistenceId      bigint        IDENTITY,
    CODIGO_TIPO_MT     nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_TIPO_MT     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__TIPOMEDI__92E826016F6FE6D2
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.TIPOMEDIOTRANSPORTE') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPOMEDIOTRANSPORTE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPOMEDIOTRANSPORTE >>>'
go
CREATE TABLE dbo.TIPODOCDGA
(
    persistenceId      bigint        IDENTITY,
    CODIGO_DOCUMENTO   int           NULL,
    ENVIO_A_DGA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_DOCUMENTO   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__TIPODOCD__92E82601533BADB2
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.TIPODOCDGA') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPODOCDGA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPODOCDGA >>>'
go
CREATE TABLE dbo.PUNTOCONTROL
(
    persistenceId      bigint      IDENTITY,
    CODIGO_PC          nvarchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OCUPADO            nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_PC            nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint      NULL,
    CONSTRAINT PK__PUNTOCON__92E826010B174077
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.PUNTOCONTROL') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PUNTOCONTROL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PUNTOCONTROL >>>'
go
CREATE TABLE dbo.TIPOMT
(
    persistenceId      bigint        IDENTITY,
    CODIGOTIPOMT       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRETIPOMT       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CODIGO_TIPO_MT     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_TIPO_MT     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONSTRAINT PK__TIPOMT__92E82601FDA71848
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.TIPOMT') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPOMT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPOMT >>>'
go
CREATE TABLE dbo.sysdiagrams
(
    name         sysname        NOT NULL,
    principal_id int            NOT NULL,
    diagram_id   int            IDENTITY,
    version      int            NULL,
    definition   varbinary(max) NULL,
    CONSTRAINT PK__sysdiagr__C2B05B615DAE4F93
    PRIMARY KEY CLUSTERED (diagram_id),
    CONSTRAINT UK_principal_name
    UNIQUE NONCLUSTERED (principal_id,name)
)
go
IF OBJECT_ID('dbo.sysdiagrams') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.sysdiagrams >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.sysdiagrams >>>'
go
CREATE TABLE dbo.RESTDUCAOUPUTLIST
(
    persistenceId      bigint        IDENTITY,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_MRK1           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_MRK2           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOC_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DRV_IDE            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_CNT1           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_CNT2           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_WGT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REF_YER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_SER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TLR_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__RESTDUCA__92E82601BE9544DA
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.RESTDUCAOUPUTLIST') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTDUCAOUPUTLIST >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTDUCAOUPUTLIST >>>'
go
CREATE TABLE dbo.RESTDGME
(
    persistenceId            bigint        IDENTITY,
    APELLIDOS_MOTORISTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO              nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOCUMENTO_UNICO          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_NAC_MOTORISTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_VENC_DOC_MOTORISTA nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRES_MOTORISTA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_DOCUMENTO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SELECTIVIDAD             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR              nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion       bigint        NULL,
    CONSTRAINT PK__RESTDGME__92E8260117AA97FD
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.RESTDGME') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTDGME >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTDGME >>>'
go
CREATE TABLE dbo.RESTPROCESSEDDUCALIST
(
    persistenceId      bigint        IDENTITY,
    BUS_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOC_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OPE_NAM            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REF_YER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_SER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RES_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RES_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__RESTPROC__92E826010D3147F4
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.RESTPROCESSEDDUCALIST') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTPROCESSEDDUCALIST >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTPROCESSEDDUCALIST >>>'
go
CREATE TABLE dbo.RESTDUCASCONSULTAR
(
    persistenceId      bigint        IDENTITY,
    BUS_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CHK_PNT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_MRK            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOC_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_CNT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OPE_NAM            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PLT_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REF_YER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_SER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RES_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SCG_IDE            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__RESTDUCA__92E8260107EF9282
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.RESTDUCASCONSULTAR') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTDUCASCONSULTAR >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTDUCASCONSULTAR >>>'
go
CREATE TABLE dbo.RESTTRANSPORTMEDIAINFO
(
    persistenceId      bigint        IDENTITY,
    BDR_CTY            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CHK_PNT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SCG_IDE            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__RESTTRAN__92E8260143CFC2F3
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.RESTTRANSPORTMEDIAINFO') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTTRANSPORTMEDIAINFO >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTTRANSPORTMEDIAINFO >>>'
go
CREATE TABLE dbo.RESTSCGOUTPUT
(
    persistenceId      bigint        IDENTITY,
    BUS_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ERR_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    STA                nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__RESTSCGO__92E8260129086836
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.RESTSCGOUTPUT') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTSCGOUTPUT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTSCGOUTPUT >>>'
go
CREATE TABLE dbo.TIPODOCUMENTODGA
(
    persistenceId      bigint        IDENTITY,
    CODIGO_DOCUMENTO   int           NULL,
    ESTADO_REGISTRO    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_DOCUMENTO   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CONSTRAINT PK__TIPODOCU__92E826017C90867A
    PRIMARY KEY CLUSTERED (persistenceId)
)
go
IF OBJECT_ID('dbo.TIPODOCUMENTODGA') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPODOCUMENTODGA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPODOCUMENTODGA >>>'
go
CREATE TABLE dbo.ACCION_Audit
(
    persistenceId          bigint        NULL,
    ACCION_OBSERVACION     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CORREO_ALERTA          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ENVIAR_ALERTA          nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_ACCION          nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION          nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION     nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FIN_FECHA              nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ACCION              int           NULL,
    INICIO_FECHA           nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ORIGEN_ACCION          nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO          int           NULL,
    TIEMPO_MINIMO          int           NULL,
    USUARIO_ADICION        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_FIN            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_INICIO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_RESPONSABLE    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion     bigint        NULL,
    CODIGO_AREA_PID        bigint        NULL,
    CODIGO_INSTITUCION_PID bigint        NULL,
    ID_FLUJO_PID           bigint        NULL,
    CODIGO_AREA            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_INSTITUCION     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_PROMEDIO        int           NULL,
    AuditDataState         varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction         varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser              sysname       NULL,
    AuditDateTime          datetime      NULL,
    UpdateColumns          varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.ACCION_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ACCION_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ACCION_Audit >>>'
go
CREATE TABLE dbo.ALERTA_Audit
(
    persistenceId      bigint        NULL,
    CORREO_ALERTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_ALERTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ALERTA       nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ACCION          int           NULL,
    ID_ALERTA          int           NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.ALERTA_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ALERTA_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ALERTA_Audit >>>'
go
CREATE TABLE dbo.AREA_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_AREA        nvarchar(4)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_AREA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO      int           NULL,
    TIEMPO_MINIMO      int           NULL,
    persistenceVersion bigint        NULL,
    TIEMPO_PROMEDIO    int           NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.AREA_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.AREA_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.AREA_Audit >>>'
go
CREATE TABLE dbo.DGADATOS_Audit
(
    persistenceId        bigint        NULL,
    CODIGO_DOCUMENTO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_INFORMACION   nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION   nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    IDFLUJO              int           NULL,
    ID_REGISTRO          int           NULL,
    NUMERO_DOCUMENTO     nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_DESTINO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_ORIGEN          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SELECTIVIDAD         nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_ADICION      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion   bigint        NULL,
    CODIGO_CASO          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDataState       varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction       varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser            sysname       NULL,
    AuditDateTime        datetime      NULL,
    UpdateColumns        varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.DGADATOS_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.DGADATOS_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.DGADATOS_Audit >>>'
go
CREATE TABLE dbo.FLUJO_Audit
(
    persistenceId            bigint        NULL,
    APELLIDOS_MOTORISTA      nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FRONTERA          nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_PROCESO           nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_TIPO_MT           nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONTENEDOR               nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CORREO_AVISO             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_FLUJO             nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION            nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_FIN                nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_INICIO             nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION       nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_NAC_MOTORISTA      nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_VENC_DOC_MOTORISTA nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ORIGEN_LECTURA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    MARCHAMO                 nvarchar(10)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRES_MOTORISTA        nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NO_DOC_MOTORISTA         nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OBSERVACION_FLUJO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_DOCUMENTO           nvarchar(3)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PARABRISAS               nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PC_INGRESO               nvarchar(3)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PC_SALIDA                nvarchar(4)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PESO                     nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PLACA                    nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ROSTRO_MOTORISTA         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SALIDA_LISTA             nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TELEFONO_AVISO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_DOCUMENTO           nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_FINALIZACION        nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_FLUJO               nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRASERA                  nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    T_MAXIMO                 int           NULL,
    T_MINIMO                 int           NULL,
    USUARIO_ADICION          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    VACIO                    nvarchar(5)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion       bigint        NULL,
    CODIGO_CASO              nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_LECTURA_PUNTO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ENTRADA_LISTA      nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_SALIDA_LISTA       nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RESPUESTA_DGA            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RESPUESTA_DGME           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RESPUESTA_MAG            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO            int           NULL,
    TIEMPO_MINIMO            int           NULL,
    AuditDataState           varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction           varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser                sysname       NULL,
    AuditDateTime            datetime      NULL,
    UpdateColumns            varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.FLUJO_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.FLUJO_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.FLUJO_Audit >>>'
go
CREATE TABLE dbo.FRONTERA_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_FRONTERA    nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_FRONTERA    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_FRONTERA      nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.FRONTERA_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.FRONTERA_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.FRONTERA_Audit >>>'
go
CREATE TABLE dbo.INSTITUCION_Audit
(
    persistenceId        bigint        NULL,
    CODIGO_INSTITUCION   nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CORREO_ALERTA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO      nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION   nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_INSTITUCION   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SIGLAS_INSTITUCION   nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_ADICION      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion   bigint        NULL,
    AuditDataState       varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction       varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser            sysname       NULL,
    AuditDateTime        datetime      NULL,
    UpdateColumns        varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.INSTITUCION_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.INSTITUCION_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.INSTITUCION_Audit >>>'
go
CREATE TABLE dbo.LECTURAPUNTO_Audit
(
    persistenceId        bigint        NULL,
    ACCION_PLUMA         nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_MENSAJE       nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_PC            nvarchar(4)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_TIPO_MT       nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONTENEDOR           nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_LECTURA       nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO      nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_ADICION        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_INSTRUCCION    nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_LECTURA        nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_MODIFICACION   nvarchar(30)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN1           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN2           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN3           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_IMAGEN4           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_ORIGEN_LA         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ID_VIDEO             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    MARCHAMO             nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NO_PLUMA             int           NULL,
    PARABRISAS           nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PC_CONTENEDOR        float(53)     NULL,
    PC_MARCHAMO          float(53)     NULL,
    PC_PARABRISAS        float(53)     NULL,
    PC_PESO              float(53)     NULL,
    PC_PLACA             float(53)     NULL,
    PC_ROSTRO            float(53)     NULL,
    PC_TRASERA           float(53)     NULL,
    PESO                 nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PLACA                nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ROSTRO               nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_LECTURA         nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRASERA              nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_ADICION      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    USUARIO_MODIFICACION nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion   bigint        NULL,
    CODIGO_CASO          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO         nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDataState       varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction       varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser            sysname       NULL,
    AuditDateTime        datetime      NULL,
    UpdateColumns        varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.LECTURAPUNTO_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.LECTURAPUNTO_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.LECTURAPUNTO_Audit >>>'
go
CREATE TABLE dbo.MENSAJE_Audit
(
    persistenceId       bigint        NULL,
    CODIGO_MENSAJE      nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DESCRIPCION_MENSAJE nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO     nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion  bigint        NULL,
    AuditDataState      varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction      varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser           sysname       NULL,
    AuditDateTime       datetime      NULL,
    UpdateColumns       varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.MENSAJE_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.MENSAJE_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.MENSAJE_Audit >>>'
go
CREATE TABLE dbo.PAIS_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_PAIS        int           NULL,
    ESTADO_REGISTRO    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_PAIS        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.PAIS_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PAIS_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PAIS_Audit >>>'
go
CREATE TABLE dbo.PROCESO_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_PROCESO     nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_PROCESO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIEMPO_MAXIMO      int           NULL,
    TIEMPO_MINIMO      int           NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.PROCESO_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PROCESO_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PROCESO_Audit >>>'
go
CREATE TABLE dbo.PUNTOCONTROL_Audit
(
    persistenceId      bigint       NULL,
    CODIGO_PC          nvarchar(4)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OCUPADO            nvarchar(1)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TIPO_PC            nvarchar(1)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint       NULL,
    AuditDataState     varchar(10)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname      NULL,
    AuditDateTime      datetime     NULL,
    UpdateColumns      varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.PUNTOCONTROL_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PUNTOCONTROL_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PUNTOCONTROL_Audit >>>'
go
CREATE TABLE dbo.RESTDGME_Audit
(
    persistenceId            bigint        NULL,
    APELLIDOS_MOTORISTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO              nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOCUMENTO_UNICO          nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_NAC_MOTORISTA      nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_VENC_DOC_MOTORISTA nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRES_MOTORISTA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PAIS_DOCUMENTO           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SELECTIVIDAD             nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR              nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion       bigint        NULL,
    AuditDataState           varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction           varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser                sysname       NULL,
    AuditDateTime            datetime      NULL,
    UpdateColumns            varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.RESTDGME_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTDGME_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTDGME_Audit >>>'
go
CREATE TABLE dbo.RESTDUCAOUPUTLIST_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_MRK1           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_MRK2           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOC_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DRV_IDE            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_CNT1           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_CNT2           nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_WGT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REF_YER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_SER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TLR_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.RESTDUCAOUPUTLIST_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTDUCAOUPUTLIST_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTDUCAOUPUTLIST_Audit >>>'
go
CREATE TABLE dbo.RESTDUCASCONSULTAR_Audit
(
    persistenceId      bigint        NULL,
    BUS_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CHK_PNT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_MRK            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOC_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    GDS_CNT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OPE_NAM            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    PLT_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REF_YER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_SER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RES_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SCG_IDE            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.RESTDUCASCONSULTAR_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTDUCASCONSULTAR_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTDUCASCONSULTAR_Audit >>>'
go
CREATE TABLE dbo.RESTPROCESSEDDUCALIST_Audit
(
    persistenceId      bigint        NULL,
    BUS_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DOC_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    OPE_NAM            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REF_YER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_NBR            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    REG_SER            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RES_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    RES_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.RESTPROCESSEDDUCALIST_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTPROCESSEDDUCALIST_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTPROCESSEDDUCALIST_Audit >>>'
go
CREATE TABLE dbo.RESTSCGOUTPUT_Audit
(
    persistenceId      bigint        NULL,
    BUS_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    DST_TYP            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ERR_DSC            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    STA                nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.RESTSCGOUTPUT_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTSCGOUTPUT_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTSCGOUTPUT_Audit >>>'
go
CREATE TABLE dbo.RESTTRANSPORTMEDIAINFO_Audit
(
    persistenceId      bigint        NULL,
    BDR_CTY            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CHK_PNT            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_CASO        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CODIGO_FLUJO       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CUO_COD            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    FECHA_REGISTRO     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    SCG_IDE            nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    TRA_PLA_NBR        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.RESTTRANSPORTMEDIAINFO_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.RESTTRANSPORTMEDIAINFO_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.RESTTRANSPORTMEDIAINFO_Audit >>>'
go
CREATE TABLE dbo.TIPODOCDGA_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_DOCUMENTO   int           NULL,
    ENVIO_A_DGA        nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_DOCUMENTO   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.TIPODOCDGA_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPODOCDGA_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPODOCDGA_Audit >>>'
go
CREATE TABLE dbo.TIPODOCUMENTODGA_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_DOCUMENTO   int           NULL,
    ESTADO_REGISTRO    nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_DOCUMENTO   nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.TIPODOCUMENTODGA_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPODOCUMENTODGA_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPODOCUMENTODGA_Audit >>>'
go
CREATE TABLE dbo.TIPOMEDIOTRANSPORTE_Audit
(
    persistenceId      bigint        NULL,
    CODIGO_TIPO_MT     nvarchar(2)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    ESTADO_REGISTRO    nvarchar(1)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_TIPO_MT     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.TIPOMEDIOTRANSPORTE_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPOMEDIOTRANSPORTE_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPOMEDIOTRANSPORTE_Audit >>>'
go
CREATE TABLE dbo.TIPOMT_Audit
(
    persistenceId      bigint        NULL,
    CODIGOTIPOMT       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRETIPOMT       nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    persistenceVersion bigint        NULL,
    CODIGO_TIPO_MT     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    NOMBRE_TIPO_MT     nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDataState     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditDMLAction     varchar(10)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    AuditUser          sysname       NULL,
    AuditDateTime      datetime      NULL,
    UpdateColumns      varchar(max)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
go
IF OBJECT_ID('dbo.TIPOMT_Audit') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.TIPOMT_Audit >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.TIPOMT_Audit >>>'
go
