/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : db_graduation_management

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 28/04/2018 09:17:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_announcement
-- ----------------------------
DROP TABLE IF EXISTS `t_announcement`;
CREATE TABLE `t_announcement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `context` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inputMan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastModifyTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_announcement
-- ----------------------------
INSERT INTO `t_announcement` VALUES (2, '测试公告', 'admin', '2018-04-17 14:35:15');
INSERT INTO `t_announcement` VALUES (3, '测试公告', 'admin', '2018-04-17 14:35:19');
INSERT INTO `t_announcement` VALUES (11, 'admin 公告！！', 'admin', '2018-04-17 15:01:09');
INSERT INTO `t_announcement` VALUES (22, '教师的公告', 't_one', '2018-04-17 15:57:48');
INSERT INTO `t_announcement` VALUES (23, '这是一条公告--管理员', 'admin', '2018-04-17 20:53:06');
INSERT INTO `t_announcement` VALUES (24, '4-19 测试公告', 'admin', '2018-04-19 08:51:33');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系表，id为主键',
  `departmentName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (25, '机电工程学院');
INSERT INTO `t_department` VALUES (26, '机械工程学院');
INSERT INTO `t_department` VALUES (27, '材料科学与工程学院');
INSERT INTO `t_department` VALUES (28, '化学工程与技术学院');
INSERT INTO `t_department` VALUES (29, '信息与通讯工程学院');
INSERT INTO `t_department` VALUES (30, '仪器与电子学院');
INSERT INTO `t_department` VALUES (31, '大数据学院（计算机科学与技术学院）');
INSERT INTO `t_department` VALUES (32, '理学院');
INSERT INTO `t_department` VALUES (33, '经济与管理学院');
INSERT INTO `t_department` VALUES (34, '人文社会科学院');
INSERT INTO `t_department` VALUES (35, '体育学院');
INSERT INTO `t_department` VALUES (36, '艺术学院');
INSERT INTO `t_department` VALUES (37, '软件学院');
INSERT INTO `t_department` VALUES (38, '环境与安全学院');
INSERT INTO `t_department` VALUES (39, '电气与控制工程学院');
INSERT INTO `t_department` VALUES (40, '能源动力工程学院');
INSERT INTO `t_department` VALUES (41, '研究生院');
INSERT INTO `t_department` VALUES (42, '国际教育学院');
INSERT INTO `t_department` VALUES (43, '继续教育学院');
INSERT INTO `t_department` VALUES (44, '国防教育学院');
INSERT INTO `t_department` VALUES (45, '朔州校区');
INSERT INTO `t_department` VALUES (46, '信息商务学院');

-- ----------------------------
-- Table structure for t_major
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业表，id为主键',
  `majorName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `departmentId` int(11) NULL DEFAULT NULL COMMENT '关联院系',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `departmentId`(`departmentId`) USING BTREE,
  CONSTRAINT `t_major_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES (1, '现代火炮工程于技术', 25);
INSERT INTO `t_major` VALUES (2, '自主武器工程于技术', 25);
INSERT INTO `t_major` VALUES (3, '现代导弹工程于技术', 25);
INSERT INTO `t_major` VALUES (4, '机械工程专业', 26);
INSERT INTO `t_major` VALUES (5, '机械设计制造及其自动化专业', 26);
INSERT INTO `t_major` VALUES (6, '过程装配与控制工程专业', 26);
INSERT INTO `t_major` VALUES (7, '高分子材料与工程', 27);
INSERT INTO `t_major` VALUES (8, '金属材料及特种成型技术', 27);
INSERT INTO `t_major` VALUES (9, '化学工程与工艺专业', 28);
INSERT INTO `t_major` VALUES (10, '制药工程专业', 28);
INSERT INTO `t_major` VALUES (11, '图像处理与信息反演', 29);
INSERT INTO `t_major` VALUES (12, '智能信息处理', 29);
INSERT INTO `t_major` VALUES (13, '仪器科学与技术学科', 30);
INSERT INTO `t_major` VALUES (14, '电子科学与技术学科', 30);
INSERT INTO `t_major` VALUES (15, '大数据技术', 31);
INSERT INTO `t_major` VALUES (16, '计算机科学与技术', 31);
INSERT INTO `t_major` VALUES (17, '物联网', 31);

