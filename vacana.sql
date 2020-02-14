CREATE DATABASE   
USE 

CREATE TABLE torre_destilacion
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    presion_vapor_calderas VARCHAR(30),
    presion_vapor_operación VARCHAR(30),
    temperatura_mosto_entrada_torre VARCHAR(30),
    litros_vinasa VARCHAR(30),
    consumo_energia_electrica VARCHAR(30),
    litros_ordinario VARCHAR(30),
    alc_vol_ordinario VARCHAR(30),
    fecha VARCHAR(15),
    hora VARCHAR(10),
    usuario VARCHAR(50)


)

CREATE TABLE torre_rectificadora
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    alc_vol_tequila VARCHAR(30),
    fecha VARCHAR(15),
    hora VARCHAR(10),
    usuario VARCHAR(50)
)


CREATE TABLE torre_desmetilizadora
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    alv_vol_tequila VARCHAR(30),
    fecha VARCHAR(15),
    hora VARCHAR(10),
    usuario VARCHAR(50)
)
CREATE TABLE alambique
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    litros_ordinario  VARCHAR(30),
    alc_vol_tequila VARCHAR(30),
    litros_tequila VARCHAR(30),
    alc_vol_cabezas_y_colas VARCHAR(30),
    fecha VARCHAR(15),
    hora VARCHAR(10),
    usuario VARCHAR(50)
)
CREATE TABLE extraccion_bascula
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    kg_agave VARCHAR(30),
    fecha VARCHAR(15),
    hora VARCHAR(10),
    usuario VARCHAR(50)
)

CREATE TABLE extraccion_difusor
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    rt_agave VARCHAR(20),
    brix_jugo_crudo VARCHAR(30),
    rt_de_bagazo VARCHAR(35),
    fecha VARCHAR(15),
    hora VARCHAR(10),
    usuario VARCHAR(50)
)
CREATE TABLE hidrolisis_autoclave
(
   id INTEGER PRIMARY KEY IDENTITY(1,1), 
   fecha VARCHAR(15),
   hora VARCHAR(10),
   usuario VARCHAR(50),
   art_jugo_crudo VARCHAR(30), 
   brix_jugo_crudo VARCHAR(30),
   conversion_inulina_fructosa_y_gucosa VARCHAR(30),
   ph_jugo_crudo VARCHAR(30),
   ph_jugo_cocido VARCHAR(30)
)
CREATE TABLE formulacion_tanque1
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    fecha VARCHAR(15),
   hora VARCHAR(10),
   usuario VARCHAR(50),
   brix_jugo_cocido VARCHAR(30)

)
CREATE TABLE formulacion_tanque2
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    fecha VARCHAR(15),
   hora VARCHAR(10),
   usuario VARCHAR(50),
   brix_jugo_cocido VARCHAR(30)

)
CREATE TABLE formulacion_tanque3
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    fecha VARCHAR(15),
   hora VARCHAR(10),
   usuario VARCHAR(50),
   brix_jugo_cocido VARCHAR(30)

)
CREATE TABLE fermentacion_tanque
(
     id INTEGER PRIMARY KEY IDENTITY(1,1),
    fecha VARCHAR(15),
   hora VARCHAR(10),
   usuario VARCHAR(50),
    temperatura_mosto VARCHAR(30),
    brix_mosto VARCHAR(30),
    alc_vol_mosto VARCHAR(30)
)
----------------------------------------------------------------------------------------------------





go
CREATE PROC procedimiento1

    @presion_vapor_calderas VARCHAR(30),
    @presion_vapor_operación VARCHAR(30),
    @temperatura_mosto_entrada_torre VARCHAR(30),
    @litros_vinasa VARCHAR(30),
    @consumo_energia_electrica VARCHAR(30),
    @litros_ordinario VARCHAR(30),
    @alc_vol_ordinario VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50)

   AS 
   INSERT INTO torre_destilacion VALUES(@presion_vapor_calderas,@presion_vapor_operación,@temperatura_mosto_entrada_torre,@litros_vinasa,@consumo_energia_electrica,@litros_ordinario,@alc_vol_ordinario,@fecha,@hora,@usuario)

GO
CREATE PROC eliminar

@id INTEGER 
AS
DELETE FROM torre_destilacion WHERE id=@id

go
create proc updatecampo
    @presion_vapor_calderas VARCHAR(30),
    @presion_vapor_operación VARCHAR(30),
    @temperatura_mosto_entrada_torre VARCHAR(30),
    @litros_vinasa VARCHAR(30),
    @consumo_energia_electrica VARCHAR(30),
    @litros_ordinario VARCHAR(30),
    @alc_vol_ordinario VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50),
    @id INTEGER 
as
UPDATE torre_destilacion
SET
    [presion_vapor_calderas] = @presion_vapor_calderas,
    [presion_vapor_operación] = @presion_vapor_operación,
    [temperatura_mosto_entrada_torre] = @temperatura_mosto_entrada_torre,
    [litros_vinasa] = @litros_vinasa,
    [consumo_energia_electrica] = @consumo_energia_electrica,
    [litros_ordinario] = @litros_ordinario,
    [alc_vol_ordinario] = @alc_vol_ordinario,  
    [fecha] = @fecha,
    [hora] = @hora,
    [usuario] = @usuario

