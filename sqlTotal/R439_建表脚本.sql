CREATE TABLE `report_comment_day_summary_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(36) DEFAULT NULL COMMENT '学生',
  `day_of_year` varchar(8) DEFAULT NULL COMMENT '日期yyyymmdd',
  `commentator_type` int(11) DEFAULT NULL COMMENT '评论人员类型 128学管',
  `commentator_id` varchar(36) DEFAULT NULL COMMENT '评论人id',
  `content` varchar(511) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生日总结评论表';