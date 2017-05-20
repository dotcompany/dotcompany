
SET PATH=%PATH%;C:\dotcompany\db\;
set isc_user=SYSDBA
set isc_password=masterkey

GFIX -v -f banco.fdb
GFIX -m -i banco.fdb

GFIX -v -f banco.fdb
GFIX -m -i banco.fdb

gbak -g -b -z -v -i banco.fdb ofia.gbk
gbak -c -v ofia.gbk banconovo.fdb
gfix -write sync banconovo.fdb


GFIX -v -f banconovo.fdb
GFIX -m -i banconovo.fdb

GFIX -v -f banco.fdb
GFIX -m -i banco.fdb