WHERE 	[id] = @id
----------------------------------------------------------------------------------------------------------------
GO
CREATE PROC procedimiento2
   
    @alc_vol_tequila VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50)
AS
INSERT INTO torre_rectificadora VALUES(@alc_vol_tequila,@fecha,@hora,@usuario)

go
CREATE PROC eliminar2
@id INTEGER 
AS
DELETE FROM torre_rectificadora WHERE id=@id

GO
create proc updatecampo
    @alc_vol_tequila VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50),
    @id INTEGER 
as
UPDATE torre_destilacion
SET
    [alc_vol_tequila] = @alc_vol_tequila, 
    [fecha] = @fecha,
    [hora] = @hora,
    [usuario] = @usuario

WHERE 	[id] = @id
GO



--------------------------------------------------------------------------------------------------------------------
GO
CREATE PROC procedimiento3

    
@alv_vol_tequila VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50)
AS
INSERT INTO torre_desmetilizadora VALUES(@alv_vol_tequila,@fecha,@hora,@usuario)


go
CREATE PROC eliminar3
@id INTEGER 
AS
DELETE FROM torre_desmetilizadora WHERE id=@id

GO
create proc updatecampo
    @alv_vol_tequila VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50),
    @id INTEGER 
as
UPDATE torre_desmetilizadora
SET
    [alc_vol_tequila] = @alc_vol_tequila, 
    [fecha] = @fecha,
    [hora] = @hora,
    [usuario] = @usuario

WHERE 	[id] = @id
GO

--------------------------------------------------------------------------------------------------------------------
GO
CREATE PROC procedimiento4

    @litros_ordinario  VARCHAR(30),
    @alc_vol_tequila VARCHAR(30),
    @litros_tequila VARCHAR(30),
    @alc_vol_cabezas_y_colas VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50)

AS
INSERT INTO alambique VALUES(@litros_ordinario,@alc_vol_tequila,@alc_vol_cabezas_y_colas,@fecha,@hora,@usuario)

go
CREATE PROC eliminar4
@id INTEGER 
AS
DELETE FROM alambique WHERE id=@id

GO
create proc updatecampo
    @litros_ordinario  VARCHAR(30),
    @alc_vol_tequila VARCHAR(30),
    @litros_tequila VARCHAR(30),
    @alc_vol_cabezas_y_colas VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50),
    @id INTEGER 
as
UPDATE torre_desmetilizadora
SET
    [litros_ordinario] = @litros_ordinario,
    [alc_vol_tequila] = @alc_vol_tequila,
    [litros_tequila] = @litros_tequila,
    [alc_vol_cabezas_y_colas] = @alc_vol_cabezas_y_colas,
    [fecha] = @fecha,
    [hora] = @hora,
    [usuario] = @usuario

WHERE 	[id] = @id
GO
---------------------------------------------------------------------------------------------------------------------    
GO
CREATE PROC procedimiento5

    @kg_agave VARCHAR(30),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50)

AS
INSERT INTO extraccion_bascula VALUES(@kg_agave,@fecha,@hora,@usuario)

go
CREATE PROC eliminar5
@id INTEGER 
AS
DELETE FROM extraccion_bascula WHERE id=@id
go
create proc updatecampo
@kg_agave VARCHAR(30),
@fecha VARCHAR(15),
@hora VARCHAR(10),
@usuario VARCHAR(50),
@id INTEGER
as

UPDATE extraccion_bascula
SET
    [kg_agave] = @kg_agave,
    [fecha] = @fecha,
    [hora] = @hora,
    [usuario] = @usuario

    -- add more columns and values here
WHERE 	 [id] = @id 
GO
-------------------------------------------------------------------------------------------------------------------
GO
CREATE PROC procedimiento6

    @rt_agave VARCHAR(20),
    @brix_jugo_crudo VARCHAR(30),
    @rt_de_bagazo VARCHAR(35),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50)

AS
INSERT INTO extraccion_difusor VALUES(@rt_agave,@brix_jugo_crudo)

go
CREATE PROC eliminar6
@id INTEGER 
AS
DELETE FROM extraccion_difusor WHERE id=@id

GO
create proc updatecampo
    @rt_agave VARCHAR(20),
    @brix_jugo_crudo VARCHAR(30),
    @rt_de_bagazo VARCHAR(35),
    @fecha VARCHAR(15),
    @hora VARCHAR(10),
    @usuario VARCHAR(50),
    @id INTEGER 
as
UPDATE torre_desmetilizadora
SET
    [rt_agave] = @rt_agave,
    [brix_jugo_crudo] = @brix_jugo_crudo,
    [rt_de_bagazo] = @rt_de_bagazo,
    [fecha] = @fecha,
    [hora] = @hora,
    [usuario] = @usuario

WHERE 	[id] = @id
GO
--------------------------------------------------------------------------------------------------------------------

