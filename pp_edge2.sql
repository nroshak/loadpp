drop table pp_edge2;

create table pp_edge2 as
(select node_1,
cast(null as varchar2(10)) as node1_type,
rel_type,
cast(null as varchar2(10)) as relt,
node_2,
cast(null as varchar2(10)) as node2_type
from pp_edges);


create index pp_ind_edg2_n1 on pp_edge2 (node_1);
create index pp_ind_edg2_n2 on pp_edge2 (node_2);

update pp_edge2 p2 
set 
  (node1_type) = 
  (select 'E' from pp_entities e 
  where e.node_id = p2.node_1) 
where node_1 in (select node_id from pp_entities)
;

update pp_edge2 p2 
set 
(node2_type) = 
  (select 'E' from pp_entities a 
  where a.node_id = p2.node_2) 
where node_2 in (select node_id from pp_entities)
; 

update pp_edge2 p2 
set 
  (node1_type) = 
  (select 'A' from pp_addr e 
  where e.node_id = p2.node_1) 
where node_1 in (select node_id from pp_addr)
;

update pp_edge2 p2 
set 
(node2_type) = 
  (select 'A' from pp_addr a 
  where a.node_id = p2.node_2) 
where node_2 in (select node_id from pp_addr)
;

update pp_edge2 p2 
set 
  (node1_type) = 
  (select 'O' from pp_officers e 
  where e.node_id = p2.node_1) 
where node_1 in (select node_id from pp_officers)
;

update pp_edge2 p2 
set 
(node2_type) = 
  (select 'O' from pp_officers a 
  where a.node_id = p2.node_2) 
where node_2 in (select node_id from pp_officers)
; 

update pp_edge2 p2 
set 
  (node1_type) = 
  (select 'I' from pp_intermed e 
  where e.node_id = p2.node_1) 
where node_1 in (select node_id from pp_intermed)
;

update pp_edge2 p2 
set 
(node2_type) = 
  (select 'I' from pp_intermed a 
  where a.node_id = p2.node_2) 
where node_2 in (select node_id from pp_intermed)
; 

create bitmap index pp_e2_n1 on pp_edge2 (node1_type);
create bitmap index pp_e2_n2 on pp_edge2 (node2_type);