-- ----------------------------
-- Table structure for t_project_source
-- ----------------------------
DROP TABLE IF EXISTS `t_project_source`;
CREATE TABLE `t_project_source`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目源码表',
  `studentId` int(11) NOT NULL,
  `projectScore` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_project_source_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `majorId` int(11) NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inputMan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastModifyTime` datetime(0) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `majorId`(`majorId`) USING BTREE,
  CONSTRAINT `t_student_ibfk_2` FOREIGN KEY (`majorId`) REFERENCES `t_major` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (9, '142001', '张三', '男', 16, '四年级', 'admin', '2018-04-12 10:53:16', '17800001000');
INSERT INTO `t_student` VALUES (15, '142002', '李四', '女', 4, '大四', 'admin', '2018-04-12 13:45:41', '17888882888');
INSERT INTO `t_student` VALUES (16, '142003', '王五', '男', 16, '大四', 'admin', '2018-04-12 14:25:59', '12300000000');
INSERT INTO `t_student` VALUES (17, '142004', '萨达', '男', 10, '大四', 'admin', '2018-04-16 10:43:35', '17300000000');

-- ----------------------------
-- Table structure for t_student_opening_report_task_book
-- ----------------------------
DROP TABLE IF EXISTS `t_student_opening_report_task_book`;
CREATE TABLE `t_student_opening_report_task_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生提交开题报告和任务书',
  `studentId` int(11) NOT NULL,
  `studentOpeningResport` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentTaskBook` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `completion` int(1) NULL DEFAULT NULL COMMENT '1-未通过  2-通过',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_student_opening_report_task_book_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student_opening_report_task_book
-- ----------------------------
INSERT INTO `t_student_opening_report_task_book` VALUES (4, 9, 'E:\\BSM\\student\\9\\142001+课题2的开题报告.docx', '', NULL, 2);
INSERT INTO `t_student_opening_report_task_book` VALUES (9, 16, 'E:\\BSM\\student\\16\\142003+课题1的开题报告.docx', NULL, NULL, 2);

-- ----------------------------
-- Table structure for t_student_progress
-- ----------------------------
DROP TABLE IF EXISTS `t_student_progress`;
CREATE TABLE `t_student_progress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生进度通知填写表',
  `progressId` int(11) NOT NULL,
  `context` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `progressId`(`progressId`) USING BTREE,
  CONSTRAINT `t_student_progress_ibfk_2` FOREIGN KEY (`progressId`) REFERENCES `t_teacher_progress_notification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student_score
-- ----------------------------
DROP TABLE IF EXISTS `t_student_score`;
CREATE TABLE `t_student_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生论文成绩表',
  `studentId` int(11) NOT NULL,
  `thesisResult` int(11) NULL DEFAULT NULL,
  `inputMan` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_student_score_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student_score
-- ----------------------------
INSERT INTO `t_student_score` VALUES (2, 9, 95, 't_one');

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `departmentId` int(11) NOT NULL,
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inputMan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastModifyTime` datetime(0) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `departmentId`(`departmentId`) USING BTREE,
  CONSTRAINT `t_teacher_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES (4, 't_01', 't_one', 45, '女', 't_01', '2018-04-11 09:51:53', '17800000000');
INSERT INTO `t_teacher` VALUES (11, 't_02', 't_two', 41, '男', 'admin', '2018-04-11 09:55:45', '12300001000');
INSERT INTO `t_teacher` VALUES (12, 't_03', 't_three', 32, '女', 'admin', '2018-04-17 20:50:42', '1560293019');

-- ----------------------------
-- Table structure for t_teacher_opening_report_task_book
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_opening_report_task_book`;
CREATE TABLE `t_teacher_opening_report_task_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师发布任务书和开题报告',
  `teacherId` int(11) NOT NULL,
  `openingReport` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskBook` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thesisTitleId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacherId`(`teacherId`) USING BTREE,
  INDEX `thesisTitleId`(`thesisTitleId`) USING BTREE,
  CONSTRAINT `t_teacher_opening_report_task_book_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_teacher_opening_report_task_book_ibfk_2` FOREIGN KEY (`thesisTitleId`) REFERENCES `t_thesis_title` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher_opening_report_task_book
-- ----------------------------
INSERT INTO `t_teacher_opening_report_task_book` VALUES (22, 4, 'E:\\BSM\\teacher\\4\\3\\课题2的开题报告.docx', 'E:\\BSM\\teacher\\4\\3\\课题2的任务书.docx', NULL, 3);
INSERT INTO `t_teacher_opening_report_task_book` VALUES (23, 4, 'E:\\BSM\\teacher\\4\\4\\课题3的开题报告.docx', 'E:\\BSM\\teacher\\4\\4\\课题3的任务书.docx', NULL, 4);
INSERT INTO `t_teacher_opening_report_task_book` VALUES (24, 11, 'E:\\BSM\\teacher\\11\\2\\课题1的开题报告.docx', 'E:\\BSM\\teacher\\11\\2\\课题1的任务书 .docx', NULL, 2);

-- ----------------------------
-- Table structure for t_teacher_progress_notification
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_progress_notification`;
CREATE TABLE `t_teacher_progress_notification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进度通知表，教师填写',
  `context` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inputMan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inputTime` datetime(0) NULL DEFAULT NULL,
  `studentId` int(11) NULL DEFAULT NULL,
  `teacherId` int(11) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT NULL COMMENT '0--初始化  1---未完成  2---已完成',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  INDEX `teacherId`(`teacherId`) USING BTREE,
  CONSTRAINT `t_teacher_progress_notification_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_teacher_progress_notification_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher_progress_notification
-- ----------------------------
INSERT INTO `t_teacher_progress_notification` VALUES (3, '完成第一阶段的任务：开题报告的书写。', 't_one', '2018-04-17 09:47:49', 9, 4, 2);

