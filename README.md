# scg

## **CREACION DE TOKEN DE EJEMPLO**

#### SITIO PARA CREAR TOKEN: https://jwt.io/

####PAYLOAD:
{
      	"alg": "HS256",---Tipo de algoritmo de encriptacion 
      	"typ": "JWT"------Tipo de token
}
{
  "exp": 1605295079,---Fecha de expiracion
  "sub": "ANGUIATU",---Sujeto que emite el token
  "iat": 1605217320 ---Fecha de creacion en formato UNIX
}

#### SECRET KEY DEL TOKEN: U0lTVEVNQURFQVVURU5USUNBQ0lPTlBBUkFTRVJWSUNJT1dFQlJFU0FQSVNDRw==

***********************************************************************************************************************************

## **ENVIO Y RECEPCION INCIAL DE INFORMACION DGME**

#### URL: http://www.deicop.com:8081/aduanaJWT/dgme/recibirDatosDGME
#### TYPE:POST
#### 1. FORMA CORRECTA DE EJECUTARLO:
###### a) 
       	{
	     "placa ": "ejemplo placa tractor",
	     "fecha": "2020-05-15T16:03:11.4748104-03:00",
	     "caseta": "4",
	     "movimiento": 1,
	     "tran_id":10
        }

######  b) 
    	{
	     "placa ": "ejemplo placa tractor",
	     "fecha": "2020-05-15T16:03:11.4748104-03:00",
	     "caseta": "4",
	     "movimiento": 1,
	     "tran_id":11
        }
          
***********************************************************************************************************************************