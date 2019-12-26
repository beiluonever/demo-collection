/*
 Navicat Premium Data Transfer

 Source Server         : 1.67
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 192.168.1.67:3333
 Source Schema         : workflow

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 26/12/2019 11:24:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for act_de_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_de_databasechangelog`;
CREATE TABLE `act_de_databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_databasechangelog
-- ----------------------------
INSERT INTO `act_de_databasechangelog` VALUES ('1', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2019-12-18 18:02:59', 1, 'EXECUTED', '8:e70d1d9d3899a734296b2514ccc71501', 'createTable tableName=ACT_DE_MODEL; createIndex indexName=idx_proc_mod_created, tableName=ACT_DE_MODEL; createTable tableName=ACT_DE_MODEL_HISTORY; createIndex indexName=idx_proc_mod_history_proc, tableName=ACT_DE_MODEL_HISTORY; createTable tableN...', '', NULL, '3.6.2', NULL, NULL, '6663377081');
INSERT INTO `act_de_databasechangelog` VALUES ('3', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2019-12-18 18:02:59', 2, 'EXECUTED', '8:3a9143bef2e45f2316231cc1369138b6', 'addColumn tableName=ACT_DE_MODEL; addColumn tableName=ACT_DE_MODEL_HISTORY', '', NULL, '3.6.2', NULL, NULL, '6663377081');

-- ----------------------------
-- Table structure for act_de_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_de_databasechangeloglock`;
CREATE TABLE `act_de_databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_databasechangeloglock
-- ----------------------------
INSERT INTO `act_de_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for act_de_model
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model`;
CREATE TABLE `act_de_model`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_key` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model_comment` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `model_editor_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `thumbnail` longblob,
  `model_type` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_proc_mod_created`(`created_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_de_model
-- ----------------------------
INSERT INTO `act_de_model` VALUES ('36dd736e-217e-11ea-9dc2-9061aebe2144', '1', '1', '1', NULL, '2019-12-18 18:07:35.558000', 'admin', '2019-12-23 10:03:07.666000', 'admin', 1, '{\"modelId\":\"36dd736e-217e-11ea-9dc2-9061aebe2144\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"1\",\"name\":\"1\",\"documentation\":\"1\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.flowable.org/processdef\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\"},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6BB4DA97-C385-43A9-A271-099ABFE29C1C\"}],\"bounds\":{\"lowerRight\":{\"x\":130,\"y\":214},\"upperLeft\":{\"x\":100,\"y\":184}},\"dockers\":[]},{\"resourceId\":\"sid-985E5589-0A74-4E39-A752-B776C5812497\",\"properties\":{\"overrideid\":\"\",\"name\":\"测试0\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"nodetype\":\"\",\"iseditdata\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-466CC66D-874D-4E57-B676-33369AE731D1\"}],\"bounds\":{\"lowerRight\":{\"x\":385,\"y\":239},\"upperLeft\":{\"x\":285,\"y\":159}},\"dockers\":[]},{\"resourceId\":\"sid-6BB4DA97-C385-43A9-A271-099ABFE29C1C\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-985E5589-0A74-4E39-A752-B776C5812497\"}],\"bounds\":{\"lowerRight\":{\"x\":284.15625,\"y\":199},\"upperLeft\":{\"x\":130.609375,\"y\":199}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-985E5589-0A74-4E39-A752-B776C5812497\"}},{\"resourceId\":\"sid-86E1D297-2699-4642-AC34-389E720CA88F\",\"properties\":{\"overrideid\":\"\",\"name\":\"测试1\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"nodetype\":\"\",\"iseditdata\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-D61D6417-8296-4F8B-B660-51C52AF9BA76\"}],\"bounds\":{\"lowerRight\":{\"x\":610,\"y\":239},\"upperLeft\":{\"x\":510,\"y\":159}},\"dockers\":[]},{\"resourceId\":\"sid-466CC66D-874D-4E57-B676-33369AE731D1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-86E1D297-2699-4642-AC34-389E720CA88F\"}],\"bounds\":{\"lowerRight\":{\"x\":509.78125,\"y\":199},\"upperLeft\":{\"x\":385.21875,\"y\":199}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-86E1D297-2699-4642-AC34-389E720CA88F\"}},{\"resourceId\":\"sid-25EF5A92-0B7D-44F4-958F-E98AA8FEB1DD\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":790.5,\"y\":213},\"upperLeft\":{\"x\":762.5,\"y\":185}},\"dockers\":[]},{\"resourceId\":\"sid-D61D6417-8296-4F8B-B660-51C52AF9BA76\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-25EF5A92-0B7D-44F4-958F-E98AA8FEB1DD\"}],\"bounds\":{\"lowerRight\":{\"x\":761.96875,\"y\":199},\"upperLeft\":{\"x\":610.05078125,\"y\":199}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-25EF5A92-0B7D-44F4-958F-E98AA8FEB1DD\"}}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', 0x89504E470D0A1A0A0000000D49484452000001160000002D08060000006B874495000003AF4944415478DAED9D4D4B1B5114865DB8E84FE80FE8A28BFE802EF3030ADD54FC48D40811EA2E0885D095145C74A11BA56ED4821BA3B328685D1935465A025DB928B15D48A54DA2B1696C4CD4E0C7EDB99229210D3575522633791E380C4461E025EF3BE79EB993696B0300000000000000000000703A4AA9F6DDDD5D231E8F5FAEADADA9D5D5555B2A1289A8582CF65DCA87A6680A0E471B606B6B4B653219552A956CADC3C343B5B9B9F9530CF1044DD1141C8CBEAA561A607BE5D9751DE7927619A12457DB049AA2293818DDAA577E094D1324365EDA769515139CA3299A8283D16BF15A26F8187961A709149AA229B8D00476CE05DC1A2C680A2D192C7A06609AE0F3BB094C80A600D64C607EF9AB0B13A02980E5B6BD19CA6D4B21346D013A3B3B1F7475751952DFA494D4917CF6467F4EB06002347517DDDDDDF7A502E2F3113906C5E70FFF47A884BC5E6F6E6E6E6E3B954A9D29219BCDAAC5C5C5AFBDBDBDC7FAEF040B264053E7D3D1D1714FC26443C2E4A2DC40FC2EF92C29477FC342656868E8532E973B5735C8E7F32A140AA57A7A7A9E132C98004D9D1D2AE2E33D1D228383836A7272522D2C2CA8E9E969150C062B43E6B5C7E369B7B4FC9113FD100AEA2FE870E9EBEB2BB4D2B20813A0A9DBD09D8A0E8ED1D1D16B4F57138D46D5C0C0C055395C26AC9CC898999979AFEA607979F9C4E7F3BD255830019A3A76A672A13B955AA162B2B3B3A3A4D9B8946C38950EE7EE6D8325BDBFBF9FAE2758F4CCC5EBF51608164C80A68EEC569EEA4E646A6AEA46AF8F8D8D15CA3397E06D4FA6FE05FDFF2E173FA1A7E47AC987091AAF2B9ADAA7BDD42BEDDFF9F9F91B7D6E1886396B19B1D2B164EAED58AAA7C86EAE6635019AA2A995AAA763191F1F3FB5DAB118B3B3B371662CB4ED68CA8CA562C6726569C6A25B7EBD7F4538BBE9AE507F7F7F91BB4298004DDD7157A8582CFEE173FD235C8140C0FA5DA172B8B08F0513A069EB742D59731F8B5E1699FB588687872B974C86A57D2C95E1229DCB51381CFEA27FE1CB9CA92C2D2DE5F5FE95560B154C80A62E0F9768ADF98B64405A6FF3F7FBFD771A7642F3592109918C3E891CF3522B3C2B8409D0D49D0153BE057DFDAC901C3D0DE9520013A0294F3703262058D01408164C80A60098004D0130019AA229388EEA77E034419DBAEDBD42680A2D472C164B37C3AB40CD4A269361A7BFB50F4DA1E5595F5F7F1C8D468F0E0E0E4EECBEAA6A034422913DA7BF67184D0104F9D23D922BDA07DD2EEBB5B84DA5CF9D708B01D014000000000000000000000000000000000000009A9E5F8EDB9BC9F593CD790000000049454E44AE426082, 0, NULL);
INSERT INTO `act_de_model` VALUES ('91d8fa5f-2183-11ea-9dc2-9061aebe2144', 'ExpenseProcess', 'Expense', '报销流程', NULL, '2019-12-18 18:45:55.848000', 'admin', '2019-12-23 15:21:00.703000', 'admin', 1, '{\"modelId\":\"91d8fa5f-2183-11ea-9dc2-9061aebe2144\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"Expense\",\"name\":\"ExpenseProcess\",\"documentation\":\"报销流程\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.flowable.org/processdef\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"{\\\"executionListeners\\\":[]}\",\"eventlisteners\":\"{\\\"eventListeners\\\":[]}\",\"signaldefinitions\":\"[]\",\"messagedefinitions\":\"[]\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\",\"messages\":[]},\"childShapes\":[{\"resourceId\":\"start\",\"properties\":{\"overrideid\":\"start\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]},\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formproperties\":\"\",\"interrupting\":true},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow1\"}],\"bounds\":{\"lowerRight\":{\"x\":315,\"y\":165},\"upperLeft\":{\"x\":285,\"y\":135}},\"dockers\":[]},{\"resourceId\":\"fillTask\",\"properties\":{\"overrideid\":\"fillTask\",\"name\":\"出差报销\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${taskUser}\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"nodetype\":\"\",\"iseditdata\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow2\"}],\"bounds\":{\"lowerRight\":{\"x\":505,\"y\":190},\"upperLeft\":{\"x\":405,\"y\":110}},\"dockers\":[]},{\"resourceId\":\"judgeTask\",\"properties\":{\"overrideid\":\"judgeTask\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"judgeMore\"},{\"resourceId\":\"judgeLess\"}],\"bounds\":{\"lowerRight\":{\"x\":625,\"y\":170},\"upperLeft\":{\"x\":585,\"y\":130}},\"dockers\":[]},{\"resourceId\":\"directorTak\",\"properties\":{\"overrideid\":\"directorTak\",\"name\":\"经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"className\":\"com.example.demo.listen.ManagerTaskHandler\"}]},\"skipexpression\":\"\",\"nodetype\":\"\",\"iseditdata\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"directorNotPassFlow\"},{\"resourceId\":\"directorPassFlow\"}],\"bounds\":{\"lowerRight\":{\"x\":835,\"y\":190},\"upperLeft\":{\"x\":735,\"y\":110}},\"dockers\":[]},{\"resourceId\":\"bossTask\",\"properties\":{\"overrideid\":\"bossTask\",\"name\":\"老板审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"className\":\"com.example.demo.listen.BossTaskHandler\"}]},\"skipexpression\":\"\",\"nodetype\":\"\",\"iseditdata\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"bossNotPassFlow\"},{\"resourceId\":\"bossPassFlow\"}],\"bounds\":{\"lowerRight\":{\"x\":655,\"y\":320},\"upperLeft\":{\"x\":555,\"y\":240}},\"dockers\":[]},{\"resourceId\":\"end\",\"properties\":{\"overrideid\":\"end\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":799,\"y\":294},\"upperLeft\":{\"x\":771,\"y\":266}},\"dockers\":[]},{\"resourceId\":\"directorNotPassFlow\",\"properties\":{\"overrideid\":\"directorNotPassFlow\",\"name\":\"驳回\",\"documentation\":\"\",\"conditionsequenceflow\":\"${outcome==\'驳回\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"fillTask\"}],\"bounds\":{\"lowerRight\":{\"x\":785,\"y\":109.2734375},\"upperLeft\":{\"x\":455,\"y\":37}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":785,\"y\":37},{\"x\":455,\"y\":37},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"fillTask\"}},{\"resourceId\":\"bossNotPassFlow\",\"properties\":{\"overrideid\":\"bossNotPassFlow\",\"name\":\"驳回\",\"documentation\":\"\",\"conditionsequenceflow\":\"${outcome==\'驳回\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"fillTask\"}],\"bounds\":{\"lowerRight\":{\"x\":554.78125,\"y\":280},\"upperLeft\":{\"x\":455,\"y\":190.609375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":455,\"y\":280},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"fillTask\"}},{\"resourceId\":\"flow1\",\"properties\":{\"overrideid\":\"flow1\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"fillTask\"}],\"bounds\":{\"lowerRight\":{\"x\":404.3515625,\"y\":150},\"upperLeft\":{\"x\":315.53125,\"y\":150}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"fillTask\"}},{\"resourceId\":\"flow2\",\"properties\":{\"overrideid\":\"flow2\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"judgeTask\"}],\"bounds\":{\"lowerRight\":{\"x\":585.25,\"y\":150},\"upperLeft\":{\"x\":505.21875,\"y\":150}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"judgeTask\"}},{\"resourceId\":\"judgeMore\",\"properties\":{\"overrideid\":\"judgeMore\",\"name\":\"大于500元\",\"documentation\":\"\",\"conditionsequenceflow\":\"${money > 500}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"bossTask\"}],\"bounds\":{\"lowerRight\":{\"x\":605,\"y\":239.390625},\"upperLeft\":{\"x\":605,\"y\":170.296875}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"bossTask\"}},{\"resourceId\":\"bossPassFlow\",\"properties\":{\"overrideid\":\"bossPassFlow\",\"name\":\"通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${outcome==\'通过\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"end\"}],\"bounds\":{\"lowerRight\":{\"x\":770.640625,\"y\":280},\"upperLeft\":{\"x\":655.21875,\"y\":280}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"end\"}},{\"resourceId\":\"directorPassFlow\",\"properties\":{\"overrideid\":\"directorPassFlow\",\"name\":\"通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${outcome==\'通过\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"end\"}],\"bounds\":{\"lowerRight\":{\"x\":785,\"y\":265.796875},\"upperLeft\":{\"x\":785,\"y\":190.609375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"end\"}},{\"resourceId\":\"judgeLess\",\"properties\":{\"overrideid\":\"judgeLess\",\"name\":\"小于500元\",\"documentation\":\"\",\"conditionsequenceflow\":\"${money <= 500}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\",\"sequence_flow_text_x\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"directorTak\"}],\"bounds\":{\"lowerRight\":{\"x\":734.78125,\"y\":150},\"upperLeft\":{\"x\":624.984375,\"y\":150}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"directorTak\"}}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', 0x89504E470D0A1A0A0000000D49484452000000D5000000740806000000120077C8000007264944415478DAED9D4F6814571CC77B90F6528A9782070F427B28A597F6A4A7E450DA08522F5D62DC35AB490CB15EDA88684148F0909E6C20D93650BC4815B5066AD494D6ACE96643DA05DB82C436A092226591CD2A9B3FCD9F6D92BEFE7ED399B2A4C6DDECAECECCEEE7033FDEEEE01ADEF7FBBEFB66DE4C5E9E7B0E0000000000000000BCC59E3D7B0C55B9C508772954A880B780F080B7080F788BF080B780F080B7080F788BF080B780F0780B080F788BF080B780F0780B080F788BF080B7080F780B080F788BF080B7080F780B080F788BF080B7080F780B088FB780F080B7080F780BFF8A3E8EF0840ACA2BFA0984275460638CD934393979299148ACDEB871C30C0D0D6DB8FAFBFBAD5D4C8BF96C341A35F178FCA1540837BCE7AD16DE6E10157D7474D44C4D4D996C365B74A9F0C57E369D4E9B9191911931E17DA280B7BE47BFC51CD1E73249736BF0A8D596624291E267E5DB6D822894DF5B377DAD4A6FF5B4C0E9FCEDA14E4B7C6DDD105F845F260AE5F7D66D5FABCE5B3DF7753A7E772C6289AFAD4BC27341FC14BC75DBD7AAF336375477C67A2DF1B545F8CAF1D66D5FAB36542AFADA42788BCD7EF6D60BBE56F54CE5767950F83A5D99B65BBC2554085F226F4B65A4BAED7617DE7AC0DBFAFAFAEDE170F84A6363E3435DEB0F85420BADADAD096983B5B5B59B10DEB3A1AA5B132427607584CA456F2550C72550D3D7AE5D5B7AF4E89151F49E412C1633478E1C99DBB76FDF4F12B46D08EFB950AD17A03ABFCD5815E5AD3D434D4B8856CC3A5CBE7C391D0C06C7F7EFDFBF19E13D13AA7CC1F1D58C5551DE3635357D333838B86CF270EAD4A9DF64B6EA44784F84AAD0C0F866C6AA286F65969A714EF99E442A959A91503D4078D743B5D1A0F862C6AA286F7551A250DC7AAC5E7EEE84CE92D51A2AA7FF3535353BEC65F3EE0DFE17DDF6E73C751FCBE9975C82BC5169A77FF3BA28910FFD371A2A37CB6BC2BBA18104CB143B53B9ED9F9FBC2D2954EDEDED3775952F1FE7CE9DCB48E7FB3845E09A0A6FF370F8F0E1F0B163C7FE5A595977F1CFE835D7810307E61A1A1A5E437856FFF0B6005A5A5A7E1E1818585A2F506D6D6D0BC160B009E1B94F85B705120804B63436364EF4F6F64E2593C915E71AEAE2C58B5999A1FEF442A00855C133164F5478C55B09D68BBA298A9CE225F5C251829491FA425766109E67FFF0B64241F8BC33164FA9132A842FF37D1F83B7840AE10915DE223CA1C2DB0A22773725976BD18B3BEEF8395478EB12F178FC41A99B2D96A392C9E4052FEE0DE7E750E1AD4B0C0F0FEF8EC562D3A9546AC1AD6F31153D1A8DDEF7E22EA67E0E15DEBA887478977C93DCD429BAD8FDB64B28FD99135E15DDEF9BF3E3AD4FD1E7172BF52F43F0172FD0C02DD14F102A4205E5157D9C50112A407806141A203CFD420384A75F680008CF80420384A75F6880F0F40B0D8050E12DA14278FA8506084FBFD0000815DE02C2D32F344078FA8506085F797D1A6740112A842F6F9F4E30A00815C297914AFEE54B4285F01BC618B3697272F252229158D55D859EF5AF9247A351138FC71F4A85F0162A42780DD4E8E8A8717337A1743A6D46464666FCBE4703A142780B9DA19C40CD6592E6D6E051AB75215859BF6FCF45A810DE227723C9DB439D56A8B4756977D665BC05DF0B9FBBE5F1DDB188152A6DD9F29850217C19427567ACD70A95B6848A50217C89A1D230AD2D4245A810BEC4998ABF785192AF3C5542A80855B9080402AF8AAF03EA6D4343C3877A339C914EA808557161DA227E5E9210ADA8AF6BEAAAD436463CA122541B08D4DEBD7BEFAB9F070F1E34DDDDDDE6ECD9B326128998969696AC1DACDF0916A122540522B353BF7AD9D1D1616667674D2E8B8B8BE6E4C9934BCE8CC5A8275484AA806B2899A5567586CA6432E67168B09A9B9B17EDEB2CAEB10815A1CAE3619BFAA8A77C4FA2A7A767D959BC60E43FE550496545E85969A7A4FE90BA27EF7F95F617A91FA56252DFD5D7D75F91E35FC9EB2FA54ECBFBCFA4FD548E7D226DA7B41FCBB176693F90F7CDD286E47D405EBF27DFA4EF4A5B2BC776C8B1B7E4DBF575695F0906835BE5F5CBD2BEB473E7CE17AE5FBF4EA80AF76E427597FA5C7D3C73E6CC134375FEFC7967D1A29391FFF44F1F9ED7416D0FEEAD3AD875D08BF86FCAEBED12841A69DFD1706848342C7668343C1FC9B1E3D276487569C8ECB09DD6F0D9211C9063DF4AFBBDD40F1A563BB4F7EC106B9867A4ACF37E2F85EA31AB689EAD7C33552412F99B99AA0AE1F4AFB46BAAB58B14B9D754ADADAD4B5C53112A425520E170F8AAB3FA373F3FFFBF40757575ADB2FA47A808D5C666AB2DA15028E9DCA7EAE9E9B1AEA1FAFAFACCA1438756B94F45A80855F1C1FA5A4F0579A202085599AFB1EC65F64E9EFD03420540A8000815A1024245A8004A20773725976BD1EFBB290158C4E3F1076E6EA4E9543299BCE0F77DFF002C86878777C762B1E9542AB5E0D60CA5818A46A3F7FDBE432DC07FC860DE25B3C44D3DFD7AD67BA9DB3F73824001000000000000000000000000004055F20F87992DDC83E6944C0000000049454E44AE426082, 0, NULL);

-- ----------------------------
-- Table structure for act_de_model_history
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model_history`;
CREATE TABLE `act_de_model_history`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_key` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model_comment` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `removal_date` datetime(6) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `model_editor_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_type` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_proc_mod_history_proc`(`model_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_de_model_relation
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model_relation`;
CREATE TABLE `act_de_model_relation`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relation_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_relation_parent`(`parent_model_id`) USING BTREE,
  INDEX `fk_relation_child`(`model_id`) USING BTREE,
  CONSTRAINT `fk_relation_child` FOREIGN KEY (`model_id`) REFERENCES `act_de_model` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_relation_parent` FOREIGN KEY (`parent_model_id`) REFERENCES `act_de_model` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
DROP TABLE IF EXISTS `act_evt_log`;
CREATE TABLE `act_evt_log`  (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_BYTEARR_DEPL`(`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO `act_ge_bytearray` VALUES ('2094a255-230d-11ea-b5d4-9061aebe2144', 1, 'D:\\Personnel\\Coding\\github\\code-demo\\demo-collection\\flowable\\flowable-modeler-ui\\target\\classes\\processes\\ExpenseProcess.bpmn20.xml', '2094a254-230d-11ea-b5d4-9061aebe2144', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0D0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E6365220D0A20202020202020202020202020786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4449220D0A20202020202020202020202020786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F4449220D0A20202020202020202020202020747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F5850617468220D0A202020202020202020202020207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0D0A202020203C70726F636573732069643D22457870656E736522206E616D653D22457870656E736550726F636573732220697345786563757461626C653D2274727565223E0D0A20202020202020203C646F63756D656E746174696F6E3EE68AA5E99480E6B581E7A88B3C2F646F63756D656E746174696F6E3E0D0A20202020202020203C73746172744576656E742069643D22737461727422206E616D653D22E5BC80E5A78B222F3E0D0A20202020202020203C757365725461736B2069643D2266696C6C5461736B22206E616D653D22E587BAE5B7AEE68AA5E994802220666C6F7761626C653A61737369676E65653D22247B7461736B557365727D223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E0D0A20202020202020202020202020202020202020203C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C6578636C7573697665476174657761792069643D226A756467655461736B222F3E0D0A20202020202020203C757365725461736B2069643D226469726563746F7254616B22206E616D653D22E7BB8FE79086E5AEA1E689B9223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22637265617465220D0A202020202020202020202020202020202020202020202020202020202020202020202020202020636C6173733D22636F6D2E6578616D706C652E64656D6F2E6C697374656E2E4D616E616765725461736B48616E646C6572222F3E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C757365725461736B2069643D22626F73735461736B22206E616D653D22E88081E69DBFE5AEA1E689B9223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22637265617465220D0A202020202020202020202020202020202020202020202020202020202020202020202020202020636C6173733D22636F6D2E6578616D706C652E64656D6F2E6C697374656E2E426F73735461736B48616E646C6572222F3E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C656E644576656E742069643D22656E6422206E616D653D22E7BB93E69D9F222F3E0D0A20202020202020203C73657175656E6365466C6F772069643D226469726563746F724E6F7450617373466C6F7722206E616D653D22E9A9B3E59B9E2220736F757263655265663D226469726563746F7254616B22207461726765745265663D2266696C6C5461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9A9B3E59B9E277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22626F73734E6F7450617373466C6F7722206E616D653D22E9A9B3E59B9E2220736F757263655265663D22626F73735461736B22207461726765745265663D2266696C6C5461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9A9B3E59B9E277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22666C6F77312220736F757263655265663D22737461727422207461726765745265663D2266696C6C5461736B222F3E0D0A20202020202020203C73657175656E6365466C6F772069643D22666C6F77322220736F757263655265663D2266696C6C5461736B22207461726765745265663D226A756467655461736B222F3E0D0A20202020202020203C73657175656E6365466C6F772069643D226A756467654D6F726522206E616D653D22E5A4A7E4BA8E353030E585832220736F757263655265663D226A756467655461736B22207461726765745265663D22626F73735461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6D6F6E6579203E203530307D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22626F737350617373466C6F7722206E616D653D22E9809AE8BF872220736F757263655265663D22626F73735461736B22207461726765745265663D22656E64223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9809AE8BF87277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226469726563746F7250617373466C6F7722206E616D653D22E9809AE8BF872220736F757263655265663D226469726563746F7254616B22207461726765745265663D22656E64223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9809AE8BF87277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226A756467654C65737322206E616D653D22E5B08FE4BA8E353030E585832220736F757263655265663D226A756467655461736B22207461726765745265663D226469726563746F7254616B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6D6F6E6579203C3D203530307D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A202020203C2F70726F636573733E0D0A202020203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F457870656E7365223E0D0A20202020202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22457870656E7365222069643D2242504D4E506C616E655F457870656E7365223E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227374617274222069643D2242504D4E53686170655F7374617274223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223238352E302220793D223133352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2266696C6C5461736B222069643D2242504D4E53686170655F66696C6C5461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223430352E302220793D223131302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226A756467655461736B222069643D2242504D4E53686170655F6A756467655461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223538352E302220793D223133302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226469726563746F7254616B222069643D2242504D4E53686170655F6469726563746F7254616B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223733352E302220793D223131302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22626F73735461736B222069643D2242504D4E53686170655F626F73735461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223535352E302220793D223235352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22656E64222069643D2242504D4E53686170655F656E64223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223737312E302220793D223238312E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7731222069643D2242504D4E456467655F666C6F7731223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223331352E302220793D223135302E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223430352E302220793D223135302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7732222069643D2242504D4E456467655F666C6F7732223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223530352E302220793D223135302E3136363131323935363831303632222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223538352E343333333333333333333333332220793D223135302E3433333333333333333333333334222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226A756467654C657373222069643D2242504D4E456467655F6A756467654C657373223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223632342E353533303732363235363938332220793D223135302E3434363932373337343330313638222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223733352E302220793D223135302E31333932373537363630313637222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226469726563746F724E6F7450617373466C6F77222069643D2242504D4E456467655F6469726563746F724E6F7450617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223131302E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D2233372E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D2233372E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223131302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22626F737350617373466C6F77222069643D2242504D4E456467655F626F737350617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223635352E302220793D223239352E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223737312E302220793D223239352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226A756467654D6F7265222069643D2242504D4E456467655F6A756467654D6F7265223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223630352E343334303237373737373737382220793D223136392E3536353937323232323232323233222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223630352E313338343038333034343938332220793D223235352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226469726563746F7250617373466C6F77222069643D2242504D4E456467655F6469726563746F7250617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223139302E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223238312E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22626F73734E6F7450617373466C6F77222069643D2242504D4E456467655F626F73734E6F7450617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223535352E302220793D223239352E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223239352E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223139302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A20202020202020203C2F62706D6E64693A42504D4E506C616E653E0D0A202020203C2F62706D6E64693A42504D4E4469616772616D3E0D0A3C2F646566696E6974696F6E733E, 0);
INSERT INTO `act_ge_bytearray` VALUES ('21134836-230d-11ea-b5d4-9061aebe2144', 1, 'D:\\Personnel\\Coding\\github\\code-demo\\demo-collection\\flowable\\flowable-modeler-ui\\target\\classes\\processes\\ExpenseProcess.Expense.png', '2094a254-230d-11ea-b5d4-9061aebe2144', 0x89504E470D0A1A0A0000000D494844520000034D00000159080600000044DBC488000024094944415478DAEDDD0D8C55E5B92FF0B9A79ADAE426DA44634DDA54739B5ED3DBB44983A98D47439AD3D4A6346A2B1D86A138A166B015AD28C64A45DB5A52AAB6543CA6E2A556AD473184A087724106908FF211516339F88982328C0C4371B0200322ACBB9EDD5973167BF69E618661BEF6EF97BC993DFB8319D7BC3EEBF9EF77ADB5ABAA000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080CA3266CC98C4300CC3E87AD85B00408587265B01409D0400340300EA2400A0190050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300A89300806600409D0400340300EA2400A0190050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409DB41500403300803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A0190050270100CD00803A090068060050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A0190050270100CD00803A090068060050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A0190050270100CD0000EA2400A0190050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A01900A844BB76EDFADEAC59B392B4569E6B6B0080D004404E9224A7BDF7DE7BADA9A4BEBEFE2FB60800084D00E4343636FE3969B76EDDBAA69A9A9ACB6D1500109A0048EDDFBFFFCB478E1C399AE44C9F3EBDB1AEAEEE0C5B07008426808AD7DCDCBC3529B277EFDEE6DADADA7B6D1D00109A002ADAF6EDDBA725652C58B0A039AD9B236C250018BE01696184A46EC6465B0AA854692EFAD4C183073F2C179A8E1E3D7A68F2E4C99B468E1C798AAD0500C333348D48C7E1AE42537575F5285B0AA8543B76EC589F7463EBD6AD8D35353537D85A00307C83D3E22E42D37AEF9E02956CEDDAB5DD65A6A4ADAD6D65D4CCBABABAD36C3100189EA16944B9D0E472BA40A5BBFDF6DBAFEDEAF0BCC84C53A74E7DD24A13000CFFE054EADCA68D569900AAAAE6CE9DFB7AB9C4F4E69B6F3E60551E002A2334753AB7C9B94C00FF347AF4E8CFA5E1A8ADC4452036D7D6D66E76F53C00A81069485A609509A0B4BBEFBEFBBE34241DC987A63973E6FC31AD9D336D1D00A89CD07461EE5CA64B6D1180FF166F242D59B2A425F7C1B68FA7F5724B5D5DDD19B60E005490ECDC26AB4C009D4D9A34E9EBADADAD07D391D4D7D72F73B11C00A8CCD054B8929E2D0150DAECD9B317CF9A352BCEFB5C606B00400F254972CAD6AD5BE76DD8B0E1C8F2E5CB93868686213922340DD5DF7DD9B265C9EAD5ABFF9E8E716624A89327632C5AB4A85027E7CF9FAF4E02404F4523B066CD9AA4A5A5253974E890314063F7EEDDC9AA55ABDE4F1B832BCD4A50274FC6686A6A522701A037E29D538169D03404871A1A1A5E352B419D34D44900069138D4C48E78F08CB419386C56823A69A893000C2271ACB89DF0A06A065CD002D449439D0460283603FBF7EE4CB66EFC53F2F2B25F1646DC8EFBECC03503A04EAA93EA240015DF0CEC6B6D4A363F332DF9DBA29B8F19715F3C6627AE190075529D542701A8E866A0F1E5FFECD4086463C7CB0BEDC43503A04EAA93EA240095DD0CBCFAEC6FCA3603F1989DB86600D44975529D04A0A29B81CD0D3F2FDB0CC46376E29A015027D549751200CD8066403300EAA43AA94E02A019283DE22A50E59A8178CC4E5C3300EAA43AA94E0250D1CDC096B5FF5EB61988C7ECC43503A04EAA93EA240015DD0CEC69DA946C5E7A47E7434ED2FBE2313B71CD00A893EAA43A094045370331B63DFF68A76620EEB303D70C803AA94EAA930068060E1E4CB6ACFB43E7434ED2FBE2313B71CD00A893EAA43A0940C53603F149F66FACBDAFECB1FAF1984FBBD70C803AA94EAA9300545E3370F060B273CB8AE4BF964C2DDB0864239E13CFF56EAA6600D44975529D04A0229A81EEDE35F56EAA6600D44975529D04A0A29B81E379D7B4AB7753EDD43503C3C8193601EAA43A098066A0D30EA9B78D4036ECD43503C3C4A5E948DABFA24EAA93EA24009A01433340CEBFA5A3351D33DBBF8EB249D449439D044033606806383630654129569A760B4EEAA4A14E02A019303403740E4CDDDD8F3A69A8930068060CCD40C5B8B49B60943DEE1C2775D25027017A2E4992D3366DDA34F191471E593563C68CF7AFBFFEFAC3757575C99831639271E3C61DFDD18F7E74E8673FFBD9D6DFFCE6378FA5E37FDB629A014333304803537781C88A933A69A893003D0F4BF3E7CF7FF4CE3BEF3C7CC30D3724B367CF4E366CD890343535256D6D6D4988AF2D2D2DC90B2FBC90A4A12AF9C94F7E7274F2E4C96FD7D7D75F6D0B6A060CCDC020F06F553D5B41EAE9F351270D7512A85469389AF0AB5FFDEAE0CD37DF5C08441F7DF45172BC5E7AE9A5E4A73FFDE94713274E7C75F4E8D19FB33535038666608003D3A85EBC6E9FE0A44E1AEA24404969E639E5E9A79F5E71CD35D7240B172EEC51582AB664C99264C2840907AC3A69060CCDC0100A4C7DF57AD449439D04866B605AB972E573D75D775DF2C61B6F247DE1EDB7DF4ED20076E0EAABAFBED616D60C68063403FDA4BB8B3EF4F7BF833A69A893C070112B4C1198E21CA5BE14FF5E7D7DFDBE9A9A9A71B6B2664033403F05A6BE3AB4CE8A933A69A89300FF14E730C521797DB5C2546AC569FCF8F1AD69703ADFD6D60C680638498A2FE2F03FD27155FBD79E287E9D8B43A893863A0954BAB84ADE2F7FF9CB43710ED3C9B468D1A203B5B5B5EB6D71CD80668093189846E582CF1FA3C4B57F3DDEE054EE7582933A69A89340255BB060C17FC455F23EFCF0C3E464FBF18F7FDCEC303DCD806680931C98C255EDC127E94170CA07A66C8CCF3DEE1C2775D25027814A14AB4CF1394C7159F1FEF0B7BFFDED90D526CD8066803E542EC8940A405D05A752CF9F53E2F9CE7152270D7512A8349B366D9A18177F38914B8BF7D48409139AC78C1973AEADDF7B3535350DE9F857CD8066A092E6731781E9D21E04A152C1E9780353717072A89E3A69A893402578E4914756CD993327E94F3367CE7C290D4D536CFDDE4BB75F12239A82EAEAEA0B35039A814A98CFBD0C2EDD05A79E06A6FCCFDF5D65C5499D34D44960F89B3163C6FB1B366CE8D7D0B46EDDBAB7D31DD9425BFFC49B81DC585CEA1D55CD80666038CDE71281E978034BB9E0F42FBD0C4C19E738A993863A095482EBAFBFFEF0CE9D3BFB3534353737B7A43BAF465BBF4F9B818E7754F34D81664033309CE6732F035357C1E9F513084C27FAFBA04E1AEA243054D4D5D5256D6D6DFD1A9AE2E7A53BAE365BBFEF9B81FC3BAA71388A664033309CE673D589AFEC940A4E2712988A8393739CD449439D0486EB4E65201CC7CECCE883A119185CC39CECFDF8EE77BF9B859B992758F6FEA5C40AD3EBEDF79F8899FE4EEAA4213401C3D455575D75B4BF579A0E1C38D06CA5E9A4BD83BAB1BABA7AD4C891234F89E70D743370FEF9E7275FF9CA57BA7DDEA9A79E9A5C7DF5D51DDFAF5DBBB6D0CCEED8B1A3D373E7CF9F9F7CE94B5F2ADC5EBA7469326EDCB8C278FAE9A70BAFD9BD7BF731CF8FFB1E7CF0C163EE7BF2C92793CF7FFEF385DBEFBEFBAE666088CCE7AAEEAF9677222B4D3DF9005C2B4DEA64AF47D4AD98731F7CF0417CE87B327EFCF842FDFAF6B7BF9DC4D11F7DF9B3E2E7DC73CF3DDD3E67CA94291DB5317A82ECFEC71E7B4C680208D75D77DDA1FE3EA7296D525F774E539F3703C5CD65D54085A67C0839FBECB393AF7FFDEB1DDF6FDEBCF998E7BEF4D24BC915575CD11178AEB9E69A8EDBF3E6CD2B849DE2F01481290B4DF158BEC988EF1F7FFCF192A129BE7EE31BDF28EC90E339F1EFC7EF13F72F5FBE5C333004E6732EA0ECAB3A39E734F5263839A7499DEC7190F9DDEF7E57084D5940C9EEBFF5D65B3BBE6F6E6E2ED4CFA889115EBEF6B5AF15FE3BE2FB2C683DFAE8A3C9273EF1898ED7AC5AB5EA98C7CF39E79CE4E28B2F2EDC8E116F3A9D77DE799D7E9FB88A6E763BFECDEC768428A10920356DDAB42DFD7DF5BC679E79E6FFB97A5E9F3503EB6B6A6A2E2FD35C0E48688A1DEDFDF7DF5FB8FDD9CF7E36B9E4924B8E79ECA1871EEAF83EDF3074B7937EE595573A9A801877DC7147E1E7648127FEAD787D3405D96BD6AF5F9FAC59B3A6E3FB6852E239B10216A1299A8DF7DF7F5F333044E67389A072BC2B3BE52E2B5EEAEA793D094EAE9EA74EF6682C58B0A0E370C0986FB7DC724BC7ED7803A9F8F959CD8A15A97C0D8DAF118C224C7DE6339F295B43E3FB3BEFBCF39855FD2C986DDBB6ADE34DAAA8D31196E2F66BAFBDD6F1DA4D9B3615BEDE7BEFBDEA2450D9EEBEFBEE39FDFD394D69B3BBC8E7349D7033D0D53BF1031E9AB29D76A9D0146125FFFCFCE129F1F8F7BEF7BDC2ED682EAA72AB4C59C02AB5D294EDD8C78E1DDBE9778955A508521194E26BAC3A45D310C12B1A8E8F7FFCE39A8121329FCB04A7EE024B779FC374BC1F805B6C4495CF6952277B30B23A1575A82AB7AA14B7172F5E5CA89B71FBD9679FED54C7A22666B7B315F2A86DB1B21FB71B1B1B0B8FEFDBB7AFF04652B6B2148F4D9830A1703B4259D4DA52353BBFD2144708648710C6AA54AC5E5969022ADE6DB7DDF6BF264D9A74E4A38F3EEAB78BE7A58DED5BE9CEEC5C5BFFE4EBEFD094BD2B1AE731C54EFA939FFC642138E577E02FBEF8E231AFC9C250D650BCF3CE3B5DFE8C085D1178E2BF2D569A62A77EE38D3716FEFDB3CE3AABB0BA14CF8B774BE39DD4AC21C91A82AF7EF5AB1DBF4FD6A4C4F334034352772B3DC7FBC1B53D0D4ED9218297FB13A893C73B5A5B5B0B752E6A54D4C8083FA79F7E7A47CD8A11F52FE65FBC6914ABE059DD8C5073DF7DF775BCF1545566A5A9F8CDA97CE08A3A183FAF54688A37B79E7FFEF9C2EDECF789DBF1331D9E07D02E6D38DF7CE18517FAEBD0BCC7D2C0B4C6561F9EA1290EA18B9D7DF67DA995A62CC0444310C7DA67C7DBC763175C70C131C7E36787A13CF7DC73C9962D5B0AEFCCC6F7DFF9CE770AFFC699679E59683EB22056953B1E3FDE81CD371C71385FDC8EDF31FB7DF6ECD953B8AFBFB69366E0A428B7E274BC81A9A7C129FB7902933AD9E3114129EA52D4BF082971D19BEC4D9C18B1F29DADFA642B47311763E527AB71D9EA52AC34C5E3511B8B43D045175DD469A529DE6CBAECB2CB8E59F98A0B4054E52E96531CB89CD30490F3C31FFE70F44D37DD74B81F569B5AC78E1DFB624D4DCD385B7D7886A6F69D5DC77942A542D3B7BEF5AD4EAB4C71C273F66E671698B2C3F322D86401279A83D8A1E777EA71284AAC6845B02ADEC1672B5FD9FD55569A86AB58712A3E54EEAAAA9E7F0E53A9E034BEE8E73887499D3CA1C39763C4B99651FFA246751750AA72AB45119EB23014AB4CDFFCE6373B1D7277BCA129EAEE5B6FBDD5E9F0BF7C7DCD8E00287525537512A84813274EDCB470E1C2939A98E2FCA95865EAE1790B0CA1D014012676B05DAD3415EFE0B36093EDA8E344E538AFA9DCCF28754E53768CFFEF7FFFFB920D475CA52F5698AA7227545B691A96C1297F71887C00EAC907D7967B9DCB8AAB937D7A7E53FECAA25D85A678532856D4E3DCA2EC0DA9AA12570ACD46B69A5F1CB8E290E5FC4A7BB9739AE277CB0ED58B3794A236175FB4479D042A569C633461C284036FBCF1C649094C69117E3AFD193B6B6A6ACEB7B5876F3390AD0E4D9A34A9EC394DD3A64D3BE69DCEAADC31F4DD85A6D8714763917F27343EA32942531680AA8A568EB2FBB2C7F38D4676CE531C22A31918168A0FD58BC033BEAAE797112F7EDD897E3E14EA64C7F94A5FF8C2170AB5A7DC4570E27604A46C15283E532E0EC98B90955D823C7B032ABB9DBF6A68B955AAE21187F66587FF3DFCF0C3C7D4CBEC6AA4D961CDF94BA1AB9340C54B9BCFDA8913277ED0D2D2D2A78169C78E1D7F1D3B76EC3B0ECB1BFEA12976B45D1DC691DFF946608ACB01C7BB9A71C8488CEC98FE682AF287E865A1269A8CF8FEAEBBEEEAF8F7F2212C0B42C5AB5FD118141F7A923524DFFFFEF73503C33B389DA85287FEA14EF649BDECEE3959ED3ADEE7F72434651F165E5574F187FC9B580331D4496048A8ADAD9D505F5FBFAFAF569C62852902537575F54F6DDDCA6906FABA71182E433330E482930FAE55270D7512A0B434E08C19376EDCFB4F3DF5D4FE13B83844EB6F7FFBDB3FC52179E9A8B35535038666A09F9DE821750EC953270D7512A06B718ED3D8B163974F9C38B1F9C5175F3CD093CF615ABA74E91369E8DA18177D700E9366C0D00C0C82E0D4D39522177D50270D7512A047E1E9CA084F7575752D3366CC78F9AF7FFDEB3B4D4D4D3BE390AA70E0C081E677DF7DF7F565CB96FDE5E73FFFF9E2DADADAAD11966275C955F2340386666010E8E921760EC953270D7512A077D230F4E99A9A9A1BD230342F1DDBD2D11627F1B77F6D4CC7C2744C89152A5B4B336068068668701A918E7D553EB8569D34D4490034038666A0025DDA1E882EEDE2F1DD02933A69A8930068060CCD40252BB7E2E4903C75D2502701D00C189A01CA042481499D549FD44900340376C29A01CA04A7990213EAA43A098066C04E5833406997C6C56CAA5C565C9D5427D54900340376C29A014A6B0F4DA893EA933A098066C04E583380D0843AA94E028066403380D0843AA94E028066403380D0843AA94E028066403380D0843AA94E028066403380D0843A69A8930068060CCD80D0843A69A8930068060CCD80D0843A69A8930068060CCD80D0843A69A8930068060CCD80D0843A69A8930068060CCD004213EAA43A09009A01CD004213EAA43A09009A01CD004213EAA43A09009A01CD004213EAA43A09009A01CD004213EAA4A14E02A019D00C68068426D449439D04605059BE7CB99DF0E0196D693370D8AC149A50270D7512804164F5EAD53B5B5A5AEC8807C1686A6A9A9B3603AF9A954213EAA4A14E023088AC58B1E2B2952B57EEDDB56BD7013BE4817BE7341A8165CB96BD938E2BCD4AA10975F224050E7512007A2BDD018D6A6868D818873CC4B1E2436D3CF1C4134934B743F1776F1FB1DD5FD508084DA893276B3CF7DC73C9AC59B392050B16A8930050A18DEDC2686E478E1C798AAD81D004C74A92E4B4F7DE7BAF3595D4D7D7FFC51601800A535D5D7D61DAD81E8EE6B6A6A6E6525B04A1098ED5D8D8F8E7A4DDBA75EB9AD25A79B9AD020095159A164463DB3E36DA22084DF0DFF6EFDFFFE523478E1C4D72A64F9FDE5857577786AD030095D1D08EC85699B29186A851B60C4213FC537373F3D6A4C8DEBD7B9B6B6B6BEFB57500A0321ADA85F9C094AD3639B709A109AAAAB66FDF3E2D2963C18205CDF1C693AD0400C3BB99EDB4CA940DC7EB233451E9D25CF4A983070F7E582E341D3D7AF4D0E4C9933779930900867733BBB854606A1FEB6D2184262AD98E1D3BD627DDD8BA756B634D4DCD0DB616000CCF46B6EC2A93739B109AA0AA6AEDDAB5DD65A6A4ADAD6D65CCF1BABABAD36C3100187E8DECC2AE02932BE9213451E96EBFFDF66BBB3A3C2F32D3D4A9539FB4D204009A5B30AFA85873E7CE7DBD5C627AF3CD371F8843999DD304009A5B30AFA858A3478FFE5C1A8EDA4A5C0462736D6DED6657CF0300CD2D985754BCBBEFBEFBBE34241DC987A63973E6FCB1BABA7AA6AD03009A5B30AFA87871F8DD92254B5A721F6CFB783AAFB7D4D5D59D61EB0080E616CC2B484D9A34E9EBADADAD07D391D4D7D72FF3597600A0B905F30A8ACC9E3D7BF1AC59B3E2E31816D81A00A0B905F30A8AC4E178319FE3E210B60600686EC1BC02F31900D00C605E81F90C00680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600F30ACC6700403300E615E63300A01900F30AF31900D00C807905E63300A019C0BC02F31900D00C605E81F90C00680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600F30ACC6700403300E615E63300A01900F30AF31900D00C807905E63300A019C0BC02F31900D00C605E81F90C00680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600CC2BCC6700403300E615E63300A01900F30ACC6700D00C680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600F30ACC67004033807905E63300A019C0BC02F31900D00C807985F90C006806C0BCC27C06003403D0F339B430E6513763A32D853A09006806A8D43934221D87BB0A4DD5D5D5A36C29D4490040334025CFA3C55D84A6F523478E3CC556429D0400340354F23C1A512E34D5D4D45C6E0BA14E02009A01CCA5D2E7366DB4CA843A09006806A0AAF4B94DCE65429D04003403909386A405569950270100CD00940F4D17E6CE65BAD416419D04003403D0794E15CE6DB2CA843A09006806A0F49C1A615EA14E02009A014E8A24494ED9BA75EBBC0D1B361C59BE7C79D2D0D060F4F358B66C59B27AF5EABFA7639C19893A090068060699084C6BD6AC495A5A5A9243870E19033476EFDE9DAC5AB5EAFD34405D6956A24E02806640333088C40A93C0346882D3A186868657CD4AD44900D00C6806069138244F60193C230D4D87CD4AD44900D00C6806069138A746581954A1C9FF1FA89300A019D00C0CC5D0B47FEFCE64EBC63F252F2FFB6561C4EDB84FD0119A50270100CD40C587A67DAD4DC9E667A6257F5B74F33123EE8BC7841DA109751200D00C5474686A7CF93F3B05A66CEC7879A1B02334A14E02009A81CA0E4DAF3EFB9BB2A1291E13768426D44900403350D1A16973C3CFCB86A6784CD8119A50270100CD80D02434094DA89300806640682A3DE26A79E542533C26EC084DA893008066A0A243D396B5FF5E3634C563C28ED0843A090068062A3A34ED69DA946C5E7A47E743F3D2FBE231614768429D04003403151D9A626C7BFED14EA129EE13748426D44900403320341D3C986C59F787CE87E6A5F7C563C28ED0843A090068062A3634ED6B6D4ADE587B5FD9739AE2B1788EC02334D1EB9AB830EA623763A32D05004213832D341D3C98ECDCB222F9AF2553CB06A66CC473E2B9569D84267A551347A4E37057A1A9BABA7A942D0500421383283475B7BA64D54968A2CFEBE2E22E42D3FA9123479E622B0180D0C4200A4DC7B3BAD4D5AA93F02334D1E3BA38A25C68AAA9A9B9DC160200A18941169A7A1B98B221FC084DF4AA36963AB769A3552600109A1884A1C9109A1890DAD8E9DC26E7320180D084D064084DE4A42169815526004068129A0CA189F2A1E9C2DCB94C97DA2200203421341942139D6B64E1DC26AB4C0020342134194213A9DADADA4F5757574F4A6BE3BC746C49C707EDAB4D6DE9D8D67EC8DE94789EAD050042134293D02434558CB894783A1AD271A8AB0FB62D1ACFA6CF1F67EB0180D084D02434319C6BE0B969F059D283A0546AAC193D7AF4E76C4D00109A109A84268695EAEAEA3163C78E7D2F1F806A6B6B935FFFFAD7C98A152B92EDDBB727FFF8C73F92F0C1071F244D4D4DC9DAB56B93993367263FF8C10F8A83D33EAB4E0020342134094D0CA7C0342A0D391FE5C3D2638F3D96B4B4B424C7A3B5B5B5F0FC785D3E3CA5FFE6D5B62E00084D084D4213433D308DC907A61B6FBCB1B0AAD41BF1BA9B6FBEB9383859710200A109A1496862C8D6BC73F387E4DD71C71D1D87E0F5561CBA377DFAF4E243F5CEB7B50140684268129A1872D2C0B42CBFC274A281291F9C8A569CD6D8DA0020342134094D0C297159F1FC394CBD3D24AFAB43F5F2E738394C0F0084267A61E4C891A7084DC3273475F7F764D085A6862CD0C4451C4E86279E78C26A1300084DF446DA4B7D6AC78E1DEBE372C5B7DD76DB4DE59A6DA1696884A6E3FD7BD27F61281DFFDAD5736A6B6B3F9D5DFC215683F6ECD9735242535C55AFE872E4E7FA0B0180D04437B66FDF3EADADADED70D6541D3C78F0C3B973E76EB9F6DA6BFF8FD034F442534FFE9EF45F1D6B3F1CAEA1BABAFAC252CF49EF9F943DEFAEBBEE4A4EA6F81CA75C689AE22F0400421365ECDFBFFFCBBB76ED7ABB5C63B56DDBB6B61933663C505757779AD034F843536FFE9EF46F68CA8DC5C52B4FE97DF3B2C757AE5C79524353AC40E67E9785FE420020345124ED994E6B6C6CFCF39123478E76D75C1D3D7AF4C892254BFE3E79F2E4EF084D8333349DC8DF93010B4D1D2B4F59784ABFDF92DDDFD7178028D6D4D494FF3D1AFD850040682267D7AE5DDFDBBB77EFFBBD380FE2E01FFEF087E50B172E145606D178EEB9E79213F97BA60DFB99FEAF18B8D0945F794AC781ECFBBEBACC7857971FCFFDEC367F210018FECD86D183316BD6ACC289E0BD39793C5E1BFF46BC4B2DB00CFC88BF435FFC3D8DC137FA43FEE7D9D30000E4C415BAEAEBEBFFB26EDDBA9D478F1EFDE8789AABBD7BF73E3E71E2C467ABABAB17A4063428A4FF09C9830F3ED8F1FDE38F3F5EF239D3A64D3BE6BEB6B6B664F1E2C585C7BA5A2D8BC7EFB9E79E6E7F872953A6146E3FF9E493857F3BBB3F2E13DD9FDBE3A9A79E4A4EE4EFE9CA6903FEE6CFC6F4EF302AAE6E98DEDE67A509006010890FD1FCC52F7ED1D8DADADAD2C5F92F9B67CF9EFD7FE35C8B787EBC6E20CE695ABE7C793261C2848ED03367CE9CC2D5C5EEB8E38EC2F771527B71A8C9C24BDCBEF7DE7B0B5FC78F1F5F786E348CD97357AD5A953CFDF4D385C7E2EB39E79C935C7CF1C585DB31E6CF9F9F9C77DE799DFEFDF81DB2DB8F3EFA68C7ED085103712188DEFE3D19B0D0D4119672CF714E1300C060337AF4E8FF595B5B7B6F1A0C5A8E1C397220D753B5BDF9E69B0FA48F6D4E1BBB997575756764AF1988D014879265412782C94B2FBD94ECD8B1A370FBA1871EEA78DEB66DDB0A4127EEBFFFFEFB93071E78A070FB95575EE972D5281F74E2FB3BEFBCB3E3FB534F3D35B9F5D65B3BFDFB975C7249212CC5EDD75E7BADE3B59B366DEA086AFD7DF5BCDEFC3DE9F7D0B43E026BA9CFCD72F53C0080C1DDD08D983C79F2A6AD5BB7361D387060D5D4A9539F8CE62EEE2F7E6E7F86A6DDBB772769735918D94A5055FB2A4F7CBDE0820B3AEE8B55A87CF0B9EFBEFB3A6E5F74D1451DAF8F10B466CD9A8EE7EEDBB7AFB09295AD2CC5F363552B6E5F71C51585D7950A5AF995A6B3CF3E3B59BA7469E176AC4AC5EAD5407E4E534FFE9EF4DBFF639D56968AF99C260080412E9AB99A9A9A1BDA2F837C43B9E6AEBF579AF287D26541AA2A774E51A9A0158FC78895A1F87ACD35D7940C3CF9FBE6CD9BD7713B0253DC8E2076FAE9A7970C4DB1D2F4FCF3CF176EAF5FBFBE53581BC8D0D493BF2783479C6F98FEBD0EC7DF2CBD9DECD9B3E7A404A658B91D376EDCD15C683AD7D60700E86178EAEAF181FC9CA6B8404304935819CA424AF1F94C115AAADA0FE1BBE5965B3A0EE18B43E8B66CD972CCE174F91014AB51C52B4D717ED365975DD6F1BC38F42EC25A55EE6214C5816BA0CE69EAEDDF93C1253EB7290B33715EDEC9F0C4134FE45799D6D8EA00007D6C204253AC1EC5D5F02294C4B94C1188AADA0F858BEFF357C8CB0EDDCBCE63AA6A3FCF28C254AC1ABDF3CE3B25578E8E2734353737276FBDF5D631AB51C5A1293BA729FF7B0D646862C885A6CBB34013AB4D7D7D4188F8F7C68E1D7B34F7E1BAE36C750080211C9A22782C5AB42839F3CC330B87144518F9E217BF58B82F7BCE8B2FBED8713B1F9422586DDEBCB9703B5E1B177788DBD9E5C1F3A3F87CA82C10C58A54A98B4854159DD31441293B542F0E098C1055EAE7084D1C8F34CC3C9B859A1B6FBCB1CF2E3F1E87BADE74D34D1FE55799AC4402000CF1D0542AAC147F0E5276B9EFE2E7652126BE7EEC631F4B1A1B1B0B61AB2AB73254EE6764A1A978C4452362C4731E7EF8E18EE767612CBE669741CFAEB82734D18BD0746E3A7667E126E6D48906A7084CD3A74FCF9FC7B4AFA6A6E67C5B1B00601886A6AAF60B3B9C75D65985AF55ED87D3153F2F3E84379AC3E20FAA8D8B36C4E3F1F94B3D0D4D31E2755545177FC86E0FC4109A86A7EAEAEA31D94521B215A7DE1EAA17AF2B5A6172581E00C0700D4D86D05449D27053970F4E718E53ACB4C6E1A6C77B95BCB8E843FE1CA6186920FBA9AD0B002034094D0C0BB1E2948ED67CE889F0149FE3141F801BAB48D9A17B71085E535353E18A92B366CD4AAEBAEAAA23F9D7C5217911C46C550000A14968625889739CF29722EFE558E31C260000A1496862B887A72BDBC3D3E19E84A5585D72953C0000A14968A262D4D6D67E3A0D4F37A461685E3AB6A5A3AD3D20C5D7C6742C4CC79458A1B2B500008426A14968020000A1C9109A000040683284260000109A0CA109000084264368020000A1C9109A000000A149680200008426A1090000109A842600004068129A000000A1C9109A000040683284260000109A0CA109000084264368020000A1C9109A000000A149680200008426A1090000109A842600004068129A000000A14968322B010040683284260000181A962F5F2EAC0C9ED19686A6C3662500000C22AB57AFDED9D2D222B00C82D1D4D434370D4DAF9A9500003088AC58B1E2B2952B57EEDDB56BD701C165E0569822302D5BB6EC9D745C69560200C0209336EAA31A1A1A36C6A161714E8DD1EF23B6FBAB021300000000000000000000000000000000000000000000000000000000005031FE3F6516985DD3D8EA3D0000000049454E44AE426082, 1);
INSERT INTO `act_ge_bytearray` VALUES ('6f842bd4-2212-11ea-83a0-9061aebe2144', 1, 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.bpmn20.xml', '6f842bd3-2212-11ea-83a0-9061aebe2144', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0D0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E6365220D0A20202020202020202020202020786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4449220D0A20202020202020202020202020786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F4449220D0A20202020202020202020202020747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F5850617468220D0A202020202020202020202020207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0D0A202020203C70726F636573732069643D22457870656E736522206E616D653D22457870656E736550726F636573732220697345786563757461626C653D2274727565223E0D0A20202020202020203C646F63756D656E746174696F6E3EE68AA5E99480E6B581E7A88B3C2F646F63756D656E746174696F6E3E0D0A20202020202020203C73746172744576656E742069643D22737461727422206E616D653D22E5BC80E5A78B222F3E0D0A20202020202020203C757365725461736B2069643D2266696C6C5461736B22206E616D653D22E587BAE5B7AEE68AA5E994802220666C6F7761626C653A61737369676E65653D22247B7461736B557365727D223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E0D0A20202020202020202020202020202020202020203C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C6578636C7573697665476174657761792069643D226A756467655461736B222F3E0D0A20202020202020203C757365725461736B2069643D226469726563746F7254616B22206E616D653D22E7BB8FE79086E5AEA1E689B9223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22637265617465220D0A202020202020202020202020202020202020202020202020202020202020202020202020202020636C6173733D22636F6D2E6578616D706C652E64656D6F2E6C697374656E2E4D616E616765725461736B48616E646C6572222F3E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C757365725461736B2069643D22626F73735461736B22206E616D653D22E88081E69DBFE5AEA1E689B9223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22637265617465220D0A202020202020202020202020202020202020202020202020202020202020202020202020202020636C6173733D22636F6D2E6578616D706C652E64656D6F2E6C697374656E2E426F73735461736B48616E646C6572222F3E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C656E644576656E742069643D22656E6422206E616D653D22E7BB93E69D9F222F3E0D0A20202020202020203C73657175656E6365466C6F772069643D226469726563746F724E6F7450617373466C6F7722206E616D653D22E9A9B3E59B9E2220736F757263655265663D226469726563746F7254616B22207461726765745265663D2266696C6C5461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9A9B3E59B9E277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22626F73734E6F7450617373466C6F7722206E616D653D22E9A9B3E59B9E2220736F757263655265663D22626F73735461736B22207461726765745265663D2266696C6C5461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9A9B3E59B9E277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22666C6F77312220736F757263655265663D22737461727422207461726765745265663D2266696C6C5461736B222F3E0D0A20202020202020203C73657175656E6365466C6F772069643D22666C6F77322220736F757263655265663D2266696C6C5461736B22207461726765745265663D226A756467655461736B222F3E0D0A20202020202020203C73657175656E6365466C6F772069643D226A756467654D6F726522206E616D653D22E5A4A7E4BA8E353030E585832220736F757263655265663D226A756467655461736B22207461726765745265663D22626F73735461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6D6F6E6579203E203530307D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22626F737350617373466C6F7722206E616D653D22E9809AE8BF872220736F757263655265663D22626F73735461736B22207461726765745265663D22656E64223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9809AE8BF87277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226469726563746F7250617373466C6F7722206E616D653D22E9809AE8BF872220736F757263655265663D226469726563746F7254616B22207461726765745265663D22656E64223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9809AE8BF87277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226A756467654C65737322206E616D653D22E5B08FE4BA8E353030E585832220736F757263655265663D226A756467655461736B22207461726765745265663D226469726563746F7254616B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6D6F6E6579203C3D203530307D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A202020203C2F70726F636573733E0D0A202020203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F457870656E7365223E0D0A20202020202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22457870656E7365222069643D2242504D4E506C616E655F457870656E7365223E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227374617274222069643D2242504D4E53686170655F7374617274223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223238352E302220793D223133352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2266696C6C5461736B222069643D2242504D4E53686170655F66696C6C5461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223430352E302220793D223131302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226A756467655461736B222069643D2242504D4E53686170655F6A756467655461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223538352E302220793D223133302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226469726563746F7254616B222069643D2242504D4E53686170655F6469726563746F7254616B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223733352E302220793D223131302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22626F73735461736B222069643D2242504D4E53686170655F626F73735461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223535352E302220793D223235352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22656E64222069643D2242504D4E53686170655F656E64223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223737312E302220793D223238312E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7731222069643D2242504D4E456467655F666C6F7731223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223331352E302220793D223135302E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223430352E302220793D223135302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7732222069643D2242504D4E456467655F666C6F7732223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223530352E302220793D223135302E3136363131323935363831303632222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223538352E343333333333333333333333332220793D223135302E3433333333333333333333333334222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226A756467654C657373222069643D2242504D4E456467655F6A756467654C657373223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223632342E353533303732363235363938332220793D223135302E3434363932373337343330313638222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223733352E302220793D223135302E31333932373537363630313637222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226469726563746F724E6F7450617373466C6F77222069643D2242504D4E456467655F6469726563746F724E6F7450617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223131302E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D2233372E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D2233372E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223131302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22626F737350617373466C6F77222069643D2242504D4E456467655F626F737350617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223635352E302220793D223239352E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223737312E302220793D223239352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226A756467654D6F7265222069643D2242504D4E456467655F6A756467654D6F7265223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223630352E343334303237373737373737382220793D223136392E3536353937323232323232323233222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223630352E313338343038333034343938332220793D223235352E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226469726563746F7250617373466C6F77222069643D2242504D4E456467655F6469726563746F7250617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223139302E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223238312E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22626F73734E6F7450617373466C6F77222069643D2242504D4E456467655F626F73734E6F7450617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223535352E302220793D223239352E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223239352E30222F3E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223139302E30222F3E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A20202020202020203C2F62706D6E64693A42504D4E506C616E653E0D0A202020203C2F62706D6E64693A42504D4E4469616772616D3E0D0A3C2F646566696E6974696F6E733E, 0);
INSERT INTO `act_ge_bytearray` VALUES ('6ff0f765-2212-11ea-83a0-9061aebe2144', 1, 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.Expense.png', '6f842bd3-2212-11ea-83a0-9061aebe2144', 0x89504E470D0A1A0A0000000D494844520000034D00000159080600000044DBC488000024094944415478DAEDDD0D8C55E5B92FF0B9A79ADAE426DA44634DDA54739B5ED3DBB44983A98D47439AD3D4A6346A2B1D86A138A166B015AD28C64A45DB5A52AAB6543CA6E2A556AD473184A087724106908FF211516339F88982328C0C4371B0200322ACBB9EDD5973167BF69E618661BEF6EF97BC993DFB8319D7BC3EEBF9EF77ADB5ABAA000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080CA3266CC98C4300CC3E87AD85B00408587265B01409D0400340300EA2400A0190050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300A89300806600409D0400340300EA2400A0190050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409DB41500403300803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A0190050270100CD00803A090068060050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A0190050270100CD00803A090068060050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A0190050270100CD0000EA2400A0190050270100CD00803A0900680600D44900403300A04E02009A0100751200D00C00A89300806600409D0400340300EA2400A01900A844BB76EDFADEAC59B392B4569E6B6B0080D004404E9224A7BDF7DE7BADA9A4BEBEFE2FB60800084D00E4343636FE3969B76EDDBAA69A9A9ACB6D1500109A0048EDDFBFFFCB478E1C399AE44C9F3EBDB1AEAEEE0C5B07008426808AD7DCDCBC3529B277EFDEE6DADADA7B6D1D00109A002ADAF6EDDBA725652C58B0A039AD9B236C250018BE01696184A46EC6465B0AA854692EFAD4C183073F2C179A8E1E3D7A68F2E4C99B468E1C798AAD0500C333348D48C7E1AE42537575F5285B0AA8543B76EC589F7463EBD6AD8D35353537D85A00307C83D3E22E42D37AEF9E02956CEDDAB5DD65A6A4ADAD6D65D4CCBABABAD36C3100189EA16944B9D0E472BA40A5BBFDF6DBAFEDEAF0BCC84C53A74E7DD24A13000CFFE054EADCA68D569900AAAAE6CE9DFB7AB9C4F4E69B6F3E60551E002A2334753AB7C9B94C00FF347AF4E8CFA5E1A8ADC4452036D7D6D66E76F53C00A81069485A609509A0B4BBEFBEFBBE34241DC987A63973E6FC31AD9D336D1D00A89CD07461EE5CA64B6D1180FF166F242D59B2A425F7C1B68FA7F5724B5D5DDD19B60E005490ECDC26AB4C009D4D9A34E9EBADADAD07D391D4D7D72F73B11C00A8CCD054B8929E2D0150DAECD9B317CF9A352BCEFB5C606B00400F254972CAD6AD5BE76DD8B0E1C8F2E5CB93868686213922340DD5DF7DD9B265C9EAD5ABFF9E8E716624A89327632C5AB4A85027E7CF9FAF4E02404F4523B066CD9AA4A5A5253974E890314063F7EEDDC9AA55ABDE4F1B832BCD4A50274FC6686A6A522701A037E29D538169D03404871A1A1A5E352B419D34D44900069138D4C48E78F08CB419386C56823A69A893000C2271ACB89DF0A06A065CD002D449439D0460283603FBF7EE4CB66EFC53F2F2B25F1646DC8EFBECC03503A04EAA93EA240015DF0CEC6B6D4A363F332DF9DBA29B8F19715F3C6627AE190075529D542701A8E866A0F1E5FFECD4086463C7CB0BEDC43503A04EAA93EA240095DD0CBCFAEC6FCA3603F1989DB86600D44975529D04A0A29B81CD0D3F2FDB0CC46376E29A015027D549751200CD8066403300EAA43AA94E02A019283DE22A50E59A8178CC4E5C3300EAA43AA94E0250D1CDC096B5FF5EB61988C7ECC43503A04EAA93EA240015DD0CEC69DA946C5E7A47E7434ED2FBE2313B71CD00A893EAA43A094045370331B63DFF68A76620EEB303D70C803AA94EAA930068060E1E4CB6ACFB43E7434ED2FBE2313B71CD00A893EAA43A0940C53603F149F66FACBDAFECB1FAF1984FBBD70C803AA94EAA9300545E3370F060B273CB8AE4BF964C2DDB0864239E13CFF56EAA6600D44975529D04A0229A81EEDE35F56EAA6600D44975529D04A0A29B81E379D7B4AB7753EDD43503C3C8193601EAA43A098066A0D30EA9B78D4036ECD43503C3C4A5E948DABFA24EAA93EA24009A01433340CEBFA5A3351D33DBBF8EB249D449439D044033606806383630654129569A760B4EEAA4A14E02A019303403740E4CDDDD8F3A69A8930068060CCD40C5B8B49B60943DEE1C2775D25027017A2E4992D3366DDA34F191471E593563C68CF7AFBFFEFAC3757575C99831639271E3C61DFDD18F7E74E8673FFBD9D6DFFCE6378FA5E37FDB629A014333304803537781C88A933A69A893003D0F4BF3E7CF7FF4CE3BEF3C7CC30D3724B367CF4E366CD890343535256D6D6D4988AF2D2D2DC90B2FBC90A4A12AF9C94F7E7274F2E4C96FD7D7D75F6D0B6A060CCDC020F06F553D5B41EAE9F351270D7512A85469389AF0AB5FFDEAE0CD37DF5C08441F7DF45172BC5E7AE9A5E4A73FFDE94713274E7C75F4E8D19FB33535038666608003D3A85EBC6E9FE0A44E1AEA24404969E639E5E9A79F5E71CD35D7240B172EEC51582AB664C99264C2840907AC3A69060CCDC0100A4C7DF57AD449439D04866B605AB972E573D75D775DF2C61B6F247DE1EDB7DF4ED20076E0EAABAFBED616D60C68063403FDA4BB8B3EF4F7BF833A69A893C070112B4C1198E21CA5BE14FF5E7D7DFDBE9A9A9A71B6B2664033403F05A6BE3AB4CE8A933A69A89300FF14E730C521797DB5C2546AC569FCF8F1AD69703ADFD6D60C680638498A2FE2F03FD27155FBD79E287E9D8B43A893863A0954BAB84ADE2F7FF9CB43710ED3C9B468D1A203B5B5B5EB6D71CD80668093189846E582CF1FA3C4B57F3DDEE054EE7582933A69A89340255BB060C17FC455F23EFCF0C3E464FBF18F7FDCEC303DCD806680931C98C255EDC127E94170CA07A66C8CCF3DEE1C2775D25027814A14AB4CF1394C7159F1FEF0B7BFFDED90D526CD8066803E542EC8940A405D05A752CF9F53E2F9CE7152270D7512A8349B366D9A18177F38914B8BF7D48409139AC78C1973AEADDF7B3535350DE9F857CD8066A092E6731781E9D21E04A152C1E9780353717072A89E3A69A893402578E4914756CD993327E94F3367CE7C290D4D536CFDDE4BB75F12239A82EAEAEA0B35039A814A98CFBD0C2EDD05A79E06A6FCCFDF5D65C5499D34D44960F89B3163C6FB1B366CE8D7D0B46EDDBAB7D31DD9425BFFC49B81DC585CEA1D55CD80666038CDE71281E978034BB9E0F42FBD0C4C19E738A993863A095482EBAFBFFEF0CE9D3BFB3534353737B7A43BAF465BBF4F9B818E7754F34D81664033309CE6732F035357C1E9F513084C27FAFBA04E1AEA243054D4D5D5256D6D6DFD1A9AE2E7A53BAE365BBFEF9B81FC3BAA71388A664033309CE673D589AFEC940A4E2712988A8393739CD449439D0486EB4E65201CC7CECCE883A119185CC39CECFDF8EE77BF9B859B992758F6FEA5C40AD3EBEDF79F8899FE4EEAA4213401C3D455575D75B4BF579A0E1C38D06CA5E9A4BD83BAB1BABA7AD4C891234F89E70D743370FEF9E7275FF9CA57BA7DDEA9A79E9A5C7DF5D51DDFAF5DBBB6D0CCEED8B1A3D373E7CF9F9F7CE94B5F2ADC5EBA7469326EDCB8C278FAE9A70BAFD9BD7BF731CF8FFB1E7CF0C163EE7BF2C92793CF7FFEF385DBEFBEFBAE666088CCE7AAEEAF9677222B4D3DF9005C2B4DEA64AF47D4AD98731F7CF0417CE87B327EFCF842FDFAF6B7BF9DC4D11F7DF9B3E2E7DC73CF3DDD3E67CA94291DB5317A82ECFEC71E7B4C680208D75D77DDA1FE3EA7296D525F774E539F3703C5CD65D54085A67C0839FBECB393AF7FFDEB1DDF6FDEBCF998E7BEF4D24BC915575CD11178AEB9E69A8EDBF3E6CD2B849DE2F01481290B4DF158BEC988EF1F7FFCF192A129BE7EE31BDF28EC90E339F1EFC7EF13F72F5FBE5C333004E6732EA0ECAB3A39E734F5263839A7499DEC7190F9DDEF7E57084D5940C9EEBFF5D65B3BBE6F6E6E2ED4CFA889115EBEF6B5AF15FE3BE2FB2C683DFAE8A3C9273EF1898ED7AC5AB5EA98C7CF39E79CE4E28B2F2EDC8E116F3A9D77DE799D7E9FB88A6E763BFECDEC768428A10920356DDAB42DFD7DF5BC679E79E6FFB97A5E9F3503EB6B6A6A2E2FD35C0E48688A1DEDFDF7DF5FB8FDD9CF7E36B9E4924B8E79ECA1871EEAF83EDF3074B7937EE595573A9A801877DC7147E1E7648127FEAD787D3405D96BD6AF5F9FAC59B3A6E3FB6852E239B10216A1299A8DF7DF7F5F333044E67389A072BC2B3BE52E2B5EEAEA793D094EAE9EA74EF6682C58B0A0E370C0986FB7DC724BC7ED7803A9F8F959CD8A15A97C0D8DAF118C224C7DE6339F295B43E3FB3BEFBCF39855FD2C986DDBB6ADE34DAAA8D31196E2F66BAFBDD6F1DA4D9B3615BEDE7BEFBDEA2450D9EEBEFBEE39FDFD394D69B3BBC8E7349D7033D0D53BF1031E9AB29D76A9D0146125FFFCFCE129F1F8F7BEF7BDC2ED682EAA72AB4C59C02AB5D294EDD8C78E1DDBE9778955A508521194E26BAC3A45D310C12B1A8E8F7FFCE39A8121329FCB04A7EE024B779FC374BC1F805B6C4495CF6952277B30B23A1575A82AB7AA14B7172F5E5CA89B71FBD9679FED54C7A22666B7B315F2A86DB1B21FB71B1B1B0B8FEFDBB7AFF04652B6B2148F4D9830A1703B4259D4DA52353BBFD2144708648710C6AA54AC5E5969022ADE6DB7DDF6BF264D9A74E4A38F3EEAB78BE7A58DED5BE9CEEC5C5BFFE4EBEFD094BD2B1AE731C54EFA939FFC642138E577E02FBEF8E231AFC9C250D650BCF3CE3B5DFE8C085D1178E2BF2D569A62A77EE38D3716FEFDB3CE3AABB0BA14CF8B774BE39DD4AC21C91A82AF7EF5AB1DBF4FD6A4C4F334034352772B3DC7FBC1B53D0D4ED9218297FB13A893C73B5A5B5B0B752E6A54D4C8083FA79F7E7A47CD8A11F52FE65FBC6914ABE059DD8C5073DF7DF775BCF1545566A5A9F8CDA97CE08A3A183FAF54688A37B79E7FFEF9C2EDECF789DBF1331D9E07D02E6D38DF7CE18517FAEBD0BCC7D2C0B4C6561F9EA1290EA18B9D7DF67DA995A62CC0444310C7DA67C7DBC763175C70C131C7E36787A13CF7DC73C9962D5B0AEFCCC6F7DFF9CE770AFFC699679E59683EB22056953B1E3FDE81CD371C71385FDC8EDF31FB7DF6ECD953B8AFBFB69366E0A428B7E274BC81A9A7C129FB7902933AD9E3114129EA52D4BF082971D19BEC4D9C18B1F29DADFA642B47311763E527AB71D9EA52AC34C5E3511B8B43D045175DD469A529DE6CBAECB2CB8E59F98A0B4054E52E96531CB89CD30490F3C31FFE70F44D37DD74B81F569B5AC78E1DFB624D4DCD385B7D7886A6F69D5DC77942A542D3B7BEF5AD4EAB4C71C273F66E671698B2C3F322D86401279A83D8A1E777EA71284AAC6845B02ADEC1672B5FD9FD55569A86AB58712A3E54EEAAAA9E7F0E53A9E034BEE8E73887499D3CA1C39763C4B99651FFA246751750AA72AB45119EB23014AB4CDFFCE6373B1D7277BCA129EAEE5B6FBDD5E9F0BF7C7DCD8E00287525537512A84813274EDCB470E1C2939A98E2FCA95865EAE1790B0CA1D014012676B05DAD3415EFE0B36093EDA8E344E538AFA9DCCF28754E53768CFFEF7FFFFB920D475CA52F5698AA7227545B691A96C1297F71887C00EAC907D7967B9DCB8AAB937D7A7E53FECAA25D85A678532856D4E3DCA2EC0DA9AA12570ACD46B69A5F1CB8E290E5FC4A7BB9739AE277CB0ED58B3794A236175FB4479D042A569C633461C284036FBCF1C649094C69117E3AFD193B6B6A6ACEB7B5876F3390AD0E4D9A34A9EC394DD3A64D3BE69DCEAADC31F4DD85A6D8714763917F27343EA32942531680AA8A568EB2FBB2C7F38D4676CE531C22A31918168A0FD58BC033BEAAE797112F7EDD897E3E14EA64C7F94A5FF8C2170AB5A7DC4570E27604A46C15283E532E0EC98B90955D823C7B032ABB9DBF6A68B955AAE21187F66587FF3DFCF0C3C7D4CBEC6AA4D961CDF94BA1AB9340C54B9BCFDA8913277ED0D2D2D2A78169C78E1D7F1D3B76EC3B0ECB1BFEA12976B45D1DC691DFF946608ACB01C7BB9A71C8488CEC98FE682AF287E865A1269A8CF8FEAEBBEEEAF8F7F2212C0B42C5AB5FD118141F7A923524DFFFFEF73503C33B389DA85287FEA14EF649BDECEE3959ED3ADEE7F72434651F165E5574F187FC9B580331D4496048A8ADAD9D505F5FBFAFAF569C62852902537575F54F6DDDCA6906FABA71182E433330E482930FAE55270D7512A0B434E08C19376EDCFB4F3DF5D4FE13B83844EB6F7FFBDB3FC52179E9A8B35535038666A09F9DE821750EC953270D7512A06B718ED3D8B163974F9C38B1F9C5175F3CD093CF615ABA74E91369E8DA18177D700E9366C0D00C0C82E0D4D39522177D50270D7512A047E1E9CA084F7575752D3366CC78F9AF7FFDEB3B4D4D4D3BE390AA70E0C081E677DF7DF7F565CB96FDE5E73FFFF9E2DADADAAD11966275C955F2340386666010E8E921760EC953270D7512A077D230F4E99A9A9A1BD230342F1DDBD2D11627F1B77F6D4CC7C2744C89152A5B4B336068068668701A918E7D553EB8569D34D4490034038666A0025DDA1E882EEDE2F1DD02933A69A8930068060CCD40252BB7E2E4903C75D2502701D00C189A01CA042481499D549FD44900340376C29A01CA04A7990213EAA43A098066C04E5833406997C6C56CAA5C565C9D5427D54900340376C29A014A6B0F4DA893EA933A098066C04E583380D0843AA94E028066403380D0843AA94E028066403380D0843AA94E028066403380D0843AA94E028066403380D0843A69A8930068060CCD80D0843A69A8930068060CCD80D0843A69A8930068060CCD80D0843A69A8930068060CCD80D0843A69A8930068060CCD004213EAA43A09009A01CD004213EAA43A09009A01CD004213EAA43A09009A01CD004213EAA43A09009A01CD004213EAA4A14E02A019D00C68068426D449439D04605059BE7CB99DF0E0196D693370D8AC149A50270D7512804164F5EAD53B5B5A5AEC8807C1686A6A9A9B3603AF9A954213EAA4A14E023088AC58B1E2B2952B57EEDDB56BD7013BE4817BE7341A8165CB96BD938E2BCD4AA10975F224050E7512007A2BDD018D6A6868D818873CC4B1E2436D3CF1C4134934B743F1776F1FB1DD5FD508084DA893276B3CF7DC73C9AC59B392050B16A8930050A18DEDC2686E478E1C798AAD81D004C74A92E4B4F7DE7BAF3595D4D7D7FFC51601800A535D5D7D61DAD81E8EE6B6A6A6E6525B04A1098ED5D8D8F8E7A4DDBA75EB9AD25A79B9AD020095159A164463DB3E36DA22084DF0DFF6EFDFFFE523478E1C4D72A64F9FDE5857577786AD030095D1D08EC85699B29186A851B60C4213FC537373F3D6A4C8DEBD7B9B6B6B6BEFB57500A0321ADA85F9C094AD3639B709A109AAAAB66FDF3E2D2963C18205CDF1C693AD0400C3BB99EDB4CA940DC7EB233451E9D25CF4A983070F7E582E341D3D7AF4D0E4C9933779930900867733BBB854606A1FEB6D2184262AD98E1D3BD627DDD8BA756B634D4DCD0DB616000CCF46B6EC2A93739B109AA0AA6AEDDAB5DD65A6A4ADAD6D65CCF1BABABAD36C3100187E8DECC2AE02932BE9213451E96EBFFDF66BBB3A3C2F32D3D4A9539FB4D204009A5B30AFA85873E7CE7DBD5C627AF3CD371F8843999DD304009A5B30AFA858A3478FFE5C1A8EDA4A5C0462736D6DED6657CF0300CD2D985754BCBBEFBEFBBE34241DC987A63973E6FCB1BABA7AA6AD03009A5B30AFA87871F8DD92254B5A721F6CFB783AAFB7D4D5D59D61EB0080E616CC2B484D9A34E9EBADADAD07D391D4D7D72FF3597600A0B905F30A8ACC9E3D7BF1AC59B3E2E31816D81A00A0B905F30A8AC4E178319FE3E210B60600686EC1BC02F31900D00C605E81F90C00680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600F30ACC6700403300E615E63300A01900F30AF31900D00C807905E63300A019C0BC02F31900D00C605E81F90C00680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600F30ACC6700403300E615E63300A01900F30AF31900D00C807905E63300A019C0BC02F31900D00C605E81F90C00680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600CC2BCC6700403300E615E63300A01900F30ACC6700D00C680630AFC07C060034039857603E03009A01CC2B309F0100CD00E61598CF00806600F30ACC67004033807905E63300A019C0BC02F31900D00C807985F90C006806C0BCC27C06003403D0F339B430E6513763A32D853A09006806A8D43934221D87BB0A4DD5D5D5A36C29D4490040334025CFA3C55D84A6F523478E3CC556429D0400340354F23C1A512E34D5D4D45C6E0BA14E02009A01CCA5D2E7366DB4CA843A09006806A0AAF4B94DCE65429D04003403909386A405569950270100CD00940F4D17E6CE65BAD416419D04003403D0794E15CE6DB2CA843A09006806A0F49C1A615EA14E02009A014E8A24494ED9BA75EBBC0D1B361C59BE7C79D2D0D060F4F358B66C59B27AF5EABFA7639C19893A090068060699084C6BD6AC495A5A5A9243870E19033476EFDE9DAC5AB5EAFD34405D6956A24E02806640333088C40A93C0346882D3A186868657CD4AD44900D00C6806069138244F60193C230D4D87CD4AD44900D00C6806069138A746581954A1C9FF1FA89300A019D00C0CC5D0B47FEFCE64EBC63F252F2FFB6561C4EDB84FD0119A50270100CD40C587A67DAD4DC9E667A6257F5B74F33123EE8BC7841DA109751200D00C5474686A7CF93F3B05A66CEC7879A1B02334A14E02009A81CA0E4DAF3EFB9BB2A1291E13768426D44900403350D1A16973C3CFCB86A6784CD8119A50270100CD80D02434094DA89300806640682A3DE26A79E542533C26EC084DA893008066A0A243D396B5FF5E3634C563C28ED0843A090068062A3A34ED69DA946C5E7A47E743F3D2FBE231614768429D04003403151D9A626C7BFED14EA129EE13748426D44900403320341D3C986C59F787CE87E6A5F7C563C28ED0843A090068062A3634ED6B6D4ADE587B5FD9739AE2B1788EC02334D1EB9AB830EA623763A32D05004213832D341D3C98ECDCB222F9AF2553CB06A66CC473E2B9569D84267A551347A4E37057A1A9BABA7A942D0500421383283475B7BA64D54968A2CFEBE2E22E42D3FA9123479E622B0180D0C4200A4DC7B3BAD4D5AA93F02334D1E3BA38A25C68AAA9A9B9DC160200A18941169A7A1B98B221FC084DF4AA36963AB769A3552600109A1884A1C9109A1890DAD8E9DC26E7320180D084D064084DE4A42169815526004068129A0CA189F2A1E9C2DCB94C97DA2200203421341942139D6B64E1DC26AB4C0020342134194213A9DADADA4F5757574F4A6BE3BC746C49C707EDAB4D6DE9D8D67EC8DE94789EAD050042134293D02434558CB894783A1AD271A8AB0FB62D1ACFA6CF1F67EB0180D084D02434319C6BE0B969F059D283A0546AAC193D7AF4E76C4D00109A109A84268695EAEAEA3163C78E7D2F1F806A6B6B935FFFFAD7C98A152B92EDDBB727FFF8C73F92F0C1071F244D4D4DC9DAB56B93993367263FF8C10F8A83D33EAB4E0020342134094D0CA7C0342A0D391FE5C3D2638F3D96B4B4B424C7A3B5B5B5F0FC785D3E3CA5FFE6D5B62E00084D084D4213433D308DC907A61B6FBCB1B0AAD41BF1BA9B6FBEB9383859710200A109A1496862C8D6BC73F387E4DD71C71D1D87E0F5561CBA377DFAF4E243F5CEB7B50140684268129A1872D2C0B42CBFC274A281291F9C8A569CD6D8DA0020342134094D0C297159F1FC394CBD3D24AFAB43F5F2E738394C0F0084267A61E4C891A7084DC3273475F7F764D085A6862CD0C4451C4E86279E78C26A1300084DF446DA4B7D6AC78E1DEBE372C5B7DD76DB4DE59A6DA1696884A6E3FD7BD27F61281DFFDAD5736A6B6B3F9D5DFC215683F6ECD9735242535C55AFE872E4E7FA0B0180D04437B66FDF3EADADADED70D6541D3C78F0C3B973E76EB9F6DA6BFF8FD034F442534FFE9EF45F1D6B3F1CAEA1BABAFAC252CF49EF9F943DEFAEBBEE4A4EA6F81CA75C689AE22F0400421365ECDFBFFFCBBB76ED7ABB5C63B56DDBB6B61933663C505757779AD034F843536FFE9EF46F68CA8DC5C52B4FE97DF3B2C757AE5C79524353AC40E67E9785FE420020345124ED994E6B6C6CFCF39123478E76D75C1D3D7AF4C892254BFE3E79F2E4EF084D8333349DC8DF93010B4D1D2B4F59784ABFDF92DDDFD7178028D6D4D494FF3D1AFD850040682267D7AE5DDFDBBB77EFFBBD380FE2E01FFEF087E50B172E145606D178EEB9E79213F97BA60DFB99FEAF18B8D0945F794AC781ECFBBEBACC7857971FCFFDEC367F210018FECD86D183316BD6ACC289E0BD39793C5E1BFF46BC4B2DB00CFC88BF435FFC3D8DC137FA43FEE7D9D30000E4C415BAEAEBEBFFB26EDDBA9D478F1EFDE8789AABBD7BF73E3E71E2C467ABABAB17A4063428A4FF09C9830F3ED8F1FDE38F3F5EF239D3A64D3BE6BEB6B6B664F1E2C585C7BA5A2D8BC7EFB9E79E6E7F872953A6146E3FF9E493857F3BBB3F2E13DD9FDBE3A9A79E4A4EE4EFE9CA6903FEE6CFC6F4EF302AAE6E98DEDE67A509006010890FD1FCC52F7ED1D8DADADAD2C5F92F9B67CF9EFD7FE35C8B787EBC6E20CE695ABE7C793261C2848ED03367CE9CC2D5C5EEB8E38EC2F771527B71A8C9C24BDCBEF7DE7B0B5FC78F1F5F786E348CD97357AD5A953CFDF4D385C7E2EB39E79C935C7CF1C585DB31E6CF9F9F9C77DE799DFEFDF81DB2DB8F3EFA68C7ED085103712188DEFE3D19B0D0D4119672CF714E1300C060337AF4E8FF595B5B7B6F1A0C5A8E1C397220D753B5BDF9E69B0FA48F6D4E1BBB997575756764AF1988D014879265412782C94B2FBD94ECD8B1A370FBA1871EEA78DEB66DDB0A4127EEBFFFFEFB93071E78A070FB95575EE972D5281F74E2FB3BEFBCB3E3FB534F3D35B9F5D65B3BFDFB975C7249212CC5EDD75E7BADE3B59B366DEA086AFD7DF5BCDEFC3DE9F7D0B43E026BA9CFCD72F53C0080C1DDD08D983C79F2A6AD5BB7361D387060D5D4A9539F8CE62EEE2F7E6E7F86A6DDBB772769735918D94A5055FB2A4F7CBDE0820B3AEE8B55A87CF0B9EFBEFB3A6E5F74D1451DAF8F10B466CD9A8EE7EEDBB7AFB09295AD2CC5F363552B6E5F71C51585D7950A5AF995A6B3CF3E3B59BA7469E176AC4AC5EAD5407E4E534FFE9EF4DBFF639D56968AF99C260080412E9AB99A9A9A1BDA2F837C43B9E6AEBF579AF287D26541AA2A774E51A9A0158FC78895A1F87ACD35D7940C3CF9FBE6CD9BD7713B0253DC8E2076FAE9A7970C4DB1D2F4FCF3CF176EAF5FBFBE53581BC8D0D493BF2783479C6F98FEBD0EC7DF2CBD9DECD9B3E7A404A658B91D376EDCD15C683AD7D60700E86178EAEAF181FC9CA6B8404304935819CA424AF1F94C115AAADA0FE1BBE5965B3A0EE18B43E8B66CD972CCE174F91014AB51C52B4D717ED365975DD6F1BC38F42EC25A55EE6214C5816BA0CE69EAEDDF93C1253EB7290B33715EDEC9F0C4134FE45799D6D8EA00007D6C204253AC1EC5D5F02294C4B94C1188AADA0F858BEFF357C8CB0EDDCBCE63AA6A3FCF28C254AC1ABDF3CE3B25578E8E2734353737276FBDF5D631AB51C5A1293BA729FF7B0D646862C885A6CBB34013AB4D7D7D4188F8F7C68E1D7B34F7E1BAE36C750080211C9A22782C5AB42839F3CC330B87144518F9E217BF58B82F7BCE8B2FBED8713B1F9422586DDEBCB9703B5E1B177788DBD9E5C1F3A3F87CA82C10C58A54A98B4854159DD31441293B542F0E098C1055EAE7084D1C8F34CC3C9B859A1B6FBCB1CF2E3F1E87BADE74D34D1FE55799AC4402000CF1D0542AAC147F0E5276B9EFE2E7652126BE7EEC631F4B1A1B1B0B61AB2AB73254EE6764A1A978C4452362C4731E7EF8E18EE767612CBE669741CFAEB82734D18BD0746E3A7667E126E6D48906A7084CD3A74FCF9FC7B4AFA6A6E67C5B1B00601886A6AAF60B3B9C75D65985AF55ED87D3153F2F3E84379AC3E20FAA8D8B36C4E3F1F94B3D0D4D31E2755545177FC86E0FC4109A86A7EAEAEA31D94521B215A7DE1EAA17AF2B5A6172581E00C0700D4D86D05449D27053970F4E718E53ACB4C6E1A6C77B95BCB8E843FE1CA6186920FBA9AD0B002034094D0C0BB1E2948ED67CE889F0149FE3141F801BAB48D9A17B71085E535353E18A92B366CD4AAEBAEAAA23F9D7C5217911C46C550000A14968625889739CF29722EFE558E31C260000A1496862B887A72BDBC3D3E19E84A5585D72953C0000A14968A262D4D6D67E3A0D4F37A461685E3AB6A5A3AD3D20C5D7C6742C4CC79458A1B2B500008426A14968020000A1C9109A000040683284260000109A0CA109000084264368020000A1C9109A000000A149680200008426A1090000109A842600004068129A000000A1C9109A000040683284260000109A0CA109000084264368020000A1C9109A000000A149680200008426A1090000109A842600004068129A000000A14968322B010040683284260000181A962F5F2EAC0C9ED19686A6C3662500000C22AB57AFDED9D2D222B00C82D1D4D434370D4DAF9A9500003088AC58B1E2B2952B57EEDDB56BD701C165E0569822302D5BB6EC9D745C69560200C0209336EAA31A1A1A36C6A161714E8DD1EF23B6FBAB021300000000000000000000000000000000000000000000000000000000005031FE3F6516985DD3D8EA3D0000000049454E44AE426082, 1);
INSERT INTO `act_ge_bytearray` VALUES ('926d32c1-217d-11ea-97b1-9061aebe2144', 1, 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.bpmn20.xml', '926d32c0-217d-11ea-97b1-9061aebe2144', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0D0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E6365220D0A20202020202020202020202020786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4449220D0A20202020202020202020202020786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F4449220D0A20202020202020202020202020747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F5850617468220D0A202020202020202020202020207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0D0A202020203C70726F636573732069643D22457870656E736522206E616D653D22457870656E736550726F636573732220697345786563757461626C653D2274727565223E0D0A20202020202020203C646F63756D656E746174696F6E3EE68AA5E99480E6B581E7A88B3C2F646F63756D656E746174696F6E3E0D0A20202020202020203C73746172744576656E742069643D22737461727422206E616D653D22E5BC80E5A78B223E3C2F73746172744576656E743E0D0A20202020202020203C757365725461736B2069643D2266696C6C5461736B22206E616D653D22E587BAE5B7AEE68AA5E994802220666C6F7761626C653A61737369676E65653D22247B7461736B557365727D223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E0D0A20202020202020202020202020202020202020203C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C6578636C7573697665476174657761792069643D226A756467655461736B223E3C2F6578636C7573697665476174657761793E0D0A20202020202020203C757365725461736B2069643D226469726563746F7254616B22206E616D653D22E7BB8FE79086E5AEA1E689B9223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22637265617465220D0A202020202020202020202020202020202020202020202020202020202020202020202020202020636C6173733D22636F6D2E6578616D706C652E64656D6F2E6C697374656E2E4D616E616765725461736B48616E646C6572223E3C2F666C6F7761626C653A7461736B4C697374656E65723E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C757365725461736B2069643D22626F73735461736B22206E616D653D22E88081E69DBFE5AEA1E689B9223E0D0A2020202020202020202020203C657874656E73696F6E456C656D656E74733E0D0A202020202020202020202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22637265617465220D0A202020202020202020202020202020202020202020202020202020202020202020202020202020636C6173733D22636F6D2E6578616D706C652E64656D6F2E6C697374656E2E426F73735461736B48616E646C6572223E3C2F666C6F7761626C653A7461736B4C697374656E65723E0D0A2020202020202020202020203C2F657874656E73696F6E456C656D656E74733E0D0A20202020202020203C2F757365725461736B3E0D0A20202020202020203C656E644576656E742069643D22656E6422206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0D0A20202020202020203C73657175656E6365466C6F772069643D226469726563746F724E6F7450617373466C6F7722206E616D653D22E9A9B3E59B9E2220736F757263655265663D226469726563746F7254616B22207461726765745265663D2266696C6C5461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9A9B3E59B9E277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22626F73734E6F7450617373466C6F7722206E616D653D22E9A9B3E59B9E2220736F757263655265663D22626F73735461736B22207461726765745265663D2266696C6C5461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9A9B3E59B9E277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22666C6F77312220736F757263655265663D22737461727422207461726765745265663D2266696C6C5461736B223E3C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22666C6F77322220736F757263655265663D2266696C6C5461736B22207461726765745265663D226A756467655461736B223E3C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226A756467654D6F726522206E616D653D22E5A4A7E4BA8E353030E585832220736F757263655265663D226A756467655461736B22207461726765745265663D22626F73735461736B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6D6F6E6579203E203530307D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D22626F737350617373466C6F7722206E616D653D22E9809AE8BF872220736F757263655265663D22626F73735461736B22207461726765745265663D22656E64223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9809AE8BF87277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226469726563746F7250617373466C6F7722206E616D653D22E9809AE8BF872220736F757263655265663D226469726563746F7254616B22207461726765745265663D22656E64223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6F7574636F6D653D3D27E9809AE8BF87277D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A20202020202020203C73657175656E6365466C6F772069643D226A756467654C65737322206E616D653D22E5B08FE4BA8E353030E585832220736F757263655265663D226A756467655461736B22207461726765745265663D226469726563746F7254616B223E0D0A2020202020202020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6D6F6E6579203C3D203530307D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0D0A20202020202020203C2F73657175656E6365466C6F773E0D0A202020203C2F70726F636573733E0D0A202020203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F457870656E7365223E0D0A20202020202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22457870656E7365222069643D2242504D4E506C616E655F457870656E7365223E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227374617274222069643D2242504D4E53686170655F7374617274223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223238352E302220793D223133352E30223E3C2F6F6D6764633A426F756E64733E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2266696C6C5461736B222069643D2242504D4E53686170655F66696C6C5461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223430352E302220793D223131302E30223E3C2F6F6D6764633A426F756E64733E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226A756467655461736B222069643D2242504D4E53686170655F6A756467655461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223538352E302220793D223133302E30223E3C2F6F6D6764633A426F756E64733E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226469726563746F7254616B222069643D2242504D4E53686170655F6469726563746F7254616B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223733352E302220793D223131302E30223E3C2F6F6D6764633A426F756E64733E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22626F73735461736B222069643D2242504D4E53686170655F626F73735461736B223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223535352E302220793D223235352E30223E3C2F6F6D6764633A426F756E64733E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22656E64222069643D2242504D4E53686170655F656E64223E0D0A202020202020202020202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223737312E302220793D223238312E30223E3C2F6F6D6764633A426F756E64733E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E53686170653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7731222069643D2242504D4E456467655F666C6F7731223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223331352E302220793D223135302E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223430352E302220793D223135302E30223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7732222069643D2242504D4E456467655F666C6F7732223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223530352E302220793D223135302E3136363131323935363831303632223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223538352E343333333333333333333333332220793D223135302E3433333333333333333333333334223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226A756467654C657373222069643D2242504D4E456467655F6A756467654C657373223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223632342E353533303732363235363938332220793D223135302E3434363932373337343330313638223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223733352E302220793D223135302E31333932373537363630313637223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226469726563746F724E6F7450617373466C6F77222069643D2242504D4E456467655F6469726563746F724E6F7450617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223131302E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D2233372E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D2233372E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223131302E30223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22626F737350617373466C6F77222069643D2242504D4E456467655F626F737350617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223635352E302220793D223239352E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223737312E302220793D223239352E30223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226A756467654D6F7265222069643D2242504D4E456467655F6A756467654D6F7265223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223630352E343334303237373737373737382220793D223136392E3536353937323232323232323233223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223630352E313338343038333034343938332220793D223235352E30223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D226469726563746F7250617373466C6F77222069643D2242504D4E456467655F6469726563746F7250617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223139302E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223738352E302220793D223238312E30223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A2020202020202020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22626F73734E6F7450617373466C6F77222069643D2242504D4E456467655F626F73734E6F7450617373466C6F77223E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223535352E302220793D223239352E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223239352E30223E3C2F6F6D6764693A776179706F696E743E0D0A202020202020202020202020202020203C6F6D6764693A776179706F696E7420783D223435352E302220793D223139302E30223E3C2F6F6D6764693A776179706F696E743E0D0A2020202020202020202020203C2F62706D6E64693A42504D4E456467653E0D0A20202020202020203C2F62706D6E64693A42504D4E506C616E653E0D0A202020203C2F62706D6E64693A42504D4E4469616772616D3E0D0A3C2F646566696E6974696F6E733E, 0);
INSERT INTO `act_ge_bytearray` VALUES ('9307ec22-217d-11ea-97b1-9061aebe2144', 1, 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.Expense.png', '926d32c0-217d-11ea-97b1-9061aebe2144', 0x89504E470D0A1A0A0000000D494844520000034D00000159080600000044DBC48800002E9E49444154785EEDDD0B941D757D3870055FF545D5FAE8A13EB0EAD1AA6DB55A5B7C2D159FA8F8389B65134103418340908A780A044154A4A5E5F802EAAB159506B191878667121A9458A450E5A1844742205942424200498024F39FEFFC33DB9BD99B9B9BDDBD777F7BE7F339E77B7677EEDC994BEE8FEFFD7EE73733F7318F010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000EA65BFFDF6CB841042B48E6AEE04006A443100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100D09A3C090035A71800684D9E04809A530C00B4264F0240CD2906005A932701A0E6140300ADC9930050738A0180D6E44900A839C500406BF22400D49C6200A0357912006A4E3100B07D4B962CF9F8A9A79E9AF5F7F7EF517D0C00A8094D13407359963D75FDFAF51BD6AC59931D74D04197541F07006A42D304D0DCADB7DEFAB36CAB050B16AC1E1C1C9C525D0700A8014D13C0484B972E7DEBE6CD9BCB9E29DBB265CBE6D9B367AFEAEFEFDFADBA2E00D0E3344D00DBCA7BA45D57AD5A75CF70C7B4552C9B366DDA19D5F501801EA76902D8D692254B4EAB364CA5B3CF3EFBBE818181BFA93E0700E8117983B4309AA41DC4C2EAF300EA626868E8451B376EFCBFF3F22A366DDAF4D0AC59B36EEAEBEB7B5CF5B900400FC81BA2BE264D5235FAAACF03A88BE5CB97DF506D94AA6EBAE9A6BB0707078FAE3E1700E8113193D4A45132CB04D45E7F7FFFAED75E7BEDC3D526A96AEDDAB557E6F97275AC5FDD0600D0036226A949B364960920377BF6EC2F3EFCF0C38F561BA506F71F79E4910BCC3401408F8B19A5260D935926A0F6E25AA573CE396745B5532A5D73CD35FF9EE7CB5FBBA609007ADC76669BFAAAEB01D4D1F4E9D3F75CB66CD923D58669F3E6CDD74D9B36ED2E77CF03809AA8CC369965026870CA29A79CBB25D7D0336D8A6579BE3CBDBA2E00D0A32AB34D7DD5C701EAACBFBF7FB7CB2EBBEC81B2631A1A1A9A93E7CABB6279755D00A08795B34DD5E5003CE631471C71C401EBD6AD7B64CD9A35D981071E78FDE0E0E094EA3A00408F2B679BAACB01F8FFCE3CF3CCFF39F5D45363467E5EF531006007B22C7BC2EDB7DFFEA3C58B173F327FFEFCECB2CB2E9B94114D5375D96489FCDF7DCBA2458B562E58B060DFEAFB034CBC5EC89373E7CE2DF264FCAC3E3619429E046042E585C0B9F90751B66AD5AA6CC3860DD9C30F3F2CBA1CF1EF1EFFFE575C71C5FABC38D8A7FA1E0113AB57F2E4CA952B472C9B2C214F0230A1E2C8697C10553FA044F7636868684D5E0C5C5D7D8F8089254FA613F2240013224E3599CC474E7B29E27DC88B818DD5F7089858F2643A214F023021E25CF1EA879298B888F7A3FA1E01134B9E4C2BE44900BAAEDD62E0C1FB86B2DB7FF56FD98D977FBE88F83D9655D713630BC500A4479E4C2BE44900BAAE9D62E081752BB21B2E999DFDFA679FD92662593C565D5F8C3E1403901E7932AD902701E8BA768A813B6FBC60442150C65D375E38627D31FA500C407AE4C9B4429E04A0EBDA29067EBBF09411454019F158757D31FA500C407AE4C9B4429E04A0EBDA29066EB8EC8411454019F158757D31FA500C407AE4C9B4429E04A0EB140369856200D2234FA615F224005DD74E31107781AA160165C463D5F5C5E8433100E99127D30A791280AE6BA718B8E5175F1F510494118F55D717A30FC500A4479E4C2BE44900BAAE9D62E0DE15BFC96EB8F473230A8158168F55D717A30FC500A4479E4C2BE44900BAAE9D622062E935678D28066259753D31B6500C407AE4C9B4429E04A0EBDA2A06366ECC6EB9EA8C11C5402C8BC746AC2F461D8A01488F3C9956C8930074DD8E8A81F826FB25BFF8DA8842A08C78CCB7DD8F5F2806203DF2645A214F02D075DB2D06366ECC866E59905D7FF131230A806AC43AB1AEA3A9630FC500A4479E4C2BE44900BAAE5931B0A3A3A6DB0B4753C71E8A01488F3C9956C89300745DB362A09DA3A6DB8B786E757BA2FD500C24E7C9D505D48F3C9956C89300745DB362A0FA01BFB351DD9E683F140349796B1EABB6FEA4C6E4C9B4429E04A0EB9A150362E24231908CB2613A6AEB4F8D538DC99369853C0940D72906D20AC54012AA334CD5BFA9197932AD902701E83AC5405AA1189870DB6B90B6B79C1A9027D30A791280AE530CA4158A8109B5A3C668478FD3A3E4C9B4429E0426AD2CCB7659BC78F187CE3AEBAC4B4F3CF1C4359FFDEC67371C72C8215BF6DB6FBF6CE6CC998F1E75D451F7E7CB6E3DE9A4934E9D3E7DFAF3ABCF67E22806D20AC5C08469B7216A773D7A883C9956C893C0A493374B4FBAF8E28BBF397BF6EC4766CC98919D7EFAE9D92F7FF9CBECB6DB6ECBEEBDF7DE2CC4CFF83B96C7E3071D74D0E6C30F3FFCF6830F3EF89DD5EDD17D8A81B44231302176B611DAD9F599E4E4C9B4429E042695BC093AF4A4934EDAF0A94F7D2A5BBC7871B679F3E6A249DA91582FD69F356BD6A39FFCE427AF1D1818F8D3EAB6E91EC5405AA118E8BAD13640A37D1E93903C9956C893C0A490F73D8FBDE4924B7EF8894F7C229B376F5EB669D3A66A5FD496785E3CFF631FFBD8838383836FAFEE87EE500CA4158A81AE1A6BE333D6E73349C89369853C09242FEF751E3B77EEDCFF3EE49043B2DFFDEE77D53E6854623B3366CC7868EAD4A90755F747E72906D20AC540D78C57C3335EDB2161F2645A214F02C98B19A699336766AB56ADAAF63E6312DB9B3E7DFA0353A64CD9BBBA4F3A4B3190562806BA62BC1B9DF1DE1E899127D30A791248DA55575D7568344CE335C354956F77CB01071CB0AEBFBFFF25D57DD3398A81B44231D071D506E7B1797C74EBCF9D517D5E75BBF4107932AD90278164E53DCD93BEF0852F6C886B903AE9FCF3CF5F3775EAD48BABFBA7731403698562A0A3AA8D4D343CDFC923FECDE367BB8DD3F69E57DD3E3D429E4C2BE4492059175D74D1BFC65DF2467BD38776C5F667CC98B17ACA94297B555F039DA118482B14031DD3ACA18999A2F8F72EA39DC6A9B1612AE38086C79BED87494E9E4C2BE4492049792FB3CB71C71DF748DC26BC1B7EFEF39FDFB7DF7EFB5D597D1D74866220AD500C74C4F61A99660D50ABC6A9D9FADFDEBABCD1F6F6C724254FA615F22490A4ABAEBAEA83071F7C70DBDFC33456B19F69D3A6DDD7DFDFBF7BF5B5D0BEBCF15C98475F7579956220AD500C34D7EE786E62470D4CB346A859E3D46CBD660D536947FB2501ED8E2B7932AD902781247DEF7BDFBBECF4D34FAFF6361D75E28927DE3030307048F5B5D0BEBC10C8B646CBA24031905628069A6B773C57B4DBB8346B881A1BA7668FB76A984AEDEE9F09D2EEB89227D30A791248D249279DB4BA5BA7E6952EBFFCF21BF30FB0B9D5D742FB1A8A819645816220AD500C34D7EE786EB0B30D4BB3C628FEDEA5C9F2761AA6D2CEBE0EBAA8DD71254FA615F22490A4A38F3E7AC3EDB7DF5EED6B3AEAE69B6F5E967F70FDAAFA5A685F9362A06951A018482B1403CD3519C74DC7F356A36D549A354E3757FEDE9986A934DAD7438735194F4DC7953C9956C893409266CE9CB965EDDAB5D5BEA6A3EEBDF7DE07F20FAC15D5D742FB9A1401D5288A82548A811FFDE847D9430F3D34627919F998C86EBCF1C66D969D7FFEF9C5F2EABA975C724976F7DD7717BFDF73CF3DC3CBEFBAEBAEEC81071ED866DDDB6EBB6D9BBF376EDC98CD993327DBB061C388ED76231403CD3519BFD528C6F363C6DEA0346B9CC6D23095C6FABAE88026E3A81AC5B89AA83C79EDB5D7664B962C19B1BC59DE1B4DFCE637BFC9AEBBEEBA11CB1B23F2ECEF7FFFFB6D72E2DCB973B33BEFBC73C4BADD0A791248D2FEFBEF9F3DFAE8A3D5BEA6A3F2FDDDDFE4C34B742026AA18A8C68B5FFCE22CAE9DAB2E2F636868287BC31BDE901D7FFCF1C5DF2B57AECC76DB6DB76CD6AC5971C7C56DD6FDC4273E917DF8C31F2E7E7FFEF39F9FBDFBDDEF2EE2652F7B5976E491476EB3EE2B5EF18AEC84134EC82EBAE8A2A2108865BBECB24B76DE79E7659FFEF4A7BB5E1854DF1FD17EF4F7F7674F7AD293A2983AAA9AC776529C92579D618ABF63F9581C557DCD6272C444E5C9830E3A28DB73CF3DB31FFEF087C3792CE28FFEE88FB2F9F3E78F58FFFEFBEFCF7EF18B5F6437DD74D336CB7FFAD39F0E373D913BD7AC5953FC1E078D228F2E5BB66C78DD3848DAF8DC37BDE94DD9D1471F9DFDF8C73FCEDEF18E7714B9F8431FFA5076C001078CD87FB742D30424292F401FEDF64CD3EAD5AB6FDDCF4CD398543FF41B62E17E099C76121FE05110DC72CB2DC5DFD1D05C75D555C5EF3367CECCCE3DF7DCE2F798F9F9EC673F9BBDEF7DEF2B9AA6C73DEE71C5EFAF79CD6BB23FF9933F290A88C73EF6B171F390E16D1F7AE8A14523141FEECF78C633B238BD3496BFEB5DEF2A8A8F72BDDFFDEE77C573DFFCE637674F7DEA53B35D77DD35FBC637BE913DF1894FCCFEEBBFFE2B7BDAD39E969D7DF6D9235E7B274331D05C9371DC743C3F66EC333AAD669A9ADD55AF5D637D5D744093F1D4745C4D449E8C0336CF7CE6338B06E894534EC9962E5D5A2C8F039911911BE3EF786D911323FEFCCFFFBC68829EFDEC670F2F8B78C2139E90FDFAD7BF2ED63FEEB8E3B2BDF6DA2B9B32654A717029FFCFCBF6DE7BEFECBDEF7D6FF69EF7BC277BCE739E531C442A5F475F5F5FF6831FFCA0C8C9918363591CA038E38C33E254FAA209ABBEF64E873C0924E9D39FFEF4FDDDBEA629FF90B8663FD7348DC98E8A80D2441403654493529E1AD2D8344573F3DDEF7E7778BDF5EBD70F9FBA17AFF795AF7CE5F0633136CBE2E19FFFF99F8B266A8F3DF62866989EF7BCE7150541DCC8E4ACB3CE2AF671F9E5970F3F77F6ECD9D969A79D569C7A12A7EE7DE94B5FCAF6D9679FEC0FFEE00FB277BEF39DD9BFFEEBBF8E78CD9D0EC54073ED8EE7AD46DBA0346B98AA334EA3699C46FB7AE8B076C755B7F364E4B4684C22A7C5819BE73EF7B9D915575C51CCC6C74CF84F7EF2936DD65FBE7C79F6810F7CA0686CAEBFFEFAECE94F7F7A91C31EFFF8C71739319AA672DD17BCE005D982050B86FF8E8343311315BF7FFEF39FCF0E3FFCF022AF7EFFFBDF2F1AAE68C02262BFAF7DED6B8B8351F1DABEFAD5AF16B360B19F3207772BE4492049C71C73CC926EDF3D2FFF40B8603F77CF1B931D1501A56E17038D114DD3AA55AB8ADF1B9BA6F890FF8FFFF88FE1F56EB8E186A220880FF0F8D06E3C8A1ABF4F9F3EBDF8D08EE6279AAB4F7DEA53C54CD3BA75EBB2673DEB59C5B55071CADEDBDFFEF6E16B01E2B178EE5BDFFAD6ECAFFEEAAF8A23B4F17A5EFDEA57173FFFF00FFFB038CADB78C4B51BA11868AEDDF1DC60671B95660D535CC3D4ECEE793BD338EDECEBA08BDA1D57DDCE93DFFCE6378BB1F6677FF667C5419CD8FF17BEF085EC75AF7B5DB668D1A262F6274E9B6B3C7DF8831FFC603123147934F2591C6C8AFC178F3DE5294F195E6FC58A15D9AB5EF5AAE11C1A8D551CA88ADFA3D98ACFFB582FCE0688D3FD226F463316B3F431731F11AF2D1AB9C30E3BACD84FF5F5773AE4492049279E78E2A9DDFE9EA63C11CFF33D4D63B3A322A0D4ED62A08C3855244E8D2B3FACE3F4B8B7BCE52DC38DD077BEF39D6DD68F26277E0E0E0E1647381B1FBBF2CA2B878F74C67AF9D8C95EF2929764FBEEBB6F7184353EF4E3D493B7BDED6DC5697DF1211FB3487181731C29BDF0C20B8B99A66896CAD71311A70296A7F6752B1403CDB53B9E2BDA6D58B6D730B5FA9EA6761AA776F7CF0469775C753B4FC6C19D3860F3918F7CA498118F19F02F7EF18BD9830F3E583C1E0788E2B4E29891FFE52F7F99BDFFFDEFCFFEF88FFFB8C89DD1D4C4AC50E34C53E4B6C6EDC77A656E8BC6AA3C7815BF475355AE1737D279FDEB5F9FBDF4A52F2DF617F93296C74CD3C9279F3CE275772BE4492049D3A74F7FFE8C193336E7AABD4D47E4FBB93BFF105B9D27E5DDABAF85F1D7ED62A08CEF7DEF7BC5CD1FCAA3948D334D53A74E2D1A9CB858B92C08CA46268E84BEF18D6F1CFE3B3ED0A32038F8E0838B23B1712380B8483A6EE210DB8A22208A86B84BD4473FFAD1EC5FFEE55F8AE5D128C5F36336291AA9386A9AFF730C170F11716D80A669D2DB51E3D2AC216A7697BC66EBB56A9C76B45F26916EE7C9C87D91D3222FC6CD6EE2C04F1C042AF35E1C608A5390CBBB7FC68D1CE2F198118A6B35BFF295AF6C33D3D478CD67449CBA1CD735456E8CC62AB65FFE1E0790629DD846E4D3C8B971AA5E34718D4D535CD3547DDDDD0A791248D6E1871FBEB45BA7E8CD9933E70779D37465F535D019DD2E06CA88D3EFA2312AFF6E6C9AA2A189D3F0CAC7CABB39C5297AF94B1E2E1CCA59A9B8B353B9DE39E79C337C7A5E2C8BA2216E211E4749E368E97DF7DD37BCDDB80EA09C698ABFE30610669A7AD2F61A98668D50B386A9D46CFD668DD3F6F6C724D5ED3C19334D7BECB147710069E1C285C569C777DC714771B0299A9BEAFA11717A5E344D71F028669962762A66DAE3E60E31937FE9A5970EAF1B79311AA5C873B14E99F7E2F7F28613D1B845EE2C4FCF6B6C9AA2418BA6290E469D74D249235E4BA7439E049275F0C107BF73D6AC598F6EDAB4A9DAE38CAB7CFB77E60DD32D53A64CD9ABFA1AE88C6E17036544D3141FC6E5DFD5A6A9FC702E233EB4A3F129EFD4D4783D54351A9BA698498AEF3979F9CB5F5EECE3EAABAFDE66DDD8CFC73FFEF1EC939FFC64D1249969EA59CD1A998F3EA6FD86A9D4AC713AA0E1F166FB6192EB769E8C3C74C105171477CD9B366D5AD110C5B298F1299BA63815399AAB68A8A2B18AEB98E2260FC71E7B6CF6DBDFFEB6384054CE34C501A5C6D3EEE2D4BA72963F4EE72BF35EDC1827AE636A7C2D8D4D53CCCAC7CC57FE4F927DED6B5F2B6EAC13A74C575F7FA7439E049276D861875D3B6FDEBC2DD546671C6DF9C77FFCC77FCB9BA679D57DD339DD2E06CA88BB34C52C51F9BD2371A1729C7617BFC72977E5AD6D23BEFEF5AF174543F9DD22118D4D53DC92372E5A8E06278EB2C66927B1FD782C4E2D89EF1389EF3489EB989EFCE427174755E3B1B80E2A4E71897DC5B6E33A80D866DC6EFC739FFB5C71AA4AE3F797742314031D556D681A1BA0761AA6D2F69E57DD3E3DA2DB7932EE6EF7C217BEB098C589199D72F63B6E5A13B7048FDFE32EA2719A5EDC492F7269345891FFCA9CDA784D537C1F5D343CAB57AF1EB1AF3838D4D850951177E1FBCC673E53BC8EB8FE33AE6DCEFF29B22F7FF9CBC59D462397C60C569C31D0EA8BC93B11F22490B4FEFEFE974C9F3EFD81385FBA13F242F57B79C33414FBA9EE9BCEE9763150461CCD8CB1545D1E11B7BF8DEF1089DFE3E866DCF821BEBBA92C0622E22612E579F871A7BB38DAF9C0030F14A7AFC4877C792BF3F8FE91380DAFDC767CAF48DC32B7FC3B2EA48EC7E343FF452F7A5171F4362E7E8ED9A7B8A1845BE9F69C6A63130D4FCC14B5DB3095AACFAB6E971E321179B2FC32DA88C851AD725199D322AF36E6B7762266E1EFBEFBEE11CB2362462A66F8232FC6B54EF11D4FD5752622E44920797961FAF6030F3CF0A1381A3F9E962D5B7661DE30ADCC0BE5BDABFBA4B326A218D851343B6A194748CB3BE8ED281A8B8D9D8966FBED762806BA62BC1B9CF1DE1E8949314F8E579477E46B16A3CDA59D0E79129814A64E9D7AD0F4E9D3EF1FAF19A7AD334C2BF238B0BA2F3AAF978B81C9188A81AE19AF4667BCB643C2E4C9B4429E04268D9811DA7FFFFDD79D7FFEF9EB467B7388B8E9C3D66B98EE36C334711403698562A0ABC6DAF08CF5F94C12F2645A214F0293CAC0C0C09F4E9D3AF592193366ACFEF9CF7F7E5FBBDFE394AFB76ACE9C393F8CBBE4E571516CA7BA6DBA473190562806BA6EB48DCF689FC724244FA615F2243029C5EDC1F3E667D1B469D3D69F70C209D7CF9F3FFF869B6FBE79F99A356B1ECC7BA407EEB9E79EDB6FBCF1C66BCE3BEFBCF30F3FFCF08BF275D7C4FA6E2B9E06C5405AA11898103BDB00EDECFA4C72F2645A214F02935A7F7FFFEE793334736060E082FCE7D579C4772E655B7F5EBD75F9CC58AFFA5C268E6220AD500C4C98761BA176D7A387C89369853C0940D72906D20AC5C084DA5143B4A3C7E951F2645A214F02D0758A81B4423130E1B6D7186D6F3935204FA615F224005DA718482B140349A83648D5BFA9197932AD902701E83AC5405AA1184846D9281DB5F5A786A9C6E4C9B4429E04A0EB140369856220296F8D9BD9C4CFEA03D48B3C9956C89300749D6220AD500CA4656BD344CDC99369853C0940D72906D20AC5405A344D047932AD902701E83AC5405AA118488BA689204FA615F224005DA718482B140369D13411E4C9B4429E04A0EB1403698562202D9A26823C9956C89300749D6220AD500CA445D3449027D30A791280AE530CA4158A81B4689A08F2645A214F02D0758A81B4423190164D13419E4C2BE44900BA4E3190562806D2A26922C89369853C0940D72906D20AC5405A344D047932AD902701E83AC5405AA118488BA689204FA615F224005DA718482B140369D13411E4C9B4429E04A0EB1403698562202D9A26823C9956C89300749D6220AD500CA445D3449027D30A791280AE530CA4158A81B4689A08F2645A214F02D0758A81B4423190164D13419E4C2BE44900BA6EFEFCF95B366CD830E24349743FF2F761655E0C6CACBE474C1C4D13419E4C27E4490026C4A2458B56AE5AB56AC40793E87EDC71C71D73F262E0EAEA7BC4C4D13411E4C974429E0460422C58B060DF2BAEB862FDD0D0D01A47522726F27FF7A165CB969D9D1702CBF3D8A7FA1E3171344D845EC9932B57AE1CB16CB2843C09C0848B0FA0387297C7C371AEF8648BB3CE3A2B8BE2B6BA7C1245FCBBC7BFBF4220319A264AF1FFE7D6FF4F27659E5CBC787176EAA9A76673E7CE1DF1D82409791200C6222F6C172A6EE904E38A5E9065D953D7AF5FBF61CD9A35D941071D7449F57100A0C7E5456D5F14B65BA3AFFA388C85A6895E70EBADB7FE2CDB6AC18205AB070707A754D701007A5839CBB43516561F87B1D03431D92D5DBAF4AD9B376F2E7BA66CCB962D9B67CF9EBDAABFBF7FB7EABA00400FAACC32996D62DC699A98CCF21E69D755AB56DD33DC316D15CBA64D9B7646757D00A007556699CC3631EE344D4C664B962C39ADDA3095CE3EFBECFB060606FEA6FA1C00A0876C6796C96C13E34AD3C464353434F4A28D1B37FEDF7979159B366D7A68D6AC5937F5F5F53DAEFA5C00A0476C6796C96C13E34AD3C464B57CF9F21BAA8D52D54D37DD74F7E0E0E0D1D5E702003D2066929A344AD5E8AB3E0F7696A689C9A8BFBF7FD76BAFBDF6E16A9354B576EDDA2BF331BE3AD6AF6E030098E46226A94993540DB34D8C99A689C96AF6ECD95F7CF8E1871FAD364A0DEE3FF2C82317986902801A51DCD209C61593555CAB74CE39E7ACA8764AA56BAEB9E6DFF3F1FD6BD73401408D286EE904E38AC96CFAF4E97B2E5BB6EC916AC3B479F3E6EBA64D9B7697BBE70140CD286EE904E38AC9EE94534E39774BAEA167DA14CBF2B17D7A755D00A0C7296EE904E38AC9AEBFBF7FB7CB2EBBEC81B2631A1A1A9A938FEBBB6279755D00A0C7296EE904E38A5E70C411471CB06EDDBA47D6AC59931D78E081D70F0E0E4EA9AE0300D480E2964E30AEE815679E79E6FF9C7AEAA97167D179D5C700809A50DCD209C615BDA2BFBF7F8F18CFF1B3FA180050138A5B3AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A013AC1B8A29718CF0050738A01C62A1F430B631CED2016569F0793853C090035A71860ACF231D4D7A449AA465FF5793059C8930050738A01C643CC24356994CC32D113E44900A839C500E32166929A344B6699E809F22400D49C6280F112334A4D1A26B34C4C7AF22400D49C6280F112334A4D9AA6BEEA7A30D9C8930050738A01C65365B6C92C133D419E04809A530C309E2AB34D7DD5C76132922701A0E614038CB772B6A9BA1C262BE319006A4E31C0782B679BAACB61B2329E01A0E6140369C9B2EC09B7DF7EFB8F162F5EFCC8FCF9F3B3CB2EBB4C7439F27FF72D8B162D5AB960C1827DABEF0FF5244F0240CD2906D292374CE7E6057BB66AD5AA6CC3860DD9C30F3F2CBA1CF1EF1EFFFE575C71C5FABC89DAA7FA1E513FF22400D49C62202D31C314057BB59017DD8FA1A1A13579D37475F53DA27EE44900A839C5405AE2943C334C6944BC0F79D3B4B1FA1E513FF22400D49C62202D714D4DB578171317F17E54DF23EA479E04809A530CA4A5DDA6E9C1FB86B2DB7FF56FD98D977FBE88F83D9655D713630B4D13419E04809A530CA4A59DA6E981752BB21B2E999DFDFA679FD92662593C565D5F8C3E344D047912006A4E319096769AA63B6FBC6044C354C65D375E38627D31FAD03411E44900A839C5405ADA699A7EBBF09411CD5219F158757D31FAD03411E44900A839C5405ADA699A6EB8EC8411CD5219F158757D31FAD03411E44900A839C5405A344D6985A689204F0240CD2906D2D24ED31477CBAB364B65C463D5F5C5E843D344902701A0E614036969A769BAE5175F1FD12C95118F55D717A30F4D13419E04809A530CA4A59DA6E9DE15BFC96EB8F473231AA658168F55D717A30F4D13419E04809A530CA4A59DA62962E935678D689A6259753D31B6D03411E44900A839C5405ADA6A9A366ECC6EB9EA8C114D532C8BC746AC2F461D9A26823C090035A71848CB8E9AA607D6ADC896FCE26B231AA632E2B158A7FA3C31BAD034D54F9E1317465EDC412CAC3E0F00E8619AA6B46CB769DAB8311BBA654176FDC5C78C6894AA11EBC4BA669DC61E9AA6FAC973625F9326A91A7DD5E701003D4CD39496664DD38E6697B617669DC61E9AA67A8A99A4268D92592600A82B4D535A9A354DEDCC2E6D2FE2B9D5ED89F643D3544F3193D4A45932CB040075A5694A4BB3A6A9DA08ED6C54B727DA0F4D537DC58C529386C92C1300D491A6292DCD9A263171A169AAAFEDCC36F555D703006A40D394164D535AA169AAB7CA6C93592600A82B4D535A344D6985A6A9DE2AB34D7DD5C701809AD034A545D39456689A28679BAACB01801A510CA445D39456689AEAA7BFBF7FF73C2FCE1C1818B820FF7975FEF39EAD334D776EFD3B96CF8CF5AACF05007A94A6292D9AA6B442D3541F53A64CD92BCF878B1A4EC76B2716C5F3AADB02007A8CA6292D9AA6B442D3D4FB060606FE34CF831735698876262E8AED54B70D00F488F8C0AF2E63E2689AD20A4D536F9B3265CADE838383F7353640FBEFBF7F76F2C92767F3E7CFCF6EBBEDB6ECDE7BEFCD42FC8CBF63793C1EEB551AA7B5B1BDEA3E00801EA0694A8BA629ADD034F5AE3CF71D98374C9BCAA667DAB469D9B7BEF5AD6CDDBA754593B423B15EAC1FCF6B689C1E8DED56F705004C729AA6B4689AD20A4D536FDA3AC334DC301D76D861D9D2A54BAB7D515BE279F1FCC6C6C98C1300F4184D535A344D6985A6A9F7F4F7F7BF64EAD4A9EBCA26E7D8638FCDD6AF5F5FED85764A3C3FB6D3D038DD1BFBA9EE1B0098A4344D69D134A5159AA6DE93E7BC798D334C636D984AB19DCA8CD3BCEABE0180494AD394164D535AA169EA2D5B6F2B3E7C0DD3684FC9DB9ED85EE3354E6E470E003D42D3D45D279C70C22ED5658D344D69C58E9AA61DBD9FA425CF7757960D4DDCC4A11362BB0DB34D57565F03003009699ABAE3EEBBEFDE63F9F2E5375C7BEDB50F1F7FFCF15FEAEBEB7B5C759DA0694A2BB6D734B5FB7ED21D791E5B98475F7579A3FEFEFEDDF375B644CE8BDB85B77B97BC9D15DB6DB81DF996D86FF5B50000938CA6A9B3F21A6AD7254B969CB671E3C6CD65519517E38F9E73CE392BA64F9FBE67757D4D535A516D9A76F6FDA43B1A6676B6DB3C0D0C0C1C52AEF7E52F7FB97CFB3A22B65FEE2BF65B7D2D00C024A369EA9CA54B97BE75D5AA55F7540BAAD2B265CB1E39E59453CEEDEFEFDFAD7C8EA629AD686C9A46F37ED21D0D4DD3769BA7FCEFB9E5E3975F7E79F5ED1B57B1FD86D732B7F17500009390A669FCE535D3D36EBDF5D69F6DDE3C3C19B15D5B727961FEC091471EF9D178AEA629AD88F7231BC3FB497734699A46344FF9CF5F95CB6FBFFDF6EA5B37AE62FB0DAFE15795970B004C369AA6F1B564C9928FAF5FBF7E43B588DA9175EBD63D72E69967FECFDCB9734714EEDD8C9B6FBE39BBF8E28BB3871E7AA8F83B6EA35C5DE7273FF949F6FBDFFF7EC4F27BEFBD37665B462C8FF8CD6F7E935D77DD75239637C6F9E79F5F6C77C3860DC3CBE2DFE3CE3BEF1CB16EB762F1E2C5F16F30EAF7B3BFBF7F8FEA1861FC356996AA11CDD39AF2EFB56BD756DFB27115DB6FD8F78AEAEB0500269926C58518439C7AEAA9D99A356BAA35D40EC573E2B9B18D952B578E28DEBB15975C7249F68C673C23BBE9A69BB2BBEEBA2B6E999CCD9E3D3BDBB871E3F03A7FF9977F997DF18B5F2C9A99ABAFBE3ABBF4D24BB3238F3C327BF6B39F9DFDF55FFFF570C315FF1DF1DF15BFDF76DB6DD96EBBEDB64D53158565E3BEDFF4A63765471F7D74F6E31FFF387BC73BDE910D0D0D651FFAD087B2030E3860C4EBEC46C4EB1F8FF753A4178F3EFA68F52D1B57B1FD86FD6DACE65D00805A8B99851933665CBA60C182D55BB66CD9F1F95C59B6296F0EE61C78E081D7E7C5D5BC8998698A5389A64E9D9AE5AF3DEBEBEBCB9EF294A764FBECB34FF6E4273F397BC2139E909D77DE79DBACFFFAD7BFBE98015AB46851F6F8C73F3E7BCF7BDE931D73CC31D9B9E79E9BFDF77FFF77F6E0830F16EB1D77DC71D95E7BED55345E1FFEF087634633DB7BEFBDB3F7BEF7BDC5739EF39CE764175D74D1F07663DF3FF8C10F8AEDBCE10D6F2896C56B3AE38C338A19B0896826E3BF732CEFA799A6EEA836450DB170BFFF3B3D6F45B9DC4C13004002060707A7CC9E3D7B55AB1B076CDEBCF9BAB871405E54DD15EBC7F326EA9AA65B6FBD35CB5F6B366FDEBCECC52F7E7176DF7DF765AF7CE52B8B19A598258ADB287FFFFBDFCFDEF7BEF765CF7CE633B3DD77DFBD98598AD9A3C6EDC4297AE5EF2F78C10BB2BCD918FEFB694F7B5AF6D39FFEB4F8FDF39FFF7C76F8E187170D5BB9DDD85EC42EBBEC92BDF6B5AF2D669AA269FAEA57BF9AEDB9E79ED93BDFF9CE6D66BCBA11E58D2046FB7ED21DAD9AA586755CD30400909AB88BDAB469D3CE38FBECB3EFDBB469D3430D35D5FDD75C73CDBFE78FDD951754A74FE4DDF3E22E5FEF7EF7BB87E36FFFF66F8B19A6BFF88BBFC876DD75D762D9F39EF7BCECED6F7F7BD148C5297B31BB14334237DE7863F6A4273DA968782262A6E855AF7AD5F075502B56AC28FE2E1F8FE7BDEB5DEF2A7E7FFAD39F5E5C2F14EBC5354CF7DF7F7FB18F9865FAE10F7F589C221891FF9364CF7DEE73B3C30E3BACE9F5559D8EC6BBE78DE6FDA43B5A354BA5FDDC3D0F00205D0303037F73C41147DC94BB7BEDDAB557FEFDDFFFFD82BC90FA752CAFAEDBEDA62962F9F2E5C50CCEEAD5AB8BC6242FFEB3B7BCE52DC5DFE5354965E40D43F6C4273EB1687AE294BC17BEF085D9FBDFFFFEE2B128106306A971FD98398AA3EEF1FBB39EF5AC6236ABFC3D9AAA72BD7BEEB9A738EDEFA52F7D69F6E637BFB998598AE531D374F2C9278F78CDDD8AEAF734859D793FE98E56CD52C9F734010024AEAFAFEF7183838347E745D4EAF8197F57D70913D13495F19DEF7CA738DD2EAE6FBAFBEEBB8B822FAE6D6A5CE7831FFC60F6777FF777D951471D95BDFAD5AF2E4EA38BA6E9965B6E2966A4A2016B5C3F96C5754D316315334D319B54FE1EB356B1CE57BEF29562C62A1AB138552FAE736A6C9AE29AA6EA6BED56346B9A42BBEF27E9C8C7D2EEF9FBB525C6F5FEFBEF5F9C72DA09B1DD8F7CE423C57E627FB1DFEA6B0100A085134E386197EAB24613D134C569779FFBDCE78AC625EE8C17D721BDE215AF28EE6017D7209577B98B5B864713133775B8F0C20BB36F7CE31B71143D9B33674EF6B297BD2C3BE49043466C3B6694A2518A53F2E2A612E5E979F1FBD2A54B8B7562362BB6519E9ED7D834EDBBEFBE45D314B72C3FE9A493466CBFD3B1BDA6A9B4A3F793B4E44DCC95E50CD0B7BEF5AD6ABF332E62BBE53E627FD5D70000C01875BB698A06E98D6F7C6376FCF1C767DFFEF6B7B3A73EF5A9C551F8B80B5E3CFEBFFFFBBFD93FFCC33F14BFFFE77FFE67313B14CDCD05175C907DE0031FC8BEFBDDEF66FFF44FFF549C8677E8A1876EF31D4B11716A5D792D525CA3549E9E77DA69A715D73135AEDBD834BDE635AFC966CD9A555CD3F4B5AF7DADB84664707070C4EBEF74ECA8696272993265CA5E654313A7A146E33E9E627B53A74E2D6799E2CE917B555F03000063D4EDA6A9F14B6AE3D6E271E386C6C627669462C62966A3CA65310BF499CF7CA66894622628AE6D8ABBE6BDEE75AF2BAE4B8A46AABA9F8838F5AFF13AA632AEBFFEFA627B717D547CC1EDE9A79F5E344B715DC897BEF4A5E2C614D1CCBDED6D6F1BFE0EA86E85A6A9F7E4CDCCBCB2A9296F30321E623B871E7AE8E68659A679D57D0300300EBADD3435465C9714DF9D14B7FC8E3BE79511376668BC9578DC2422BECBE9631FFB58F1FD49E5F238CD6EC68C19C52C5275DB112F7FF9CB8B6BA5AACB2362462AF613D783C46C567CC753759D89084D53EFE9EFEF7F49DED0DC5B3637C71E7BEC981BA778FE31C71C333CC314DB8FFD54F70D00C03898C8A6A9DD689C9DDA9928BFF4B659544FEB4B25344DBD69CA94297BE78DCDA38D334EA33D552F9E5799617A34B65FDD270000E36432344D750A4D53EFCA9B9B031B1BA7B8C6296EE2D0EE5DF562BD58BFF11AA6ADDB3BB0BA2F0000C691A629ADD034F5B6AD334E6B1B9A9EE2462871BAE8FCF9F3B3DB6EBBAD383535C4CFF83B96C7E30DB7152F63AD192600802ED034A5159AA6DE373030F0A779C37351A501DAD9B828B653DD3600001DA0694A2B344DF5B1F576E48B9A3444AD6291DB8A03007499A629ADD034D54F7F7FFFEE793334736060E082FCE7D579DCB9B5418A9F576F5D3E33D6AB3E1700802ED034A5159A260000488CA629ADD03401004062344D6985A609000012A3694A2B344D000090184D535AA169020080C4689AD20A4D1300002446D39456689A000020319AA6B442D304000089D134A5159A260000488CA629ADD03401004062344D6985A609000012A3694A2B344D000090184D535AA169020080C4689AD20A4D1300002446D39456689A000020319AA6B442D304000089D134A5159A260000488CA629ADD03401004062344D6985A609000012A3694A2B344D000090184D535AA169020080C4CC9F3F7FCB860D1B4614EFA2FB91BF0F2BF3A66963F53D02000026D0A2458B56AE5AB56A44012FBA1F77DC71C79CBC69BABAFA1E0100001368C18205FB5E71C515EB878686D698719A98C8FFDD87962D5B7676DE302DCF639FEA7B0400004CB028D46386238F87E39A1AD1F5887FF7F8F7D730010000000000000000000000000000000000000000000000000000000000F5F0FF002ED2EC4A56DFDF5D0000000049454E44AE426082, 1);

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count', 'true', 1);
INSERT INTO `act_ge_property` VALUES ('cfg.task-related-entities-count', 'true', 1);
INSERT INTO `act_ge_property` VALUES ('common.schema.version', '6.4.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('identitylink.schema.version', '6.4.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('job.schema.version', '6.4.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('next.dbid', '1', 1);
INSERT INTO `act_ge_property` VALUES ('schema.history', 'create(6.3.2.0)', 1);
INSERT INTO `act_ge_property` VALUES ('schema.version', '6.4.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('task.schema.version', '6.4.0.0', 1);
INSERT INTO `act_ge_property` VALUES ('variable.schema.version', '6.4.0.0', 1);

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_START`(`START_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_PROCINST`(`PROC_INST_ID_`, `ACT_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_EXEC`(`EXECUTION_ID_`, `ACT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO `act_hi_actinst` VALUES ('c3534c85-2183-11ea-9dc2-9061aebe2144', 1, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c352b044-2183-11ea-9dc2-9061aebe2144', 'start', NULL, NULL, '开始', 'startEvent', NULL, '2019-12-18 18:47:18.967', '2019-12-18 18:47:18.970', 3, NULL, '');
INSERT INTO `act_hi_actinst` VALUES ('c35436e6-2183-11ea-9dc2-9061aebe2144', 2, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c352b044-2183-11ea-9dc2-9061aebe2144', 'fillTask', 'c359dc37-2183-11ea-9dc2-9061aebe2144', NULL, '出差报销', 'userTask', '123', '2019-12-18 18:47:18.973', '2019-12-18 18:48:17.270', 58297, NULL, '');
INSERT INTO `act_hi_actinst` VALUES ('e613a17c-2183-11ea-9dc2-9061aebe2144', 1, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c352b044-2183-11ea-9dc2-9061aebe2144', 'judgeTask', NULL, NULL, NULL, 'exclusiveGateway', NULL, '2019-12-18 18:48:17.270', '2019-12-18 18:48:17.286', 16, NULL, '');
INSERT INTO `act_hi_actinst` VALUES ('e616127d-2183-11ea-9dc2-9061aebe2144', 1, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c352b044-2183-11ea-9dc2-9061aebe2144', 'bossTask', 'e616398e-2183-11ea-9dc2-9061aebe2144', NULL, '老板审批', 'userTask', NULL, '2019-12-18 18:48:17.286', NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_PROC_INST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_ACT_INST`(`ACT_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TIME`(`TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_NAME`(`NAME_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TASK_ID`(`TASK_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_TASK`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_PROCINST`(`PROC_INST_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO `act_hi_identitylink` VALUES ('c34f06c1-2183-11ea-9dc2-9061aebe2144', NULL, 'starter', 'anonymousUser', NULL, '2019-12-18 18:47:18.951', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL);
INSERT INTO `act_hi_identitylink` VALUES ('c35ac698-2183-11ea-9dc2-9061aebe2144', NULL, 'assignee', '123', 'c359dc37-2183-11ea-9dc2-9061aebe2144', '2019-12-18 18:47:19.016', NULL, NULL, NULL, NULL);
INSERT INTO `act_hi_identitylink` VALUES ('c35ac699-2183-11ea-9dc2-9061aebe2144', NULL, 'participant', '123', NULL, '2019-12-18 18:47:19.016', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL);
INSERT INTO `act_hi_identitylink` VALUES ('e5f9fefb-2183-11ea-9dc2-9061aebe2144', NULL, 'participant', 'anonymousUser', NULL, '2019-12-18 18:48:17.102', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `PROC_INST_ID_`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_INST_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_I_BUSKEY`(`BUSINESS_KEY_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO `act_hi_procinst` VALUES ('c34e1c60-2183-11ea-9dc2-9061aebe2144', 1, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', '2019-12-18 18:47:18.932', NULL, NULL, 'anonymousUser', 'start', NULL, NULL, NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_INST_PROCINST`(`PROC_INST_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO `act_hi_taskinst` VALUES ('c359dc37-2183-11ea-9dc2-9061aebe2144', 2, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', NULL, 'fillTask', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c352b044-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL, '出差报销', NULL, NULL, NULL, '123', '2019-12-18 18:47:19.014', NULL, '2019-12-18 18:48:17.186', 58172, NULL, 50, NULL, NULL, NULL, '', '2019-12-18 18:48:17.186');
INSERT INTO `act_hi_taskinst` VALUES ('e616398e-2183-11ea-9dc2-9061aebe2144', 1, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', NULL, 'bossTask', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c352b044-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL, '老板审批', NULL, NULL, NULL, NULL, '2019-12-18 18:48:17.287', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2019-12-18 18:48:17.287');

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_NAME_TYPE`(`NAME_`, `VAR_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_PROC_INST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_TASK_ID`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_EXE`(`EXECUTION_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO `act_hi_varinst` VALUES ('c3519ed2-2183-11ea-9dc2-9061aebe2144', 0, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, 'money', 'integer', NULL, NULL, NULL, NULL, NULL, 123321, '123321', NULL, '2019-12-18 18:47:18.961', '2019-12-18 18:47:18.961');
INSERT INTO `act_hi_varinst` VALUES ('c3526223-2183-11ea-9dc2-9061aebe2144', 0, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, 'taskUser', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, '2019-12-18 18:47:18.961', '2019-12-18 18:47:18.961');
INSERT INTO `act_hi_varinst` VALUES ('e5f9fefa-2183-11ea-9dc2-9061aebe2144', 0, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, 'outcome', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '通过', NULL, '2019-12-18 18:48:17.102', '2019-12-18 18:48:17.102');

-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_id_bytearray`;
CREATE TABLE `act_id_bytearray`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------
INSERT INTO `act_id_group` VALUES ('group1', 1, 'group1', 'assignment');

-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`;
CREATE TABLE `act_id_info`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership`  (
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`, `GROUP_ID_`) USING BTREE,
  INDEX `ACT_FK_MEMB_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------
INSERT INTO `act_id_membership` VALUES ('a', 'group1');
INSERT INTO `act_id_membership` VALUES ('admin', 'group1');

-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv`;
CREATE TABLE `act_id_priv`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PRIV_NAME`(`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_priv
-- ----------------------------
INSERT INTO `act_id_priv` VALUES ('94a6cf16-217d-11ea-97b1-9061aebe2144', 'access-admin');
INSERT INTO `act_id_priv` VALUES ('9420af24-217d-11ea-97b1-9061aebe2144', 'access-idm');
INSERT INTO `act_id_priv` VALUES ('952c79d8-217d-11ea-97b1-9061aebe2144', 'access-modeler');
INSERT INTO `act_id_priv` VALUES ('9637a84c-217d-11ea-97b1-9061aebe2144', 'access-rest-api');
INSERT INTO `act_id_priv` VALUES ('95b1885a-217d-11ea-97b1-9061aebe2144', 'access-task');

-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv_mapping`;
CREATE TABLE `act_id_priv_mapping`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_PRIV_MAPPING`(`PRIV_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_priv_mapping
-- ----------------------------
INSERT INTO `act_id_priv_mapping` VALUES ('11fa5791-2528-11ea-bbbf-9061aebe2144', '9637a84c-217d-11ea-97b1-9061aebe2144', NULL, 'group1');
INSERT INTO `act_id_priv_mapping` VALUES ('947c3ca5-217d-11ea-97b1-9061aebe2144', '9420af24-217d-11ea-97b1-9061aebe2144', 'admin', NULL);
INSERT INTO `act_id_priv_mapping` VALUES ('95017237-217d-11ea-97b1-9061aebe2144', '94a6cf16-217d-11ea-97b1-9061aebe2144', 'admin', NULL);
INSERT INTO `act_id_priv_mapping` VALUES ('95874409-217d-11ea-97b1-9061aebe2144', '952c79d8-217d-11ea-97b1-9061aebe2144', 'admin', NULL);
INSERT INTO `act_id_priv_mapping` VALUES ('960cc7bb-217d-11ea-97b1-9061aebe2144', '95b1885a-217d-11ea-97b1-9061aebe2144', 'admin', NULL);
INSERT INTO `act_id_priv_mapping` VALUES ('9692998d-217d-11ea-97b1-9061aebe2144', '9637a84c-217d-11ea-97b1-9061aebe2144', 'admin', NULL);

-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
DROP TABLE IF EXISTS `act_id_property`;
CREATE TABLE `act_id_property`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_property
-- ----------------------------
INSERT INTO `act_id_property` VALUES ('schema.version', '6.4.0.0', 1);

-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
DROP TABLE IF EXISTS `act_id_token`;
CREATE TABLE `act_id_token`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) DEFAULT NULL,
  `IP_ADDRESS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_token
-- ----------------------------
INSERT INTO `act_id_token` VALUES ('19LkkkrsoenpAcGSHsnIHA==', 1, 'OjJzSIlSgvxVshEIxcna5g==', '2019-12-23 09:58:37.937', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'admin', NULL);
INSERT INTO `act_id_token` VALUES ('aTgEDT4E6Oxu2G5ui9ZxNA==', 1, '7VREgADCtL2c+PFENt11zA==', '2019-12-25 15:53:43.371', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'admin', NULL);
INSERT INTO `act_id_token` VALUES ('nAIL4yg2sKcrnupnOR6DHA==', 1, 'bF38PaAO4d7aar2JqGb9fg==', '2019-12-18 18:06:36.415', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'admin', NULL);
INSERT INTO `act_id_token` VALUES ('se6uuwIL+NKW1+LLV2qKvw==', 1, 'V46SoUI9Pdw1NsscJXPtTQ==', '2019-12-19 14:53:37.584', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'admin', NULL);

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------
INSERT INTO `act_id_user` VALUES ('a', 2, 'a', 'a', NULL, 'a@nb.c', '$2a$10$9aYfxdGyScjFTKUmpFoVluCkOi4M84OcTFlAmTM855NSn1g0tz2hy', NULL, NULL);
INSERT INTO `act_id_user` VALUES ('admin', 1, 'admin', 'admin', NULL, NULL, '$2a$10$/6pgK.uNlNCPhNrYvs.1ceIwSTh.eUrnMoU49FEs736Y96RcrRbWG', NULL, NULL);

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
DROP TABLE IF EXISTS `act_procdef_info`;
CREATE TABLE `act_procdef_info`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_INFO_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_IDX_INFO_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_FK_INFO_JSON_BA`(`INFO_JSON_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO `act_re_deployment` VALUES ('2094a254-230d-11ea-b5d4-9061aebe2144', 'SpringBootAutoDeployment', NULL, NULL, '', '2019-12-20 17:43:07.465', NULL, NULL, NULL, NULL);
INSERT INTO `act_re_deployment` VALUES ('6f842bd3-2212-11ea-83a0-9061aebe2144', 'SpringBootAutoDeployment', NULL, NULL, '', '2019-12-19 11:48:36.247', NULL, NULL, NULL, NULL);
INSERT INTO `act_re_deployment` VALUES ('926d32c0-217d-11ea-97b1-9061aebe2144', 'SpringBootAutoDeployment', NULL, NULL, '', '2019-12-18 18:02:59.906', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE`(`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE_EXTRA`(`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_DEPLOYMENT`(`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PROCDEF`(`KEY_`, `VERSION_`, `DERIVED_VERSION_`, `TENANT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO `act_re_procdef` VALUES ('Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', 1, 'http://www.flowable.org/processdef', 'ExpenseProcess', 'Expense', 1, '926d32c0-217d-11ea-97b1-9061aebe2144', 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.bpmn20.xml', 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.Expense.png', '报销流程', 0, 1, 1, '', NULL, NULL, NULL, 0);
INSERT INTO `act_re_procdef` VALUES ('Expense:2:6ff69cb6-2212-11ea-83a0-9061aebe2144', 1, 'http://www.flowable.org/processdef', 'ExpenseProcess', 'Expense', 2, '6f842bd3-2212-11ea-83a0-9061aebe2144', 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.bpmn20.xml', 'D:\\Work\\Ingeek\\github-source\\-springboot-flowable-modeler\\demo\\target\\classes\\processes\\ExpenseProcess.Expense.png', '报销流程', 0, 1, 1, '', NULL, NULL, NULL, 0);
INSERT INTO `act_re_procdef` VALUES ('Expense:3:211a9b37-230d-11ea-b5d4-9061aebe2144', 1, 'http://www.flowable.org/processdef', 'ExpenseProcess', 'Expense', 3, '2094a254-230d-11ea-b5d4-9061aebe2144', 'D:\\Personnel\\Coding\\github\\code-demo\\demo-collection\\flowable\\flowable-modeler-ui\\target\\classes\\processes\\ExpenseProcess.bpmn20.xml', 'D:\\Personnel\\Coding\\github\\code-demo\\demo-collection\\flowable\\flowable-modeler-ui\\target\\classes\\processes\\ExpenseProcess.Expense.png', '报销流程', 0, 1, 1, '', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_deadletter_job`;
CREATE TABLE `act_ru_deadletter_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_CONFIG_`(`CONFIGURATION_`) USING BTREE,
  INDEX `ACT_FK_EVENT_EXEC`(`EXECUTION_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXEC_BUSKEY`(`BUSINESS_KEY_`) USING BTREE,
  INDEX `ACT_IDC_EXEC_ROOT`(`ROOT_PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_PARENT`(`PARENT_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_SUPER`(`SUPER_EXEC_`) USING BTREE,
  INDEX `ACT_FK_EXE_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO `act_ru_execution` VALUES ('c34e1c60-2183-11ea-9dc2-9061aebe2144', 1, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', NULL, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, 1, 0, 1, 0, 0, 1, NULL, '', NULL, 'start', '2019-12-18 18:47:18.932', 'anonymousUser', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `act_ru_execution` VALUES ('c352b044-2183-11ea-9dc2-9061aebe2144', 2, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', NULL, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'bossTask', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2019-12-18 18:47:18.963', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_history_job`;
CREATE TABLE `act_ru_history_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_GROUP`(`GROUP_ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_ATHRZ_PROCEDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_FK_TSKASS_TASK`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_FK_IDL_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO `act_ru_identitylink` VALUES ('c34f06c1-2183-11ea-9dc2-9061aebe2144', 1, NULL, 'starter', 'anonymousUser', NULL, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL);
INSERT INTO `act_ru_identitylink` VALUES ('c35ac699-2183-11ea-9dc2-9061aebe2144', 1, NULL, 'participant', '123', NULL, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL);
INSERT INTO `act_ru_identitylink` VALUES ('e5f9fefb-2183-11ea-9dc2-9061aebe2144', 1, NULL, 'participant', 'anonymousUser', NULL, 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_suspended_job`;
CREATE TABLE `act_ru_suspended_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TASK_CREATE`(`CREATE_TIME_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_TASK_EXE`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_TASK_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_TASK_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO `act_ru_task` VALUES ('e616398e-2183-11ea-9dc2-9061aebe2144', 1, 'c352b044-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'Expense:1:930e2db3-217d-11ea-97b1-9061aebe2144', NULL, NULL, NULL, NULL, NULL, '老板审批', NULL, NULL, 'bossTask', NULL, '老板', NULL, 50, '2019-12-18 18:48:17.287', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_timer_job`;
CREATE TABLE `act_ru_timer_job`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_VAR_BYTEARRAY`(`BYTEARRAY_ID_`) USING BTREE,
  INDEX `ACT_IDX_VARIABLE_TASK_ID`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_FK_VAR_EXE`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_VAR_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO `act_ru_variable` VALUES ('c3519ed2-2183-11ea-9dc2-9061aebe2144', 1, 'integer', 'money', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL, NULL, NULL, 123321, '123321', NULL);
INSERT INTO `act_ru_variable` VALUES ('c3526223-2183-11ea-9dc2-9061aebe2144', 1, 'string', 'taskUser', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL);
INSERT INTO `act_ru_variable` VALUES ('e5f9fefa-2183-11ea-9dc2-9061aebe2144', 1, 'string', 'outcome', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', 'c34e1c60-2183-11ea-9dc2-9061aebe2144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '通过', NULL);

SET FOREIGN_KEY_CHECKS = 1;