-- ----------------------------
-- Table structure for t_thesis_description
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_description`;
CREATE TABLE `t_thesis_description`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论文具体描述',
  `thesisId` int(11) NOT NULL,
  `thesisDesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thesisId`(`thesisId`) USING BTREE,
  CONSTRAINT `t_thesis_description_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_thesis_information
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_information`;
CREATE TABLE `t_thesis_information`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生提交毕业论文表',
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_thesis_information_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_thesis_information
-- ----------------------------
INSERT INTO `t_thesis_information` VALUES (8, 9, 'E:\\BSM\\student\\9\\142001毕业论文.docx', 2, NULL);

-- ----------------------------
-- Table structure for t_thesis_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_paper`;
CREATE TABLE `t_thesis_paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NULL DEFAULT NULL,
  `paperInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_thesis_paper_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_thesis_title
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_title`;
CREATE TABLE `t_thesis_title`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师提交课题',
  `thesisName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherId` int(11) NOT NULL,
  `submitTime` datetime(0) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL COMMENT '课题未审核-1 已审核通过-2 不通过-3',
  `inputMan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacherId`(`teacherId`) USING BTREE,
  CONSTRAINT `t_thesis_title_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_thesis_title
-- ----------------------------
INSERT INTO `t_thesis_title` VALUES (2, '课题1', 11, '2018-04-11 10:14:34', 2, 't_two', '这是课题1的描述');
INSERT INTO `t_thesis_title` VALUES (3, '课题2', 4, '2018-04-11 15:28:34', 2, 't_one', '已做修改。。');
INSERT INTO `t_thesis_title` VALUES (4, '课题3', 4, '2018-04-12 12:11:28', 2, 't_one', '新的描述信息。。');
INSERT INTO `t_thesis_title` VALUES (8, '课题四', 4, '2018-04-12 12:11:55', 3, 't_one', '这是课题4...\r\n');
INSERT INTO `t_thesis_title` VALUES (9, '课题5', 4, '2018-04-12 12:12:16', 2, 't_one', '这是课题5的描述...');
INSERT INTO `t_thesis_title` VALUES (10, '课题6', 11, '2018-04-12 12:13:01', 2, 't_two', '这是课题6的描述...');
INSERT INTO `t_thesis_title` VALUES (11, '课题7', 11, '2018-04-12 12:13:21', 2, 't_two', '这是课题7的描述');
INSERT INTO `t_thesis_title` VALUES (13, '课题10', 4, '2018-04-17 21:06:50', 2, 't_one', 'new_萨芬吉萨附件');

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选题信息表',
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `selectTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thesisId`(`thesisId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_topic_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_topic_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES (47, 3, 9, '2018-04-16 15:32:12');
INSERT INTO `t_topic` VALUES (49, 4, 17, '2018-04-23 16:42:41');
INSERT INTO `t_topic` VALUES (50, 9, 15, '2018-04-23 17:11:43');
INSERT INTO `t_topic` VALUES (51, 2, 16, '2018-04-26 13:33:24');

-- ----------------------------
-- Table structure for t_topic_fast
-- ----------------------------
DROP TABLE IF EXISTS `t_topic_fast`;
CREATE TABLE `t_topic_fast`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thesisId`(`thesisId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `t_topic_fast_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_topic_fast_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` int(2) NULL DEFAULT NULL COMMENT '学生权限-1 教师权限-2 管理员权限-3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (15, 'admin', 'admin', 3);
INSERT INTO `t_user` VALUES (16, 't_01', '6666', 2);
INSERT INTO `t_user` VALUES (18, '142001', '111', 1);
INSERT INTO `t_user` VALUES (19, 't_02', '6666', 2);
INSERT INTO `t_user` VALUES (20, '142002', '123456', 1);
INSERT INTO `t_user` VALUES (21, '142003', '123456', 1);
INSERT INTO `t_user` VALUES (22, '142004', '123456', 1);
INSERT INTO `t_user` VALUES (23, 't_03', '6666', 2);

-- ----------------------------
-- Triggers structure for table t_student
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_studentNo_to_user`;
delimiter ;;
CREATE TRIGGER `insert_studentNo_to_user` AFTER INSERT ON `t_student` FOR EACH ROW BEGIN
INSERT INTO t_user VALUES(null,NEW.studentNo,'123456',1);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table t_student
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_studentNo_to_user`;
delimiter ;;
CREATE TRIGGER `delete_studentNo_to_user` AFTER DELETE ON `t_student` FOR EACH ROW BEGIN
DELETE FROM t_user WHERE userNo=OLD.studentNo;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table t_teacher
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_teacherNo_to_user`;
delimiter ;;
CREATE TRIGGER `insert_teacherNo_to_user` AFTER INSERT ON `t_teacher` FOR EACH ROW BEGIN
INSERT INTO t_user VALUES(null,NEW.teacherNo,'6666',2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table t_teacher
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_teacher_to_user`;
delimiter ;;
CREATE TRIGGER `delete_teacher_to_user` AFTER DELETE ON `t_teacher` FOR EACH ROW BEGIN 
 DELETE FROM t_user WHERE userNo=OLD.teacherNo;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
