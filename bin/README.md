# scg

***********************************************Web Services Consultat Ducas **************************************************************
URL: localhost:8181/demo/consultarducas
TYPE: POST
1. Forma correcta de ejecutarlo:
  a) 
      {
      "TRANSPORT_MEDIA_INFO":{
      "TRA_PLA_NBR":"PL00120",
      "BDR_CTY":"GT",
      "CHK_PNT":0,
      "CUO_COD":"05",
      "SCG_IDE":25
      }
      }
  b) 
      {
      "TRANSPORT_MEDIA_INFO":{
      "TRA_PLA_NBR":"PL00808",
      "BDR_CTY":"GT",
      "CHK_PNT":0,
      "CUO_COD":"05",
      "SCG_IDE":25
      }
      }    
          
 2. Capturar una excepcion:
      {
      "TRANSPORT_MEDIA_INFO":{
      "TRA_PLA_NBR":"PLACA_NO_EXISTE",
      "BDR_CTY":"GT",
      "CHK_PNT":0,
      "CUO_COD":"05",
      "SCG_IDE":25
      }
      }
  *****************************************************************************************************************************************


*****************5.2.1	CASO DE PRUEBA 1. ENVIO Y RECEPCION INCIAL DE INFORMACION DGME******************************************************
URL: localhost:8181/demo/dgme521
type:GET
1. Forma correcta de ejecutarlo:
  a) 
       		{
	     "placa ": "ejemplo placa tractor",
	     "fecha": "2020-05-15T16:03:11.4748104-03:00",
	     "caseta": "4",
	     "movimiento": 1,
	     "tran_id":10
        }
  b) 
    	{
	     "placa ": "ejemplo placa tractor",
	     "fecha": "2020-05-15T16:03:11.4748104-03:00",
	     "caseta": "4",
	     "movimiento": 1,
	     "tran_id":11
        }
          
          
 2. Capturar una excepcion:
		{
	     "placa ": "ejemplo placa tractor",
	     "fecha": "2020-05-15T16:03:11.4748104-03:00",
	     "caseta": "4",
	     "movimiento": 1,
	     "tran_id":100
        }	
  *****************************************************************************************************************************************

*****************5.3.1	ENVIO Y RECEPCION INCIAL DE INFORMACION MAG************************************************************************
URL: localhost:8181/demo/mag531
type:GET
1. Forma correcta de ejecutarlo:
  {
   "listaDucas":[
      {
         "Duca":{
            "NoDuca":"D001-"
          
         }
       
      },

      {
         "Duca":{
            "NoDuca":"D002"
           
         }
        
      },
   
      {
         "Duca":{
            "NoDuca":"D003"
           
         }
      
      },
       {
         "Duca":{
            "NoDuca":"D004"
           
         }
      
      },
       {
         "Duca":{
            "NoDuca":"D004"
           
         }
      
      },
       {
         "Duca":{
            "NoDuca":"D005"
           
         }
      
      }

   ]
}
  *****************************************************************************************************************************************


*****************PROCESAR DUCAS*************************************************************************************************************
URL: http://localhost:8181/REST/procesarDucas
type:POST
1. Forma correcta de ejecutarlo:
{
    "TRANSPORT_MEDIA_INFO":{
        "TRA_PLA_NBR":"PL00120",
        "BDR_CTY":"GT",
        "CHK_PNT":0,
        "CUO_COD":"05",
        "SCG_IDE":25
    },
    "DUCAS_TO_PROCCESS_LIST":[
        {
            "DOC_TYP":"DUCAF",
            "REF_YER":2020,
            "CUO_COD":"05",
            "REG_SER":"4",
            "REG_NBR":"258"
        },
        {
            "DOC_TYP":"DUCAT",
            "REF_YER":2020,
            "CUO_COD":"05",
            "REG_SER":"",
            "REG_NBR":"234"
        },
        {
            "DOC_TYP":"DUCAD",
            "REF_YER":2020,
            "CUO_COD":"05",
            "REG_SER":"4",
            "REG_NBR":"258"
        }
    ]
}
  *****************************************************************************************************************************************
