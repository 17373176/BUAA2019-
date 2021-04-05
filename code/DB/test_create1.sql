/*
Navicat SQL Sever Data Transfer

Source Server         : localhost
Source Host           : localhost:
Source Database       : qizhi

Target Server Type    : SQL Sever
File Encoding         : 65001

Author                : YE JINGBO
Database name		  : qizhi
User name             : sa
Password              : ROSqizhi1
Date: 2020-4-22 16:37:48
*/

--SET FOREIGN_KEY_CHECKS 0;

-- ----------------------------
-- Table structure for t_instr ��-ָ��
-- ----------------------------
DROP TABLE IF EXISTS t_instr;
CREATE TABLE t_instr (
  I_NO int NOT NULL identity(0, 1), /* �Զ����� */
  I_KeyWord varchar(255) NOT NULL,
  I_TYPE varchar(255) NOT NULL,
  PRIMARY KEY (I_NO)
)

-- ----------------------------
-- Table structure for t_user ��-�û���Ϣ
-- ----------------------------
--DROP TABLE IF EXISTS t_user;

CREATE TABLE t_user (
  U_NO int NOT NULL  identity(0, 1), /* �Զ����� */
  U_USERNAME varchar(255) unique NOT NULL,
  U_PASSWORD varchar(255) NOT NULL,
  U_ID varchar(255) unique NOT NULL,
  U_TYPE bit NOT NULL, /* false�����û���true�������Ա*/
  PRIMARY KEY(U_NO)
)

-- ----------------------------
-- Table structure for t_task ��-����
-- ----------------------------
--DROP TABLE IF EXISTS t_task;
CREATE TABLE t_task (
  T_NO int NOT NULL identity(0, 1), /* �Զ����� */
  T_U_NO int NOT NULL, /*ÿ�������ж�Ӧ���û�no*/
  T_I_NO int NOT NULL, /*ÿ�������ж�Ӧ��ָ��no*/
  T_IS_FINISHED int NOT NULL, /*�Ƿ����*/
  T_TIME datetime NOT NULL, /*����ʱ��*/
  PRIMARY KEY(T_NO),
  FOREIGN KEY(T_I_NO) REFERENCES t_instr,
  FOREIGN KEY(T_U_NO) REFERENCES t_user
)

-- ----------------------------
-- Table structure for t_net ��-��������
-- ----------------------------
--DROP TABLE IF EXISTS t_net;
CREATE TABLE t_net (
  N_NO int NOT NULL identity(0, 1), /* �Զ����� */
  N_DATE varchar(255) NOT NULL,
  N_INFORM varchar(255) NOT NULL,
  PRIMARY KEY(N_NO),
)