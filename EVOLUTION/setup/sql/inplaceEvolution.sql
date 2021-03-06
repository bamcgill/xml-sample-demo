
/* ================================================  
 *    
 * Copyright (c) 2016 Oracle and/or its affiliates.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * ================================================
 */

--
declare
  V_OLD_XML_SCHEMA         XMLType := xdburitype('%DEMOCOMMON%/xsd/purchaseOrder.xsd').getXML();
  V_NEW_XML_SCHEMA         XMLType := xdburitype('%DEMOCOMMON%/xsd/purchaseOrder.v2.xsd').getXML();
  V_RESULT                 BOOLEAN;
  V_SCHEMA_DIFF_PATH       VARCHAR2(700) := '%DEMOLOCAL%/schemaDiffDocument.xml';
  V_SCHEMA_DIFF            XMLTYpe;
begin

	DBMS_XMLSCHEMA_ANNOTATE.disableMaintainDOM(V_OLD_XML_SCHEMA);

  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,'PurchaseOrderType','%ROOT_TYPE%');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,'ShippingInstructionsType','SHIPPING_INSTRUCTIONS_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,'LineItemsType','LINEITEMS_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,'LineItemType','LINEITEM_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,'ActionsType','ACTIONS_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'ActionsType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'Action','ACTION_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_OLD_XML_SCHEMA,'PartType','PART_T');

	DBMS_XMLSCHEMA_ANNOTATE.disableMaintainDOM(V_NEW_XML_SCHEMA);

  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,'PurchaseOrderType','%ROOT_TYPE%');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,'ShippingInstructionsType','SHIPPING_INSTRUCTIONS_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,'LineItemsType','LINEITEMS_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,'LineItemType','LINEITEM_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,'ActionsType','ACTIONS_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'ActionsType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'Action','ACTION_T');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,'PartType','PART_T');

  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'PurchaseOrderType',DBMS_XDB_CONSTANTS.XSD_ATTRIBUTE,'DateCreated','TIMESTAMP WITH TIME ZONE');
  DBMS_XMLSCHEMA_ANNOTATE.setSqlType(V_NEW_XML_SCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'PurchaseOrderType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'Notes','CLOB');

  if DBMS_XDB.existsResource(V_SCHEMA_DIFF_PATH) then
    DBMS_XDB.deleteResource(V_SCHEMA_DIFF_PATH);
  end if;
  
  SELECT xmlDiff(V_OLD_XML_SCHEMA,V_NEW_XML_SCHEMA)
    into V_SCHEMA_DIFF
    from dual;
    
  V_RESULT := DBMS_XDB.createResource(V_SCHEMA_DIFF_PATH,V_SCHEMA_DIFF);
  
end;
/   
select xdburitype('%DEMOLOCAL%/schemaDiffDocument.xml').getXML() XML
  from dual
/
pause
--
begin
  DBMS_XMLSCHEMA.inPlaceEvolve
  (
    '%SCHEMAURL%',
    xdburitype('%DEMOLOCAL%/schemaDiffDocument.xml').getXML()   
  );
end;
/
--
@@insertDocument3.sql
--
select OBJECT_VALUE PURCHASE_ORDER
  from %TABLE1%
 where XMLExists
       (
         '$p/PurchaseOrder[Reference/text()="ABULL-20100809203001137PDT"]' 
         passing OBJECT_VALUE as "p"
       )
/
--
