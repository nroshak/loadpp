-- if PKs were not added at create time

alter table pp_entities
add constraint pk_pp_ent
primary key (node_id) ;

alter table pp_addr
add constraint pk_pp_addr
primary key (node_id);

alter table pp_intermed
add constraint pk_pp_int
primary key (node_id);

alter table pp_officers
add constraint pk_pp_ofc
primary key (node_id);
