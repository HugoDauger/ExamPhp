create view ST_UNITS_OF_MEASURE as
select `st_units_of_measure`.`UNIT_NAME`         AS `UNIT_NAME`,
       `st_units_of_measure`.`UNIT_TYPE`         AS `UNIT_TYPE`,
       `st_units_of_measure`.`CONVERSION_FACTOR` AS `CONVERSION_FACTOR`,
       `st_units_of_measure`.`DESCRIPTION`       AS `DESCRIPTION`
from json_table(
             '[["metre","LINEAR","",1],["millimetre","LINEAR","",0.001],["centimetre","LINEAR","",0.01],["German legal metre","LINEAR","",1.0000135965],["foot","LINEAR","",0.3048],["US survey foot","LINEAR","",0.30480060960121924],["Clarke\'s yard","LINEAR","",0.9143917962],["Clarke\'s foot","LINEAR","",0.3047972654],["British link (Sears 1922 truncated)","LINEAR","",0.20116756],["nautical mile","LINEAR","",1852],["fathom","LINEAR","",1.8288],["US survey chain","LINEAR","",20.11684023368047],["US survey link","LINEAR","",0.2011684023368047],["US survey mile","LINEAR","",1609.3472186944375],["Indian yard","LINEAR","",0.9143985307444408],["kilometre","LINEAR","",1000],["Clarke\'s chain","LINEAR","",20.1166195164],["Clarke\'s link","LINEAR","",0.201166195164],["British yard (Benoit 1895 A)","LINEAR","",0.9143992],["British yard (Sears 1922)","LINEAR","",0.9143984146160287],["British foot (Sears 1922)","LINEAR","",0.3047994715386762],["Gold Coast foot","LINEAR","",0.3047997101815088],["British chain (Sears 1922)","LINEAR","",20.116765121552632],["yard","LINEAR","",0.9144],["British link (Sears 1922)","LINEAR","",0.2011676512155263],["British foot (Benoit 1895 A)","LINEAR","",0.3047997333333333],["Indian foot (1962)","LINEAR","",0.3047996],["British chain (Benoit 1895 A)","LINEAR","",20.1167824],["chain","LINEAR","",20.1168],["British link (Benoit 1895 A)","LINEAR","",0.201167824],["British yard (Benoit 1895 B)","LINEAR","",0.9143992042898124],["British foot (Benoit 1895 B)","LINEAR","",0.30479973476327077],["British chain (Benoit 1895 B)","LINEAR","",20.116782494375872],["British link (Benoit 1895 B)","LINEAR","",0.2011678249437587],["British foot (1865)","LINEAR","",0.30480083333333335],["Indian foot","LINEAR","",0.30479951024814694],["Indian foot (1937)","LINEAR","",0.30479841],["Indian foot (1975)","LINEAR","",0.3047995],["British foot (1936)","LINEAR","",0.3048007491],["Indian yard (1937)","LINEAR","",0.91439523],["Indian yard (1962)","LINEAR","",0.9143988],["Indian yard (1975)","LINEAR","",0.9143985],["Statute mile","LINEAR","",1609.344],["link","LINEAR","",0.201168],["British yard (Sears 1922 truncated)","LINEAR","",0.914398],["British foot (Sears 1922 truncated)","LINEAR","",0.30479933333333337],["British chain (Sears 1922 truncated)","LINEAR","",20.116756]]',
             '$[*]'
             columns (`UNIT_NAME` varchar(255) character set utf8mb4 path '$[0]', `UNIT_TYPE` varchar(7) character set utf8mb4 path '$[1]', `DESCRIPTION` varchar(255) character set utf8mb4 path '$[2]', `CONVERSION_FACTOR` double path '$[3]')) `st_units_of_measure`;

