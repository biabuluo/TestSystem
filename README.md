# TestSystem
一款基于SSM+Vue+Element的在线考试平台

## 用户角色：

> 教师：
>
> - 管理班级成员，实现简易增删改查
>
> - 管理学科，实现简易增删改查
>
> - 创建题库，并在题库中选题实现创建试卷
>
> - 管理试卷
>
> 学生：
>
> - 在试卷中心查看所有试题，可以点击对应试题进入考试
> - 可以在用户中心查看个人信息，退出登录
> - 可以查看自己的考试记录

## 业务流程图：

<img src="https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721092226162.png?raw=true" style="zoom:50%;" />



## 功能介绍（截图非本项目，仅供参考）

- 教师端：班级管理、题库中心(学科管理、题库管理)、考试管理（考试管理、试卷创建）、个人信息管理

  ![image-20230721092926007](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721092926007.png?raw=true)

  ![image-20230721092947841](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721092947841.png?raw=true)

  ![image-20230721092956227](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721092956227.png?raw=true)

  ![image-20230721093006382](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721093006382.png?raw=true)

  ![image-20230721093014419](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721093014419.png?raw=true)

  

- 学生端：试卷中心、考试记录、个人信息管理

![image-20230721093028020](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721093028020.png?raw=true)

![image-20230721093036313](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721093036313.png?raw=true)

![image-20230721093051897](https://github.com/biabuluo/TestSystem/blob/main/assets/image-20230721093051897.png?raw=true)

## 数据模型

### 1.t_user

- id
- username
- pwd
- identify

### 2.t_teacher

- id
- username
- teachername
- sex
- avatar

### 3.t_grade

- id
- gradename
- teacherid

### 4.t_student

- id
- username
- studentname
- sex
- gradename
- avatar

### 5.t_subject

- id
- subject

### 6.t_bank

- id
- ischoose
- design
- ans
- score
- cates
- option1-4

### 7.t_task

- id
- title
- teacherid
- total_score
- total_num
- start_date
- end_date

### 6.t_taskitems(考试任务题目关系表)

- id
- taskid
- itemid

### 7.t_record（学生测试记录）

- id
- studentid
- taskid
- score
- summittime
- wrongans（json格式）



