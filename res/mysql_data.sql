-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               11.3.2-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп данных таблицы wwwwdb.auth_group: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.auth_group_permissions: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.auth_permission: ~68 rows (приблизительно)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add lesson', 7, 'add_lesson'),
	(26, 'Can change lesson', 7, 'change_lesson'),
	(27, 'Can delete lesson', 7, 'delete_lesson'),
	(28, 'Can view lesson', 7, 'view_lesson'),
	(29, 'Can add progresslesons', 8, 'add_progresslesons'),
	(30, 'Can change progresslesons', 8, 'change_progresslesons'),
	(31, 'Can delete progresslesons', 8, 'delete_progresslesons'),
	(32, 'Can view progresslesons', 8, 'view_progresslesons'),
	(33, 'Can add answers', 9, 'add_answers'),
	(34, 'Can change answers', 9, 'change_answers'),
	(35, 'Can delete answers', 9, 'delete_answers'),
	(36, 'Can view answers', 9, 'view_answers'),
	(37, 'Can add subjects', 10, 'add_subjects'),
	(38, 'Can change subjects', 10, 'change_subjects'),
	(39, 'Can delete subjects', 10, 'delete_subjects'),
	(40, 'Can view subjects', 10, 'view_subjects'),
	(41, 'Can add worker', 11, 'add_worker'),
	(42, 'Can change worker', 11, 'change_worker'),
	(43, 'Can delete worker', 11, 'delete_worker'),
	(44, 'Can view worker', 11, 'view_worker'),
	(45, 'Can add invite', 12, 'add_invite'),
	(46, 'Can change invite', 12, 'change_invite'),
	(47, 'Can delete invite', 12, 'delete_invite'),
	(48, 'Can view invite', 12, 'view_invite'),
	(49, 'Can add rules', 13, 'add_rules'),
	(50, 'Can change rules', 13, 'change_rules'),
	(51, 'Can delete rules', 13, 'delete_rules'),
	(52, 'Can view rules', 13, 'view_rules'),
	(53, 'Can add files', 14, 'add_files'),
	(54, 'Can change files', 14, 'change_files'),
	(55, 'Can delete files', 14, 'delete_files'),
	(56, 'Can view files', 14, 'view_files'),
	(57, 'Can add progresstests', 15, 'add_progresstests'),
	(58, 'Can change progresstests', 15, 'change_progresstests'),
	(59, 'Can delete progresstests', 15, 'delete_progresstests'),
	(60, 'Can view progresstests', 15, 'view_progresstests'),
	(61, 'Can add tests', 16, 'add_tests'),
	(62, 'Can change tests', 16, 'change_tests'),
	(63, 'Can delete tests', 16, 'delete_tests'),
	(64, 'Can view tests', 16, 'view_tests'),
	(65, 'Can add topic', 17, 'add_topic'),
	(66, 'Can change topic', 17, 'change_topic'),
	(67, 'Can delete topic', 17, 'delete_topic'),
	(68, 'Can view topic', 17, 'view_topic');

-- Дамп данных таблицы wwwwdb.auth_user: ~0 rows (приблизительно)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$720000$dtb99xQL7Z25zHWTezECHH$iM9cN4Uom+mM9QoCjI7hebLYcP/X3Xp2bmzBwx07MKM=', '2024-03-01 15:43:13.471445', 1, 'admin', '', '', 'admin@mail.ru', 1, 1, '2024-03-01 15:42:38.074329');

