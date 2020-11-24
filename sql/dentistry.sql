/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : 127.0.0.1:3306
 Source Schema         : dentistry

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 24/11/2020 21:06:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for case_info
-- ----------------------------
DROP TABLE IF EXISTS `case_info`;
CREATE TABLE `case_info`  (
  `CASEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病例id',
  `CUSTOMERID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'customer_info的主键，病人id',
  `DIAGNOSETIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '诊断时间',
  `DOCTORID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `SELFREPORTED` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '主诉症状',
  `PASTHISTORY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '既往史',
  `DIAGNOSE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '鉴别诊断',
  `DIFFDIAGNOSIS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '具体病情',
  `TREATMENTPLAN` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '治疗计划',
  `ADVICE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注意事项',
  `RECHECKTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '复诊时间',
  `TRRESULT` int(3) NULL DEFAULT NULL COMMENT '结果',
  `STATUS` int(2) NULL DEFAULT NULL COMMENT '一代表首诊/2代表复诊/3代表康复',
  PRIMARY KEY (`CASEID`, `CUSTOMERID`, `DIAGNOSETIME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of case_info
-- ----------------------------
INSERT INTO `case_info` VALUES ('20200129C001', '202001270001', '20200129', '20200201D001', '刷牙出血半年。患者近半年，刷牙及咀嚼食物时牙龈出血，含漱可止血，现要求诊治。修改', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '慢性牙龈炎。', '1，早期牙周炎，有牙周袋，牙槽骨吸收；\n2，血液病，应与全身性疾病鉴别如白血病，血小板减少性紫癜等；\n3，坏死性龈炎，虽以牙龈出血为主要症状，但其牙龈边缘坏死如虫蚀状，坏死区出现灰褐色假膜，伴有疼痛和特殊的腐败臭味；\n4，爱滋病相关的龈炎。', '洁治术\n处置方法：\n口腔卫生宣教，指导刷牙方式及牙线使用。已向患者交代清楚患牙情况及费用，患者知情同意后，全口龈上洁治，喷砂，抛光，上药。', '卫生维护，定期复诊，不适随诊。修改医嘱', '2020-03-22', NULL, 3);
INSERT INTO `case_info` VALUES ('20200129C001', '202001270001', '20200412', '20200201D001', '复诊测试2', NULL, NULL, '复诊测试2', '复诊测试2', '复诊测试2', '2020-04-12', 0, 2);
INSERT INTO `case_info` VALUES ('20200129C001', '202001270001', '20200516', '20200201D001', '复诊测试1', NULL, NULL, '复诊测试1', '复诊测试1', '复诊测试1', '2020-05-18', 0, 2);
INSERT INTO `case_info` VALUES ('20200310C001', '202001270001', '20200310', '20200201D001', '下前牙松动半年。\n患者近两年来时常牙龈刷牙时出血，有口臭。近半年下前牙自觉松动，牙龈偶有脓液溢出，要求诊治。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '慢性牙周炎', '1.口腔卫生状况较差，牙面大量色色素附着。龈上牙石III°，并可探及龈下牙石，尤以下颌前牙舌侧及双侧后牙颊侧为重。\n2.牙龈充血色红，质地松软，边缘厚钝，龈乳头圆钝，肥大面光亮，牙龈萎缩，PD约3-5mm，下颌前牙区牙周袋内可见脓性分泌物。\n3.下颌前牙区牙齿松动，余牙尚可。详见牙周检查表。\n4.线检查全口牙槽骨水平吸收达根长1/3左右。\n最终诊断：牙龈炎  牙龈炎有牙龈炎症，无牙周袋形成，无牙槽骨吸收，无牙齿松动等典型牙周炎临床表现。', '牙周序列治疗\n口腔卫生宣教，指导刷牙方式及牙线使用。\n已向患者交代清楚患牙情况及费用，患者知情同意后，全口龈上洁治，龈下超声刮治，手工根面平整，牙周袋内810nm激光照射。全口喷砂，抛光，上药。', '卫生维护，菌斑控制，一周复诊，不适随诊。可修改！', '2020-03-28', 1, 3);
INSERT INTO `case_info` VALUES ('20200310C002', '202001270001', '20200310', '20200201D003', '上前牙外伤撞击1小时。\n患者一小时前因打蓝球不慎撞击上前牙，牙龈少量出血，感觉患牙有伸长感，松动，咬合疼痛，来院就诊。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '牙震荡', '上颌前牙区牙冠完整。11松动I°，龈缘少量出血，叩（+），冷热诊反应迟钝。X：未见根折情况，牙周膜间隙轻度增宽', '患牙调整，松牙固定，近期勿用患牙，定期复查做牙髓活力测试，如牙髓病变及时根管治疗。\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，11碧兰麻局部浸润麻醉，复位患牙，橡皮障隔离。2-2腭侧及邻接区磷酸酸蚀，冲洗，干燥，涂布粘结剂，瑞邦树脂纤维带固定，涂布树脂，光照。去除橡皮障，调合。', '近期勿用患牙，八周后复诊，不适随诊。', '2020-03-27', 1, 1);
INSERT INTO `case_info` VALUES ('20200310C003', '202001270001', '20200310', '20200201D004', '患者2小时前不慎摔伤，伤及右上前牙，致右前牙折断，当时即感疼痛难忍，遂来我院求治。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '冠折露髓', '12牙冠切1/3斜折，可见露髓点，探痛明显，无明显松动，叩诊（+），牙龈未见撕裂及其他异常。X线示：12未见根折影像及其他异常', '一次性RCT+桩冠修复\n处理：\n已向患者交代清楚患牙情况及费用，患者知情同意后，12碧兰麻局部浸润麻醉，橡皮障隔离，去除腐质开髓，揭净髓顶，机用镍钛锉Protaper系统SX锉开扩根管上2/3,10#K锉+根管长度测量仪探测根管长度**mm。手用K锉+机用镍钛锉预备根管，拍试尖片，主尖消毒待用。2.5%次氯酸钠+蒸馏水超声荡洗根管，810nm激光根管内照射消毒，洗必泰冲洗，隔湿，吹干。根管内滴入95%酒精，吸潮纸尖干燥根管，AHplus糊剂+6%大锥度牙胶尖、热熔牙胶垂直加压充填，暂封膏+玻璃离子双封。拍术后片恰填。调颌。', '前牙勿咬硬物，观察一周后桩冠修复。', '2020-04-11', 1, 1);
INSERT INTO `case_info` VALUES ('20200310C004', '202001280001', '20200310', '20200201D003', '患者一周前感觉左下磨牙区不适，近三天感觉胀痛明显，咀嚼、吞咽时疼痛加重，有张口不适。未行治疗，来院就诊。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，有牙疼痛史，余系统回顾未见明显异常。', '冠周炎；阻生齿', '检查：\n左侧面部稍肿，颌下淋巴结有压痛，张口轻度受限，48部分萌出，冠周牙龈红肿，探诊易出血，盲袋下方可探到阻生的48 ，袋内有脓液溢出。\nX检查：\n48 垂直阻生影像，融合根，左下7 远中邻面未见龋坏。', '局部治疗 生理盐水及3%双氧水冲洗，上丁香油、碘甘油。如形成脓肿及时切开引流。\n全身治疗   抗生素应用及全身支持疗法。\n待炎症消退后切除盲袋或拔除阻生齿\n处置：\n48盲袋内生理盐水及双氧水交替冲洗，致冲洗液清亮。局部上碘甘油。', '抗炎处理，两日后复诊，不适随诊。', '2020-05-21', 3, 1);
INSERT INTO `case_info` VALUES ('20200310C004', '202001280001', '20200311', '20200201D001', '冠周炎冲洗后复诊，疼痛减轻', NULL, NULL, '48牙龈色泽转淡，压痛减轻，盲袋内少量脓性分泌物。', '48盲袋内生理盐水及双氧水交替冲洗，致冲洗液清亮。局部上碘甘油。', '抗炎处理，择期拔除患牙，不适随诊。', '2020-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20200310C004', '202001280001', '20200312', '20200201D003', '冠周炎复诊，无疼痛不适，要求拔牙', NULL, NULL, '48部分萌出，冠周牙龈尚可，余未见明显异常。', '48局部消毒后，碧兰麻行下牙槽神经阻滞麻醉。起效后切开牙龈，翻瓣暴露牙冠，挺松患牙，拔除，搔刮拔牙窝，置明胶海绵，缝一针，压迫止血。', '拔牙后注意事项，一周复诊，不适随诊。', '2020-03-13', 0, 2);
INSERT INTO `case_info` VALUES ('20200322C001', '202001280001', '20200322', '20200201D001', '左下后牙窝沟色黑数年', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，有牙疼痛史，余系统回顾未见明显异常。', '浅龋', '面窝沟浸墨状改变，卡顿探针，探底质硬。温测同对照牙。余未见异常。', '树脂充填\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，高速手机去龋，洞底质硬，备洞，氯己定消毒窝洞，滴入95%酒精，吹干，磷酸酸蚀，冲洗，涂布全酸蚀粘结剂，光照，树脂分层充填，光照固化。调合，抛光。', '充填后注意事项，定期复诊，不适随诊。', '2020-03-26', 1, 1);
INSERT INTO `case_info` VALUES ('20200322C001', '202001280001', '20200519', '20200201D001', '复诊测试22', NULL, NULL, '复诊测试22', '复诊测试22', '复诊测试22', '2020-05-20', 0, 2);
INSERT INTO `case_info` VALUES ('20200402C001', '202001270002', '20200402', '20200201D001', '新增病例测试1', '新增病例测试1', '新增病例测试', '新增病例测试1', '新增病例测试1', '新增病例测试1', '2020-04-03', 0, 1);
INSERT INTO `case_info` VALUES ('20200402C001', '202001270002', '20200518', '20200201D001', '复诊测试2', NULL, NULL, '复诊测试2', '复诊测试2', '复诊测试2', '2020-05-21', 0, 2);
INSERT INTO `case_info` VALUES ('20200427C001', '202001270002', '20200427', '20200201D001', '患者数年前即发现左下后牙窝沟色黑，无法自行刷除，无痛。数月前进食时部分牙体剥脱，可见龋洞，今来院要求充填', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，有牙疼痛史，余系统回顾未见明显异常。', '中龋', '37号牙面可见龋洞，深达牙本质浅层，探底质软，温测同对照牙，冷热诊正常。余未见异常。', '树脂充填\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，高速手机去龋，洞底质硬，备洞，氯己定消毒窝洞，滴入95%酒精，吹干，磷酸酸蚀，冲洗，涂布全酸蚀粘结剂，光照，树脂分层充填，光照固化。调合，抛光。', '充填后注意事项，定期复诊，不适随诊。', '2020-04-30', 1, 1);
INSERT INTO `case_info` VALUES ('20200427C002', '202003130005', '20200427', '20200201D001', '患者发现右下后牙龋洞数月，近一周来进食物常有嵌塞痛，要求诊治。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '深龋', '46合面明，龋洞，有大量腐质，边缘不规则，颜色黑褐色，质地松软，探诊有轻度酸痛，达牙本质深层，叩诊（—），冷热诊反映同对照牙，但如刺激进入龋洞时有明显酸痛感刺激去除后疼痛立即消失。X线示冠部透射影，未达髓腔，根尖未见明显异常。\n1.可复性牙髓炎  主要依据牙髓活力测试反映,可复性牙髓炎遇到温度刺激会出现短暂的一过性疼痛，刺激去除疼痛持续片刻即消失。而深龋只要刺激不进入龋洞就不会出现激发痛。\n2.慢性闭锁性牙髓炎  自发性隐痛，急性发作，晚期有叩诊不适，机械去腐反应迟钝，牙髓活力测试迟钝。而深龋无叩诊不适，无自发痛，牙髓活力正常。去净腐质时极其敏感。', '树脂充填\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，高速手机+慢速球钻去龋，洞底质硬，备洞，氯己定消毒窝洞，滴入95%酒精，吹干，磷酸酸蚀，冲洗，涂布全酸蚀粘结剂，光照，树脂分层充填，光照固化。调合，抛光。', '充填后注意事项，定期复诊，不适随诊。', '2020-04-30', 1, 1);
INSERT INTO `case_info` VALUES ('20200427C003', '202001270003', '20200427', '20200317D001', '患者约三天前左下后牙自发性阵发性疼痛，夜间痛明显，有时放射至颞部，现因剧痛难忍就诊。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '急性牙髓炎', '46合面明显龋洞，近髓，洞底有大量软化牙本质，探痛明显，叩（—），冷热诊疼痛剧烈，且持续较长时间。\n1、龈乳头炎  疼痛为持续性胀痛，对温度测试仅为敏感，不发生激发疼痛，对疼痛能定位，患处龈乳头红肿，触痛。\n2、三叉神经痛：它有板击点，很少有夜间发作。\n3、急性上颌窦炎：疼痛为持续性胀痛，患侧的上颌前磨牙和磨牙可同时受累均有疼痛，但无牙体疾患；上颌窦有压痛，同时有头痛，鼻塞，脓涕等上呼吸道症状。', '根管治疗；充填后做冠修复。\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，46碧兰麻局部浸润麻醉，橡皮障隔离，去除腐质开髓，揭净髓顶，机用镍钛锉Protaper系统SX锉开扩根管上2/3,10#K锉+根管长度测量仪探测根管长度**mm。手用K锉+机用镍钛锉预备根管，拍试尖片，主尖消毒待用。2.5%次氯酸钠+蒸馏水超声荡洗根管，810nm激光根管内照射消毒，洗必泰冲洗，隔湿，吹干。根管内滴入95%酒精，吸潮纸尖干燥根管，AHplus糊剂+6%大锥度牙胶尖、热熔牙胶垂直加压充填，暂封膏+玻璃离子双封。拍术后片恰填。', '根充后注意事项，一周复诊，不适随诊。', '2020-04-30', 1, 1);
INSERT INTO `case_info` VALUES ('20200508C002', '202001280001', '20200508', '20200201D004', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2020-05-10', 1, 3);
INSERT INTO `case_info` VALUES ('20200508C003', '202001270003', '20200508', '20200317D003', '234', '23', '123', '234', '234', '234', '2020-05-10', 1, 1);
INSERT INTO `case_info` VALUES ('20200512C001', '202005120004', '20200512', '20200201D001', '新增病例1', '新增病例1', '新增病例1', '新增病例1', '新增病例1', '新增病例1', '2020-05-27', 1, 3);
INSERT INTO `case_info` VALUES ('20201124C001', '202011240001', '20201124', '20200201D001', '的撒大', '的撒大', '的广告广告', '大大大大', '发广告广告', '帆帆帆帆', '2020-11-26', 1, 1);
INSERT INTO `case_info` VALUES ('20201124C001', '202011240001', '20201126', '20200201D001', '帆帆帆帆嘎嘎嘎', NULL, NULL, '发个广告', '和环境艰苦坎坷', '哈哈哈哈哈', '2020-11-25', 0, 2);
INSERT INTO `case_info` VALUES ('20201124C001', '202011240001', '20201127', '20200201D001', '给哈哈哈', NULL, NULL, '哈哈哈哈', '', '零零快乐酷酷酷', '2020-11-30', 0, 2);

-- ----------------------------
-- Table structure for customer_info
-- ----------------------------
DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE `customer_info`  (
  `CUSTOMERID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病人id',
  `CUSTOMERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人姓名',
  `SEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人性别',
  `AGE` int(3) NULL DEFAULT NULL COMMENT '病人年龄',
  `CID` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病例id',
  `JOB` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `PHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `ECNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他联系人',
  `ECPHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他联系电话',
  `ALLERGY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过敏史',
  `ATTRIBUTE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ATTRIBUTE2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ATTRIBUTE3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ATTRIBUTE4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SYSTEMICDIS` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`CUSTOMERID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer_info
-- ----------------------------
INSERT INTO `customer_info` VALUES ('202001270001', '罗玥天', '男', 23, '513436200001278002', '网络工程师', '13498475849', '山西省阳泉市', '王五', '12313123', '可修改！修改', '阿莫西林', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202001270002', '沈深红', '男', 30, '513436200001276402', '前端工程师', '18392754853', '山西省太原市', '李四', '124324324', '脑血栓', '是', NULL, '是', NULL, NULL);
INSERT INTO `customer_info` VALUES ('202001270003', '高海丽', '女', 35, '513436200001277229', '律师', '18349504856', '山东省淄博市', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_info` VALUES ('202001280001', '牛骏凯', '男', 34, '513436200001282300', '美容美发', '19402948594', '辽宁省鞍山市', '王德发', '235345345', '没毛病', '是', NULL, '是', NULL, NULL);
INSERT INTO `customer_info` VALUES ('202001300001', '张三', '男', 22, '513436200001303001', '技术总监', '18493054876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_info` VALUES ('202003130001', '郎岩', '男', 46, '235407195106112745', '企业高管', '12395485956', '山西省晋城市', '李华', '12485749576', '无', '否', NULL, '是', NULL, '心脏起搏器,高血压,肝炎');
INSERT INTO `customer_info` VALUES ('202003130002', '孟琬', '女', 25, '210203197503102721', '护士', '13294857536', '辽宁省大连市西岗区', '杨策', '12394853745', '花粉过敏', '否', '否', '是', NULL, '肝炎,恶性肿瘤');
INSERT INTO `customer_info` VALUES ('202003130003', '杭健雯', '男', 19, '130102196303250459', '学生', '15347859456', '河北省石家庄市长安区', '袁华', '15789456852', '过敏性鼻炎', '阿莫西林', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202003130004', '方华', '女', 37, '431202198811101720', '地下工作者', '15247854589', '湖南省怀化市鹤城区', '二狗子', '12547896548', '花粉过敏', '否', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202003130005', '常善勤', '女', 20, '130821199103278829', '学生', '15845786954', '河北省承德市承德县', '芳华', '12547896542', '无', '否', '否', '是', NULL, '骨质疏松');
INSERT INTO `customer_info` VALUES ('202003130006', '戚轮伯', '男', 21, '520323197806058856', '学生', '12578945864', '贵州省遵义市绥阳县', '王富贵', '12547896542', '无', '肾宝片', '否', '是', NULL, '肝炎');
INSERT INTO `customer_info` VALUES ('202003140001', '方华', '女', 20, '350105199506138487', '学生', '15478964528', '福建省福州市马尾区', '李诞', '1548579486', '无', '否', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202004020001', '新增客户测试', '男', 23, '123123123', '司机', '123123123', '山西省阳泉市', '李华', '12357485675', '', '否', '否', '是', NULL, '心脏病,心脏起搏器,肾脏疾病');
INSERT INTO `customer_info` VALUES ('202004220001', '新增客户测试2', '女', 23, '123123123', '工程师', '123123123', '山西太原', '李四', '123123123', '', '否', '否', '是', NULL, '高血压');
INSERT INTO `customer_info` VALUES ('202005120002', '今日新增2', '女', 34, '23435435', '今日新增1', '2342113', '今日新增1', '今日新增1', '456657', '无', '否', '否', '是', NULL, '心脏病');
INSERT INTO `customer_info` VALUES ('202005120003', '今日新增3', '男', 45, '5345346', '今日新增3', '345345', '今日新增3', '今日新增3', '3456456345', '无', '否', '否', '是', NULL, '糖尿病,骨质疏松');
INSERT INTO `customer_info` VALUES ('202005120004', '今日新增4', '男', 42, '45645645', '水电费十多个', '4234234', '今日新增4', '今日新增4', '35345436', '无', '否', '否', '是', NULL, '糖尿病,获得性免疫缺陷');
INSERT INTO `customer_info` VALUES ('202005120005', '今日新增5', '男', 41, '234235', '今日新增4', '234235', '今日新增4', '今日新增4', '3465443', '无', '否', '否', '是', NULL, '出血性疾病,癫痫病');
INSERT INTO `customer_info` VALUES ('202005140001', '刘永杰', '女', 4, '234235436', '学生', '23435346', '陕西省西安市', '王五', '124234325', '无', '否', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202011240001', '张博超', '男', 20, '646455555', '程序员', '15721913287', '大1', '15487845454', '454545454', '无', '否', '否', '是', NULL, '无');

-- ----------------------------
-- Table structure for doctor_info
-- ----------------------------
DROP TABLE IF EXISTS `doctor_info`;
CREATE TABLE `doctor_info`  (
  `DOCID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生id',
  `DOCNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `CID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病例id',
  `DOCSEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生性别',
  `DOCAGE` int(3) NULL DEFAULT NULL COMMENT '医生年龄',
  `NATION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `WORKYEAR` int(3) NULL DEFAULT NULL COMMENT '工龄',
  `POLITICSTATUS` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `WORKKIND` int(1) NULL DEFAULT NULL COMMENT '工作类型',
  `DOCTITLE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生职位',
  `EDUCATION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `DOCINTRODUCE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '医生介绍',
  PRIMARY KEY (`DOCID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor_info
-- ----------------------------
INSERT INTO `doctor_info` VALUES ('20200201D001', '张富贵', '19841203', '男', 40, '汉', 13, '共产党员', 2, '主治医师', '硕士', '王富贵个人简介已修改！');
INSERT INTO `doctor_info` VALUES ('20200201D003', '张三', '19960102', '女', 23, '傣族', 30, '共产党员', 1, '护士', '大专', '刚毕业，在实习！');
INSERT INTO `doctor_info` VALUES ('20200201D004', '李四', '1980', '男', 25, '汉', 15, '群众', 2, '医士', '本科', '毕业于上海同济大学');
INSERT INTO `doctor_info` VALUES ('20200317D001', '柯胜义', '14102219531001716X', '男', 64, '汉', 35, '共产党员', 2, '主治医师', '硕士', '口腔种植专家，硕士。 ﻿担任总院种植中心主任、特诊科主任，是我院较早开展种植技术的医生。\n\n中华口腔医学会种植专业委员会会员(CSA)\n\n中华口腔医学会民营专业委员会会员\n\n山西省口腔医学会理事\n\n山西省口腔医学会种植专业委员会委员\n\n荣获2015年首届中国民营种植病例大赛季军称号\n\n曾获2012年世界牙科论坛—诺贝尔口腔种植病例大赛提名奖(十强选手)\n\n2011年恒伦口腔（原山西红十字口腔医院）种植病例大赛冠军\n\nNobel Implant 种植系统特聘讲师\n\n师从全国种植专业委员会主任委员，国际著名种植专家李德华教授\n\n多次赴美国、日本参加学术交流和培训\n\n2013年赴韩国庆北国立大学作访问学者\n\n多次获得优秀医生、先进工作者、种植突出单项奖，特殊贡献奖等荣誉\n\n在国家及省级核心期刊发表论文十余篇\n\n《平台转换连接种植体即刻功能性负重的影像学评估》成功申请山西省科技公关计划项目\n\n擅长于各种类型疑难种植手术及牙体缺损、牙列缺失的修复及拔牙术、牙槽外科手术等，发表国家级、省级口腔医学论文10余篇。');
INSERT INTO `doctor_info` VALUES ('20200317D002', '乔树', '14052119530712778X', '女', 64, '汉族', 30, '群众', 4, '副主任药师', '硕士', '1111111');
INSERT INTO `doctor_info` VALUES ('20200317D003', '虞婉轩', '140428197903211353', '男', 38, '汉族', 15, '群众', 2, '主治医师', '硕士', '1111111111111');
INSERT INTO `doctor_info` VALUES ('20200317D004', '贾苇天', '140311199211269403', '男', 25, '汉', 3, '群众', 1, '护士', '本科', '修改测试！');
INSERT INTO `doctor_info` VALUES ('20200420D001', '添加测试', '12312313123', '男', 23, '汉', 3, '党员', 3, '技师', '硕士', '添加测试');
INSERT INTO `doctor_info` VALUES ('20200514D001', '添加测试1', '2134324', '女', 25, '汉族', 3, '党员', 1, '护士', '本科', '添加测试1');
INSERT INTO `doctor_info` VALUES ('20200514D004', '添加测试3', '235345345', '女', 38, '汉族', 18, '群众', 3, '主管技师', '硕士', '添加测试3');

-- ----------------------------
-- Table structure for login_count
-- ----------------------------
DROP TABLE IF EXISTS `login_count`;
CREATE TABLE `login_count`  (
  `LOGINID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录id',
  `LOGINDATA` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `USERID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `USERSORT` int(1) NULL DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`LOGINID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_count
-- ----------------------------
INSERT INTO `login_count` VALUES ('20200314S001', '2020-03-03 00:00:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200314S002', '2020-03-05 00:00:00', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200314S003', '2020-03-12 00:00:00', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200314S004', '2020-03-13 00:00:00', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200314S005', '2020-03-14 00:00:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S001', '2020-03-15 21:18:51', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S002', '2020-03-15 21:19:47', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200315S003', '2020-03-16 21:20:03', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S004', '2020-03-03 22:20:45', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S005', '2020-03-04 22:20:53', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S006', '2020-03-07 22:20:55', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200315S007', '2020-03-06 22:20:57', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S008', '2020-03-05 22:20:58', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200315S009', '2020-03-04 22:20:59', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200315S010', '2020-03-07 22:21:01', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S011', '2020-03-05 22:21:10', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200315S012', '2020-03-03 22:21:11', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S013', '2020-03-02 22:21:12', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S014', '2020-03-06 22:21:13', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S015', '2020-03-07 22:21:14', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S016', '2020-03-05 22:21:15', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S017', '2020-03-08 22:21:16', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S018', '2020-03-04 22:21:18', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200315S019', '2020-03-08 22:21:19', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S020', '2020-03-15 22:21:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200315S021', '2020-03-15 22:39:05', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S001', '2020-03-16 12:07:12', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S002', '2020-03-16 12:35:34', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S003', '2020-03-16 12:41:55', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S004', '2020-03-16 12:47:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S005', '2020-03-16 12:52:41', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S006', '2020-03-16 12:55:27', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S007', '2020-03-16 12:56:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S008', '2020-03-16 12:56:51', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S009', '2020-03-16 13:02:19', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S010', '2020-03-16 13:02:45', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S011', '2020-03-16 13:07:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S012', '2020-03-16 15:27:35', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S013', '2020-03-16 15:32:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S014', '2020-03-16 15:34:37', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S015', '2020-03-16 15:48:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S016', '2020-03-16 15:50:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S017', '2020-03-16 15:55:12', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S018', '2020-03-16 15:56:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S019', '2020-03-16 15:58:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S020', '2020-03-16 16:05:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S021', '2020-03-16 16:06:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S022', '2020-03-16 16:09:35', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S023', '2020-03-16 16:18:03', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S024', '2020-03-16 16:20:01', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S025', '2020-03-16 16:20:13', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S026', '2020-03-16 16:30:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S027', '2020-03-16 16:42:40', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S028', '2020-03-16 16:45:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S029', '2020-03-16 16:52:31', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S030', '2020-03-16 17:00:43', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S031', '2020-03-16 17:00:45', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S032', '2020-03-16 17:00:53', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S033', '2020-03-16 17:11:22', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S034', '2020-03-29 17:12:19', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S035', '2020-03-29 17:12:35', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S036', '2020-03-29 20:20:46', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S037', '2020-03-29 20:33:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S038', '2020-03-29 20:33:34', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S039', '2020-03-16 20:38:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S040', '2020-03-16 20:38:57', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200316S041', '2020-03-16 21:11:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S042', '2020-03-16 21:16:39', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200316S043', '2020-03-16 21:19:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S001', '2020-03-28 11:29:29', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S002', '2020-03-28 11:45:38', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S003', '2020-03-17 11:45:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S004', '2020-03-17 11:47:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S005', '2020-03-17 11:52:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S006', '2020-03-17 11:58:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S007', '2020-03-17 12:02:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S008', '2020-03-17 12:04:46', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S009', '2020-03-17 12:42:30', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S010', '2020-03-17 12:51:41', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S011', '2020-03-17 12:55:09', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S012', '2020-03-17 12:59:28', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S013', '2020-03-17 14:43:21', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S014', '2020-03-17 14:47:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S015', '2020-03-17 14:48:15', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S016', '2020-03-17 14:49:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S017', '2020-03-17 14:50:29', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S018', '2020-03-17 14:51:17', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S019', '2020-03-17 14:51:21', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S020', '2020-03-17 15:41:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S021', '2020-03-17 15:45:03', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S022', '2020-03-17 15:47:19', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S023', '2020-03-17 15:48:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S024', '2020-03-17 16:19:08', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S025', '2020-03-17 16:25:19', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S026', '2020-03-17 16:27:30', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S027', '2020-03-17 16:30:28', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S028', '2020-03-17 16:32:50', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S029', '2020-03-17 16:50:33', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200317S030', '2020-03-17 16:52:44', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200317S031', '2020-03-17 22:09:36', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200318S001', '2020-03-18 07:49:40', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200318S002', '2020-03-18 10:04:30', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200318S003', '2020-03-18 10:04:56', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200318S004', '2020-03-18 14:38:34', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200318S005', '2020-03-18 17:36:58', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200319S001', '2020-03-19 09:34:15', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200319S002', '2020-03-19 09:34:21', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200319S003', '2020-03-19 11:16:44', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S004', '2020-03-19 11:31:03', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S005', '2020-03-19 11:31:27', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S006', '2020-03-19 11:32:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S007', '2020-03-19 11:34:54', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S008', '2020-03-19 11:35:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S009', '2020-03-19 11:36:32', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S010', '2020-03-19 11:40:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S011', '2020-03-19 11:44:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S012', '2020-03-19 16:18:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S013', '2020-03-19 16:30:59', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S014', '2020-03-19 16:49:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S015', '2020-03-19 16:53:04', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200319S016', '2020-03-19 16:55:03', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S017', '2020-03-19 17:02:17', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S018', '2020-03-19 17:06:59', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S019', '2020-03-19 17:08:53', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S020', '2020-03-19 18:46:55', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S021', '2020-03-19 19:03:02', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S022', '2020-03-19 19:05:16', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S023', '2020-03-19 20:49:18', '方华', '202003130004', 1);
INSERT INTO `login_count` VALUES ('20200319S024', '2020-03-19 20:55:13', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200319S025', '2020-03-19 20:57:12', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200319S026', '2020-03-19 21:00:49', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S027', '2020-03-19 21:05:57', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S028', '2020-03-19 22:51:28', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S029', '2020-03-19 22:53:42', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S030', '2020-03-19 22:56:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S031', '2020-03-19 22:59:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S032', '2020-03-19 23:34:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S033', '2020-03-19 23:35:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S034', '2020-03-19 23:37:24', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S035', '2020-03-19 23:38:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200319S036', '2020-03-19 23:44:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200320S001', '2020-03-20 10:14:07', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200320S002', '2020-03-20 10:21:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200320S003', '2020-03-20 10:22:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200320S004', '2020-03-20 10:35:38', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200320S005', '2020-03-20 10:36:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200320S006', '2020-03-20 10:38:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200320S007', '2020-03-20 14:49:25', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200321S001', '2020-03-21 20:00:17', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200321S002', '2020-03-21 20:31:37', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200321S003', '2020-03-21 20:35:55', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200321S004', '2020-03-21 20:37:46', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S001', '2020-03-22 18:42:51', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S002', '2020-03-22 20:55:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S003', '2020-03-22 20:56:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S004', '2020-03-22 20:56:50', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S005', '2020-03-22 21:17:10', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S006', '2020-03-22 21:18:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200322S007', '2020-03-22 21:19:38', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S001', '2020-03-23 09:47:44', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S002', '2020-03-23 18:36:16', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S003', '2020-03-23 18:37:46', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S004', '2020-03-23 18:39:10', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S005', '2020-03-23 18:40:25', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S006', '2020-03-23 18:42:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S007', '2020-03-23 18:43:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S008', '2020-03-23 18:45:42', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S009', '2020-03-23 18:46:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S010', '2020-03-23 18:53:05', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S011', '2020-03-23 18:53:37', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S012', '2020-03-23 19:09:10', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S013', '2020-03-23 19:10:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S014', '2020-03-23 19:50:44', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S015', '2020-03-23 19:53:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S016', '2020-03-23 19:56:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S017', '2020-03-23 20:04:06', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S018', '2020-03-23 20:09:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S019', '2020-03-23 20:13:12', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200323S020', '2020-03-23 20:14:37', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200324S001', '2020-03-24 16:03:00', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200324S002', '2020-03-24 16:05:30', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200324S003', '2020-03-24 16:08:08', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200324S004', '2020-03-24 16:10:33', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200324S005', '2020-03-24 16:40:29', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200324S006', '2020-03-24 16:44:43', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200324S007', '2020-03-24 17:17:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200324S008', '2020-03-24 17:21:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200324S009', '2020-03-24 17:22:06', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200328S001', '2020-03-28 20:34:45', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200329S001', '2020-03-29 17:59:33', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200331S001', '2020-03-31 22:36:27', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200402S001', '2020-04-02 17:48:00', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200402S002', '2020-04-02 17:52:06', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S003', '2020-04-02 17:53:10', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S004', '2020-04-02 19:33:26', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200402S005', '2020-04-02 19:34:08', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200402S006', '2020-04-02 20:25:19', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200402S007', '2020-04-02 20:28:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S008', '2020-04-02 20:35:56', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S009', '2020-04-02 20:37:57', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S010', '2020-04-02 20:39:54', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S011', '2020-04-02 20:46:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200402S012', '2020-04-02 20:46:29', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200402S013', '2020-04-02 21:28:01', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200412S001', '2020-04-12 20:48:51', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S002', '2020-04-12 20:53:53', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S003', '2020-04-12 20:54:30', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S004', '2020-04-12 20:55:46', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S005', '2020-04-12 20:56:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S006', '2020-04-12 20:56:59', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S007', '2020-04-12 20:57:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200412S008', '2020-04-12 20:58:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200418S001', '2020-04-18 15:52:39', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S001', '2020-04-19 08:32:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S002', '2020-04-19 08:32:08', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S003', '2020-04-19 08:34:01', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S004', '2020-04-19 08:37:40', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S005', '2020-04-19 08:38:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S006', '2020-04-19 08:38:34', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S007', '2020-04-19 08:41:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S008', '2020-04-19 08:43:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S009', '2020-04-19 08:44:03', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S010', '2020-04-19 08:48:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S011', '2020-04-19 08:48:17', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S012', '2020-04-19 08:48:33', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200419S013', '2020-04-19 08:48:51', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S014', '2020-04-19 09:07:40', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S015', '2020-04-19 09:07:50', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S016', '2020-04-19 09:09:01', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S017', '2020-04-19 09:24:54', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S018', '2020-04-19 09:25:09', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S019', '2020-04-19 09:28:25', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S020', '2020-04-19 09:28:32', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S021', '2020-04-19 09:35:05', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200419S022', '2020-04-19 09:36:04', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200419S023', '2020-04-19 10:34:42', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S024', '2020-04-19 10:36:27', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S025', '2020-04-19 10:36:35', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S026', '2020-04-19 10:39:09', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S027', '2020-04-19 10:39:58', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S028', '2020-04-19 10:41:49', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S029', '2020-04-19 10:41:59', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S030', '2020-04-19 10:44:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S031', '2020-04-19 10:44:43', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S032', '2020-04-19 10:46:25', '张三', '202001300001', 3);
INSERT INTO `login_count` VALUES ('20200419S033', '2020-04-19 10:55:01', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200419S034', '2020-04-19 10:55:10', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200419S035', '2020-04-19 10:55:43', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200419S036', '2020-04-19 10:57:54', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200419S037', '2020-04-19 11:19:56', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200419S038', '2020-04-19 11:23:28', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200419S039', '2020-04-19 11:24:24', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200419S040', '2020-04-19 11:28:09', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200419S041', '2020-04-19 11:28:18', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S001', '2020-04-20 16:04:31', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S002', '2020-04-20 16:15:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S003', '2020-04-20 16:15:28', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S004', '2020-04-20 16:17:46', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S005', '2020-04-20 16:27:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S006', '2020-04-20 16:27:57', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S007', '2020-04-20 16:30:52', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S008', '2020-04-20 16:30:59', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S009', '2020-04-20 16:31:36', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200420S010', '2020-04-20 16:31:51', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S011', '2020-04-20 16:37:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S012', '2020-04-20 16:38:06', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S013', '2020-04-20 16:39:00', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S014', '2020-04-20 16:40:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S015', '2020-04-20 16:40:41', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S016', '2020-04-20 16:42:11', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S017', '2020-04-20 16:42:19', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S018', '2020-04-20 16:42:33', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S019', '2020-04-20 16:49:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S020', '2020-04-20 16:49:26', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S021', '2020-04-20 17:10:30', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S022', '2020-04-20 17:10:37', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S023', '2020-04-20 17:13:43', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S024', '2020-04-20 17:14:35', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S025', '2020-04-20 17:14:51', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S026', '2020-04-20 17:33:40', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S027', '2020-04-20 17:33:47', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S028', '2020-04-20 18:36:59', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S029', '2020-04-20 18:26:21', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S030', '2020-04-20 18:32:46', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S031', '2020-04-20 18:33:13', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S032', '2020-04-20 18:35:19', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S033', '2020-04-20 18:36:59', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S034', '2020-04-20 18:46:47', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S035', '2020-04-20 19:15:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S036', '2020-04-20 19:15:26', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S037', '2020-04-20 19:17:15', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S038', '2020-04-20 20:21:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S039', '2020-04-20 20:21:08', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S040', '2020-04-20 20:27:14', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200420S041', '2020-04-20 20:27:15', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200420S042', '2020-04-20 20:28:34', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200420S043', '2020-04-20 21:01:34', '罗玥天', '202001270001', 3);
INSERT INTO `login_count` VALUES ('20200420S044', '2020-04-20 21:04:42', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200420S045', '2020-04-20 21:04:54', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S046', '2020-04-20 21:08:29', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200420S047', '2020-04-20 21:09:10', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200420S048', '2020-04-20 21:14:27', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200420S049', '2020-04-20 21:17:50', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200420S050', '2020-04-20 21:18:11', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S051', '2020-04-20 21:29:09', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S052', '2020-04-20 21:29:19', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S053', '2020-04-20 21:30:57', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200420S054', '2020-04-20 21:31:49', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200420S055', '2020-04-20 21:31:58', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S001', '2020-04-21 08:58:57', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S002', '2020-04-21 09:00:00', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200421S003', '2020-04-21 09:00:43', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200421S004', '2020-04-21 09:03:12', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S005', '2020-04-21 09:04:30', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200421S006', '2020-04-21 09:07:00', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200421S007', '2020-04-21 09:07:11', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200421S008', '2020-04-21 09:15:03', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200421S009', '2020-04-21 09:15:22', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S010', '2020-04-21 09:15:56', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200421S011', '2020-04-21 09:16:04', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S012', '2020-04-21 09:23:33', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S013', '2020-04-21 09:56:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S014', '2020-04-21 09:56:25', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S015', '2020-04-21 09:57:51', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S016', '2020-04-21 10:01:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S017', '2020-04-21 10:01:10', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S018', '2020-04-21 10:01:29', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S019', '2020-04-21 10:01:56', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S020', '2020-04-21 10:11:04', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S021', '2020-04-21 10:31:27', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S022', '2020-04-21 10:31:35', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S023', '2020-04-21 10:35:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S024', '2020-04-21 10:36:06', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S025', '2020-04-21 10:57:42', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S026', '2020-04-21 10:57:50', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S027', '2020-04-21 11:00:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S028', '2020-04-21 11:01:07', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S029', '2020-04-21 11:02:42', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S030', '2020-04-21 11:02:49', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S031', '2020-04-21 11:03:27', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S032', '2020-04-21 11:09:17', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S033', '2020-04-21 11:09:27', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S034', '2020-04-21 11:10:57', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S035', '2020-04-21 11:27:17', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S036', '2020-04-21 11:27:25', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S037', '2020-04-21 13:23:27', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S038', '2020-04-21 13:27:54', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S039', '2020-04-21 13:28:07', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S040', '2020-04-21 13:28:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S041', '2020-04-21 13:28:45', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S042', '2020-04-21 15:07:47', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S043', '2020-04-21 15:14:49', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S044', '2020-04-21 15:15:05', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200421S045', '2020-04-21 15:15:26', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200421S046', '2020-04-21 15:38:27', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S047', '2020-04-21 15:38:36', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S048', '2020-04-21 15:41:37', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S049', '2020-04-21 15:41:50', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S050', '2020-04-21 15:50:24', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S051', '2020-04-21 15:50:31', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S052', '2020-04-21 16:05:32', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S053', '2020-04-21 16:05:37', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200421S054', '2020-04-21 16:07:53', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S055', '2020-04-21 16:08:01', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S056', '2020-04-21 16:09:53', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S057', '2020-04-21 16:09:56', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200421S058', '2020-04-21 16:15:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S059', '2020-04-21 16:15:30', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200421S060', '2020-04-21 16:15:38', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S061', '2020-04-21 16:17:53', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S062', '2020-04-21 16:18:36', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200421S063', '2020-04-21 16:18:44', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S064', '2020-04-21 18:03:34', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200421S065', '2020-04-21 18:03:42', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S066', '2020-04-21 18:21:45', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S067', '2020-04-21 18:21:53', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S068', '2020-04-21 21:40:07', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S069', '2020-04-21 22:29:56', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S070', '2020-04-21 22:30:05', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S071', '2020-04-21 22:51:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200421S072', '2020-04-21 22:52:09', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200421S073', '2020-04-21 22:55:22', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200422S001', '2020-04-22 09:05:30', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S002', '2020-04-22 09:31:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S003', '2020-04-22 09:31:47', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S004', '2020-04-22 09:36:29', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200422S005', '2020-04-22 10:08:28', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S006', '2020-04-22 10:08:39', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S007', '2020-04-22 10:12:26', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S008', '2020-04-22 10:12:34', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S009', '2020-04-22 10:15:37', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S010', '2020-04-22 10:15:45', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S011', '2020-04-22 10:17:34', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S012', '2020-04-22 10:18:58', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S013', '2020-04-22 10:36:26', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S014', '2020-04-22 10:36:35', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S015', '2020-04-22 10:37:08', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S016', '2020-04-22 10:37:15', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S017', '2020-04-22 10:38:38', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S018', '2020-04-22 10:38:46', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S019', '2020-04-22 10:41:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S020', '2020-04-22 10:41:09', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S021', '2020-04-22 11:01:11', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S022', '2020-04-22 11:02:56', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S023', '2020-04-22 11:03:13', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200422S024', '2020-04-22 11:21:42', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200422S025', '2020-04-22 11:26:37', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200422S026', '2020-04-22 12:01:30', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S027', '2020-04-22 12:02:12', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S028', '2020-04-22 12:04:05', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S029', '2020-04-22 12:04:31', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S030', '2020-04-22 12:04:34', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S031', '2020-04-22 12:05:34', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S032', '2020-04-22 12:05:49', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S033', '2020-04-22 12:06:02', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S034', '2020-04-22 12:06:22', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S035', '2020-04-22 12:09:03', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S036', '2020-04-22 12:10:12', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S037', '2020-04-22 12:11:40', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S038', '2020-04-22 12:12:15', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S039', '2020-04-22 12:12:53', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S040', '2020-04-22 14:02:42', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S041', '2020-04-22 14:30:13', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S042', '2020-04-22 14:35:27', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S043', '2020-04-22 14:35:43', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200422S044', '2020-04-22 14:40:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200422S045', '2020-04-22 14:47:21', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S046', '2020-04-22 14:47:36', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200422S047', '2020-04-22 14:47:45', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S001', '2020-04-27 16:57:13', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S002', '2020-04-27 17:47:05', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200427S003', '2020-04-27 17:47:13', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S004', '2020-04-27 17:53:43', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S005', '2020-04-27 18:22:50', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S006', '2020-04-27 18:25:52', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S007', '2020-04-27 18:26:23', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S008', '2020-04-27 18:26:31', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S009', '2020-04-27 18:31:40', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S010', '2020-04-27 18:41:06', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200427S011', '2020-04-27 18:41:16', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S012', '2020-04-27 19:50:25', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200427S013', '2020-04-27 19:50:32', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S014', '2020-04-27 19:52:33', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S015', '2020-04-27 19:52:35', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200427S016', '2020-04-27 20:43:00', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200427S017', '2020-04-27 22:23:43', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200427S018', '2020-04-27 22:23:51', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S001', '2020-04-28 08:47:01', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S002', '2020-04-28 14:25:01', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S003', '2020-04-28 14:30:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200428S004', '2020-04-28 14:30:51', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S005', '2020-04-28 14:34:03', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200428S006', '2020-04-28 14:34:12', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S007', '2020-04-28 14:38:31', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S008', '2020-04-28 14:56:27', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S009', '2020-04-28 14:56:38', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S010', '2020-04-28 15:19:34', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200428S011', '2020-04-28 15:19:43', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S012', '2020-04-28 15:36:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200428S013', '2020-04-28 15:36:12', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200428S014', '2020-04-28 15:42:54', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200428S015', '2020-04-28 15:43:01', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200503S001', '2020-05-03 09:19:29', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200503S002', '2020-05-03 09:19:31', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200503S003', '2020-05-03 09:21:23', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200503S004', '2020-05-03 09:22:10', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200503S005', '2020-05-03 09:23:35', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200503S006', '2020-05-03 09:23:49', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200504S001', '2020-05-04 15:53:06', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200504S002', '2020-05-04 15:55:50', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200504S003', '2020-05-04 15:56:29', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200504S004', '2020-05-04 15:56:32', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200504S005', '2020-05-04 15:56:38', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200504S006', '2020-05-04 15:58:59', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200504S007', '2020-05-04 15:59:09', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200505S001', '2020-05-05 09:07:01', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200505S002', '2020-05-05 10:41:37', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200505S003', '2020-05-05 11:15:31', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200505S004', '2020-05-05 12:27:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200507S001', '2020-05-07 21:35:20', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200507S002', '2020-05-07 21:36:13', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200507S003', '2020-05-07 21:37:39', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200507S004', '2020-05-07 21:39:07', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200507S005', '2020-05-07 21:41:29', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200507S006', '2020-05-07 21:44:08', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200507S007', '2020-05-07 21:49:26', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200507S008', '2020-05-07 21:50:45', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S001', '2020-05-08 10:44:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S002', '2020-05-08 20:00:28', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200508S003', '2020-05-08 20:04:09', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S004', '2020-05-08 20:10:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S005', '2020-05-08 20:10:57', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S006', '2020-05-08 20:15:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S007', '2020-05-08 20:15:38', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S008', '2020-05-08 20:18:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S009', '2020-05-08 20:18:31', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S010', '2020-05-08 21:14:54', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200508S011', '2020-05-08 21:20:53', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S012', '2020-05-08 21:23:35', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S013', '2020-05-08 21:23:38', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S014', '2020-05-08 21:23:51', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S015', '2020-05-08 21:24:04', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S016', '2020-05-08 21:24:10', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200508S017', '2020-05-08 21:27:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S018', '2020-05-08 21:27:40', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200508S019', '2020-05-08 21:29:31', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200508S020', '2020-05-08 21:30:35', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S021', '2020-05-08 21:30:50', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200508S022', '2020-05-08 21:30:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S023', '2020-05-08 21:31:22', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200508S024', '2020-05-08 21:33:43', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200508S025', '2020-05-08 21:40:12', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200508S026', '2020-05-08 21:40:23', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200508S027', '2020-05-08 21:47:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200508S028', '2020-05-08 21:47:44', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200511S001', '2020-05-11 12:32:12', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200512S001', '2020-05-12 13:56:57', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200513S001', '2020-05-13 19:02:11', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200513S002', '2020-05-13 19:18:54', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S003', '2020-05-13 19:23:36', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S004', '2020-05-13 19:24:02', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S005', '2020-05-13 19:24:04', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S006', '2020-05-13 19:24:07', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S007', '2020-05-13 19:24:31', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S008', '2020-05-13 19:24:54', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S009', '2020-05-13 19:26:04', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S010', '2020-05-13 19:26:05', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S011', '2020-05-13 19:26:58', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S012', '2020-05-13 19:28:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200513S013', '2020-05-13 19:29:06', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200513S014', '2020-05-13 19:30:04', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S015', '2020-05-13 19:30:06', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S016', '2020-05-13 19:33:25', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200513S017', '2020-05-13 19:34:04', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S018', '2020-05-13 19:34:32', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S019', '2020-05-13 19:38:46', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S020', '2020-05-13 19:39:02', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S021', '2020-05-13 19:39:15', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S022', '2020-05-13 19:39:37', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S023', '2020-05-13 19:40:07', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S024', '2020-05-13 19:40:09', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S025', '2020-05-13 20:09:38', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200513S026', '2020-05-13 20:13:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200513S027', '2020-05-13 20:13:54', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200513S028', '2020-05-13 20:14:02', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S029', '2020-05-13 20:16:34', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200513S030', '2020-05-13 20:17:59', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200513S031', '2020-05-13 20:19:11', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S001', '2020-05-14 10:05:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S002', '2020-05-14 14:33:48', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S003', '2020-05-14 14:34:10', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S004', '2020-05-14 14:34:40', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S005', '2020-05-14 14:34:57', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S006', '2020-05-14 14:38:48', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S007', '2020-05-14 14:38:59', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S008', '2020-05-14 14:53:38', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S009', '2020-05-14 14:59:03', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S010', '2020-05-14 14:59:38', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S011', '2020-05-14 14:59:50', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S012', '2020-05-14 15:04:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S013', '2020-05-14 15:04:08', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S014', '2020-05-14 15:09:52', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S015', '2020-05-14 15:12:33', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S016', '2020-05-14 15:13:41', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S017', '2020-05-14 15:14:38', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S018', '2020-05-14 15:52:53', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S019', '2020-05-14 16:06:31', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S020', '2020-05-14 16:06:42', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S021', '2020-05-14 16:20:25', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S022', '2020-05-14 16:20:34', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S023', '2020-05-14 16:42:55', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S024', '2020-05-14 16:43:03', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S025', '2020-05-14 16:47:53', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S026', '2020-05-14 16:48:01', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S027', '2020-05-14 16:52:02', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S028', '2020-05-14 16:56:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S029', '2020-05-14 16:56:22', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S030', '2020-05-14 17:34:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S031', '2020-05-14 17:34:15', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S032', '2020-05-14 18:02:10', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S033', '2020-05-14 18:02:20', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S034', '2020-05-14 18:03:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S035', '2020-05-14 18:03:29', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S036', '2020-05-14 18:04:39', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S037', '2020-05-14 18:05:49', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S038', '2020-05-14 18:05:56', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S039', '2020-05-14 18:07:24', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S040', '2020-05-14 18:07:31', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S041', '2020-05-14 18:11:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S042', '2020-05-14 18:11:24', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S043', '2020-05-14 18:13:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S044', '2020-05-14 18:13:14', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S045', '2020-05-14 18:15:46', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S046', '2020-05-14 18:24:38', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S047', '2020-05-14 18:25:58', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S048', '2020-05-14 18:26:05', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S049', '2020-05-14 19:23:50', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S050', '2020-05-14 19:25:02', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S051', '2020-05-14 19:33:12', '张三', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S052', '2020-05-14 19:35:44', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S053', '2020-05-14 19:36:02', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S054', '2020-05-14 19:37:05', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200514S055', '2020-05-14 19:37:56', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200514S056', '2020-05-14 19:38:57', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S057', '2020-05-14 19:39:16', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S058', '2020-05-14 19:39:45', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200514S059', '2020-05-14 19:40:55', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S060', '2020-05-14 19:43:37', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S061', '2020-05-14 19:44:34', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S062', '2020-05-14 19:44:50', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S063', '2020-05-14 19:44:58', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S064', '2020-05-14 19:45:11', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S065', '2020-05-14 19:45:26', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200514S066', '2020-05-14 19:47:30', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200514S067', '2020-05-14 19:47:46', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200514S068', '2020-05-14 19:57:15', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S069', '2020-05-14 19:57:43', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S070', '2020-05-14 19:58:01', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200514S071', '2020-05-14 19:58:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S072', '2020-05-14 20:08:27', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S073', '2020-05-14 20:08:31', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S074', '2020-05-14 20:11:10', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S075', '2020-05-14 20:11:46', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S076', '2020-05-14 20:11:48', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S077', '2020-05-14 20:16:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S078', '2020-05-14 20:16:53', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S079', '2020-05-14 20:17:14', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S080', '2020-05-14 20:18:11', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200514S081', '2020-05-14 20:24:00', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S082', '2020-05-14 20:24:10', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S083', '2020-05-14 20:25:47', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S084', '2020-05-14 20:26:21', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200514S085', '2020-05-14 20:26:32', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200514S086', '2020-05-14 22:08:53', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S087', '2020-05-14 22:10:37', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200514S088', '2020-05-14 22:12:46', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S089', '2020-05-14 22:13:06', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200514S090', '2020-05-14 22:14:41', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S001', '2020-05-15 09:00:41', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S002', '2020-05-15 09:20:43', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S003', '2020-05-15 09:21:32', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S004', '2020-05-15 09:26:06', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S005', '2020-05-15 10:03:34', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S006', '2020-05-15 11:21:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S007', '2020-05-15 11:21:56', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S008', '2020-05-15 11:22:12', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S009', '2020-05-15 11:22:32', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200515S010', '2020-05-15 11:25:44', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S011', '2020-05-15 11:26:02', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S012', '2020-05-15 11:26:08', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S013', '2020-05-15 11:32:41', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S014', '2020-05-15 11:35:34', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S015', '2020-05-15 11:42:34', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S016', '2020-05-15 14:22:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S017', '2020-05-15 14:22:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S018', '2020-05-15 14:22:31', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S019', '2020-05-15 14:22:33', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S020', '2020-05-15 15:57:57', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S021', '2020-05-15 15:59:25', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S022', '2020-05-15 15:59:55', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S023', '2020-05-15 16:00:17', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200515S024', '2020-05-15 16:01:08', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200515S025', '2020-05-15 16:03:58', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S026', '2020-05-15 16:07:15', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S027', '2020-05-15 16:11:28', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S028', '2020-05-15 16:15:54', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S029', '2020-05-15 16:16:02', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S030', '2020-05-15 16:17:02', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S031', '2020-05-15 16:17:24', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S032', '2020-05-15 16:25:21', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200515S033', '2020-05-15 16:25:31', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S034', '2020-05-15 16:26:16', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S035', '2020-05-15 20:59:02', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S036', '2020-05-15 21:08:31', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200515S037', '2020-05-15 21:08:49', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S038', '2020-05-15 21:10:11', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200515S039', '2020-05-15 21:14:37', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200516S001', '2020-05-16 09:36:32', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200517S001', '2020-05-17 10:35:36', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200517S002', '2020-05-17 11:10:30', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200517S003', '2020-05-17 11:10:41', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200517S004', '2020-05-17 22:35:40', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200517S005', '2020-05-17 22:36:33', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200517S006', '2020-05-17 22:36:37', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200517S007', '2020-05-17 22:36:45', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200517S008', '2020-05-17 22:56:17', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200517S009', '2020-05-17 23:13:04', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200518S001', '2020-05-18 10:15:32', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S002', '2020-05-18 10:20:00', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S003', '2020-05-18 10:20:32', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S004', '2020-05-18 10:22:17', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200518S005', '2020-05-18 10:22:26', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S006', '2020-05-18 10:23:02', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200518S007', '2020-05-18 10:23:16', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S008', '2020-05-18 10:31:03', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S009', '2020-05-18 12:48:46', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20200518S010', '2020-05-18 12:48:59', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S011', '2020-05-18 12:51:52', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S012', '2020-05-18 13:46:23', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200518S013', '2020-05-18 13:46:37', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200518S014', '2020-05-18 15:20:20', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200518S015', '2020-05-18 15:20:44', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200518S016', '2020-05-18 15:21:03', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200518S017', '2020-05-18 15:22:00', '李四', '20200201D004', 2);
INSERT INTO `login_count` VALUES ('20200518S018', '2020-05-18 15:22:04', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200518S019', '2020-05-18 15:22:08', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200518S020', '2020-05-18 15:24:47', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200518S021', '2020-05-18 15:25:19', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20200804S001', '2020-08-04 20:01:34', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200804S002', '2020-08-04 20:03:04', 'admin', 'admin', 3);
INSERT INTO `login_count` VALUES ('20200804S003', '2020-08-04 20:04:17', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200804S004', '2020-08-04 20:04:20', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200804S005', '2020-08-04 20:04:26', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20200804S006', '2020-08-04 20:26:13', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200804S007', '2020-08-04 20:26:18', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20200804S008', '2020-08-04 20:33:22', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S001', '2020-11-24 15:03:10', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20201124S002', '2020-11-24 15:03:59', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20201124S003', '2020-11-24 15:04:52', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20201124S004', '2020-11-24 15:16:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20201124S005', '2020-11-24 15:16:40', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20201124S006', '2020-11-24 20:26:38', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20201124S007', '2020-11-24 20:26:54', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20201124S008', '2020-11-24 20:30:59', '罗玥天', '202001270001', 1);
INSERT INTO `login_count` VALUES ('20201124S009', '2020-11-24 20:32:25', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S010', '2020-11-24 20:37:09', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S011', '2020-11-24 20:39:26', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S012', '2020-11-24 20:39:28', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S013', '2020-11-24 20:39:29', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S014', '2020-11-24 20:40:19', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S015', '2020-11-24 20:40:20', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S016', '2020-11-24 20:40:26', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S017', '2020-11-24 20:42:42', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20201124S018', '2020-11-24 20:43:51', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S019', '2020-11-24 20:48:04', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S020', '2020-11-24 20:48:09', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S021', '2020-11-24 20:48:10', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S022', '2020-11-24 20:48:18', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S023', '2020-11-24 20:54:11', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S024', '2020-11-24 20:54:13', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S025', '2020-11-24 20:58:21', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S026', '2020-11-24 21:03:35', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S027', '2020-11-24 21:03:41', '张富贵', '20200201D001', 2);
INSERT INTO `login_count` VALUES ('20201124S028', '2020-11-24 21:03:42', '张富贵', '20200201D001', 2);

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info`  (
  `USERID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `USERSORT` int(1) NULL DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`USERID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_info
-- ----------------------------
INSERT INTO `login_info` VALUES ('202001270001', '123123', '罗玥天', 1);
INSERT INTO `login_info` VALUES ('202001270002', '123456', '沈深红', 1);
INSERT INTO `login_info` VALUES ('20200201D001', 'admin', '张富贵', 2);
INSERT INTO `login_info` VALUES ('20200201D004', '123123', '李四', 2);
INSERT INTO `login_info` VALUES ('202003130004', 'admin', '方华', 1);
INSERT INTO `login_info` VALUES ('202005140001', '123123', '刘永杰', 1);
INSERT INTO `login_info` VALUES ('202011240001', '123123', '张博超', 1);
INSERT INTO `login_info` VALUES ('admin', 'admin', 'admin', 3);

-- ----------------------------
-- Table structure for medicine_info
-- ----------------------------
DROP TABLE IF EXISTS `medicine_info`;
CREATE TABLE `medicine_info`  (
  `MEDICINEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药物ID',
  `MEDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药物名称',
  `MEDTYPE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药物类型',
  `INGREDIENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '成分',
  `MEDCHARACTER` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '药物特性',
  `MAJORFUNCTION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '药物功能',
  `USEMETHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '使用方法',
  `UNEFFECT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '不良反应和不良事件',
  `TABOO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '禁用说明',
  `NOTICE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '注意事项',
  `STORE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '保存方法说明',
  PRIMARY KEY (`MEDICINEID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medicine_info
-- ----------------------------
INSERT INTO `medicine_info` VALUES ('20200202M001', '复方角菜酸酯乳膏', 'C2', '本品为复方制剂，每100克含角菜酸酯2.5克、二氧化钛2克、氧化锌2克、利多卡因2克。\n\n辅料为：聚氧乙烯二醇棕榈硬脂酸酯、饱和多糖甘油酯、二甲硅油、微晶纤维素、丙二醇、羟苯甲酯、羟苯丙酯、山梨酸钾和纯化水。', '性状修改', '对痔疮及其它肛门疾患引起的疼痛、瘙痒、充血及少量出血进行对症治疗。', '每日1次或每日数次，经直肠给药，或遵医嘱。为了便于直肠内给药，每支乳膏配有塑料套管。使用时，将套管与乳膏的铝管拧紧，将套管的顶端放入直肠，慢慢地挤压铝管。\n', '尚未发现严重不良反应的报告。少见用药部位不适感，可自动消失或减轻。如使用本品出现任何不良反应和/或不良事件，请咨询医师。\n\n上市后数据：\n\n按照自发报告的频率分类如下：\n\n发生频率为非常罕见（＜1/10000）的不良反应：给药部位反应包括烧灼感、红斑、脱皮、刺激、疼痛、瘙痒、皮疹和荨麻疹；免疫系统疾病包括超敏反应。', '对本品中任何成份过敏的患者禁用。', '使用本品前先到医院明确诊断，如果使用本品2周后症状未见缓解，请到医院检查。\n\n孕妇及哺乳期妇女应在医师指导下使用。 利多卡因在母乳中的分泌非常有限。尚不清楚角菜酸酯、氧化钛或氧化锌是 否在母乳中分泌。\n\n如有疑虑或有不良反应发生，应与有关医生或药师联系。\n\n使用本品时，仍要保持清洁卫生和良好的饮食习惯。\n\n使用本品并不能完全替代某些肛门疾病的相应治疗。使用本品疗程宜短。 如果使用本品后症状未能尽快缓解，请停止用药并进行直肠检查。\n\n对本品过敏者禁用，过敏体质者慎用。\n\n本品性状发生改变时禁止使用。\n\n请将本品放在儿童不能接触的地方。\n\n如正在使用其他药品，使用本品前请咨询医师或药师。\n\n儿童必须在成人监护下使用。\n\n本品仅限外用。\n\n本品对驾驶或使用机器的能力没有影响。\n\n根据上市后数据分析及文献回顾，尚未发现由角菜酸酯、二氧化钛及氧化 锌使用过量导致的症状。过量使用局部麻醉剂利多卡因（所有给药形式给药）所产生的系统性毒性反应可能包括中枢神经系统和心脏作用。上市后数据显示，过量使用本品未发现相关症状。', '常温保存');
INSERT INTO `medicine_info` VALUES ('20200319M001', '氯己定', 'C2', '本品主要成分为醋酸氯己定。', '（1）醋酸氯己定软膏：黄色或黄棕色透明的鸭嘴形栓剂；无特殊臭味，具弹性。（2）醋酸氯己定栓：浅黄色或黄色软膏。（3）醋酸氯己定痔疮栓：白色或类白色长椭圆形栓剂。（4）醋酸氯己定溶液：无色澄明液体；味微苦。', '醋酸氯己定软膏：\n\n用于宫颈糜烂、化脓性阴道炎、霉菌性阴道炎，也用于滴虫性阴道炎等。\n\n醋酸氯己定栓：\n\n用于疖肿，小面积烧伤、烫伤、外伤感染和脓疱疮。\n\n醋酸氯己定痔疮栓：\n\n用于外痔、内痔。\n\n醋酸氯己定溶液：\n\n用于皮肤及黏膜的消毒；创面感染、阴道感染和子宫颈縻烂的冲洗。', '醋酸氯己定软膏：\n\n1、阴道用药。先将外阴部洗净，然后戴上指套把药栓送入阴道深部。\n\n2、宫颈糜烂：月经后一日1枚，连用5-7枚为一疗程。\n\n3、阴道炎：一日1枚，连用3-5枚为一疗程。\n\n醋酸氯己定栓：\n\n局部外用。先用适当方法将患部清洗干净，再取适量本品涂于患处，一日1次或隔日1次。\n\n醋酸氯己定痔疮栓：\n\n肛门给药。将患处洗净后，取栓剂，除去外包装，带上指套后将栓剂轻轻塞入肛门，一日2次，每次1枚。\n\n醋酸氯己定溶液：\n\n皮肤外用。0.05%溶液对局部皮肤及粘膜消毒，创面及阴道冲洗。每日一至二次，每次50ml至100ml。', '偶见局部刺激、红斑及接触性皮炎，罕见过敏反应。偶见皮肤过敏或接触性皮炎。', '对氯己定过敏者禁用。', '1、避免接触眼睛和其他黏膜（如口、鼻等）。\n\n2、用药部位如有烧灼感、瘙痒、红肿等情况应停药，并将局部药物洗净，必要时向医师咨询。\n\n3、对本品过敏者禁用，过敏体质者慎用。\n\n4、本品性状发生改变时禁止使用。\n\n5、请将本品放在儿童不能接触的地方。\n\n6、儿童必须在成人监护下使用。\n\n7、如正在使用其他药品，使用本品前请咨询医师或药师。\n\n8、药物过量：用药过频(如2次/日或3次/日)可出现阴道粘膜潮红表浅糜烂面或不适感。\n\n9、醋酸氯己定痔疮栓仅供直肠给药，切忌口服。给药时应洗净双手或戴指套或手套。宜置于25℃以下阴凉处保存，若温度高栓剂变软，可放入冰箱待其冷却凝固后使用。', '密闭，在阴凉处（不超过20℃）保存。');
INSERT INTO `medicine_info` VALUES ('20200321M001', '氨硝酸银', 'S', '本品主要成份为硝酸银。', '硝酸银软膏：淡黄色可流动的亲水性基质软膏，遇光颜色逐渐变为褐色。', '本品主要用于防治烧伤创面的浅Ⅱ°感染。', '硝酸银软膏：\n\n外用，均匀涂布于创面，厚0.2-0.4cm，一日1-2次，一次不超过500g。', '尚未见明显不良反应。', '对本品过敏者禁用。', '1、本品不能涂于眼内。\n\n2、换药前必须将创面上原有的药膏清除干净。\n\n3、如出现局部红斑、充血、烧灼感、荨麻疹等过敏症状，应立即停止应用。\n\n4、本品见光易析出金属银，故应避光保存。\n\n5、孕妇及哺乳期妇女用药：尚不明确。\n\n6、儿童用药：尚不明确。\n\n7、老年用药：尚不明确。\n\n8、药物过量：尚不明确。', '遮光，密闭保存。');
INSERT INTO `medicine_info` VALUES ('20200321M002', '专用A', 'C1', '编辑测试！', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M003', '专用B', 'S', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M004', '专用C', 'S', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M005', '专用D', 'S', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M006', '处方内服A', 'C1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M007', '处方内服B', 'C1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M008', '处方内服C', 'C1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M009', '外用A', 'C2', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M010', '外用B', 'C2', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M011', '外用C', 'C2', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M012', '保健品1', 'B1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M013', '保健品2', 'B1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20200321M014', '保健品3', 'B1', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for medicine_manage
-- ----------------------------
DROP TABLE IF EXISTS `medicine_manage`;
CREATE TABLE `medicine_manage`  (
  `MEDICINEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药物id',
  `PRODUCENUM` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品编号',
  `SPECIFICATION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格/支',
  `WRAP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格/盒',
  `MEDADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药物生产地',
  `PRODUCEDATE` datetime NULL DEFAULT NULL COMMENT '生产日期',
  `EXPIRATIONDATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '有效期',
  `TODATE` datetime NULL DEFAULT NULL COMMENT '有效截至期',
  `MEDNUMBER` int(20) NULL DEFAULT 0 COMMENT '库存数量',
  `MEDFACTORY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产厂家',
  `MEDTIME` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '生产日期',
  `PRICE` double(20, 0) NULL DEFAULT 0 COMMENT '出售价格',
  `COST` double(20, 0) NULL DEFAULT 0 COMMENT '进货价格',
  PRIMARY KEY (`PRODUCENUM`, `MEDTIME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medicine_manage
-- ----------------------------
INSERT INTO `medicine_manage` VALUES ('20200202M001', '20200204P001', '50mg*6支/盒', '12*20', '北京市东城区雍和大厦', '2019-12-22 00:00:00', '4', NULL, 200, '江中集团', '20200508', 12, 6);
INSERT INTO `medicine_manage` VALUES ('20200202M001', '20200204P002', '50mg*6支/盒', '12*20', '山西省太原市', '2020-01-23 00:00:00', '180', NULL, 320, '中泰集团', '20200515', 20, 10);
INSERT INTO `medicine_manage` VALUES ('20200319M001', '20200319P001', '（1）醋酸氯己定软膏：20mg。（2）醋酸氯己定栓：醋酸氯己定0.5%、冰片0.5%。（3）醋酸氯己定痔疮栓：20mg。（4）醋酸氯己定溶液：0.05%；0.02%。', '20mg*5支/盒', '山西太原', '2020-01-01 00:00:00', '30', NULL, 177, 'A厂', '20200319', 8, 5);
INSERT INTO `medicine_manage` VALUES ('20200321M002', '20200321P001', '批次修改测试', '12*20', '山西太原', '2020-03-15 00:00:00', '24', NULL, 198, 'A厂', '20200420', 10, 8);
INSERT INTO `medicine_manage` VALUES ('20200321M003', '20200321P002', '', '', '', '2019-03-21 00:00:00', '36', NULL, 187, 'A厂', '20200321', 12, 10);
INSERT INTO `medicine_manage` VALUES ('20200321M004', '20200321P003', '', '', '', '2019-03-21 00:00:00', '24', NULL, 198, 'A厂', '20200321', 35, 30);
INSERT INTO `medicine_manage` VALUES ('20200321M005', '20200321P004', '', '', '', '2019-03-21 00:00:00', '24', NULL, 193, 'A厂', '20200321', 15, 12);
INSERT INTO `medicine_manage` VALUES ('20200321M006', '20200321P005', '', '', '', '2019-06-21 00:00:00', '24', NULL, 199, 'A厂', '20200321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20200321M007', '20200321P006', '', '', '', '2019-07-18 00:00:00', '24', NULL, 197, 'A厂', '20200321', 15, 12);
INSERT INTO `medicine_manage` VALUES ('20200321M008', '20200321P007', '', '', '', '2020-01-21 00:00:00', '24', NULL, 200, 'A厂', '20200321', 40, 36);
INSERT INTO `medicine_manage` VALUES ('20200321M009', '20200321P008', '', '', '', '2020-02-21 00:00:00', '24', NULL, 200, 'A厂', '20200321', 15, 12);
INSERT INTO `medicine_manage` VALUES ('20200321M001', '20200321P009', '', '', '', '2020-02-21 00:00:00', '24', NULL, 183, 'A厂', '20200321', 42, 40);
INSERT INTO `medicine_manage` VALUES ('20200321M010', '20200321P010', '', '', '', '2020-02-21 00:00:00', '24', NULL, 300, 'A厂', '20200321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20200321M011', '20200321P011', '', '', '', '2020-02-21 00:00:00', '24', NULL, 300, 'A厂', '20200321', 30, 23);
INSERT INTO `medicine_manage` VALUES ('20200321M012', '20200321P012', '', '', '', '2020-02-19 00:00:00', '36', NULL, 493, 'A厂', '20200321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20200321M013', '20200321P013', '', '', '', '2020-03-09 00:00:00', '24', NULL, 395, 'A厂', '20200321', 50, 23);
INSERT INTO `medicine_manage` VALUES ('20200321M014', '20200321P014', '', '', '', '2020-03-11 00:00:00', '24', NULL, 400, 'A厂', '20200321', 38, 34);
INSERT INTO `medicine_manage` VALUES ('20200321M014', '20200321P015', '', '', '', '2020-03-03 00:00:00', '36', NULL, 500, 'B厂', '20200321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20200321M014', '20200321P016', '', '', '', '2020-02-18 00:00:00', '24', NULL, 98, 'C厂', '20200321', 50, 45);
INSERT INTO `medicine_manage` VALUES ('20200321M002', '20200420P001', '批次添加测试', '12*20', '批次添加测试', '2020-04-14 00:00:00', '30', NULL, 96, '批次添加测试', '20200420', 25, 20);

-- ----------------------------
-- Table structure for medm_user_record
-- ----------------------------
DROP TABLE IF EXISTS `medm_user_record`;
CREATE TABLE `medm_user_record`  (
  `SERIALNO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CASEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病例id',
  `MEDMID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药物id',
  `USENUM` int(20) NULL DEFAULT 0 COMMENT '药物使用数量',
  `MEDPRICE` double(20, 0) NULL DEFAULT 0 COMMENT '药物价格',
  `USETIME` datetime NULL DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`CASEID`, `SERIALNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medm_user_record
-- ----------------------------
INSERT INTO `medm_user_record` VALUES ('20200322S001', '20200322C001', '20200321P009', 2, 0, '2020-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200322S002', '20200322C001', '20200321P003', 1, 0, '2020-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200322S003', '20200322C001', '20200321P005', 1, 0, '2020-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200322S004', '20200322C001', '20200321P012', 1, 0, '2020-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200322S005', '20200322C002', '20200321P009', 2, 0, '2020-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200322S006', '20200322C002', '20200321P006', 3, 0, '2020-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200402S001', '20200402C002', '20200321P009', 3, 0, '2020-04-02 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200402S002', '20200402C002', '20200321P001', 2, 0, '2020-04-02 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200402S003', '20200402C002', '20200321P012', 3, 0, '2020-04-02 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200422S001', '20200422C001', '20200321P009', 2, 0, '2020-04-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200422S002', '20200422C001', '20200321P003', 1, 0, '2020-04-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200422S003', '20200422C001', '20200321P012', 3, 0, '2020-04-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200422S004', '20200422C001', '20200321P009', 1, 0, '2020-04-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200422S005', '20200422C001', '20200321P004', 3, 0, '2020-04-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200422S006', '20200422C001', '20200321P013', 5, 0, '2020-04-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S001', '20200427C002', '20200321P002', 3, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S002', '20200427C002', '20200321P004', 2, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S003', '20200427C002', '20200321P016', 2, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S004', '20200427C003', '20200321P002', 5, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S005', '20200427C003', '20200319P001', 3, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S006', '20200427C004', '20200321P009', 5, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200427S007', '20200427C004', '20200420P001', 4, 0, '2020-04-27 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200428S001', '20200428C001', '20200321P002', 2, 0, '2020-04-28 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200428S002', '20200428C001', '20200321P004', 2, 0, '2020-04-28 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200515S001', '20200515C001', '20200321P009', 2, 0, '2020-05-15 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20200515S002', '20200515C001', '20200321P002', 3, 0, '2020-05-15 00:00:00');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `NEWSID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻id',
  `HEADLINE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抬头标题',
  `NEWSLABEL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻标签/类型',
  `AUTHOR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `GENERAL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '小标题',
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `NEWSTIME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻时间',
  `STATUS` int(2) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`NEWSID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('DCMS001', '系统介绍', '系统数据', '管理员', NULL, '诊所治疗牙科疾病，我们是专业的！您的信任是对我们最好的肯定。', '20200214', 0);
INSERT INTO `news` VALUES ('DCMS002', '诊所简介', '系统数据', '管理员', NULL, '牙齿整形，牙齿美白，牙齿清洁，牙齿疾病治疗，换牙，牙齿疾病预防，牙齿保健品推荐', '20200214', 0);
INSERT INTO `news` VALUES ('N20200214001', '牙齿疾病的预防措施', '医学', '王峰', NULL, '内容正在更新中！', '20200421', 1);
INSERT INTO `news` VALUES ('N20200214002', '蛀牙治疗新方案', '医学', '刘涛', NULL, '对于蛀牙治疗，我们的是专业的', '20200421', 1);
INSERT INTO `news` VALUES ('N20200323001', '上市房地产企业资产规模增速放缓', '新闻', '张三', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温，广州小长假前两天成交量不足5月日均成交量的一半；昆山成交前两天为零，最后一天也仅为89套；淮安成交跌破百套，显得颇为冷清。这是全国楼市的缩影。 一、房地产关注要点 目前房地产市场最大的问题在热点城市，尤其是一线城市库存低房价高，三四线城市和县城镇则存在较大的去库存压力。 中原地产首席分析师认为，整体看，北京等一二线城市在3月调控后，数据逐渐开始反映出调控影响，网签成交量持续走低，“红五月”成交全面滑坡，市场开始进入调整周期。一线城市同比下调幅度达到了37%，二线城市下调幅度接近30%。 不少购房人暂缓购房脚步，观望情绪较为浓厚。统计显示，端午节三天房贷市场咨询量同比去年下降近三成。 相对于成交量下滑明显，由于购房热情仍在，价格仍处于僵持状态，甚至部分地区存在上涨之势。但是，受制于限购、限贷政策持续发力，叠加严控供应，多数城市成交持续低迷。在调控延长、房企回收资金的压力下，房价下半年或许会有松动。 近期香港内地房地产股在中国恒大大涨带动下，纷纷上涨，进而带动A股地产股最近走强。行情能否持续？是否值得参与？ A股地产股受近两年房价大涨推动，业绩靓丽，加上险资举牌，雄安等区域政策刺激，及港股地产股带动等，走势强劲。', '20200323', 1);
INSERT INTO `news` VALUES ('N20200329001', '三大因素引发港内房股大涨 地产蓝筹仍是未来追逐热点', '新闻', '老八', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温', '29日港股交易中，中国恒大股价大涨近23%，再创反弹新高，碧桂园、融创中国单日股价涨幅也在9%至10%不等。摩根士丹利近期发表研报预计，2016至2019年间中国恒大负债比率会大降，盈利可能年复合增长56%，或获得市场重估。中国恒大将会在8月公布中期业绩及计划在内地A股借壳上市，这些均有机会成为股价催化剂，同时管理层表示2017年6月可能再引入第二轮策略投资者。机构认为，在政策的接连调控下，房地产行业集中度有望进一步提升。大型房企在融资拿地方面更有优势，受到资本市场青睐，容易获得更高的债券评级。从大型房企的今年前四月销售数据看，招商蛇口（001979）销售面积和销售金额分别增长63.1%、82.2%，万科A增长57.8%、73.3%，保利地产（600048）签约面积和签约金额分别增长24.4%、28.3%。 过去一周，中国恒大的股价在年初以来翻番的基础上，再度大涨54%，也带动其他主要内房股进一步上升。其中碧桂园、融创中国、龙湖地产等分别上涨16%、13%、16%。东方证券（600958）认为，伴随房地产市场过去4个月的热销，今年全年销售面积增速大概率为正，三四线城市的热销也带动以三四线城市布局为主的公司盈利及现金流出现明显改善，使这一类公司比其他地产公司进入一二线城市更具有优势。同时由于去年房地产销售面积增速高点出现在4月，基数效应将导致5~6月房地产同比增速出现明显反弹，市场对地产行业热销的预期会更为乐观。当前港股内房股的大涨很大程度上与以上三大因素有关。\n', '20200329', 1);
INSERT INTO `news` VALUES ('N20200329002', '美国人不敢买：60%的人认为会有另一场房地产危机', '新闻', '麻瓜', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温', '自2007年至2009年经济萧条以来，美国经济已经取得了很大的进步：工资上涨、失业率控制在4.4%，为2007年5月以来的最低水平；美国市场正处于有史以来为时第二长的牛市之中。  然而，美国人对房地产市场的信心却没有获得显著提高。尽管存在一些积极的经济指标，但是，房价上涨，及总统选举相关的不确定性，导致ValueInsured楼市信心指数与去年夏天持平。据悉，选举结束后，尽管美国人，尤其是千禧一代对楼市表现出短暂的乐观信心，但楼市信心指数再次出现下降：今年3月，房利美房屋购买情绪指数整体下降3.8%。其中，认为当下是买房好时机的美国人的百分比下降了10%。', '20200329', 1);
INSERT INTO `news` VALUES ('N20200421002', '楼市5月不红成交遇冷购房者观望房价下半年或松动对地产股影响如何？', '医学', '老八', NULL, '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温，广州小长假前两天成交量不足5月日均成交量的一半；昆山成交前两天为零，最后一天也仅为89套；淮安成交跌破百套，显得颇为冷清。这是全国楼市的缩影。 一、房地产关注要点 目前房地产市场最大的问题在热点城市，尤其是一线城市库存低房价高，三四线城市和县城镇则存在较大的去库存压力。 中原地产首席分析师认为，整体看，北京等一二线城市在3月调控后，数据逐渐开始反映出调控影响，网签成交量持续走低，“红五月”成交全面滑坡，市场开始进入调整周期。一线城市同比下调幅度达到了37%，二线城市下调幅度接近30%。 不少购房人暂缓购房脚步，观望情绪较为浓厚。统计显示，端午节三天房贷市场咨询量同比去年下降近三成。 相对于成交量下滑明显，由于购房热情仍在，价格仍处于僵持状态，甚至部分地区存在上涨之势。但是，受制于限购、限贷政策持续发力，叠加严控供应，多数城市成交持续低迷。在调控延长、房企回收资金的压力下，房价下半年或许会有松动。 近期香港内地房地产股在中国恒大大涨带动下，纷纷上涨，进而带动A股地产股最近走强。行情能否持续？是否值得参与？ A股地产股受近两年房价大涨推动，业绩靓丽，加上险资举牌，雄安等区域政策刺激，及港股地产股带动等，走势强劲。', '20200518', 1);

-- ----------------------------
-- Table structure for work_line
-- ----------------------------
DROP TABLE IF EXISTS `work_line`;
CREATE TABLE `work_line`  (
  `WORKID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作id',
  `DOCID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生id',
  `CUSTOMERID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病人id',
  `APPOINTMENT` datetime NULL DEFAULT NULL COMMENT '约定日期',
  `PURPOSE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约定的目的',
  `DURATIONTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '持续次数',
  `WORKFLAG` int(2) NULL DEFAULT NULL COMMENT '工作标志',
  `REMAKE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`WORKID`, `DOCID`, `CUSTOMERID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of work_line
-- ----------------------------
INSERT INTO `work_line` VALUES ('20200328W001', '20200201D001', '202001270003', '2020-03-29 14:00:00', '测试预约', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20200329W001', '20200201D001', '202001270003', '2020-03-30 10:00:00', '测试预约2', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20200402W001', '20200201D001', '202001270002', '2020-04-10 14:00:00', '复诊', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20200404W001', '20200201D001', '202001270001', '2020-04-05 14:00:00', '预约测试', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20200508W001', '20200201D001', '202001270001', '2020-05-10 13:00:00', '看病', '2', 1, '客户已完成就诊');

SET FOREIGN_KEY_CHECKS = 1;
