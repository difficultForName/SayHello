-- 脚本顺序跑错了导致这个没有修改正确

-- alter table user_saler_student_rela add exp_time datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '失效时间';
alter table user_saler_student_rela add `status` varchar(3) DEFAULT NULL COMMENT '状态';



#插入有差别的数据
INSERT INTO `user_saler_student_rela` (`student_id`, `saler_id`, `eff_time`, `status`) 
SELECT ussr.student_id AS `student_id`,ussr.sale_id AS `saler_id`,ussr.create_time AS `eff_time`,ussr.`status` AS `status` 
FROM `platform`.`user_sale_student_relation` ussr WHERE ussr.student_id Not IN(SELECT usr.student_id FROM user_saler_student_rela usr);



#更新有不同的数据
UPDATE user_saler_student_rela ussr
INNER JOIN `platform`.`user_sale_student_relation` usr ON usr.student_id = ussr.student_id
SET ussr.saler_id = usr.sale_id,
 ussr.`status` = usr.`status`;



