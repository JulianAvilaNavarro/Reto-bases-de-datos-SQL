USE julianAvila_02_12_2021;
select*from paciente;
#Datos pacientes
insert into paciente values ("00001","Juan","Martinez",'SS0001',3107772555,"1994-06-16","10A","11",1);
insert into paciente values ("00002","Maria","Rodriguez",'SS0002',3112365478,"2018-07-12","103","1B",2);
insert into paciente values ("00003","Carlos","Guzman",'SS0003',3123697412,"2017-06-01","121","03A",1);
insert into paciente values ("00004","Julian","Rios",null,3212587896,"2019-02-26","10A","115",1);
insert into paciente values ("00005","Miryam","Navarro",'SS0005',3046325698,"1991-07-21","23","05",4);
insert into paciente values ("00006","Laura","Murillo",'SS0006',3178963214,"1952-01-17","39A","03",3);
insert into paciente values ("00007","Michael","Segura",'SS0007',3178521478,"1999-04-09","40B","154",2);
insert into paciente values ("00008","Milton","Lopez",'SS0008',3101478526,"1994-06-30","1A","117",1);
insert into paciente values ("00009","Oscar","Barrero",null,3107772553,"1953-12-24","1C","117",10);
insert into paciente values ("00010","Rodolfo","Gutierrez",'SS0010',32496321598,"1985-09-03","10","01",24);

#Datos Facultativos
select*from facultativo;
insert into facultativo values ("COL00001","Marcos","Cardeño","Oncologia",3102589631,"13A","12",7);
insert into facultativo values ("COL00002","Maria","Rivera","Pediatria",3102589524,"75","17A",1);
insert into facultativo values ("COL00003","Carlos","Marulanda","Pediatria Digestiva",3154789632,"46","175",4);
insert into facultativo values ("COL00004","Paula","Acosta","Pediatria Digestiva",31145683698,"07","84",5);
insert into facultativo values ("COL00005","Juan","Martinez","Traumatologia",30154789631,"14","01A",1);
insert into facultativo values ("COL00006","Carlos","Guzman","Oncologia",32458963214,"15","78C",24);
insert into facultativo values ("COL00007","Andres","Toledo","Cardiologia",3102563654,"39","89",1);
insert into facultativo values ("COL00008","Manuela","Toledo","Optometria",3152589524,"52","1A",3);
insert into facultativo values ("COL00009","Alejandro","Rubio","Neumologia",3123698741,"45","12D",2);
insert into facultativo values ("COL00010","Olimpo","Garcia","Urologia",3189632147,"33","34A",1);

#Datos servicio
select*from servicio;
insert into servicio values ("Oncologia","1000000","COL00001");
insert into servicio values ("Pediatria","850000","COL00002");
insert into servicio values ("Pediatria Digestiva","523000","COL00003");
insert into servicio values ("Hematologia","523000","COL00004");
insert into servicio values ("Traumatologia","950000","COL00005");
insert into servicio values ("Geriatria","2000000","COL00006");
insert into servicio values ("Cardiologia","3000000","COL00007");
insert into servicio values ("Optometria","850000","COL00008");
insert into servicio values ("Neumologia","1500000","COL00009");
insert into servicio values ("Urologia","1800000","COL00010");


#Datos Ingresos
select*from ingreso;
insert into Ingreso values ("1231","Oncologia","00001",'2020-06-16','14:00:00','2020-06-28',"Cancer Beningno");
insert into Ingreso values ("1232","Pediatria","00002",'2021-01-17','03:15:00','2021-01-17',"Todo en orden");
insert into Ingreso values ("1233","Pediatria Digestiva","00003",'2020-05-16','07:17:00','2020-05-16',"Se detecta gastritis");
insert into Ingreso values ("1234","Hematologia","00004",'2021-08-12','01:27:00','2021-08-28',"Globulos rojos blancos bajos");
insert into Ingreso values ("1235","Traumatologia","00005",'2021-11-16','14:52:00','2021-11-17',"Golpe en cabeza");
insert into Ingreso values ("1236","Geriatria","00006",'2020-01-16','03:45:00','2020-01-16',"Presenta leve demencia senil");
insert into Ingreso values ("1237","Oncologia","00001",'2020-07-19','17:15:00','2020-08-28',"Necesita radioterapia");
insert into Ingreso values ("1238","Cardiologia","00007",'2019-06-17','16:30:00','2019-06-18',"Necesita bajar 10 kilos");
insert into Ingreso values ("1239","Cardiologia","00007",'2019-09-21','20:05:00','2019-09-21',"Se recomienda tomar aspirina diaria");
insert into Ingreso values ("1240","Optometria","00008",'2020-03-14','09:17:00','2020-03-14',"Se presenta astigmatismo leve");

