use SIEMENS;
Create Table TMP_SIEMENS (
AccessGroup VARCHAR(300),
CLASSIFICATION VARCHAR(300), --
CLASSIFICATION_C VARCHAR(300), -- 
CNS VARCHAR(300), --
COND_DATE VARCHAR(300), --
CONTRACT_REQ_DATE VARCHAR(300), --
CONTRACT_REQ_DATE_C VARCHAR(300), --
CREATION_DATE VARCHAR(300),
CRIZICALIZY VARCHAR(300), --
CUSTOMER_LINE_ITEM VARCHAR(300), --
Discipline VARCHAR(300), --
DKTXT VARCHAR(300), --
DueFromSupplier VARCHAR(300), --
DueFromSupplierOrg VARCHAR(300), --
EXTRACT_DATE VARCHAR(300), 
Highest VARCHAR(300), --
LiquidatedDamages VARCHAR(300),
OriginatorID VARCHAR(300),
POITEM VARCHAR(300), --
ProjectCode VARCHAR(300),
ProjectDescr VARCHAR(300),
ReceivedfromSupplier VARCHAR(300), --
RESPENG_NAME VARCHAR(300), --
RespEngrGID VARCHAR(300), --
REVIEW_DUE_DATE VARCHAR(300), --
Revision VARCHAR(300),
SequenceNumber VARCHAR(300),--
SerialNo VARCHAR(300), --
VStatus VARCHAR(300), --
Supplier VARCHAR(300),
Title VARCHAR(300),
VVersion VARCHAR(300)
);

truncate TMP_SIEMENS;

Select  *
From TMP_SIEMENS
Where Classification_C = 'Customer'
and Creation_Date !='--'
;

Select  str_to_date(replace(Creation_Date,"-",""), "%Y%m%d") Creation_Date, Count(*)
From TMP_SIEMENS
Where Creation_Date !='--'
Group by  str_to_date(replace(Creation_Date,"-",""), "%Y%m%d")
Order by 1 desc


Select  distinct DueFRomSUpplierorg
From TMP_SIEMENS



Select  MAX(Length(PROJECTDESCR))
From TMP_SIEMENS