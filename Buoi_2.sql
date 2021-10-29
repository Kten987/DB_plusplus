create database student_cms_plusplus;
use student_cms_plusplus;
create table student(
  id_st int PRIMARY KEY, 
  namesv varchar(30),
  mssv varchar(30), 
  password varchar(30), 
  phone int, 
  address varchar(50), 
  age int, 
  email varchar(30), 
  created_timestamp timestamp, 
  last_updated_timestamp timestamp
);

create table class(
  id_cl int PRIMARY KEY, 
  name_cl varchar(30),
  total_student int, 
  teacher_name varchar(30),
  teacher_phone int,
  created_timestamp timestamp, 
  last_updated_timestamp timestamp
);
drop table student_class;
create table student_class(
  student_id int primary key,
  class_id int,
  FOREIGN KEY (student_id) REFERENCES student(id_st),
  FOREIGN KEY (class_id) REFERENCES class(id_cl)
);
INSERT INTO `student_cms_plusplus`.`class` (`id_cl`, `name_cl`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('1', 'toan', '20', 'hiep', '08894422', '2020-11-2', '2020-11-30');
INSERT INTO `student_cms_plusplus`.`class` (`id_cl`, `name_cl`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('2', 'ly', '43', 'hung', '08889833', '2020-11-2', '2020-11-30');
INSERT INTO `student_cms_plusplus`.`class` (`id_cl`, `name_cl`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('3', 'hoa', '45', 'dung', '13456775', '2020-11-2', '2020-11-30');
INSERT INTO `student_cms_plusplus`.`class` (`id_cl`, `name_cl`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('4', 'van', '23', 'bac', '12343212', '2020-11-2', '2020-11-30');
INSERT INTO `student_cms_plusplus`.`class` (`id_cl`, `name_cl`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('5', 'anh', '30', 'minh', '09090909', '2020-11-2', '2020-11-30');

INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('1', 'hieu', '20201', 'hieu123', '34567654', 'da nang', '20', 'hieu123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('2', 'hoa', '20202', 'hoa123', '234567654', 'ho chi minh', '23', 'hoa123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('3', 'hung', '20203', 'hung123', '3456765', 'quang nam', '32', 'hung123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('4', 'binh', '20204', 'binh123', '2456456', 'bac giang', '15', 'binh123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('5', 'cuong', '20205', 'cuong123', '3456743', 'ha tinh', '34', 'cuong123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('6', 'dung', '20206', 'dung123', '34567876', 'ninh binh', '23', 'dung123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('7', 'lam', '20207', 'lam123', '34567654', 'bac ninh', '17', 'lam123@gmail.com', '2020-11-3', '2020-11-23');
INSERT INTO `student_cms_plusplus`.`student` (`id_st`, `namesv`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('8', 'manh', '20208', 'manh123', '23456', 'ha noi', '33', 'manh@123gmail.com', '2020-11-3', '2020-11-23');

INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('1', '1');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('2', '2');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('3', '3');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('4', '4');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('5', '5');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('6', '3');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('7', '2');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('8', '1');

