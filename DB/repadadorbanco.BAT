
SET PATH=%PATH%;c:\dotcompany\db\;
set isc_user=SYSDBA
set isc_password=masterkey

GFIX -v -f boleto2.fdb
GFIX -m -i boleto2.fdb

GFIX -v -f boleto2.fdb
GFIX -m -i boleto2.fdb

gbak -g -b -z -v -i boleto2.fdb ofia.gbk
gbak -c -v ofia.gbk automotivonovo.fdb
gfix -write sync automotivonovo.fdb


GFIX -v -f boleto2.fdb
GFIX -m -i boleto2.fdb

GFIX -v -f automotivonovo.fdb
GFIX -m -i automotivonovo.fdb