-- Дамп данных таблицы wwwwdb.auth_user_groups: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.auth_user_user_permissions: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.django_admin_log: ~17 rows (приблизительно)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2024-03-02 11:34:57.258689', '1', 'Rules object (1)', 1, '[{"added": {}}]', 13, 1),
	(2, '2024-03-02 11:35:13.006961', '2', 'Rules object (2)', 1, '[{"added": {}}]', 13, 1),
	(3, '2024-03-02 11:35:23.954288', '3', 'Rules object (3)', 1, '[{"added": {}}]', 13, 1),
	(4, '2024-03-02 11:35:36.118084', '4', 'Rules object (4)', 1, '[{"added": {}}]', 13, 1),
	(5, '2024-03-02 11:36:04.174707', '5', 'Rules object (5)', 1, '[{"added": {}}]', 13, 1),
	(6, '2024-03-02 11:40:41.267452', '1', 'Topic object (1)', 1, '[{"added": {}}]', 17, 1),
	(7, '2024-03-02 11:40:55.249948', '2', 'Topic object (2)', 1, '[{"added": {}}]', 17, 1),
	(8, '2024-03-02 11:41:11.102714', '3', 'Topic object (3)', 1, '[{"added": {}}]', 17, 1),
	(9, '2024-03-02 11:45:43.225872', '1', 'Как мешать "Секс на пляже"', 1, '[{"added": {}}]', 7, 1),
	(10, '2024-03-02 11:48:05.661965', '1', 'Благодаря интригующему названию, яркому цвету и мягкому фруктовому вкусу, в котором не чувствуется алкоголь, коктейль «Секс на пляже (Sex on the beach)» за 20 лет с момента появления стал одним из сам', 1, '[{"added": {}}]', 10, 1),
	(11, '2024-03-02 11:49:14.726799', '1', 'Коктели', 2, '[{"changed": {"fields": ["Name", "Cont"]}}]', 7, 1),
	(12, '2024-03-02 11:52:07.119986', '1', 'Секс на пляже', 2, '[{"changed": {"fields": ["Name"]}}]', 10, 1),
	(13, '2024-03-02 11:53:49.404807', '2', 'Негрони', 1, '[{"added": {}}]', 10, 1),
	(14, '2024-03-02 11:55:14.797416', '1', 'Выберите главные ингредиенты для коктейля "Негрони"', 1, '[{"added": {}}]', 16, 1),
	(15, '2024-03-02 11:55:54.563681', '1', 'Джин', 1, '[{"added": {}}]', 9, 1),
	(16, '2024-03-02 11:56:16.372585', '2', 'Красный вермут', 1, '[{"added": {}}]', 9, 1),
	(17, '2024-03-02 11:56:27.917736', '3', 'Водка', 1, '[{"added": {}}]', 9, 1),
	(18, '2024-03-02 12:16:55.958106', '2', 'Вася Босс', 1, '[{"added": {}}]', 11, 1),
	(19, '2024-03-02 12:17:28.796122', '3', 'Лена Зануда', 1, '[{"added": {}}]', 11, 1);

-- Дамп данных таблицы wwwwdb.django_content_type: ~17 rows (приблизительно)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'lms_system', 'answers'),
	(14, 'lms_system', 'files'),
	(12, 'lms_system', 'invite'),
	(7, 'lms_system', 'lesson'),
	(8, 'lms_system', 'progresslesons'),
	(15, 'lms_system', 'progresstests'),
	(13, 'lms_system', 'rules'),
	(10, 'lms_system', 'subjects'),
	(16, 'lms_system', 'tests'),
	(17, 'lms_system', 'topic'),
	(11, 'lms_system', 'worker'),
	(6, 'sessions', 'session');

-- Дамп данных таблицы wwwwdb.django_migrations: ~23 rows (приблизительно)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-03-01 15:13:36.071672'),
	(2, 'auth', '0001_initial', '2024-03-01 15:13:36.945360'),
	(3, 'admin', '0001_initial', '2024-03-01 15:13:37.109292'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-01 15:13:37.117117'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-01 15:13:37.125434'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-01 15:13:37.237306'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-01 15:13:37.311060'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-03-01 15:13:37.389805'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-03-01 15:13:37.397726'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-03-01 15:13:37.465540'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-03-01 15:13:37.469505'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-01 15:13:37.476939'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-03-01 15:13:37.528461'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-01 15:13:37.577073'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-03-01 15:13:37.652963'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-03-01 15:13:37.660979'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-01 15:13:37.706942'),
	(18, 'sessions', '0001_initial', '2024-03-01 15:13:37.779152'),
	(19, 'lms_system', '0001_initial', '2024-03-02 11:09:32.398016'),
	(20, 'lms_system', '0002_rules_level', '2024-03-02 11:27:55.432194'),
	(21, 'lms_system', '0003_answers_answer_answers_istrue_files_image_and_more', '2024-03-02 11:33:27.917547'),
	(22, 'lms_system', '0004_subjects_name', '2024-03-02 11:51:44.426395'),
	(23, 'lms_system', '0005_alter_worker_id_parent', '2024-03-02 11:59:39.123598');

-- Дамп данных таблицы wwwwdb.django_session: ~1 rows (приблизительно)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('aezo944etlu0fn8hmmxzt9nd44cs1mq4', '.eJxVjDsOwjAQBe_iGlnebPyjpOcM1nq9wQHkSPlUiLtDpBTQvpl5L5VoW2vaFpnTWNRZgTr9bpn4IW0H5U7tNmme2jqPWe-KPuiir1OR5-Vw_w4qLfVbG4kC6DsbianPxWIfi4HoWCDjENhQJwQBiSME6FFsFzyyCzg4il69P9y3N3Q:1rg52X:o4_PFRKtaoIkW845hE70y2ct8aQBtR4iFo3YL9qkH4g', '2024-03-15 15:43:13.477317');

-- Дамп данных таблицы wwwwdb.lms_system_answers: ~3 rows (приблизительно)
INSERT INTO `lms_system_answers` (`id`, `id_test_id`, `answer`, `istrue`) VALUES
	(1, 1, 'Джин', 1),
	(2, 1, 'Красный вермут', 1),
	(3, 1, 'Водка', 0);

