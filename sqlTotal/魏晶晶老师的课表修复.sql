#修复异常课程表
UPDATE course_abnormal_info cai
SET cai.user_id = (
	SELECT
		id
	FROM
		user_staff_info usi
	WHERE
		usi.user_id = (
			SELECT
				id
			FROM
				user_account_info uai
			WHERE
				uai.username = "魏晶晶"
			AND account = '18376656264'
		)
	AND type = 2
	AND val = "shuxue"
	AND `status` = "00A"
)
WHERE
	cai.user_id = (
		SELECT
			id
		FROM
			user_staff_info usi
		WHERE
			usi.user_id = (
				SELECT
					id
				FROM
					user_account_info uai
				WHERE
					uai.username = "魏晶晶"
				AND account = '18376656263'
			)
		AND type = 2
		AND val = "shuxue"
		AND `status` = "00A"
	);

-- -----------------------------------------------
#修复课程评价详细表
UPDATE course_evaluate_detail ced
SET ced.user_id = (
	SELECT
		id
	FROM
		user_staff_info usi
	WHERE
		usi.user_id = (
			SELECT
				id
			FROM
				user_account_info uai
			WHERE
				uai.username = "魏晶晶"
			AND account = '18376656264'
		)
	AND type = 2
	AND val = "shuxue"
	AND `status` = "00A"
)
WHERE
	ced.user_id = (
		SELECT
			id
		FROM
			user_staff_info usi
		WHERE
			usi.user_id = (
				SELECT
					id
				FROM
					user_account_info uai
				WHERE
					uai.username = "魏晶晶"
				AND account = '18376656263'
			)
		AND type = 2
		AND val = "shuxue"
		AND `status` = "00A"
	);

-- ---------------------------------
#修复课程评价表修改to_user_id
UPDATE course_evaluate_info cei
SET cei.to_user_id = (
	SELECT
		id
	FROM
		user_staff_info usi
	WHERE
		usi.user_id = (
			SELECT
				id
			FROM
				user_account_info uai
			WHERE
				uai.username = "魏晶晶"
			AND account = '18376656264'
		)
	AND type = 2
	AND val = "shuxue"
	AND `status` = "00A"
)
WHERE
	cei.to_user_id = (
		SELECT
			id
		FROM
			user_staff_info usi
		WHERE
			usi.user_id = (
				SELECT
					id
				FROM
					user_account_info uai
				WHERE
					uai.username = "魏晶晶"
				AND account = '18376656263'
			)
		AND type = 2
		AND val = "shuxue"
		AND `status` = "00A"
	);
-- ---------------------------------
#同上修改from_user_id
UPDATE course_evaluate_info cei
SET cei.from_user_id = (
	SELECT
		id
	FROM
		user_staff_info usi
	WHERE
		usi.user_id = (
			SELECT
				id
			FROM
				user_account_info uai
			WHERE
				uai.username = "魏晶晶"
			AND account = '18376656264'
		)
	AND type = 2
	AND val = "shuxue"
	AND `status` = "00A"
)
WHERE
	cei.from_user_id = (
		SELECT
			id
		FROM
			user_staff_info usi
		WHERE
			usi.user_id = (
				SELECT
					id
				FROM
					user_account_info uai
				WHERE
					uai.username = "魏晶晶"
				AND account = '18376656263'
			)
		AND type = 2
		AND val = "shuxue
		"
		AND `status` = "00A"
	);
-- ------------------------------------------------------------------------
#修改上课实例表
UPDATE course_instance_info cii
SET teacher_id = (
	SELECT
		id
	FROM
		user_staff_info usi
	WHERE
		usi.user_id = (
			SELECT
				id
			FROM
				user_account_info uai
			WHERE
				uai.username = "魏晶晶"
			AND account = '18376656264'
		)
	AND type = 2
	AND val = "shuxue"
	AND `status` = "00A"
)
WHERE
	teacher_id = (
		SELECT
			id
		FROM
			user_staff_info usi
		WHERE
			usi.user_id = (
				SELECT
					id
				FROM
					user_account_info uai
				WHERE
					uai.username = "魏晶晶"
				AND account = '18376656263'
			)
		AND type = 2
		AND val = "shuxue"
		AND `status` = "00A"
	);
-- ---------------------------------
#修改班级老师关系表
UPDATE class_teacher_rela ctr
SET ctr.teacher_id = (
	SELECT
		id
	FROM
		user_staff_info usi
	WHERE
		usi.user_id = (
			SELECT
				id
			FROM
				user_account_info uai
			WHERE
				uai.username = "魏晶晶"
			AND account = '18376656264'
		)
	AND type = 2
	AND val = "shuxue"
	AND `status` = "00A"
)
WHERE
	ctr.teacher_id = (
		SELECT
			id
		FROM
			user_staff_info usi
		WHERE
			usi.user_id = (
				SELECT
					id
				FROM
					user_account_info uai
				WHERE
					uai.username = "魏晶晶"
				AND account = '18376656263'
			)
		AND type = 2
		AND val = "shuxue"
		AND `status` = "00A"
	);




