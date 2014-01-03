drop table if exists entries;
create table pib7085 (
  id integer primary key autoincrement,
  region text not null,
  setenta integer not null,
  setentauno integer not null,
  setentados integer not null,
  setentatres integer not null,
  setentacuatro integer not null,
  setentacinco integer not null,
  setentaseis integer not null,
  setentasiete integer not null,
  setentaocho integer not null,
  setentanueve integer not null,
  ochenta integer not null,
  ochentauno integer not null,
  ochentados integer not null,
  ochentatres integer not null,
  ochentacuatro integer not null,
  ochentacinco integer not null
);

create table pib8598 (
  id integer primary key autoincrement,
  region text not null,
  ochentacinco integer not null,
  ochentaseis integer not null,
  ochentasiete integer not null,
  ochentaocho integer not null,
  ochentanueve integer not null,
  noventa integer not null,
  noventauno integer not null,
  noventados integer not null,
  noventatres integer not null,
  noventacuatro integer not null,
  noventacinco integer not null,
  noventaseis integer not null,
  noventasiete integer not null,
  noventaocho integer not null
);

create table pib9604 (
  id integer primary key autoincrement,
  region text not null,
  noventaseis integer not null,
  noventasiete integer not null,
  noventaocho integer not null,
  noventanueve integer not null,
  dosmil integer not null,
  dosmiluno integer not null,
  dosmildos integer not null,
  dosmiltres integer not null,
  dosmilcuartro integer not null


);

create table user (
  id integer primary key autoincrement,
  name text not null,
  user text not null unique,
  pass text not null
);


create table indices(
	id integer primary key autoincrement,
	nombre text not null
);

insert into indices(nombre) values ("PIB_70_85");
insert into indices(nombre) values ("PIB_85_98");
insert into indices(nombre) values ("PIB_96_04");

insert into user (name, user, pass) values ("Administrador", "admin", "384c49fc568ad82a1bc910eab0acc82ee76512faf78caae2932b6ba0c9869ac0463c310eb60d34b4c8c43029f14e2ed4f481e780f7bf8874776dc6802f0e7d39");

insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Tarapacá", 6785, 7458, 7558, 7385, 7766, 7151, 7151, 7567, 9241, 9912, 11395, 11351, 10453, 10302, 11027, 11850);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Antofagasta", 11547, 13238, 11930, 12321, 13872, 12177, 14789, 16091, 18063, 18400, 19657, 19401, 20425, 20081, 20687, 20446);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Atacama", 5145, 4846, 4368, 4130, 4781, 4694, 4705, 4613, 5296, 5947, 6788, 7386, 6705, 6856, 7315, 7990);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Coquimbo", 4329, 4640, 4656, 4840, 5027, 4947, 5166, 5440, 5857, 6394, 6880, 6979, 6713, 6843, 7400, 7696);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Valparaíso", 29909, 33418, 32698, 31712, 35147, 30421, 31650, 33720, 34752, 36626, 37370, 38052, 32678, 33217, 35148, 35890);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("OHiggins", 14467, 14093, 14857, 13838, 17001, 15478, 14952, 16043, 16587, 18395, 19011, 20033, 20584, 18887, 19756, 21246);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Maule", 9716, 9799, 9639, 8568, 9406, 9871, 10194, 11194, 11172, 11903, 11815, 12676, 12926, 12995, 13536, 14350);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Biobío", 25128, 28767, 28314, 26920, 27656, 24124, 26265, 27930, 28099, 29977, 33960, 34437, 29743, 31869, 34438, 35742);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Araucanía", 8194, 9014, 9001, 8223, 8974, 8866, 9012, 9745, 9572, 10028, 10852, 10900, 9879, 10347, 11056, 11576);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Los Lagos", 12271, 13312, 13023, 12640, 13467, 13015, 13332, 13904, 14157, 14327, 15667, 16121, 14802, 14980, 15768, 16642);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Aysén", 1230, 1269, 1247, 1293, 1178, 1162, 1182, 1297, 1357, 1463, 1488, 1455, 1506, 1545, 1572, 1654);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Magallanes", 7254, 8157, 7691, 6992, 7447, 6229, 6355, 6723, 7672, 7907, 9676, 10520, 9807, 10046, 10389, 10188);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("Metropolitana", 131658, 144589, 144320, 134565, 127654, 106789, 108548, 119512, 133242, 146451, 155039, 162282, 135474, 134487, 142037, 145270);
insert into pib7085 (region, setenta, setentauno, setentados, setentatres, setentacuatro, setentacinco, setentaseis, setentasiete, setentaocho, setentanueve, ochenta, ochentauno, ochentados, ochentatres, ochentacuatro, ochentacinco) values ("No Regionalizado", 15463, 15850, 15405, 14322, 11177, 8119, 8645, 13990, 16351, 19478, 23850, 31959, 17829, 14725, 17797, 15907);


insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Tarapacá", 107082, 112383, 114583, 117417, 128993, 129475, 137199, 155991, 155667, 181269, 205325, 220710 ,249503, 242090);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Antofagasta",208681,212375,212081, 229528, 269374, 274953, 311288, 316527, 328599, 360110, 381255, 468282, 526031, 590248);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Atacama", 49560, 50079, 54810, 58236, 64809,69146, 81853 , 92902,  102720 ,117375, 134000, 152758, 160465, 172207);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Coquimbo", 74610  ,79172  ,80288  ,96511  ,102770 ,106716 ,114003 ,128413 ,126567 ,138713 ,149177, 155593 ,160262 ,177798);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Valparaíso", 295097, 300820, 310877, 342951, 372038, 382164, 396184, 426711, 458806, 489960, 531397, 546402 ,543275, 561437);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("OHiggins", 16910, 184698, 191295, 193950,199826, 201481 ,208428, 231712, 243652, 266211, 273770, 285561, 286865, 304445);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Maule", 121992,  131449, 136446, 148535, 153789, 160862, 178408, 206944, 212791, 238899, 260624, 262018, 270387, 270583);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Biobío", 335024, 344164, 358895, 386029, 400757, 414716, 429616, 460894, 476670, 485207, 518864, 535451, 557114, 565753);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Araucanía", 71635, 71735,  80930,  90181,  96409,  97655, 100906, 115176, 126346, 128690, 142695, 147594, 157561, 160920);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Los Lagos", 114469,  122891, 134589, 139695, 147668,162368, 164276, 180081, 190693, 203155, 224318, 242844, 269710, 284920);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Aysén", 15268, 16392,  17788,  18314,  18595,  19521,  19735,  20961,  22519,  25228,  25632,  28845,  32946,  34825);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Magallanes", 99314, 100767, 106638, 105455, 117122, 117551, 122315, 122652, 123661, 119073, 122847, 125956, 132651, 135.035);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("Metropolitana", 1206464,  1298379, 1403977, 1500177, 1673117, 1736608, 1904349, 2174295, 2352444, 2422839, 2685251, 2866987, 3099931, 3200334);
insert into pib8598 (region, ochentacinco, ochentaseis, ochentasiete, ochentaocho, ochentanueve, noventa, noventauno, noventados, noventatres, noventacuatro, noventacinco, noventaseis, noventasiete, noventaocho) values ("No Regionalizado", 8615, 8686, 8588, 8430, 8622, 8522, 8705, 8779, 8852, 8530, 8758, 8508, 8739, 8767);


insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Tarapacá", 905701, 1030040, 1041193, 1115504, 1127226, 1118346, 1146401, 1282330, 1314834);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Antofagasta", 1944622, 2180219, 2451582, 2407789, 2364831, 2715008, 2619098, 2783064, 2960576);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Atacama",  586020, 624214, 663349, 652511, 641406,670345, 644260, 658387, 669684);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Coquimbo", 596301, 621919, 673140, 712495, 808604, 804736, 792281, 833625, 871530);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Valparaíso", 2658598, 2665348, 2772280, 2863018, 2925515, 3008323, 3072320, 3146202, 3357072);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("OHiggins", 1188356, 1236781, 1281905, 1294830, 1413408, 1452089, 1547509, 1541692, 1651278);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Maule", 1032923, 1097957, 1122601, 1117793, 1220088, 1284636, 1296565, 1333671, 1396846);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Biobío",  2780195, 2920144, 2935457, 2931537, 3027910, 3090250, 3268213, 3428271, 3634265);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ( "Araucanía", 773850, 823111, 847011, 838821, 896264, 883830, 914957, 928449, 987621);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Los Lagos",  1249677, 1395171, 1452791, 1456947, 1573873, 1632081, 1708070, 1730374, 1857127);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Aysén",  141716, 156021, 159580, 170167, 176601, 193555, 213608, 212481, 221201);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Magallanes", 401360, 422651, 444828, 454480, 436440, 457158, 473745, 485043, 487312);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("Metropolitana", 13945724,  14824797,  15048761,  14752778,  15460202,  15856994,  16199205,  16790574,  17754835);
insert into pib9604 (region, noventaseis, noventasiete, noventaocho, noventanueve, dosmil, dosmiluno, dosmildos, dosmiltres, dosmilcuartro) values ("No Regionalizado", 35041, 36568,  38341,  39606,  41509,  43035,  43858,  44819,  45157);



