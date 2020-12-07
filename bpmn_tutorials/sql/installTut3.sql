set define off
PROMPT >> Loading Exported Diagrams
PROMPT >> Loading Example "AA3 - Inclusive Gateways"
begin
insert into flow_diagrams( dgrm_name, dgrm_content)
 values (
'AA3 - Inclusive Gateways',
apex_string.join_clob(
  apex_t_varchar2(
  q'[<?xml version='1.0' encoding='UTF-8'?>]'
  , q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:apex='http://www.apex.mt-ag.com' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
  , q'[  <bpmn:process id='Process_Tutorial_3' name='Inclusive Gateway Tutorial' isExecutable='false'>]'
  , q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
  , q'[Flowquest Consulting.]'
  , q'[twitter: @FlowquestR</bpmn:documentation>]'
  , q'[    <bpmn:startEvent id='Event_1warv4h' name='Start Tutorial 3'>]'
  , q'[      <bpmn:outgoing>Flow_166n1nj</bpmn:outgoing>]'
  , q'[    </bpmn:startEvent>]'
  , q'[    <bpmn:task id='Activity_1ve7i3d' name='Set Up Your Gateway Variable'>]'
  , q'[      <bpmn:incoming>Flow_0mzxaxx</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1qhovsw</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_166n1nj' sourceRef='Event_1warv4h' targetRef='Activity_0buimbx' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1qhovsw' sourceRef='Activity_1ve7i3d' targetRef='Gateway_Inclusive_Opening' />]'
  , q'[    <bpmn:inclusiveGateway id='Gateway_Inclusive_Opening' name='Opening Inclusive Gateway' default='Flow_C'>]'
  , q'[      <bpmn:incoming>Flow_1qhovsw</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_A</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_B</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_C</bpmn:outgoing>]'
  , q'[    </bpmn:inclusiveGateway>]'
  , q'[    <bpmn:task id='Activity_0buy3jb' name='A'>]'
  , q'[      <bpmn:incoming>Flow_A</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0raoa8o</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_A' name='Flow A' sourceRef='Gateway_Inclusive_Opening' targetRef='Activity_0buy3jb' />]'
  , q'[    <bpmn:task id='Activity_1iqxrc6' name='B'>]'
  , q'[      <bpmn:incoming>Flow_B</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0dmljno</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_B' name='Flow B' sourceRef='Gateway_Inclusive_Opening' targetRef='Activity_1iqxrc6' />]'
  , q'[    <bpmn:task id='Activity_1ajwcwr' name='C'>]'
  , q'[      <bpmn:incoming>Flow_C</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1hljb3z</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_C' name='Flow C' sourceRef='Gateway_Inclusive_Opening' targetRef='Activity_1ajwcwr' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_0dmljno' sourceRef='Activity_1iqxrc6' targetRef='Gateway_0008jgf' />]'
  , q'[    <bpmn:inclusiveGateway id='Gateway_0008jgf' name='Merge and Resync'>]'
  , q'[      <bpmn:incoming>Flow_0dmljno</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_0raoa8o</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_1hljb3z</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0jbvoj2</bpmn:outgoing>]'
  , q'[    </bpmn:inclusiveGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0raoa8o' sourceRef='Activity_0buy3jb' targetRef='Gateway_0008jgf' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1hljb3z' sourceRef='Activity_1ajwcwr' targetRef='Gateway_0008jgf' />]'
  , q'[    <bpmn:task id='Activity_0gtcq94' name='D'>]'
  , q'[      <bpmn:incoming>Flow_0jbvoj2</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1kt6sw3</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0jbvoj2' sourceRef='Gateway_0008jgf' targetRef='Activity_0gtcq94' />]'
  , q'[    <bpmn:endEvent id='Event_0n1anww' name='End Tutorial 3'>]'
  , q'[      <bpmn:incoming>Flow_1kt6sw3</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1kt6sw3' sourceRef='Activity_0gtcq94' targetRef='Event_0n1anww' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_0mzxaxx' sourceRef='Activity_0buimbx' targetRef='Activity_1ve7i3d' />]'
  , q'[    <bpmn:scriptTask id='Activity_0buimbx' name='ScriptTask to Set Gateway Variable'>]'
  , q'[      <bpmn:incoming>Flow_166n1nj</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0mzxaxx</bpmn:outgoing>]'
  , q'[      <apex:plsqlCode>tutorial.AA3_set_route_AC;</apex:plsqlCode>]'
  , q'[    </bpmn:scriptTask>]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1w4hasz'>]'
  , q'[      <bpmn:text>An Inclusive Gateway is a cross between an Exclusive Gateway in Tutorial 1 and a Parallel Gateway in Tutorial 2.]'
  , q'[]'
  , q'[You can choose 1 or more (or all) of the possible routes.]'
  , q'[]'
  , q'[Routing is supplied to the gateway in a Process Variable named &lt;gateway id&gt;&lt;:route&gt;.]'
  , q'[]'
  , q'[Routes selected are listed in the variable, colon separated]'
  , q'[]'
  , q'[In our Example, the Gateway ID is 'Gateway_Inclusive_Opening', routes have IDs 'Flow_A', 'Flow_B', and 'Flow_C'.Â  So to choose A and C only, set the variable]'
  , q'[]'
  , q'['Gateway_Inclusive_Opening:route' with varchar2 value 'Flow_A:Flow_C'.]'
  , q'[]'
  , q'[In this example, we ran a scriptTask as the first task in the flow which set this variable for you.Â  If you look at the variables tab above, you can see the variable and it's value.Â ]'
  , q'[]'
  , q'[Step forward &amp; see routes A &amp; C become the current task.]'
  , q'[]'
  , q'[You can restart the model, and manually change the routing variable if you want.]'
  , q'[]'
  , q'[This is a tutorial, and we've set the variable using a script that's pretty dumb.Â  Obviously in your app, your pl/sql script could look at process variables, or use the process variables to go off into the database &amp; do some query or whatever to create the routing that makes sense for your app.]'
  , q'[]'
  , q'[Note that an Inclusive Gateway also can have a default path - on Flow C in our example.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0k4787z' sourceRef='Activity_1ve7i3d' targetRef='TextAnnotation_1w4hasz' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0v50lx0'>]'
  , q'[      <bpmn:text>This sets the process variable for the Gateway.]'
  , q'[]'
  , q'[]'
  , q'[We've used a scriptTask that runs a simple PL/SQL procedure that sets the routing to 'Flow_A:Flow_C'.]'
  , q'[]'
  , q'[Your application could include a PL/SQL procedure that performs a query in the database &amp; which determines the route through your process.  That makes this very powerful!]'
  , q'[]'
  , q'[]'
  , q'[In your own copy of the model, you can hard code the routing to anything as there are tutorial-helper procedures supplied for all combinations. Select this scriptTask, then look at the APEX tab in the Properties Panel.Â  Routines are tutorial.AA3_set_route_AÂ  (or _B or C or AB or AC or BC or ABC).</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0oa2eg1' sourceRef='Activity_0buimbx' targetRef='TextAnnotation_0v50lx0' />]'
  , q'[  </bpmn:process>]'
  , q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
  , q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Process_Tutorial_3'>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0mzxaxx_di' bpmnElement='Flow_0mzxaxx'>]'
  , q'[        <di:waypoint x='600' y='490' />]'
  , q'[        <di:waypoint x='640' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1kt6sw3_di' bpmnElement='Flow_1kt6sw3'>]'
  , q'[        <di:waypoint x='1260' y='490' />]'
  , q'[        <di:waypoint x='1322' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0jbvoj2_di' bpmnElement='Flow_0jbvoj2'>]'
  , q'[        <di:waypoint x='1105' y='490' />]'
  , q'[        <di:waypoint x='1160' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1hljb3z_di' bpmnElement='Flow_1hljb3z'>]'
  , q'[        <di:waypoint x='1000' y='620' />]'
  , q'[        <di:waypoint x='1080' y='620' />]'
  , q'[        <di:waypoint x='1080' y='515' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0raoa8o_di' bpmnElement='Flow_0raoa8o'>]'
  , q'[        <di:waypoint x='1000' y='360' />]'
  , q'[        <di:waypoint x='1080' y='360' />]'
  , q'[        <di:waypoint x='1080' y='465' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0dmljno_di' bpmnElement='Flow_0dmljno'>]'
  , q'[        <di:waypoint x='1000' y='490' />]'
  , q'[        <di:waypoint x='1055' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1w4x95t_di' bpmnElement='Flow_C'>]'
  , q'[        <di:waypoint x='820' y='515' />]'
  , q'[        <di:waypoint x='820' y='620' />]'
  , q'[        <di:waypoint x='900' y='620' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='842' y='583' width='35' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1jj2iet_di' bpmnElement='Flow_B'>]'
  , q'[        <di:waypoint x='845' y='490' />]'
  , q'[        <di:waypoint x='900' y='490' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='856' y='472' width='34' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0raiyk0_di' bpmnElement='Flow_A'>]'
  , q'[        <di:waypoint x='820' y='465' />]'
  , q'[        <di:waypoint x='820' y='360' />]'
  , q'[        <di:waypoint x='900' y='360' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='833' y='333' width='34' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1qhovsw_di' bpmnElement='Flow_1qhovsw'>]'
  , q'[        <di:waypoint x='740' y='490' />]'
  , q'[        <di:waypoint x='795' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_166n1nj_di' bpmnElement='Flow_166n1nj'>]'
  , q'[        <di:waypoint x='448' y='490' />]'
  , q'[        <di:waypoint x='500' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_1warv4h_di' bpmnElement='Event_1warv4h'>]'
  , q'[        <dc:Bounds x='412' y='472' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='394' y='515' width='72' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1ve7i3d_di' bpmnElement='Activity_1ve7i3d'>]'
  , q'[        <dc:Bounds x='640' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_19m857j_di' bpmnElement='Gateway_Inclusive_Opening'>]'
  , q'[        <dc:Bounds x='795' y='465' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='715' y='406' width='90' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0buy3jb_di' bpmnElement='Activity_0buy3jb'>]'
  , q'[        <dc:Bounds x='900' y='320' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1iqxrc6_di' bpmnElement='Activity_1iqxrc6'>]'
  , q'[        <dc:Bounds x='900' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1ajwcwr_di' bpmnElement='Activity_1ajwcwr'>]'
  , q'[        <dc:Bounds x='900' y='580' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_03knf6b_di' bpmnElement='Gateway_0008jgf'>]'
  , q'[        <dc:Bounds x='1055' y='465' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1103' y='416' width='53' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0gtcq94_di' bpmnElement='Activity_0gtcq94'>]'
  , q'[        <dc:Bounds x='1160' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0n1anww_di' bpmnElement='Event_0n1anww'>]'
  , q'[        <dc:Bounds x='1322' y='472' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1306' y='515' width='69' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0l6cpk6_di' bpmnElement='Activity_0buimbx'>]'
  , q'[        <dc:Bounds x='500' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1w4hasz_di' bpmnElement='TextAnnotation_1w4hasz'>]'
  , q'[        <dc:Bounds x='610' y='-45' width='1000' height='345' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0v50lx0_di' bpmnElement='TextAnnotation_0v50lx0'>]'
  , q'[        <dc:Bounds x='610' y='700' width='510' height='226' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0k4787z_di' bpmnElement='Association_0k4787z'>]'
  , q'[        <di:waypoint x='664' y='450' />]'
  , q'[        <di:waypoint x='420' y='80' />]'
  , q'[        <di:waypoint x='610' y='80' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0oa2eg1_di' bpmnElement='Association_0oa2eg1'>]'
  , q'[        <di:waypoint x='574' y='530' />]'
  , q'[        <di:waypoint x='677' y='700' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[    </bpmndi:BPMNPlane>]'
  , q'[  </bpmndi:BPMNDiagram>]'
  , q'[</bpmn:definitions>]'
  , q'[]'
  )
));
commit;
end;
/
 
PROMPT >> Example "AA3 - Inclusive Gateways" loaded.
PROMPT >> ========================================================
 