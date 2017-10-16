-- 数据库添加字段
alter table user_sale_student_relation add exp_time datetime DEFAULT NULL ON UPDATE COMMENT '失效时间';
alter table user_sale_student_relation add `status` varchar(3) DEFAULT NULL COMMENT '状态';


-- 学生销售关系表同步数据
UPDATE user_sale_student_relation ussr
INNER JOIN oa_cust_list_assigned ocla ON ussr.student_id = (
	SELECT
		ocnl.student_id
	FROM
		oa_cust_name_list ocnl
	WHERE
		ocnl.id = ocla.cust_id
)
AND ocla.`status` = '00A'
SET ussr.sale_id = (
	SELECT
		ocnl.sale_id
	FROM
		oa_cust_name_list ocnl
	WHERE
		ocnl.id = ocla.cust_id
),
 ussr.`status` = ocla.`status`;



