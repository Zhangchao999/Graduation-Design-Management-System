# Graduation-Design-Management-System
毕业设计管理系统，该系统可能存在未知的错误。

### 需要环境
jdk1.8、tomcat7.0、MySQL5.7、Eclipse等

### 操作

localhost:8080/BSManager  这是的登陆到系统的主页。(包括学生和教师的登陆) <br>
localhost:8080/BSManager/admin/index.jsp   这是登陆到管理员的登陆界面

### 项目介绍
该项目可以实现大学毕业设计中流程的大多是操作。主要有以下几点：<br>
1、管理员添加教师信息和学生信息<br>
2、教师网上报课题，管理员进行审核，审核通过的课题可以作为最终的选题开供学生选择<br>
3、学生选择课题，并会实时显示选题信息<br>
4、待选题结束之后，学生可以下载相关课题的任务书和开题报告模板<br>
5、教师可以提醒学生提交开题报告<br>
6、教师进行对自己管理的学生的开题报告进行审核，通过后可以进行之后的操作<br>
7、学生上传毕业论文，审核通过之后该学生具有答辩资格，可进行答辩<br>
8、教师最终打学生的开题报告进行提交，供管理员查看，保存<br>


### 源码介绍

该系统使用的是SSM(Spring+SptingMVC+MyBatis)框架，因此第一步就是搭建框架。<br>

![项目结构](https://github.com/Zhangchao999/Graduation-Design-Management-System/raw/master/pic/pic01.png)

<br>

<h4> 使用的是maven，所以生成的结构如上面所示。</h4>


