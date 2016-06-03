load data 
infile 'Entities.out.csv' "str '\n'"
append
into table PP_ENTITIES
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( name CHAR(4000),
             original_name CHAR(4000),
             former_name CHAR(4000),
             jurisdiction CHAR(4000),
             jurisdiction_description CHAR(4000),
             company_type CHAR(4000),
             address CHAR(4000),
             internal_id CHAR(4000),
             incorporation_date DATE "DD-MON-RR",
             inactivation_date DATE "DD-MON-RR",
             struck_off_date DATE "DD-MON-RR",
             dorm_date CHAR(4000),
             status CHAR(4000),
             service_provider CHAR(4000),
             ibcRUC CHAR(4000),
             country_codes CHAR(4000),
             countries CHAR(4000),
             note CHAR(4000),
             valid_until CHAR(4000),
             node_id CHAR(4000),
             sourceID CHAR(4000)
           )