#Datos Informe
select*from informe;
insert into informe values ("GA0001",50000,100000,100000,2,"00001","1231","COL00001","Oncologia");
insert into informe values ("GA0002",50000,80000,2000,2,"00002","1232","COL00002","Pediatria");
insert into informe values ("GA0003",80000,5000,15000,5,"00003","1233","COL00003","Pediatria Digestiva");
insert into informe values ("GA0004",73000,7000,35000,1,"00004","1234","COL00004","Hematologia");
insert into informe values ("GA0005",90000,7000,3000,2,"00005","1235","COL00005","Traumatologia");
insert into informe values ("GA0006",20000,8000,10000,1,"00006","1236","COL00006","Geriatria");
insert into informe values ("GA0007",12000,12000,20000,1,"00001","1237","COL00001","Oncologia");
insert into informe values ("GA0008",24000,32000,50000,1,"00007","1238","COL00007","Cardiologia");
insert into informe values ("GA0009",24000,32000,50000,1,"00007","1239","COL00007","Cardiologia");
insert into informe values ("GA0010",70000,32000,48000,1,"00008","1240","COL00008","Optometria");


#Datos farmacos
select*from farmacos;
SHOW COLUMNS FROM farmacos;
insert into farmacos values ("FAR0001","CA01","GA0001","C8H9NO2","Acetaminofen","Paracetamol",10000,30,default ,"PRO0001");
insert into farmacos values ("FAR0002","CA02","GA0002","C6H8O6","Vitamina C","Ácido ascórbico",1000,60,default ,"PRO0002");
insert into farmacos values ("FAR0003","CA02","GA0003","C6H8O6","Vitamina C POLVO","Ácido ascórbico",6000,60,default ,"PRO0002");
insert into farmacos values ("FAR0004","CA03","GA0004","FeSO4","Sulfato ferroso","Tetraoxosulfato",7000,10,default ,"PRO0003");
insert into farmacos values ("FAR0005","CA03","GA0005","C13H18O2","Ibuprofeno","Ibuprofeno",2000,10,default ,"PRO0002");
insert into farmacos values ("FAR0006","CA03","GA0006","C21H25N3O2S1","Quetiapina","Quetiapina",8000,40,default ,"PRO0004");
insert into farmacos values ("FAR0007","CA01","GA0007","C16H25NO2","Adolonta","Tramadol",70000,10,default ,"PRO0004");
insert into farmacos values ("FAR0008","CA01","GA0008","C9HSO4","Apirina","Acetilsalicílico, ácido, analgésico",80000,20,default ,"PRO0005");
insert into farmacos values ("FAR0009","CA01","GA0009","C9HSO4","Apirina","Acetilsalicílico, ácido, analgésico",80000,20,default ,"PRO0005");
insert into farmacos values ("FAR0010","CA01","GA0010","NACL","Gotas para los ojos","Colirio",10000,1,default ,"PRO0001");


#Datos receta
select*from receta;
insert into receta values ("FAR0001","COL00001",'2020-06-16');
insert into receta values ("FAR0002","COL00002",'2021-01-17');
insert into receta values ("FAR0003","COL00003",'2020-05-16');
insert into receta values ("FAR0004","COL00004",'2021-08-12');
insert into receta values ("FAR0005","COL00005",'2021-11-16');
insert into receta values ("FAR0006","COL00006",'2020-01-16');
insert into receta values ("FAR0007","COL00001",'2019-06-17');
insert into receta values ("FAR0008","COL00007",'2019-06-17');
insert into receta values ("FAR0009","COL00007",'2019-09-21');
insert into receta values ("FAR0010","COL00008",'2020-03-14');