-- Дамп данных таблицы wwwwdb.lms_system_files: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.lms_system_invite: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.lms_system_lesson: ~1 rows (приблизительно)
INSERT INTO `lms_system_lesson` (`id`, `name`, `cont`, `id_topic_id`) VALUES
	(1, 'Коктели', 'Подробный курс о смешивании коктелей', 1);

-- Дамп данных таблицы wwwwdb.lms_system_progresslesons: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.lms_system_progresstests: ~0 rows (приблизительно)

-- Дамп данных таблицы wwwwdb.lms_system_rules: ~5 rows (приблизительно)
INSERT INTO `lms_system_rules` (`id`, `name`, `level`) VALUES
	(1, 'Стажер', 0),
	(2, 'Бариста', 0),
	(3, 'Менеджер', 10),
	(4, 'Управляющий', 20),
	(5, 'Менеджер по персоналу', 40);

-- Дамп данных таблицы wwwwdb.lms_system_subjects: ~2 rows (приблизительно)
INSERT INTO `lms_system_subjects` (`id`, `cont`, `image`, `id_lesson_id`, `name`) VALUES
	(1, 'Благодаря интригующему названию, яркому цвету и мягкому фруктовому вкусу, в котором не чувствуется алкоголь, коктейль «Секс на пляже (Sex on the beach)» за 20 лет с момента появления стал одним из самых заказываемых коктейлей на Западе и быстро набирает популярность в России. Еще одно преимущество напитка – простота приготовления дома, даже шейкер не нужен. Историческая справка. Первые версии коктейля с водкой, апельсиновым и клюквенным соками появились в 70-90-х годах XX века. Бармены экспериментировали с ингредиентами, добавляя в состав гренадин, дынный и черносмородинный ликеры. Сначала напиток назывался «Sand in your shorts», что в переводе на русский значит «Песок в твоих шортах», потом более заманчиво «Fun on the Beach (Веселье на пляже)». Когда запрет на использование слова «секс» в общественных местах ослаб, появилось более вызывающее название. По одной из версий, современный рецепт коктейля «Секс на пляже» создал бармен из Флориды Тед Пицио (Ted Pizio) в 1987 году. Напиток задумывался как часть рекламной компании по продвижению нового персикового шнапса на рынок США, спустя 10 лет о рекламируемой марке забыли, а вот коктейль получил всемирное признание и теперь входит в кодификацию IBA (Международной Ассоциации Барменов) в раздел «современная классика». Популяризации напитка способствовал сериал «Санта-Барбара» (всего 2040 серий), герои которого предпочитали пить именно этот коктейль.', 'dcfb4a7f753065aba98fe54f7a83a4a4.jpg', 1, 'Секс на пляже'),
	(2, 'Состав\r\nДжин можно использовать классический деликатный, без необычных вкусовых и ароматических нюансов, а можно выбрать на свой вкус более яркого представителя категории. Красный вермут легко найдется среди богатого семейства итальянских брендов. А вот с биттером стоит поэкспериментировать и заменить вездесущий Campari на другой, более нетривиальный напиток. Например, хорошо выступят биттеры Luxardo или Contratto.\r\nШесть рецептов коктейля\r\nNegroni\r\nКлассический рецепт по версии IBA.\r\n\r\nИнгредиенты:\r\n\r\n30 мл Gin Mare\r\n30 мл Campari\r\n30 мл красного вермута\r\n1 слайс апельсина\r\nПриготовление:\r\n\r\nВ бокал олд фэшн положить лед, влить джин, биттер Campari и вермут. Перемешать ложкой и украсить тонким слайсом апельсина.', '7eca30b9df8b58c2b92863461eb06931.png', 1, 'Негрони');

-- Дамп данных таблицы wwwwdb.lms_system_tests: ~1 rows (приблизительно)
INSERT INTO `lms_system_tests` (`id`, `id_topic_id`, `questions`) VALUES
	(1, 1, 'Выберите главные ингредиенты для коктейля "Негрони"');

-- Дамп данных таблицы wwwwdb.lms_system_topic: ~3 rows (приблизительно)
INSERT INTO `lms_system_topic` (`id`, `name`, `id_rule_id`, `is_public`) VALUES
	(1, 'Курс баристы', 2, 0),
	(2, 'Курс менеджера', 3, 0),
	(3, 'Курс управляющего', 4, 0);

-- Дамп данных таблицы wwwwdb.lms_system_worker: ~0 rows (приблизительно)
INSERT INTO `lms_system_worker` (`id`, `name`, `fname`, `id_parent_id`, `id_rule_id`, `mail`) VALUES
	(1, 'Пикачу', 'Ержанович', NULL, 5, 'papa_niga_mama@mail.ru'),
	(2, 'Вася', 'Босс', 1, 4, 'fgh@urfu.me'),
	(3, 'Лена', 'Зануда', 2, 3, 'lena@hh.ru');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
