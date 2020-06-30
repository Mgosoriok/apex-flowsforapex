PROMPT >> Flows4APEX Installation
PROMPT >> =======================

PROMPT >> Please enter needed Variables

ACCEPT ws_name char default 'FLOWS4APEX' PROMPT 'Enter Workspace Name: '
ACCEPT parsing_schema char default 'FLOWS4APEX' PROMPT 'Enter Parsing Schema: '
ACCEPT app_alias char default 'F4A' PROMPT 'Enter Application Alias: '


PROMPT >> Database Objects Installation
PROMPT >> =============================

PROMPT >> Installing Tables
@ddl/install_tables.sql

PROMPT >> Installing Package Specifications
@plsql/flow_api_pkg.pks
@plsql/flow_bpmn_parser_pkg.pks

PRoMPT >> Installing Package Bodies
@plsql/flow_api_pkg.pkb
@plsql/flow_bpmn_parser_pkg.pkb

PROMPT >> installing Views
@views/flow_p0001_vw.sql
@views/flow_p0003_vw.sql
@views/flow_p0010_vw.sql
@views/flow_p0010_instances_vw.sql
@views/flow_p0010_subflows_vw.sql
@views/flow_p0010_branches_vw.sql
@views/flow_dgrm_lov.sql

PROMPT >> Application Installation
PROMPT >> ========================

PROMPT >> Set up environment
begin
  -- change this accordingly
  apex_application_install.set_workspace('&ws_name.');
  apex_application_install.generate_application_id;
  apex_application_install.generate_offset;
  apex_application_install.set_schema('&parsing_schema.');
  apex_application_install.set_application_alias('&app_alias.');
end;
/

PROMPT >> Install Application
@apex/install.sql
