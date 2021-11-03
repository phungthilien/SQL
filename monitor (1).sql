CREATE DATABASE ComputerMonitor
GO	
USE ComputerMonitor
GO
if OBJECT_ID('Monitor') is not null
drop table Monitor
CREATE TABLE Monitor(
ID INT NOT NULL ,
Name NVARCHAR(30) NOT NULL,
Amount INT NOT NULL,
CurrentPrice DECIMAL,
DateCreated DATE,
Manufacturer NVARCHAR(30),
Hertz INT
)
DROP TABLE dbo.Monitor
INSERT INTO Monitor VALUES (001,'Acer Nitro VG270',10,4489000,'5/7/2020','Acer',60)
INSERT INTO Monitor VALUES (002,'Dell UltraSharp U3219Q',7,20599000,'8/5/2020','Dell',60)
INSERT INTO Monitor VALUES (003,'Asus VG248QE',10,5499000,'10/7/2020','Asus',144)
INSERT INTO Monitor VALUES (004,'Samsung LC32JG51FDEXXV',10,8189000,'11/9/2020','Samsung',144)
INSERT INTO Monitor VALUES (005,'LG 32UN880',10,20899000,'10/7/2020','Acer',60)
INSERT INTO Monitor VALUES (006,'MSI Optix G272 27 ',10,8019000,'5/7/2020','Msi',165)
SELECT*FROM dbo.Monitor

DROP TABLE dbo.log
CREATE TABLE log(
IdLog INT NOT NULL ,
AmountLog INT NOT NULL,
ImportAndExportPrices BIGINT NOT NULL,
ImportAndExpor BIT NOT NULL,
ImportAndExporDate DATE 

)
DELETE from log
INSERT INTO log VALUES (01,11,100000,1,'10/11/2020')
INSERT INTO log VALUES (02,12,200000,0,'7/8/2020')
INSERT INTO log VALUES (03,120,300000,1,'7/11/2020')
INSERT INTO log VALUES (04,110,400000,0,'5/11/2020')
INSERT INTO log VALUES (05,10,500000,0,'6/11/2020')
INSERT INTO log VALUES (06,1,600000,1,'12/11/2020')
INSERT INTO log VALUES (07,100,700000,0,'5/11/2020')
INSERT INTO log VALUES (08,103,800000,1,'10/11/2020')
INSERT INTO log VALUES (09,108,900000,0,'10/11/2020')
INSERT INTO log VALUES (10,103,1000000,1,'10/11/2020')
INSERT INTO log VALUES (011,102,1100000,0,'10/11/2020')
INSERT INTO log VALUES (012,101,1200000,1,'10/11/2020')
