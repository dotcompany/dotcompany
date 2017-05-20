
SET PATH=%PATH%;c:\dotcompany\db\;
set isc_user=SYSDBA
set isc_password=masterkey

GFIX -v -f automotivo.fdb
GFIX -m -i automotivo.fdb

GFIX -v -f automotivo.fdb
GFIX -m -i automotivo.fdb

gbak -g -b -z -v -i automotivo.fdb ofia.gbk
gbak -c -v ofia.gbk automotivonovo.fdb
gfix -write sync automotivonovo.fdb


GFIX -v -f automotivo.fdb
GFIX -m -i automotivo.fdb

GFIX -v -f automotivonovo.fdb
GFIX -m -i automotivonovo.fdb
