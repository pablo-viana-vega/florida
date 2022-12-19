-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Nov-2022 às 08:54
-- Versão do servidor: 10.5.15-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `information_schema`
--

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ALL_PLUGINS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ALL_PLUGINS` (
`PLUGIN_NAME` varchar(64)
,`PLUGIN_VERSION` varchar(20)
,`PLUGIN_STATUS` varchar(16)
,`PLUGIN_TYPE` varchar(80)
,`PLUGIN_TYPE_VERSION` varchar(20)
,`PLUGIN_LIBRARY` varchar(64)
,`PLUGIN_LIBRARY_VERSION` varchar(20)
,`PLUGIN_AUTHOR` varchar(64)
,`PLUGIN_DESCRIPTION` longtext
,`PLUGIN_LICENSE` varchar(80)
,`LOAD_OPTION` varchar(64)
,`PLUGIN_MATURITY` varchar(12)
,`PLUGIN_AUTH_VERSION` varchar(80)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `APPLICABLE_ROLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `APPLICABLE_ROLES` (
`GRANTEE` varchar(190)
,`ROLE_NAME` varchar(128)
,`IS_GRANTABLE` varchar(3)
,`IS_DEFAULT` varchar(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `CHARACTER_SETS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `CHARACTER_SETS` (
`CHARACTER_SET_NAME` varchar(32)
,`DEFAULT_COLLATE_NAME` varchar(32)
,`DESCRIPTION` varchar(60)
,`MAXLEN` bigint(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `CHECK_CONSTRAINTS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `CHECK_CONSTRAINTS` (
`CONSTRAINT_CATALOG` varchar(512)
,`CONSTRAINT_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`CONSTRAINT_NAME` varchar(64)
,`LEVEL` varchar(6)
,`CHECK_CLAUSE` longtext
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `CLIENT_STATISTICS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `CLIENT_STATISTICS` (
`CLIENT` varchar(64)
,`TOTAL_CONNECTIONS` bigint(21)
,`CONCURRENT_CONNECTIONS` bigint(21)
,`CONNECTED_TIME` bigint(21)
,`BUSY_TIME` double
,`CPU_TIME` double
,`BYTES_RECEIVED` bigint(21)
,`BYTES_SENT` bigint(21)
,`BINLOG_BYTES_WRITTEN` bigint(21)
,`ROWS_READ` bigint(21)
,`ROWS_SENT` bigint(21)
,`ROWS_DELETED` bigint(21)
,`ROWS_INSERTED` bigint(21)
,`ROWS_UPDATED` bigint(21)
,`SELECT_COMMANDS` bigint(21)
,`UPDATE_COMMANDS` bigint(21)
,`OTHER_COMMANDS` bigint(21)
,`COMMIT_TRANSACTIONS` bigint(21)
,`ROLLBACK_TRANSACTIONS` bigint(21)
,`DENIED_CONNECTIONS` bigint(21)
,`LOST_CONNECTIONS` bigint(21)
,`ACCESS_DENIED` bigint(21)
,`EMPTY_QUERIES` bigint(21)
,`TOTAL_SSL_CONNECTIONS` bigint(21) unsigned
,`MAX_STATEMENT_TIME_EXCEEDED` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `COLLATIONS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `COLLATIONS` (
`COLLATION_NAME` varchar(32)
,`CHARACTER_SET_NAME` varchar(32)
,`ID` bigint(11)
,`IS_DEFAULT` varchar(3)
,`IS_COMPILED` varchar(3)
,`SORTLEN` bigint(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `COLLATION_CHARACTER_SET_APPLICABILITY`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
`COLLATION_NAME` varchar(32)
,`CHARACTER_SET_NAME` varchar(32)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `COLUMNS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `COLUMNS` (
`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`COLUMN_NAME` varchar(64)
,`ORDINAL_POSITION` bigint(21) unsigned
,`COLUMN_DEFAULT` longtext
,`IS_NULLABLE` varchar(3)
,`DATA_TYPE` varchar(64)
,`CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned
,`CHARACTER_OCTET_LENGTH` bigint(21) unsigned
,`NUMERIC_PRECISION` bigint(21) unsigned
,`NUMERIC_SCALE` bigint(21) unsigned
,`DATETIME_PRECISION` bigint(21) unsigned
,`CHARACTER_SET_NAME` varchar(32)
,`COLLATION_NAME` varchar(32)
,`COLUMN_TYPE` longtext
,`COLUMN_KEY` varchar(3)
,`EXTRA` varchar(30)
,`PRIVILEGES` varchar(80)
,`COLUMN_COMMENT` varchar(1024)
,`IS_GENERATED` varchar(6)
,`GENERATION_EXPRESSION` longtext
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `COLUMN_PRIVILEGES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `COLUMN_PRIVILEGES` (
`GRANTEE` varchar(190)
,`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`COLUMN_NAME` varchar(64)
,`PRIVILEGE_TYPE` varchar(64)
,`IS_GRANTABLE` varchar(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ENABLED_ROLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ENABLED_ROLES` (
`ROLE_NAME` varchar(128)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ENGINES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ENGINES` (
`ENGINE` varchar(64)
,`SUPPORT` varchar(8)
,`COMMENT` varchar(160)
,`TRANSACTIONS` varchar(3)
,`XA` varchar(3)
,`SAVEPOINTS` varchar(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `EVENTS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `EVENTS` (
`EVENT_CATALOG` varchar(64)
,`EVENT_SCHEMA` varchar(64)
,`EVENT_NAME` varchar(64)
,`DEFINER` varchar(189)
,`TIME_ZONE` varchar(64)
,`EVENT_BODY` varchar(8)
,`EVENT_DEFINITION` longtext
,`EVENT_TYPE` varchar(9)
,`EXECUTE_AT` datetime
,`INTERVAL_VALUE` varchar(256)
,`INTERVAL_FIELD` varchar(18)
,`SQL_MODE` varchar(8192)
,`STARTS` datetime
,`ENDS` datetime
,`STATUS` varchar(18)
,`ON_COMPLETION` varchar(12)
,`CREATED` datetime
,`LAST_ALTERED` datetime
,`LAST_EXECUTED` datetime
,`EVENT_COMMENT` varchar(64)
,`ORIGINATOR` bigint(10)
,`CHARACTER_SET_CLIENT` varchar(32)
,`COLLATION_CONNECTION` varchar(32)
,`DATABASE_COLLATION` varchar(32)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `FILES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `FILES` (
`FILE_ID` bigint(4)
,`FILE_NAME` varchar(512)
,`FILE_TYPE` varchar(20)
,`TABLESPACE_NAME` varchar(64)
,`TABLE_CATALOG` varchar(64)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`LOGFILE_GROUP_NAME` varchar(64)
,`LOGFILE_GROUP_NUMBER` bigint(4)
,`ENGINE` varchar(64)
,`FULLTEXT_KEYS` varchar(64)
,`DELETED_ROWS` bigint(4)
,`UPDATE_COUNT` bigint(4)
,`FREE_EXTENTS` bigint(4)
,`TOTAL_EXTENTS` bigint(4)
,`EXTENT_SIZE` bigint(4)
,`INITIAL_SIZE` bigint(21) unsigned
,`MAXIMUM_SIZE` bigint(21) unsigned
,`AUTOEXTEND_SIZE` bigint(21) unsigned
,`CREATION_TIME` datetime
,`LAST_UPDATE_TIME` datetime
,`LAST_ACCESS_TIME` datetime
,`RECOVER_TIME` bigint(4)
,`TRANSACTION_COUNTER` bigint(4)
,`VERSION` bigint(21) unsigned
,`ROW_FORMAT` varchar(10)
,`TABLE_ROWS` bigint(21) unsigned
,`AVG_ROW_LENGTH` bigint(21) unsigned
,`DATA_LENGTH` bigint(21) unsigned
,`MAX_DATA_LENGTH` bigint(21) unsigned
,`INDEX_LENGTH` bigint(21) unsigned
,`DATA_FREE` bigint(21) unsigned
,`CREATE_TIME` datetime
,`UPDATE_TIME` datetime
,`CHECK_TIME` datetime
,`CHECKSUM` bigint(21) unsigned
,`STATUS` varchar(20)
,`EXTRA` varchar(255)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `GEOMETRY_COLUMNS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `GEOMETRY_COLUMNS` (
`F_TABLE_CATALOG` varchar(512)
,`F_TABLE_SCHEMA` varchar(64)
,`F_TABLE_NAME` varchar(64)
,`F_GEOMETRY_COLUMN` varchar(64)
,`G_TABLE_CATALOG` varchar(512)
,`G_TABLE_SCHEMA` varchar(64)
,`G_TABLE_NAME` varchar(64)
,`G_GEOMETRY_COLUMN` varchar(64)
,`STORAGE_TYPE` tinyint(2)
,`GEOMETRY_TYPE` int(7)
,`COORD_DIMENSION` tinyint(2)
,`MAX_PPR` tinyint(2)
,`SRID` smallint(5)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `GLOBAL_STATUS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `GLOBAL_STATUS` (
`VARIABLE_NAME` varchar(64)
,`VARIABLE_VALUE` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `GLOBAL_VARIABLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `GLOBAL_VARIABLES` (
`VARIABLE_NAME` varchar(64)
,`VARIABLE_VALUE` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INDEX_STATISTICS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INDEX_STATISTICS` (
`TABLE_SCHEMA` varchar(192)
,`TABLE_NAME` varchar(192)
,`INDEX_NAME` varchar(192)
,`ROWS_READ` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_BUFFER_PAGE`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_BUFFER_PAGE` (
`POOL_ID` int(11) unsigned
,`BLOCK_ID` bigint(21) unsigned
,`SPACE` int(11) unsigned
,`PAGE_NUMBER` int(11) unsigned
,`PAGE_TYPE` varchar(64)
,`FLUSH_TYPE` int(11) unsigned
,`FIX_COUNT` int(11) unsigned
,`IS_HASHED` int(1)
,`NEWEST_MODIFICATION` bigint(21) unsigned
,`OLDEST_MODIFICATION` bigint(21) unsigned
,`ACCESS_TIME` bigint(21) unsigned
,`TABLE_NAME` varchar(1024)
,`INDEX_NAME` varchar(64)
,`NUMBER_RECORDS` bigint(21) unsigned
,`DATA_SIZE` bigint(21) unsigned
,`COMPRESSED_SIZE` bigint(21) unsigned
,`PAGE_STATE` enum('NOT_USED','MEMORY','REMOVE_HASH','FILE_PAGE')
,`IO_FIX` enum('IO_NONE','IO_READ','IO_WRITE','IO_PIN')
,`IS_OLD` int(1)
,`FREE_PAGE_CLOCK` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_BUFFER_PAGE_LRU`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_BUFFER_PAGE_LRU` (
`POOL_ID` int(11) unsigned
,`LRU_POSITION` bigint(21) unsigned
,`SPACE` int(11) unsigned
,`PAGE_NUMBER` int(11) unsigned
,`PAGE_TYPE` varchar(64)
,`FLUSH_TYPE` int(11) unsigned
,`FIX_COUNT` int(11) unsigned
,`IS_HASHED` int(1)
,`NEWEST_MODIFICATION` bigint(21) unsigned
,`OLDEST_MODIFICATION` bigint(21) unsigned
,`ACCESS_TIME` bigint(21) unsigned
,`TABLE_NAME` varchar(1024)
,`INDEX_NAME` varchar(64)
,`NUMBER_RECORDS` bigint(21) unsigned
,`DATA_SIZE` bigint(21) unsigned
,`COMPRESSED_SIZE` bigint(21) unsigned
,`COMPRESSED` int(1)
,`IO_FIX` enum('IO_NONE','IO_READ','IO_WRITE','IO_PIN')
,`IS_OLD` int(1)
,`FREE_PAGE_CLOCK` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_BUFFER_POOL_STATS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_BUFFER_POOL_STATS` (
`POOL_ID` int(11) unsigned
,`POOL_SIZE` bigint(21) unsigned
,`FREE_BUFFERS` bigint(21) unsigned
,`DATABASE_PAGES` bigint(21) unsigned
,`OLD_DATABASE_PAGES` bigint(21) unsigned
,`MODIFIED_DATABASE_PAGES` bigint(21) unsigned
,`PENDING_DECOMPRESS` bigint(21) unsigned
,`PENDING_READS` bigint(21) unsigned
,`PENDING_FLUSH_LRU` bigint(21) unsigned
,`PENDING_FLUSH_LIST` bigint(21) unsigned
,`PAGES_MADE_YOUNG` bigint(21) unsigned
,`PAGES_NOT_MADE_YOUNG` bigint(21) unsigned
,`PAGES_MADE_YOUNG_RATE` float
,`PAGES_MADE_NOT_YOUNG_RATE` float
,`NUMBER_PAGES_READ` bigint(21) unsigned
,`NUMBER_PAGES_CREATED` bigint(21) unsigned
,`NUMBER_PAGES_WRITTEN` bigint(21) unsigned
,`PAGES_READ_RATE` float
,`PAGES_CREATE_RATE` float
,`PAGES_WRITTEN_RATE` float
,`NUMBER_PAGES_GET` bigint(21) unsigned
,`HIT_RATE` bigint(21) unsigned
,`YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned
,`NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned
,`NUMBER_PAGES_READ_AHEAD` bigint(21) unsigned
,`NUMBER_READ_AHEAD_EVICTED` bigint(21) unsigned
,`READ_AHEAD_RATE` float
,`READ_AHEAD_EVICTED_RATE` float
,`LRU_IO_TOTAL` bigint(21) unsigned
,`LRU_IO_CURRENT` bigint(21) unsigned
,`UNCOMPRESS_TOTAL` bigint(21) unsigned
,`UNCOMPRESS_CURRENT` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_CMP`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_CMP` (
`page_size` int(5)
,`compress_ops` int(11)
,`compress_ops_ok` int(11)
,`compress_time` int(11)
,`uncompress_ops` int(11)
,`uncompress_time` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_CMPMEM`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_CMPMEM` (
`page_size` int(5)
,`buffer_pool_instance` int(11)
,`pages_used` int(11)
,`pages_free` int(11)
,`relocation_ops` bigint(21)
,`relocation_time` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_CMPMEM_RESET`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_CMPMEM_RESET` (
`page_size` int(5)
,`buffer_pool_instance` int(11)
,`pages_used` int(11)
,`pages_free` int(11)
,`relocation_ops` bigint(21)
,`relocation_time` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_CMP_PER_INDEX`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_CMP_PER_INDEX` (
`database_name` varchar(64)
,`table_name` varchar(64)
,`index_name` varchar(64)
,`compress_ops` int(11)
,`compress_ops_ok` int(11)
,`compress_time` int(11)
,`uncompress_ops` int(11)
,`uncompress_time` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_CMP_PER_INDEX_RESET`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_CMP_PER_INDEX_RESET` (
`database_name` varchar(64)
,`table_name` varchar(64)
,`index_name` varchar(64)
,`compress_ops` int(11)
,`compress_ops_ok` int(11)
,`compress_time` int(11)
,`uncompress_ops` int(11)
,`uncompress_time` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_CMP_RESET`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_CMP_RESET` (
`page_size` int(5)
,`compress_ops` int(11)
,`compress_ops_ok` int(11)
,`compress_time` int(11)
,`uncompress_ops` int(11)
,`uncompress_time` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_FT_BEING_DELETED`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_FT_BEING_DELETED` (
`DOC_ID` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_FT_CONFIG`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_FT_CONFIG` (
`KEY` varchar(193)
,`VALUE` varchar(193)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_FT_DEFAULT_STOPWORD`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_FT_DEFAULT_STOPWORD` (
`value` varchar(18)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_FT_DELETED`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_FT_DELETED` (
`DOC_ID` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_FT_INDEX_CACHE`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_FT_INDEX_CACHE` (
`WORD` varchar(337)
,`FIRST_DOC_ID` bigint(21) unsigned
,`LAST_DOC_ID` bigint(21) unsigned
,`DOC_COUNT` bigint(21) unsigned
,`DOC_ID` bigint(21) unsigned
,`POSITION` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_FT_INDEX_TABLE`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_FT_INDEX_TABLE` (
`WORD` varchar(337)
,`FIRST_DOC_ID` bigint(21) unsigned
,`LAST_DOC_ID` bigint(21) unsigned
,`DOC_COUNT` bigint(21) unsigned
,`DOC_ID` bigint(21) unsigned
,`POSITION` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_LOCKS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_LOCKS` (
`lock_id` varchar(81)
,`lock_trx_id` bigint(21) unsigned
,`lock_mode` enum('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC')
,`lock_type` enum('RECORD','TABLE')
,`lock_table` varchar(1024)
,`lock_index` varchar(1024)
,`lock_space` int(11) unsigned
,`lock_page` int(11) unsigned
,`lock_rec` int(11) unsigned
,`lock_data` varchar(8192)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_LOCK_WAITS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_LOCK_WAITS` (
`requesting_trx_id` bigint(21) unsigned
,`requested_lock_id` varchar(81)
,`blocking_trx_id` bigint(21) unsigned
,`blocking_lock_id` varchar(81)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_METRICS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_METRICS` (
`NAME` varchar(193)
,`SUBSYSTEM` varchar(193)
,`COUNT` bigint(21)
,`MAX_COUNT` bigint(21)
,`MIN_COUNT` bigint(21)
,`AVG_COUNT` float
,`COUNT_RESET` bigint(21)
,`MAX_COUNT_RESET` bigint(21)
,`MIN_COUNT_RESET` bigint(21)
,`AVG_COUNT_RESET` float
,`TIME_ENABLED` datetime
,`TIME_DISABLED` datetime
,`TIME_ELAPSED` bigint(21)
,`TIME_RESET` datetime
,`ENABLED` int(1)
,`TYPE` enum('value','status_counter','set_owner','set_member','counter')
,`COMMENT` varchar(193)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_MUTEXES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_MUTEXES` (
`NAME` varchar(4000)
,`CREATE_FILE` varchar(4000)
,`CREATE_LINE` int(11) unsigned
,`OS_WAITS` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_COLUMNS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_COLUMNS` (
`TABLE_ID` bigint(21) unsigned
,`NAME` varchar(64)
,`POS` bigint(21) unsigned
,`MTYPE` int(11)
,`PRTYPE` int(11)
,`LEN` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_DATAFILES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_DATAFILES` (
`SPACE` int(11) unsigned
,`PATH` varchar(4000)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_FIELDS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_FIELDS` (
`INDEX_ID` bigint(21) unsigned
,`NAME` varchar(64)
,`POS` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_FOREIGN`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_FOREIGN` (
`ID` varchar(193)
,`FOR_NAME` varchar(193)
,`REF_NAME` varchar(193)
,`N_COLS` int(11) unsigned
,`TYPE` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_FOREIGN_COLS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_FOREIGN_COLS` (
`ID` varchar(193)
,`FOR_COL_NAME` varchar(64)
,`REF_COL_NAME` varchar(64)
,`POS` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_INDEXES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_INDEXES` (
`INDEX_ID` bigint(21) unsigned
,`NAME` varchar(64)
,`TABLE_ID` bigint(21) unsigned
,`TYPE` int(11)
,`N_FIELDS` int(11)
,`PAGE_NO` int(11)
,`SPACE` int(11)
,`MERGE_THRESHOLD` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_SEMAPHORE_WAITS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_SEMAPHORE_WAITS` (
`THREAD_ID` bigint(21) unsigned
,`OBJECT_NAME` varchar(4000)
,`FILE` varchar(4000)
,`LINE` int(11) unsigned
,`WAIT_TIME` bigint(21) unsigned
,`WAIT_OBJECT` bigint(21) unsigned
,`WAIT_TYPE` varchar(16)
,`HOLDER_THREAD_ID` bigint(21) unsigned
,`HOLDER_FILE` varchar(4000)
,`HOLDER_LINE` int(11) unsigned
,`CREATED_FILE` varchar(4000)
,`CREATED_LINE` int(11) unsigned
,`WRITER_THREAD` bigint(21) unsigned
,`RESERVATION_MODE` varchar(16)
,`READERS` int(11) unsigned
,`WAITERS_FLAG` bigint(21) unsigned
,`LOCK_WORD` bigint(21) unsigned
,`LAST_WRITER_FILE` varchar(4000)
,`LAST_WRITER_LINE` int(11) unsigned
,`OS_WAIT_COUNT` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_TABLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_TABLES` (
`TABLE_ID` bigint(21) unsigned
,`NAME` varchar(655)
,`FLAG` int(11)
,`N_COLS` int(11) unsigned
,`SPACE` int(11) unsigned
,`ROW_FORMAT` enum('Redundant','Compact','Compressed','Dynamic')
,`ZIP_PAGE_SIZE` int(11) unsigned
,`SPACE_TYPE` enum('Single','System')
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_TABLESPACES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_TABLESPACES` (
`SPACE` int(11) unsigned
,`NAME` varchar(655)
,`FLAG` int(11) unsigned
,`ROW_FORMAT` varchar(22)
,`PAGE_SIZE` int(11) unsigned
,`ZIP_PAGE_SIZE` int(11) unsigned
,`FS_BLOCK_SIZE` int(11) unsigned
,`FILE_SIZE` bigint(21) unsigned
,`ALLOCATED_SIZE` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_TABLESTATS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_TABLESTATS` (
`TABLE_ID` bigint(21) unsigned
,`NAME` varchar(64)
,`STATS_INITIALIZED` int(1)
,`NUM_ROWS` bigint(21) unsigned
,`CLUST_INDEX_SIZE` bigint(21) unsigned
,`OTHER_INDEX_SIZE` bigint(21) unsigned
,`MODIFIED_COUNTER` bigint(21) unsigned
,`AUTOINC` bigint(21) unsigned
,`REF_COUNT` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_SYS_VIRTUAL`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_SYS_VIRTUAL` (
`TABLE_ID` bigint(21) unsigned
,`POS` int(11) unsigned
,`BASE_POS` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_TABLESPACES_ENCRYPTION`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_TABLESPACES_ENCRYPTION` (
`SPACE` int(11) unsigned
,`NAME` varchar(655)
,`ENCRYPTION_SCHEME` int(11) unsigned
,`KEYSERVER_REQUESTS` int(11) unsigned
,`MIN_KEY_VERSION` int(11) unsigned
,`CURRENT_KEY_VERSION` int(11) unsigned
,`KEY_ROTATION_PAGE_NUMBER` bigint(21) unsigned
,`KEY_ROTATION_MAX_PAGE_NUMBER` bigint(21) unsigned
,`CURRENT_KEY_ID` int(11) unsigned
,`ROTATING_OR_FLUSHING` int(1)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `INNODB_TRX`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `INNODB_TRX` (
`trx_id` bigint(21) unsigned
,`trx_state` varchar(13)
,`trx_started` datetime
,`trx_requested_lock_id` varchar(81)
,`trx_wait_started` datetime
,`trx_weight` bigint(21) unsigned
,`trx_mysql_thread_id` bigint(21) unsigned
,`trx_query` varchar(1024)
,`trx_operation_state` varchar(64)
,`trx_tables_in_use` bigint(21) unsigned
,`trx_tables_locked` bigint(21) unsigned
,`trx_lock_structs` bigint(21) unsigned
,`trx_lock_memory_bytes` bigint(21) unsigned
,`trx_rows_locked` bigint(21) unsigned
,`trx_rows_modified` bigint(21) unsigned
,`trx_concurrency_tickets` bigint(21) unsigned
,`trx_isolation_level` enum('READ UNCOMMITTED','READ COMMITTED','REPEATABLE READ','SERIALIZABLE')
,`trx_unique_checks` int(1)
,`trx_foreign_key_checks` int(1)
,`trx_last_foreign_key_error` varchar(256)
,`trx_is_read_only` int(1)
,`trx_autocommit_non_locking` int(1)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `KEYWORDS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `KEYWORDS` (
`WORD` varchar(64)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `KEY_CACHES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `KEY_CACHES` (
`KEY_CACHE_NAME` varchar(192)
,`SEGMENTS` int(3) unsigned
,`SEGMENT_NUMBER` int(3) unsigned
,`FULL_SIZE` bigint(21) unsigned
,`BLOCK_SIZE` bigint(21) unsigned
,`USED_BLOCKS` bigint(21) unsigned
,`UNUSED_BLOCKS` bigint(21) unsigned
,`DIRTY_BLOCKS` bigint(21) unsigned
,`READ_REQUESTS` bigint(21) unsigned
,`READS` bigint(21) unsigned
,`WRITE_REQUESTS` bigint(21) unsigned
,`WRITES` bigint(21) unsigned
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `KEY_COLUMN_USAGE`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `KEY_COLUMN_USAGE` (
`CONSTRAINT_CATALOG` varchar(512)
,`CONSTRAINT_SCHEMA` varchar(64)
,`CONSTRAINT_NAME` varchar(64)
,`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`COLUMN_NAME` varchar(64)
,`ORDINAL_POSITION` bigint(10)
,`POSITION_IN_UNIQUE_CONSTRAINT` bigint(10)
,`REFERENCED_TABLE_SCHEMA` varchar(64)
,`REFERENCED_TABLE_NAME` varchar(64)
,`REFERENCED_COLUMN_NAME` varchar(64)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `OPTIMIZER_TRACE`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `OPTIMIZER_TRACE` (
`QUERY` longtext
,`TRACE` longtext
,`MISSING_BYTES_BEYOND_MAX_MEM_SIZE` int(20)
,`INSUFFICIENT_PRIVILEGES` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `PARAMETERS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `PARAMETERS` (
`SPECIFIC_CATALOG` varchar(512)
,`SPECIFIC_SCHEMA` varchar(64)
,`SPECIFIC_NAME` varchar(64)
,`ORDINAL_POSITION` int(21)
,`PARAMETER_MODE` varchar(5)
,`PARAMETER_NAME` varchar(64)
,`DATA_TYPE` varchar(64)
,`CHARACTER_MAXIMUM_LENGTH` int(21)
,`CHARACTER_OCTET_LENGTH` int(21)
,`NUMERIC_PRECISION` int(21)
,`NUMERIC_SCALE` int(21)
,`DATETIME_PRECISION` bigint(21) unsigned
,`CHARACTER_SET_NAME` varchar(64)
,`COLLATION_NAME` varchar(64)
,`DTD_IDENTIFIER` longtext
,`ROUTINE_TYPE` varchar(9)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `PARTITIONS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `PARTITIONS` (
`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`PARTITION_NAME` varchar(64)
,`SUBPARTITION_NAME` varchar(64)
,`PARTITION_ORDINAL_POSITION` bigint(21) unsigned
,`SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned
,`PARTITION_METHOD` varchar(18)
,`SUBPARTITION_METHOD` varchar(12)
,`PARTITION_EXPRESSION` longtext
,`SUBPARTITION_EXPRESSION` longtext
,`PARTITION_DESCRIPTION` longtext
,`TABLE_ROWS` bigint(21) unsigned
,`AVG_ROW_LENGTH` bigint(21) unsigned
,`DATA_LENGTH` bigint(21) unsigned
,`MAX_DATA_LENGTH` bigint(21) unsigned
,`INDEX_LENGTH` bigint(21) unsigned
,`DATA_FREE` bigint(21) unsigned
,`CREATE_TIME` datetime
,`UPDATE_TIME` datetime
,`CHECK_TIME` datetime
,`CHECKSUM` bigint(21) unsigned
,`PARTITION_COMMENT` varchar(80)
,`NODEGROUP` varchar(12)
,`TABLESPACE_NAME` varchar(64)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `PLUGINS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `PLUGINS` (
`PLUGIN_NAME` varchar(64)
,`PLUGIN_VERSION` varchar(20)
,`PLUGIN_STATUS` varchar(16)
,`PLUGIN_TYPE` varchar(80)
,`PLUGIN_TYPE_VERSION` varchar(20)
,`PLUGIN_LIBRARY` varchar(64)
,`PLUGIN_LIBRARY_VERSION` varchar(20)
,`PLUGIN_AUTHOR` varchar(64)
,`PLUGIN_DESCRIPTION` longtext
,`PLUGIN_LICENSE` varchar(80)
,`LOAD_OPTION` varchar(64)
,`PLUGIN_MATURITY` varchar(12)
,`PLUGIN_AUTH_VERSION` varchar(80)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `PROCESSLIST`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `PROCESSLIST` (
`ID` bigint(4)
,`USER` varchar(128)
,`HOST` varchar(64)
,`DB` varchar(64)
,`COMMAND` varchar(16)
,`TIME` int(7)
,`STATE` varchar(64)
,`INFO` longtext
,`TIME_MS` decimal(22,3)
,`STAGE` tinyint(2)
,`MAX_STAGE` tinyint(2)
,`PROGRESS` decimal(7,3)
,`MEMORY_USED` bigint(7)
,`MAX_MEMORY_USED` bigint(7)
,`EXAMINED_ROWS` int(7)
,`QUERY_ID` bigint(4)
,`INFO_BINARY` blob
,`TID` bigint(4)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `PROFILING`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `PROFILING` (
`QUERY_ID` int(20)
,`SEQ` int(20)
,`STATE` varchar(30)
,`DURATION` decimal(9,6)
,`CPU_USER` decimal(9,6)
,`CPU_SYSTEM` decimal(9,6)
,`CONTEXT_VOLUNTARY` int(20)
,`CONTEXT_INVOLUNTARY` int(20)
,`BLOCK_OPS_IN` int(20)
,`BLOCK_OPS_OUT` int(20)
,`MESSAGES_SENT` int(20)
,`MESSAGES_RECEIVED` int(20)
,`PAGE_FAULTS_MAJOR` int(20)
,`PAGE_FAULTS_MINOR` int(20)
,`SWAPS` int(20)
,`SOURCE_FUNCTION` varchar(30)
,`SOURCE_FILE` varchar(20)
,`SOURCE_LINE` int(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `REFERENTIAL_CONSTRAINTS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `REFERENTIAL_CONSTRAINTS` (
`CONSTRAINT_CATALOG` varchar(512)
,`CONSTRAINT_SCHEMA` varchar(64)
,`CONSTRAINT_NAME` varchar(64)
,`UNIQUE_CONSTRAINT_CATALOG` varchar(512)
,`UNIQUE_CONSTRAINT_SCHEMA` varchar(64)
,`UNIQUE_CONSTRAINT_NAME` varchar(64)
,`MATCH_OPTION` varchar(64)
,`UPDATE_RULE` varchar(64)
,`DELETE_RULE` varchar(64)
,`TABLE_NAME` varchar(64)
,`REFERENCED_TABLE_NAME` varchar(64)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `ROUTINES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `ROUTINES` (
`SPECIFIC_NAME` varchar(64)
,`ROUTINE_CATALOG` varchar(512)
,`ROUTINE_SCHEMA` varchar(64)
,`ROUTINE_NAME` varchar(64)
,`ROUTINE_TYPE` varchar(13)
,`DATA_TYPE` varchar(64)
,`CHARACTER_MAXIMUM_LENGTH` int(21)
,`CHARACTER_OCTET_LENGTH` int(21)
,`NUMERIC_PRECISION` int(21)
,`NUMERIC_SCALE` int(21)
,`DATETIME_PRECISION` bigint(21) unsigned
,`CHARACTER_SET_NAME` varchar(64)
,`COLLATION_NAME` varchar(64)
,`DTD_IDENTIFIER` longtext
,`ROUTINE_BODY` varchar(8)
,`ROUTINE_DEFINITION` longtext
,`EXTERNAL_NAME` varchar(64)
,`EXTERNAL_LANGUAGE` varchar(64)
,`PARAMETER_STYLE` varchar(8)
,`IS_DETERMINISTIC` varchar(3)
,`SQL_DATA_ACCESS` varchar(64)
,`SQL_PATH` varchar(64)
,`SECURITY_TYPE` varchar(7)
,`CREATED` datetime
,`LAST_ALTERED` datetime
,`SQL_MODE` varchar(8192)
,`ROUTINE_COMMENT` longtext
,`DEFINER` varchar(189)
,`CHARACTER_SET_CLIENT` varchar(32)
,`COLLATION_CONNECTION` varchar(32)
,`DATABASE_COLLATION` varchar(32)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SCHEMATA`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SCHEMATA` (
`CATALOG_NAME` varchar(512)
,`SCHEMA_NAME` varchar(64)
,`DEFAULT_CHARACTER_SET_NAME` varchar(32)
,`DEFAULT_COLLATION_NAME` varchar(32)
,`SQL_PATH` varchar(512)
,`SCHEMA_COMMENT` varchar(1024)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SCHEMA_PRIVILEGES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SCHEMA_PRIVILEGES` (
`GRANTEE` varchar(190)
,`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`PRIVILEGE_TYPE` varchar(64)
,`IS_GRANTABLE` varchar(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SESSION_STATUS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SESSION_STATUS` (
`VARIABLE_NAME` varchar(64)
,`VARIABLE_VALUE` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SESSION_VARIABLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SESSION_VARIABLES` (
`VARIABLE_NAME` varchar(64)
,`VARIABLE_VALUE` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SPATIAL_REF_SYS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SPATIAL_REF_SYS` (
`SRID` smallint(5)
,`AUTH_NAME` varchar(512)
,`AUTH_SRID` int(5)
,`SRTEXT` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SQL_FUNCTIONS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SQL_FUNCTIONS` (
`FUNCTION` varchar(64)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `STATISTICS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `STATISTICS` (
`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`NON_UNIQUE` bigint(1)
,`INDEX_SCHEMA` varchar(64)
,`INDEX_NAME` varchar(64)
,`SEQ_IN_INDEX` bigint(2)
,`COLUMN_NAME` varchar(64)
,`COLLATION` varchar(1)
,`CARDINALITY` bigint(21)
,`SUB_PART` bigint(3)
,`PACKED` varchar(10)
,`NULLABLE` varchar(3)
,`INDEX_TYPE` varchar(16)
,`COMMENT` varchar(16)
,`INDEX_COMMENT` varchar(1024)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `SYSTEM_VARIABLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `SYSTEM_VARIABLES` (
`VARIABLE_NAME` varchar(64)
,`SESSION_VALUE` varchar(2048)
,`GLOBAL_VALUE` varchar(2048)
,`GLOBAL_VALUE_ORIGIN` varchar(64)
,`DEFAULT_VALUE` varchar(2048)
,`VARIABLE_SCOPE` varchar(64)
,`VARIABLE_TYPE` varchar(64)
,`VARIABLE_COMMENT` varchar(2048)
,`NUMERIC_MIN_VALUE` varchar(21)
,`NUMERIC_MAX_VALUE` varchar(21)
,`NUMERIC_BLOCK_SIZE` varchar(21)
,`ENUM_VALUE_LIST` longtext
,`READ_ONLY` varchar(3)
,`COMMAND_LINE_ARGUMENT` varchar(64)
,`GLOBAL_VALUE_PATH` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `TABLES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `TABLES` (
`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`TABLE_TYPE` varchar(64)
,`ENGINE` varchar(64)
,`VERSION` bigint(21) unsigned
,`ROW_FORMAT` varchar(10)
,`TABLE_ROWS` bigint(21) unsigned
,`AVG_ROW_LENGTH` bigint(21) unsigned
,`DATA_LENGTH` bigint(21) unsigned
,`MAX_DATA_LENGTH` bigint(21) unsigned
,`INDEX_LENGTH` bigint(21) unsigned
,`DATA_FREE` bigint(21) unsigned
,`AUTO_INCREMENT` bigint(21) unsigned
,`CREATE_TIME` datetime
,`UPDATE_TIME` datetime
,`CHECK_TIME` datetime
,`TABLE_COLLATION` varchar(32)
,`CHECKSUM` bigint(21) unsigned
,`CREATE_OPTIONS` varchar(2048)
,`TABLE_COMMENT` varchar(2048)
,`MAX_INDEX_LENGTH` bigint(21) unsigned
,`TEMPORARY` varchar(1)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `TABLESPACES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `TABLESPACES` (
`TABLESPACE_NAME` varchar(64)
,`ENGINE` varchar(64)
,`TABLESPACE_TYPE` varchar(64)
,`LOGFILE_GROUP_NAME` varchar(64)
,`EXTENT_SIZE` bigint(21) unsigned
,`AUTOEXTEND_SIZE` bigint(21) unsigned
,`MAXIMUM_SIZE` bigint(21) unsigned
,`NODEGROUP_ID` bigint(21) unsigned
,`TABLESPACE_COMMENT` varchar(2048)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `TABLE_CONSTRAINTS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `TABLE_CONSTRAINTS` (
`CONSTRAINT_CATALOG` varchar(512)
,`CONSTRAINT_SCHEMA` varchar(64)
,`CONSTRAINT_NAME` varchar(64)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`CONSTRAINT_TYPE` varchar(64)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `TABLE_PRIVILEGES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `TABLE_PRIVILEGES` (
`GRANTEE` varchar(190)
,`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`PRIVILEGE_TYPE` varchar(64)
,`IS_GRANTABLE` varchar(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `TABLE_STATISTICS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `TABLE_STATISTICS` (
`TABLE_SCHEMA` varchar(192)
,`TABLE_NAME` varchar(192)
,`ROWS_READ` bigint(21)
,`ROWS_CHANGED` bigint(21)
,`ROWS_CHANGED_X_INDEXES` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `THREAD_POOL_GROUPS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `THREAD_POOL_GROUPS` (
`GROUP_ID` int(6)
,`CONNECTIONS` int(6)
,`THREADS` int(6)
,`ACTIVE_THREADS` int(6)
,`STANDBY_THREADS` int(6)
,`QUEUE_LENGTH` int(6)
,`HAS_LISTENER` tinyint(1)
,`IS_STALLED` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `THREAD_POOL_QUEUES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `THREAD_POOL_QUEUES` (
`GROUP_ID` int(6)
,`POSITION` int(6)
,`PRIORITY` int(1)
,`CONNECTION_ID` bigint(19) unsigned
,`QUEUEING_TIME_MICROSECONDS` bigint(19)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `THREAD_POOL_STATS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `THREAD_POOL_STATS` (
`GROUP_ID` int(6)
,`THREAD_CREATIONS` bigint(19)
,`THREAD_CREATIONS_DUE_TO_STALL` bigint(19)
,`WAKES` bigint(19)
,`WAKES_DUE_TO_STALL` bigint(19)
,`THROTTLES` bigint(19)
,`STALLS` bigint(19)
,`POLLS_BY_LISTENER` bigint(19)
,`POLLS_BY_WORKER` bigint(19)
,`DEQUEUES_BY_LISTENER` bigint(19)
,`DEQUEUES_BY_WORKER` bigint(19)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `THREAD_POOL_WAITS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `THREAD_POOL_WAITS` (
`REASON` varchar(16)
,`COUNT` bigint(19)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `TRIGGERS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `TRIGGERS` (
`TRIGGER_CATALOG` varchar(512)
,`TRIGGER_SCHEMA` varchar(64)
,`TRIGGER_NAME` varchar(64)
,`EVENT_MANIPULATION` varchar(6)
,`EVENT_OBJECT_CATALOG` varchar(512)
,`EVENT_OBJECT_SCHEMA` varchar(64)
,`EVENT_OBJECT_TABLE` varchar(64)
,`ACTION_ORDER` bigint(4)
,`ACTION_CONDITION` longtext
,`ACTION_STATEMENT` longtext
,`ACTION_ORIENTATION` varchar(9)
,`ACTION_TIMING` varchar(6)
,`ACTION_REFERENCE_OLD_TABLE` varchar(64)
,`ACTION_REFERENCE_NEW_TABLE` varchar(64)
,`ACTION_REFERENCE_OLD_ROW` varchar(3)
,`ACTION_REFERENCE_NEW_ROW` varchar(3)
,`CREATED` datetime(2)
,`SQL_MODE` varchar(8192)
,`DEFINER` varchar(189)
,`CHARACTER_SET_CLIENT` varchar(32)
,`COLLATION_CONNECTION` varchar(32)
,`DATABASE_COLLATION` varchar(32)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `USER_PRIVILEGES`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `USER_PRIVILEGES` (
`GRANTEE` varchar(190)
,`TABLE_CATALOG` varchar(512)
,`PRIVILEGE_TYPE` varchar(64)
,`IS_GRANTABLE` varchar(3)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `USER_STATISTICS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `USER_STATISTICS` (
`USER` varchar(128)
,`TOTAL_CONNECTIONS` int(11)
,`CONCURRENT_CONNECTIONS` int(11)
,`CONNECTED_TIME` int(11)
,`BUSY_TIME` double
,`CPU_TIME` double
,`BYTES_RECEIVED` bigint(21)
,`BYTES_SENT` bigint(21)
,`BINLOG_BYTES_WRITTEN` bigint(21)
,`ROWS_READ` bigint(21)
,`ROWS_SENT` bigint(21)
,`ROWS_DELETED` bigint(21)
,`ROWS_INSERTED` bigint(21)
,`ROWS_UPDATED` bigint(21)
,`SELECT_COMMANDS` bigint(21)
,`UPDATE_COMMANDS` bigint(21)
,`OTHER_COMMANDS` bigint(21)
,`COMMIT_TRANSACTIONS` bigint(21)
,`ROLLBACK_TRANSACTIONS` bigint(21)
,`DENIED_CONNECTIONS` bigint(21)
,`LOST_CONNECTIONS` bigint(21)
,`ACCESS_DENIED` bigint(21)
,`EMPTY_QUERIES` bigint(21)
,`TOTAL_SSL_CONNECTIONS` bigint(21) unsigned
,`MAX_STATEMENT_TIME_EXCEEDED` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `user_variables`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `user_variables` (
`VARIABLE_NAME` varchar(64)
,`VARIABLE_VALUE` varchar(2048)
,`VARIABLE_TYPE` varchar(64)
,`CHARACTER_SET_NAME` varchar(32)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `VIEWS`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `VIEWS` (
`TABLE_CATALOG` varchar(512)
,`TABLE_SCHEMA` varchar(64)
,`TABLE_NAME` varchar(64)
,`VIEW_DEFINITION` longtext
,`CHECK_OPTION` varchar(8)
,`IS_UPDATABLE` varchar(3)
,`DEFINER` varchar(189)
,`SECURITY_TYPE` varchar(7)
,`CHARACTER_SET_CLIENT` varchar(32)
,`COLLATION_CONNECTION` varchar(32)
,`ALGORITHM` varchar(10)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `ALL_PLUGINS`
--
DROP TABLE IF EXISTS `ALL_PLUGINS`;

CREATE TEMPORARY TABLE `ALL_PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL,
  `PLUGIN_VERSION` varchar(20) NOT NULL,
  `PLUGIN_STATUS` varchar(16) NOT NULL,
  `PLUGIN_TYPE` varchar(80) NOT NULL,
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL,
  `PLUGIN_LIBRARY` varchar(64),
  `PLUGIN_LIBRARY_VERSION` varchar(20),
  `PLUGIN_AUTHOR` varchar(64),
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) NOT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL,
  `PLUGIN_MATURITY` varchar(12) NOT NULL,
  `PLUGIN_AUTH_VERSION` varchar(80)
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `APPLICABLE_ROLES`
--
DROP TABLE IF EXISTS `APPLICABLE_ROLES`;

CREATE TEMPORARY TABLE `APPLICABLE_ROLES` (
  `GRANTEE` varchar(190) NOT NULL,
  `ROLE_NAME` varchar(128) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL,
  `IS_DEFAULT` varchar(3)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `CHARACTER_SETS`
--
DROP TABLE IF EXISTS `CHARACTER_SETS`;

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL,
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(60) NOT NULL,
  `MAXLEN` bigint(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `CHECK_CONSTRAINTS`
--
DROP TABLE IF EXISTS `CHECK_CONSTRAINTS`;

CREATE TEMPORARY TABLE `CHECK_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `LEVEL` varchar(6) NOT NULL,
  `CHECK_CLAUSE` longtext NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `CLIENT_STATISTICS`
--
DROP TABLE IF EXISTS `CLIENT_STATISTICS`;

CREATE TEMPORARY TABLE `CLIENT_STATISTICS` (
  `CLIENT` varchar(64) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(21) NOT NULL,
  `CONCURRENT_CONNECTIONS` bigint(21) NOT NULL,
  `CONNECTED_TIME` bigint(21) NOT NULL,
  `BUSY_TIME` double NOT NULL,
  `CPU_TIME` double NOT NULL,
  `BYTES_RECEIVED` bigint(21) NOT NULL,
  `BYTES_SENT` bigint(21) NOT NULL,
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL,
  `ROWS_SENT` bigint(21) NOT NULL,
  `ROWS_DELETED` bigint(21) NOT NULL,
  `ROWS_INSERTED` bigint(21) NOT NULL,
  `ROWS_UPDATED` bigint(21) NOT NULL,
  `SELECT_COMMANDS` bigint(21) NOT NULL,
  `UPDATE_COMMANDS` bigint(21) NOT NULL,
  `OTHER_COMMANDS` bigint(21) NOT NULL,
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL,
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL,
  `DENIED_CONNECTIONS` bigint(21) NOT NULL,
  `LOST_CONNECTIONS` bigint(21) NOT NULL,
  `ACCESS_DENIED` bigint(21) NOT NULL,
  `EMPTY_QUERIES` bigint(21) NOT NULL,
  `TOTAL_SSL_CONNECTIONS` bigint(21) UNSIGNED NOT NULL,
  `MAX_STATEMENT_TIME_EXCEEDED` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `COLLATIONS`
--
DROP TABLE IF EXISTS `COLLATIONS`;

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL,
  `CHARACTER_SET_NAME` varchar(32) NOT NULL,
  `ID` bigint(11) NOT NULL,
  `IS_DEFAULT` varchar(3) NOT NULL,
  `IS_COMPILED` varchar(3) NOT NULL,
  `SORTLEN` bigint(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `COLLATION_CHARACTER_SET_APPLICABILITY`
--
DROP TABLE IF EXISTS `COLLATION_CHARACTER_SET_APPLICABILITY`;

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL,
  `CHARACTER_SET_NAME` varchar(32) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `COLUMNS`
--
DROP TABLE IF EXISTS `COLUMNS`;

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `ORDINAL_POSITION` bigint(21) UNSIGNED NOT NULL,
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL,
  `DATA_TYPE` varchar(64) NOT NULL,
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) UNSIGNED,
  `CHARACTER_OCTET_LENGTH` bigint(21) UNSIGNED,
  `NUMERIC_PRECISION` bigint(21) UNSIGNED,
  `NUMERIC_SCALE` bigint(21) UNSIGNED,
  `DATETIME_PRECISION` bigint(21) UNSIGNED,
  `CHARACTER_SET_NAME` varchar(32),
  `COLLATION_NAME` varchar(32),
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL,
  `EXTRA` varchar(30) NOT NULL,
  `PRIVILEGES` varchar(80) NOT NULL,
  `COLUMN_COMMENT` varchar(1024) NOT NULL,
  `IS_GENERATED` varchar(6) NOT NULL,
  `GENERATION_EXPRESSION` longtext
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `COLUMN_PRIVILEGES`
--
DROP TABLE IF EXISTS `COLUMN_PRIVILEGES`;

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `ENABLED_ROLES`
--
DROP TABLE IF EXISTS `ENABLED_ROLES`;

CREATE TEMPORARY TABLE `ENABLED_ROLES` (
  `ROLE_NAME` varchar(128)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `ENGINES`
--
DROP TABLE IF EXISTS `ENGINES`;

CREATE TEMPORARY TABLE `ENGINES` (
  `ENGINE` varchar(64) NOT NULL,
  `SUPPORT` varchar(8) NOT NULL,
  `COMMENT` varchar(160) NOT NULL,
  `TRANSACTIONS` varchar(3),
  `XA` varchar(3),
  `SAVEPOINTS` varchar(3)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `EVENTS`
--
DROP TABLE IF EXISTS `EVENTS`;

CREATE TEMPORARY TABLE `EVENTS` (
  `EVENT_CATALOG` varchar(64) NOT NULL,
  `EVENT_SCHEMA` varchar(64) NOT NULL,
  `EVENT_NAME` varchar(64) NOT NULL,
  `DEFINER` varchar(189) NOT NULL,
  `TIME_ZONE` varchar(64) NOT NULL,
  `EVENT_BODY` varchar(8) NOT NULL,
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL,
  `EXECUTE_AT` datetime,
  `INTERVAL_VALUE` varchar(256),
  `INTERVAL_FIELD` varchar(18),
  `SQL_MODE` varchar(8192) NOT NULL,
  `STARTS` datetime,
  `ENDS` datetime,
  `STATUS` varchar(18) NOT NULL,
  `ON_COMPLETION` varchar(12) NOT NULL,
  `CREATED` datetime NOT NULL,
  `LAST_ALTERED` datetime NOT NULL,
  `LAST_EXECUTED` datetime,
  `EVENT_COMMENT` varchar(64) NOT NULL,
  `ORIGINATOR` bigint(10) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `DATABASE_COLLATION` varchar(32) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `FILES`
--
DROP TABLE IF EXISTS `FILES`;

CREATE TEMPORARY TABLE `FILES` (
  `FILE_ID` bigint(4) NOT NULL,
  `FILE_NAME` varchar(512),
  `FILE_TYPE` varchar(20) NOT NULL,
  `TABLESPACE_NAME` varchar(64),
  `TABLE_CATALOG` varchar(64) NOT NULL,
  `TABLE_SCHEMA` varchar(64),
  `TABLE_NAME` varchar(64),
  `LOGFILE_GROUP_NAME` varchar(64),
  `LOGFILE_GROUP_NUMBER` bigint(4),
  `ENGINE` varchar(64) NOT NULL,
  `FULLTEXT_KEYS` varchar(64),
  `DELETED_ROWS` bigint(4),
  `UPDATE_COUNT` bigint(4),
  `FREE_EXTENTS` bigint(4),
  `TOTAL_EXTENTS` bigint(4),
  `EXTENT_SIZE` bigint(4) NOT NULL,
  `INITIAL_SIZE` bigint(21) UNSIGNED,
  `MAXIMUM_SIZE` bigint(21) UNSIGNED,
  `AUTOEXTEND_SIZE` bigint(21) UNSIGNED,
  `CREATION_TIME` datetime,
  `LAST_UPDATE_TIME` datetime,
  `LAST_ACCESS_TIME` datetime,
  `RECOVER_TIME` bigint(4),
  `TRANSACTION_COUNTER` bigint(4),
  `VERSION` bigint(21) UNSIGNED,
  `ROW_FORMAT` varchar(10),
  `TABLE_ROWS` bigint(21) UNSIGNED,
  `AVG_ROW_LENGTH` bigint(21) UNSIGNED,
  `DATA_LENGTH` bigint(21) UNSIGNED,
  `MAX_DATA_LENGTH` bigint(21) UNSIGNED,
  `INDEX_LENGTH` bigint(21) UNSIGNED,
  `DATA_FREE` bigint(21) UNSIGNED,
  `CREATE_TIME` datetime,
  `UPDATE_TIME` datetime,
  `CHECK_TIME` datetime,
  `CHECKSUM` bigint(21) UNSIGNED,
  `STATUS` varchar(20) NOT NULL,
  `EXTRA` varchar(255)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `GEOMETRY_COLUMNS`
--
DROP TABLE IF EXISTS `GEOMETRY_COLUMNS`;

CREATE TEMPORARY TABLE `GEOMETRY_COLUMNS` (
  `F_TABLE_CATALOG` varchar(512) NOT NULL,
  `F_TABLE_SCHEMA` varchar(64) NOT NULL,
  `F_TABLE_NAME` varchar(64) NOT NULL,
  `F_GEOMETRY_COLUMN` varchar(64) NOT NULL,
  `G_TABLE_CATALOG` varchar(512) NOT NULL,
  `G_TABLE_SCHEMA` varchar(64) NOT NULL,
  `G_TABLE_NAME` varchar(64) NOT NULL,
  `G_GEOMETRY_COLUMN` varchar(64) NOT NULL,
  `STORAGE_TYPE` tinyint(2) NOT NULL,
  `GEOMETRY_TYPE` int(7) NOT NULL,
  `COORD_DIMENSION` tinyint(2) NOT NULL,
  `MAX_PPR` tinyint(2) NOT NULL,
  `SRID` smallint(5) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `GLOBAL_STATUS`
--
DROP TABLE IF EXISTS `GLOBAL_STATUS`;

CREATE TEMPORARY TABLE `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `GLOBAL_VARIABLES`
--
DROP TABLE IF EXISTS `GLOBAL_VARIABLES`;

CREATE TEMPORARY TABLE `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INDEX_STATISTICS`
--
DROP TABLE IF EXISTS `INDEX_STATISTICS`;

CREATE TEMPORARY TABLE `INDEX_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL,
  `TABLE_NAME` varchar(192) NOT NULL,
  `INDEX_NAME` varchar(192) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_BUFFER_PAGE`
--
DROP TABLE IF EXISTS `INNODB_BUFFER_PAGE`;

CREATE TEMPORARY TABLE `INNODB_BUFFER_PAGE` (
  `POOL_ID` int(11) UNSIGNED NOT NULL,
  `BLOCK_ID` bigint(21) UNSIGNED NOT NULL,
  `SPACE` int(11) UNSIGNED NOT NULL,
  `PAGE_NUMBER` int(11) UNSIGNED NOT NULL,
  `PAGE_TYPE` varchar(64),
  `FLUSH_TYPE` int(11) UNSIGNED NOT NULL,
  `FIX_COUNT` int(11) UNSIGNED NOT NULL,
  `IS_HASHED` int(1) NOT NULL,
  `NEWEST_MODIFICATION` bigint(21) UNSIGNED NOT NULL,
  `OLDEST_MODIFICATION` bigint(21) UNSIGNED NOT NULL,
  `ACCESS_TIME` bigint(21) UNSIGNED NOT NULL,
  `TABLE_NAME` varchar(1024),
  `INDEX_NAME` varchar(64),
  `NUMBER_RECORDS` bigint(21) UNSIGNED NOT NULL,
  `DATA_SIZE` bigint(21) UNSIGNED NOT NULL,
  `COMPRESSED_SIZE` bigint(21) UNSIGNED NOT NULL,
  `PAGE_STATE` enum('NOT_USED','MEMORY','REMOVE_HASH','FILE_PAGE') NOT NULL,
  `IO_FIX` enum('IO_NONE','IO_READ','IO_WRITE','IO_PIN') NOT NULL,
  `IS_OLD` int(1) NOT NULL,
  `FREE_PAGE_CLOCK` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_BUFFER_PAGE_LRU`
--
DROP TABLE IF EXISTS `INNODB_BUFFER_PAGE_LRU`;

CREATE TEMPORARY TABLE `INNODB_BUFFER_PAGE_LRU` (
  `POOL_ID` int(11) UNSIGNED NOT NULL,
  `LRU_POSITION` bigint(21) UNSIGNED NOT NULL,
  `SPACE` int(11) UNSIGNED NOT NULL,
  `PAGE_NUMBER` int(11) UNSIGNED NOT NULL,
  `PAGE_TYPE` varchar(64),
  `FLUSH_TYPE` int(11) UNSIGNED NOT NULL,
  `FIX_COUNT` int(11) UNSIGNED NOT NULL,
  `IS_HASHED` int(1) NOT NULL,
  `NEWEST_MODIFICATION` bigint(21) UNSIGNED NOT NULL,
  `OLDEST_MODIFICATION` bigint(21) UNSIGNED NOT NULL,
  `ACCESS_TIME` bigint(21) UNSIGNED NOT NULL,
  `TABLE_NAME` varchar(1024),
  `INDEX_NAME` varchar(64),
  `NUMBER_RECORDS` bigint(21) UNSIGNED NOT NULL,
  `DATA_SIZE` bigint(21) UNSIGNED NOT NULL,
  `COMPRESSED_SIZE` bigint(21) UNSIGNED NOT NULL,
  `COMPRESSED` int(1) NOT NULL,
  `IO_FIX` enum('IO_NONE','IO_READ','IO_WRITE','IO_PIN') NOT NULL,
  `IS_OLD` int(1),
  `FREE_PAGE_CLOCK` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_BUFFER_POOL_STATS`
--
DROP TABLE IF EXISTS `INNODB_BUFFER_POOL_STATS`;

CREATE TEMPORARY TABLE `INNODB_BUFFER_POOL_STATS` (
  `POOL_ID` int(11) UNSIGNED NOT NULL,
  `POOL_SIZE` bigint(21) UNSIGNED NOT NULL,
  `FREE_BUFFERS` bigint(21) UNSIGNED NOT NULL,
  `DATABASE_PAGES` bigint(21) UNSIGNED NOT NULL,
  `OLD_DATABASE_PAGES` bigint(21) UNSIGNED NOT NULL,
  `MODIFIED_DATABASE_PAGES` bigint(21) UNSIGNED NOT NULL,
  `PENDING_DECOMPRESS` bigint(21) UNSIGNED NOT NULL,
  `PENDING_READS` bigint(21) UNSIGNED NOT NULL,
  `PENDING_FLUSH_LRU` bigint(21) UNSIGNED NOT NULL,
  `PENDING_FLUSH_LIST` bigint(21) UNSIGNED NOT NULL,
  `PAGES_MADE_YOUNG` bigint(21) UNSIGNED NOT NULL,
  `PAGES_NOT_MADE_YOUNG` bigint(21) UNSIGNED NOT NULL,
  `PAGES_MADE_YOUNG_RATE` float NOT NULL,
  `PAGES_MADE_NOT_YOUNG_RATE` float NOT NULL,
  `NUMBER_PAGES_READ` bigint(21) UNSIGNED NOT NULL,
  `NUMBER_PAGES_CREATED` bigint(21) UNSIGNED NOT NULL,
  `NUMBER_PAGES_WRITTEN` bigint(21) UNSIGNED NOT NULL,
  `PAGES_READ_RATE` float NOT NULL,
  `PAGES_CREATE_RATE` float NOT NULL,
  `PAGES_WRITTEN_RATE` float NOT NULL,
  `NUMBER_PAGES_GET` bigint(21) UNSIGNED NOT NULL,
  `HIT_RATE` bigint(21) UNSIGNED NOT NULL,
  `YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) UNSIGNED NOT NULL,
  `NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) UNSIGNED NOT NULL,
  `NUMBER_PAGES_READ_AHEAD` bigint(21) UNSIGNED NOT NULL,
  `NUMBER_READ_AHEAD_EVICTED` bigint(21) UNSIGNED NOT NULL,
  `READ_AHEAD_RATE` float NOT NULL,
  `READ_AHEAD_EVICTED_RATE` float NOT NULL,
  `LRU_IO_TOTAL` bigint(21) UNSIGNED NOT NULL,
  `LRU_IO_CURRENT` bigint(21) UNSIGNED NOT NULL,
  `UNCOMPRESS_TOTAL` bigint(21) UNSIGNED NOT NULL,
  `UNCOMPRESS_CURRENT` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_CMP`
--
DROP TABLE IF EXISTS `INNODB_CMP`;

CREATE TEMPORARY TABLE `INNODB_CMP` (
  `page_size` int(5) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_CMPMEM`
--
DROP TABLE IF EXISTS `INNODB_CMPMEM`;

CREATE TEMPORARY TABLE `INNODB_CMPMEM` (
  `page_size` int(5) NOT NULL,
  `buffer_pool_instance` int(11) NOT NULL,
  `pages_used` int(11) NOT NULL,
  `pages_free` int(11) NOT NULL,
  `relocation_ops` bigint(21) NOT NULL,
  `relocation_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_CMPMEM_RESET`
--
DROP TABLE IF EXISTS `INNODB_CMPMEM_RESET`;

CREATE TEMPORARY TABLE `INNODB_CMPMEM_RESET` (
  `page_size` int(5) NOT NULL,
  `buffer_pool_instance` int(11) NOT NULL,
  `pages_used` int(11) NOT NULL,
  `pages_free` int(11) NOT NULL,
  `relocation_ops` bigint(21) NOT NULL,
  `relocation_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_CMP_PER_INDEX`
--
DROP TABLE IF EXISTS `INNODB_CMP_PER_INDEX`;

CREATE TEMPORARY TABLE `INNODB_CMP_PER_INDEX` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_CMP_PER_INDEX_RESET`
--
DROP TABLE IF EXISTS `INNODB_CMP_PER_INDEX_RESET`;

CREATE TEMPORARY TABLE `INNODB_CMP_PER_INDEX_RESET` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_CMP_RESET`
--
DROP TABLE IF EXISTS `INNODB_CMP_RESET`;

CREATE TEMPORARY TABLE `INNODB_CMP_RESET` (
  `page_size` int(5) NOT NULL,
  `compress_ops` int(11) NOT NULL,
  `compress_ops_ok` int(11) NOT NULL,
  `compress_time` int(11) NOT NULL,
  `uncompress_ops` int(11) NOT NULL,
  `uncompress_time` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_FT_BEING_DELETED`
--
DROP TABLE IF EXISTS `INNODB_FT_BEING_DELETED`;

CREATE TEMPORARY TABLE `INNODB_FT_BEING_DELETED` (
  `DOC_ID` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_FT_CONFIG`
--
DROP TABLE IF EXISTS `INNODB_FT_CONFIG`;

CREATE TEMPORARY TABLE `INNODB_FT_CONFIG` (
  `KEY` varchar(193) NOT NULL,
  `VALUE` varchar(193) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_FT_DEFAULT_STOPWORD`
--
DROP TABLE IF EXISTS `INNODB_FT_DEFAULT_STOPWORD`;

CREATE TEMPORARY TABLE `INNODB_FT_DEFAULT_STOPWORD` (
  `value` varchar(18) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_FT_DELETED`
--
DROP TABLE IF EXISTS `INNODB_FT_DELETED`;

CREATE TEMPORARY TABLE `INNODB_FT_DELETED` (
  `DOC_ID` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_FT_INDEX_CACHE`
--
DROP TABLE IF EXISTS `INNODB_FT_INDEX_CACHE`;

CREATE TEMPORARY TABLE `INNODB_FT_INDEX_CACHE` (
  `WORD` varchar(337) NOT NULL,
  `FIRST_DOC_ID` bigint(21) UNSIGNED NOT NULL,
  `LAST_DOC_ID` bigint(21) UNSIGNED NOT NULL,
  `DOC_COUNT` bigint(21) UNSIGNED NOT NULL,
  `DOC_ID` bigint(21) UNSIGNED NOT NULL,
  `POSITION` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_FT_INDEX_TABLE`
--
DROP TABLE IF EXISTS `INNODB_FT_INDEX_TABLE`;

CREATE TEMPORARY TABLE `INNODB_FT_INDEX_TABLE` (
  `WORD` varchar(337) NOT NULL,
  `FIRST_DOC_ID` bigint(21) UNSIGNED NOT NULL,
  `LAST_DOC_ID` bigint(21) UNSIGNED NOT NULL,
  `DOC_COUNT` bigint(21) UNSIGNED NOT NULL,
  `DOC_ID` bigint(21) UNSIGNED NOT NULL,
  `POSITION` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_LOCKS`
--
DROP TABLE IF EXISTS `INNODB_LOCKS`;

CREATE TEMPORARY TABLE `INNODB_LOCKS` (
  `lock_id` varchar(81) NOT NULL,
  `lock_trx_id` bigint(21) UNSIGNED NOT NULL,
  `lock_mode` enum('S','S,GAP','X','X,GAP','IS','IS,GAP','IX','IX,GAP','AUTO_INC') NOT NULL,
  `lock_type` enum('RECORD','TABLE') NOT NULL,
  `lock_table` varchar(1024) NOT NULL,
  `lock_index` varchar(1024),
  `lock_space` int(11) UNSIGNED,
  `lock_page` int(11) UNSIGNED,
  `lock_rec` int(11) UNSIGNED,
  `lock_data` varchar(8192)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_LOCK_WAITS`
--
DROP TABLE IF EXISTS `INNODB_LOCK_WAITS`;

CREATE TEMPORARY TABLE `INNODB_LOCK_WAITS` (
  `requesting_trx_id` bigint(21) UNSIGNED NOT NULL,
  `requested_lock_id` varchar(81) NOT NULL,
  `blocking_trx_id` bigint(21) UNSIGNED NOT NULL,
  `blocking_lock_id` varchar(81) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_METRICS`
--
DROP TABLE IF EXISTS `INNODB_METRICS`;

CREATE TEMPORARY TABLE `INNODB_METRICS` (
  `NAME` varchar(193) NOT NULL,
  `SUBSYSTEM` varchar(193) NOT NULL,
  `COUNT` bigint(21) NOT NULL,
  `MAX_COUNT` bigint(21),
  `MIN_COUNT` bigint(21),
  `AVG_COUNT` float,
  `COUNT_RESET` bigint(21) NOT NULL,
  `MAX_COUNT_RESET` bigint(21),
  `MIN_COUNT_RESET` bigint(21),
  `AVG_COUNT_RESET` float,
  `TIME_ENABLED` datetime,
  `TIME_DISABLED` datetime,
  `TIME_ELAPSED` bigint(21),
  `TIME_RESET` datetime,
  `ENABLED` int(1) NOT NULL,
  `TYPE` enum('value','status_counter','set_owner','set_member','counter') NOT NULL,
  `COMMENT` varchar(193) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_MUTEXES`
--
DROP TABLE IF EXISTS `INNODB_MUTEXES`;

CREATE TEMPORARY TABLE `INNODB_MUTEXES` (
  `NAME` varchar(4000) NOT NULL,
  `CREATE_FILE` varchar(4000) NOT NULL,
  `CREATE_LINE` int(11) UNSIGNED NOT NULL,
  `OS_WAITS` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_COLUMNS`
--
DROP TABLE IF EXISTS `INNODB_SYS_COLUMNS`;

CREATE TEMPORARY TABLE `INNODB_SYS_COLUMNS` (
  `TABLE_ID` bigint(21) UNSIGNED NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `POS` bigint(21) UNSIGNED NOT NULL,
  `MTYPE` int(11) NOT NULL,
  `PRTYPE` int(11) NOT NULL,
  `LEN` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_DATAFILES`
--
DROP TABLE IF EXISTS `INNODB_SYS_DATAFILES`;

CREATE TEMPORARY TABLE `INNODB_SYS_DATAFILES` (
  `SPACE` int(11) UNSIGNED NOT NULL,
  `PATH` varchar(4000) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_FIELDS`
--
DROP TABLE IF EXISTS `INNODB_SYS_FIELDS`;

CREATE TEMPORARY TABLE `INNODB_SYS_FIELDS` (
  `INDEX_ID` bigint(21) UNSIGNED NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `POS` int(11) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_FOREIGN`
--
DROP TABLE IF EXISTS `INNODB_SYS_FOREIGN`;

CREATE TEMPORARY TABLE `INNODB_SYS_FOREIGN` (
  `ID` varchar(193) NOT NULL,
  `FOR_NAME` varchar(193) NOT NULL,
  `REF_NAME` varchar(193) NOT NULL,
  `N_COLS` int(11) UNSIGNED NOT NULL,
  `TYPE` int(11) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_FOREIGN_COLS`
--
DROP TABLE IF EXISTS `INNODB_SYS_FOREIGN_COLS`;

CREATE TEMPORARY TABLE `INNODB_SYS_FOREIGN_COLS` (
  `ID` varchar(193) NOT NULL,
  `FOR_COL_NAME` varchar(64) NOT NULL,
  `REF_COL_NAME` varchar(64) NOT NULL,
  `POS` int(11) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_INDEXES`
--
DROP TABLE IF EXISTS `INNODB_SYS_INDEXES`;

CREATE TEMPORARY TABLE `INNODB_SYS_INDEXES` (
  `INDEX_ID` bigint(21) UNSIGNED NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `TABLE_ID` bigint(21) UNSIGNED NOT NULL,
  `TYPE` int(11) NOT NULL,
  `N_FIELDS` int(11) NOT NULL,
  `PAGE_NO` int(11) NOT NULL,
  `SPACE` int(11) NOT NULL,
  `MERGE_THRESHOLD` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_SEMAPHORE_WAITS`
--
DROP TABLE IF EXISTS `INNODB_SYS_SEMAPHORE_WAITS`;

CREATE TEMPORARY TABLE `INNODB_SYS_SEMAPHORE_WAITS` (
  `THREAD_ID` bigint(21) UNSIGNED NOT NULL,
  `OBJECT_NAME` varchar(4000),
  `FILE` varchar(4000),
  `LINE` int(11) UNSIGNED NOT NULL,
  `WAIT_TIME` bigint(21) UNSIGNED NOT NULL,
  `WAIT_OBJECT` bigint(21) UNSIGNED NOT NULL,
  `WAIT_TYPE` varchar(16),
  `HOLDER_THREAD_ID` bigint(21) UNSIGNED NOT NULL,
  `HOLDER_FILE` varchar(4000),
  `HOLDER_LINE` int(11) UNSIGNED NOT NULL,
  `CREATED_FILE` varchar(4000),
  `CREATED_LINE` int(11) UNSIGNED NOT NULL,
  `WRITER_THREAD` bigint(21) UNSIGNED NOT NULL,
  `RESERVATION_MODE` varchar(16),
  `READERS` int(11) UNSIGNED NOT NULL,
  `WAITERS_FLAG` bigint(21) UNSIGNED NOT NULL,
  `LOCK_WORD` bigint(21) UNSIGNED NOT NULL,
  `LAST_WRITER_FILE` varchar(4000),
  `LAST_WRITER_LINE` int(11) UNSIGNED NOT NULL,
  `OS_WAIT_COUNT` int(11) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_TABLES`
--
DROP TABLE IF EXISTS `INNODB_SYS_TABLES`;

CREATE TEMPORARY TABLE `INNODB_SYS_TABLES` (
  `TABLE_ID` bigint(21) UNSIGNED NOT NULL,
  `NAME` varchar(655) NOT NULL,
  `FLAG` int(11) NOT NULL,
  `N_COLS` int(11) UNSIGNED NOT NULL,
  `SPACE` int(11) UNSIGNED NOT NULL,
  `ROW_FORMAT` enum('Redundant','Compact','Compressed','Dynamic'),
  `ZIP_PAGE_SIZE` int(11) UNSIGNED NOT NULL,
  `SPACE_TYPE` enum('Single','System')
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_TABLESPACES`
--
DROP TABLE IF EXISTS `INNODB_SYS_TABLESPACES`;

CREATE TEMPORARY TABLE `INNODB_SYS_TABLESPACES` (
  `SPACE` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(655) NOT NULL,
  `FLAG` int(11) UNSIGNED NOT NULL,
  `ROW_FORMAT` varchar(22),
  `PAGE_SIZE` int(11) UNSIGNED NOT NULL,
  `ZIP_PAGE_SIZE` int(11) UNSIGNED NOT NULL,
  `FS_BLOCK_SIZE` int(11) UNSIGNED NOT NULL,
  `FILE_SIZE` bigint(21) UNSIGNED NOT NULL,
  `ALLOCATED_SIZE` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_TABLESTATS`
--
DROP TABLE IF EXISTS `INNODB_SYS_TABLESTATS`;

CREATE TEMPORARY TABLE `INNODB_SYS_TABLESTATS` (
  `TABLE_ID` bigint(21) UNSIGNED NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `STATS_INITIALIZED` int(1) NOT NULL,
  `NUM_ROWS` bigint(21) UNSIGNED NOT NULL,
  `CLUST_INDEX_SIZE` bigint(21) UNSIGNED NOT NULL,
  `OTHER_INDEX_SIZE` bigint(21) UNSIGNED NOT NULL,
  `MODIFIED_COUNTER` bigint(21) UNSIGNED NOT NULL,
  `AUTOINC` bigint(21) UNSIGNED NOT NULL,
  `REF_COUNT` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_SYS_VIRTUAL`
--
DROP TABLE IF EXISTS `INNODB_SYS_VIRTUAL`;

CREATE TEMPORARY TABLE `INNODB_SYS_VIRTUAL` (
  `TABLE_ID` bigint(21) UNSIGNED NOT NULL,
  `POS` int(11) UNSIGNED NOT NULL,
  `BASE_POS` int(11) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_TABLESPACES_ENCRYPTION`
--
DROP TABLE IF EXISTS `INNODB_TABLESPACES_ENCRYPTION`;

CREATE TEMPORARY TABLE `INNODB_TABLESPACES_ENCRYPTION` (
  `SPACE` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(655),
  `ENCRYPTION_SCHEME` int(11) UNSIGNED NOT NULL,
  `KEYSERVER_REQUESTS` int(11) UNSIGNED NOT NULL,
  `MIN_KEY_VERSION` int(11) UNSIGNED NOT NULL,
  `CURRENT_KEY_VERSION` int(11) UNSIGNED NOT NULL,
  `KEY_ROTATION_PAGE_NUMBER` bigint(21) UNSIGNED,
  `KEY_ROTATION_MAX_PAGE_NUMBER` bigint(21) UNSIGNED,
  `CURRENT_KEY_ID` int(11) UNSIGNED NOT NULL,
  `ROTATING_OR_FLUSHING` int(1) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `INNODB_TRX`
--
DROP TABLE IF EXISTS `INNODB_TRX`;

CREATE TEMPORARY TABLE `INNODB_TRX` (
  `trx_id` bigint(21) UNSIGNED NOT NULL,
  `trx_state` varchar(13) NOT NULL,
  `trx_started` datetime NOT NULL,
  `trx_requested_lock_id` varchar(81),
  `trx_wait_started` datetime,
  `trx_weight` bigint(21) UNSIGNED NOT NULL,
  `trx_mysql_thread_id` bigint(21) UNSIGNED NOT NULL,
  `trx_query` varchar(1024),
  `trx_operation_state` varchar(64),
  `trx_tables_in_use` bigint(21) UNSIGNED NOT NULL,
  `trx_tables_locked` bigint(21) UNSIGNED NOT NULL,
  `trx_lock_structs` bigint(21) UNSIGNED NOT NULL,
  `trx_lock_memory_bytes` bigint(21) UNSIGNED NOT NULL,
  `trx_rows_locked` bigint(21) UNSIGNED NOT NULL,
  `trx_rows_modified` bigint(21) UNSIGNED NOT NULL,
  `trx_concurrency_tickets` bigint(21) UNSIGNED NOT NULL,
  `trx_isolation_level` enum('READ UNCOMMITTED','READ COMMITTED','REPEATABLE READ','SERIALIZABLE') NOT NULL,
  `trx_unique_checks` int(1) NOT NULL,
  `trx_foreign_key_checks` int(1) NOT NULL,
  `trx_last_foreign_key_error` varchar(256),
  `trx_is_read_only` int(1) NOT NULL,
  `trx_autocommit_non_locking` int(1) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `KEYWORDS`
--
DROP TABLE IF EXISTS `KEYWORDS`;

CREATE TEMPORARY TABLE `KEYWORDS` (
  `WORD` varchar(64)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `KEY_CACHES`
--
DROP TABLE IF EXISTS `KEY_CACHES`;

CREATE TEMPORARY TABLE `KEY_CACHES` (
  `KEY_CACHE_NAME` varchar(192) NOT NULL,
  `SEGMENTS` int(3) UNSIGNED,
  `SEGMENT_NUMBER` int(3) UNSIGNED,
  `FULL_SIZE` bigint(21) UNSIGNED NOT NULL,
  `BLOCK_SIZE` bigint(21) UNSIGNED NOT NULL,
  `USED_BLOCKS` bigint(21) UNSIGNED NOT NULL,
  `UNUSED_BLOCKS` bigint(21) UNSIGNED NOT NULL,
  `DIRTY_BLOCKS` bigint(21) UNSIGNED NOT NULL,
  `READ_REQUESTS` bigint(21) UNSIGNED NOT NULL,
  `READS` bigint(21) UNSIGNED NOT NULL,
  `WRITE_REQUESTS` bigint(21) UNSIGNED NOT NULL,
  `WRITES` bigint(21) UNSIGNED NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `KEY_COLUMN_USAGE`
--
DROP TABLE IF EXISTS `KEY_COLUMN_USAGE`;

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `ORDINAL_POSITION` bigint(10) NOT NULL,
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10),
  `REFERENCED_TABLE_SCHEMA` varchar(64),
  `REFERENCED_TABLE_NAME` varchar(64),
  `REFERENCED_COLUMN_NAME` varchar(64)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `OPTIMIZER_TRACE`
--
DROP TABLE IF EXISTS `OPTIMIZER_TRACE`;

CREATE TEMPORARY TABLE `OPTIMIZER_TRACE` (
  `QUERY` longtext NOT NULL,
  `TRACE` longtext NOT NULL,
  `MISSING_BYTES_BEYOND_MAX_MEM_SIZE` int(20) NOT NULL,
  `INSUFFICIENT_PRIVILEGES` tinyint(1) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `PARAMETERS`
--
DROP TABLE IF EXISTS `PARAMETERS`;

CREATE TEMPORARY TABLE `PARAMETERS` (
  `SPECIFIC_CATALOG` varchar(512) NOT NULL,
  `SPECIFIC_SCHEMA` varchar(64) NOT NULL,
  `SPECIFIC_NAME` varchar(64) NOT NULL,
  `ORDINAL_POSITION` int(21) NOT NULL,
  `PARAMETER_MODE` varchar(5),
  `PARAMETER_NAME` varchar(64),
  `DATA_TYPE` varchar(64) NOT NULL,
  `CHARACTER_MAXIMUM_LENGTH` int(21),
  `CHARACTER_OCTET_LENGTH` int(21),
  `NUMERIC_PRECISION` int(21),
  `NUMERIC_SCALE` int(21),
  `DATETIME_PRECISION` bigint(21) UNSIGNED,
  `CHARACTER_SET_NAME` varchar(64),
  `COLLATION_NAME` varchar(64),
  `DTD_IDENTIFIER` longtext NOT NULL,
  `ROUTINE_TYPE` varchar(9) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `PARTITIONS`
--
DROP TABLE IF EXISTS `PARTITIONS`;

CREATE TEMPORARY TABLE `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `PARTITION_NAME` varchar(64),
  `SUBPARTITION_NAME` varchar(64),
  `PARTITION_ORDINAL_POSITION` bigint(21) UNSIGNED,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) UNSIGNED,
  `PARTITION_METHOD` varchar(18),
  `SUBPARTITION_METHOD` varchar(12),
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) UNSIGNED NOT NULL,
  `AVG_ROW_LENGTH` bigint(21) UNSIGNED NOT NULL,
  `DATA_LENGTH` bigint(21) UNSIGNED NOT NULL,
  `MAX_DATA_LENGTH` bigint(21) UNSIGNED,
  `INDEX_LENGTH` bigint(21) UNSIGNED NOT NULL,
  `DATA_FREE` bigint(21) UNSIGNED NOT NULL,
  `CREATE_TIME` datetime,
  `UPDATE_TIME` datetime,
  `CHECK_TIME` datetime,
  `CHECKSUM` bigint(21) UNSIGNED,
  `PARTITION_COMMENT` varchar(80) NOT NULL,
  `NODEGROUP` varchar(12) NOT NULL,
  `TABLESPACE_NAME` varchar(64)
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `PLUGINS`
--
DROP TABLE IF EXISTS `PLUGINS`;

CREATE TEMPORARY TABLE `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL,
  `PLUGIN_VERSION` varchar(20) NOT NULL,
  `PLUGIN_STATUS` varchar(16) NOT NULL,
  `PLUGIN_TYPE` varchar(80) NOT NULL,
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL,
  `PLUGIN_LIBRARY` varchar(64),
  `PLUGIN_LIBRARY_VERSION` varchar(20),
  `PLUGIN_AUTHOR` varchar(64),
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) NOT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL,
  `PLUGIN_MATURITY` varchar(12) NOT NULL,
  `PLUGIN_AUTH_VERSION` varchar(80)
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `PROCESSLIST`
--
DROP TABLE IF EXISTS `PROCESSLIST`;

CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL,
  `USER` varchar(128) NOT NULL,
  `HOST` varchar(64) NOT NULL,
  `DB` varchar(64),
  `COMMAND` varchar(16) NOT NULL,
  `TIME` int(7) NOT NULL,
  `STATE` varchar(64),
  `INFO` longtext,
  `TIME_MS` decimal(22,3) NOT NULL,
  `STAGE` tinyint(2) NOT NULL,
  `MAX_STAGE` tinyint(2) NOT NULL,
  `PROGRESS` decimal(7,3) NOT NULL,
  `MEMORY_USED` bigint(7) NOT NULL,
  `MAX_MEMORY_USED` bigint(7) NOT NULL,
  `EXAMINED_ROWS` int(7) NOT NULL,
  `QUERY_ID` bigint(4) NOT NULL,
  `INFO_BINARY` blob,
  `TID` bigint(4) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `PROFILING`
--
DROP TABLE IF EXISTS `PROFILING`;

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` int(20) NOT NULL,
  `SEQ` int(20) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `DURATION` decimal(9,6) NOT NULL,
  `CPU_USER` decimal(9,6),
  `CPU_SYSTEM` decimal(9,6),
  `CONTEXT_VOLUNTARY` int(20),
  `CONTEXT_INVOLUNTARY` int(20),
  `BLOCK_OPS_IN` int(20),
  `BLOCK_OPS_OUT` int(20),
  `MESSAGES_SENT` int(20),
  `MESSAGES_RECEIVED` int(20),
  `PAGE_FAULTS_MAJOR` int(20),
  `PAGE_FAULTS_MINOR` int(20),
  `SWAPS` int(20),
  `SOURCE_FUNCTION` varchar(30),
  `SOURCE_FILE` varchar(20),
  `SOURCE_LINE` int(20)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `REFERENTIAL_CONSTRAINTS`
--
DROP TABLE IF EXISTS `REFERENTIAL_CONSTRAINTS`;

CREATE TEMPORARY TABLE `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `UNIQUE_CONSTRAINT_NAME` varchar(64),
  `MATCH_OPTION` varchar(64) NOT NULL,
  `UPDATE_RULE` varchar(64) NOT NULL,
  `DELETE_RULE` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `ROUTINES`
--
DROP TABLE IF EXISTS `ROUTINES`;

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL,
  `ROUTINE_CATALOG` varchar(512) NOT NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL,
  `ROUTINE_NAME` varchar(64) NOT NULL,
  `ROUTINE_TYPE` varchar(13) NOT NULL,
  `DATA_TYPE` varchar(64) NOT NULL,
  `CHARACTER_MAXIMUM_LENGTH` int(21),
  `CHARACTER_OCTET_LENGTH` int(21),
  `NUMERIC_PRECISION` int(21),
  `NUMERIC_SCALE` int(21),
  `DATETIME_PRECISION` bigint(21) UNSIGNED,
  `CHARACTER_SET_NAME` varchar(64),
  `COLLATION_NAME` varchar(64),
  `DTD_IDENTIFIER` longtext,
  `ROUTINE_BODY` varchar(8) NOT NULL,
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64),
  `EXTERNAL_LANGUAGE` varchar(64),
  `PARAMETER_STYLE` varchar(8) NOT NULL,
  `IS_DETERMINISTIC` varchar(3) NOT NULL,
  `SQL_DATA_ACCESS` varchar(64) NOT NULL,
  `SQL_PATH` varchar(64),
  `SECURITY_TYPE` varchar(7) NOT NULL,
  `CREATED` datetime NOT NULL,
  `LAST_ALTERED` datetime NOT NULL,
  `SQL_MODE` varchar(8192) NOT NULL,
  `ROUTINE_COMMENT` longtext NOT NULL,
  `DEFINER` varchar(189) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `DATABASE_COLLATION` varchar(32) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SCHEMATA`
--
DROP TABLE IF EXISTS `SCHEMATA`;

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) NOT NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL,
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL,
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL,
  `SQL_PATH` varchar(512),
  `SCHEMA_COMMENT` varchar(1024) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SCHEMA_PRIVILEGES`
--
DROP TABLE IF EXISTS `SCHEMA_PRIVILEGES`;

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SESSION_STATUS`
--
DROP TABLE IF EXISTS `SESSION_STATUS`;

CREATE TEMPORARY TABLE `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SESSION_VARIABLES`
--
DROP TABLE IF EXISTS `SESSION_VARIABLES`;

CREATE TEMPORARY TABLE `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SPATIAL_REF_SYS`
--
DROP TABLE IF EXISTS `SPATIAL_REF_SYS`;

CREATE TEMPORARY TABLE `SPATIAL_REF_SYS` (
  `SRID` smallint(5) NOT NULL,
  `AUTH_NAME` varchar(512) NOT NULL,
  `AUTH_SRID` int(5) NOT NULL,
  `SRTEXT` varchar(2048) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SQL_FUNCTIONS`
--
DROP TABLE IF EXISTS `SQL_FUNCTIONS`;

CREATE TEMPORARY TABLE `SQL_FUNCTIONS` (
  `FUNCTION` varchar(64)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `STATISTICS`
--
DROP TABLE IF EXISTS `STATISTICS`;

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `NON_UNIQUE` bigint(1) NOT NULL,
  `INDEX_SCHEMA` varchar(64) NOT NULL,
  `INDEX_NAME` varchar(64) NOT NULL,
  `SEQ_IN_INDEX` bigint(2) NOT NULL,
  `COLUMN_NAME` varchar(64) NOT NULL,
  `COLLATION` varchar(1),
  `CARDINALITY` bigint(21),
  `SUB_PART` bigint(3),
  `PACKED` varchar(10),
  `NULLABLE` varchar(3) NOT NULL,
  `INDEX_TYPE` varchar(16) NOT NULL,
  `COMMENT` varchar(16),
  `INDEX_COMMENT` varchar(1024) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `SYSTEM_VARIABLES`
--
DROP TABLE IF EXISTS `SYSTEM_VARIABLES`;

CREATE TEMPORARY TABLE `SYSTEM_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `SESSION_VALUE` varchar(2048),
  `GLOBAL_VALUE` varchar(2048),
  `GLOBAL_VALUE_ORIGIN` varchar(64) NOT NULL,
  `DEFAULT_VALUE` varchar(2048),
  `VARIABLE_SCOPE` varchar(64) NOT NULL,
  `VARIABLE_TYPE` varchar(64) NOT NULL,
  `VARIABLE_COMMENT` varchar(2048) NOT NULL,
  `NUMERIC_MIN_VALUE` varchar(21),
  `NUMERIC_MAX_VALUE` varchar(21),
  `NUMERIC_BLOCK_SIZE` varchar(21),
  `ENUM_VALUE_LIST` longtext,
  `READ_ONLY` varchar(3) NOT NULL,
  `COMMAND_LINE_ARGUMENT` varchar(64),
  `GLOBAL_VALUE_PATH` varchar(2048)
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `TABLES`
--
DROP TABLE IF EXISTS `TABLES`;

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `TABLE_TYPE` varchar(64) NOT NULL,
  `ENGINE` varchar(64),
  `VERSION` bigint(21) UNSIGNED,
  `ROW_FORMAT` varchar(10),
  `TABLE_ROWS` bigint(21) UNSIGNED,
  `AVG_ROW_LENGTH` bigint(21) UNSIGNED,
  `DATA_LENGTH` bigint(21) UNSIGNED,
  `MAX_DATA_LENGTH` bigint(21) UNSIGNED,
  `INDEX_LENGTH` bigint(21) UNSIGNED,
  `DATA_FREE` bigint(21) UNSIGNED,
  `AUTO_INCREMENT` bigint(21) UNSIGNED,
  `CREATE_TIME` datetime,
  `UPDATE_TIME` datetime,
  `CHECK_TIME` datetime,
  `TABLE_COLLATION` varchar(32),
  `CHECKSUM` bigint(21) UNSIGNED,
  `CREATE_OPTIONS` varchar(2048),
  `TABLE_COMMENT` varchar(2048) NOT NULL,
  `MAX_INDEX_LENGTH` bigint(21) UNSIGNED,
  `TEMPORARY` varchar(1)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `TABLESPACES`
--
DROP TABLE IF EXISTS `TABLESPACES`;

CREATE TEMPORARY TABLE `TABLESPACES` (
  `TABLESPACE_NAME` varchar(64) NOT NULL,
  `ENGINE` varchar(64) NOT NULL,
  `TABLESPACE_TYPE` varchar(64),
  `LOGFILE_GROUP_NAME` varchar(64),
  `EXTENT_SIZE` bigint(21) UNSIGNED,
  `AUTOEXTEND_SIZE` bigint(21) UNSIGNED,
  `MAXIMUM_SIZE` bigint(21) UNSIGNED,
  `NODEGROUP_ID` bigint(21) UNSIGNED,
  `TABLESPACE_COMMENT` varchar(2048)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `TABLE_CONSTRAINTS`
--
DROP TABLE IF EXISTS `TABLE_CONSTRAINTS`;

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL,
  `CONSTRAINT_NAME` varchar(64) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `CONSTRAINT_TYPE` varchar(64) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `TABLE_PRIVILEGES`
--
DROP TABLE IF EXISTS `TABLE_PRIVILEGES`;

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `TABLE_STATISTICS`
--
DROP TABLE IF EXISTS `TABLE_STATISTICS`;

CREATE TEMPORARY TABLE `TABLE_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL,
  `TABLE_NAME` varchar(192) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL,
  `ROWS_CHANGED` bigint(21) NOT NULL,
  `ROWS_CHANGED_X_INDEXES` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `THREAD_POOL_GROUPS`
--
DROP TABLE IF EXISTS `THREAD_POOL_GROUPS`;

CREATE TEMPORARY TABLE `THREAD_POOL_GROUPS` (
  `GROUP_ID` int(6) NOT NULL,
  `CONNECTIONS` int(6) NOT NULL,
  `THREADS` int(6) NOT NULL,
  `ACTIVE_THREADS` int(6) NOT NULL,
  `STANDBY_THREADS` int(6) NOT NULL,
  `QUEUE_LENGTH` int(6) NOT NULL,
  `HAS_LISTENER` tinyint(1) NOT NULL,
  `IS_STALLED` tinyint(1) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `THREAD_POOL_QUEUES`
--
DROP TABLE IF EXISTS `THREAD_POOL_QUEUES`;

CREATE TEMPORARY TABLE `THREAD_POOL_QUEUES` (
  `GROUP_ID` int(6) NOT NULL,
  `POSITION` int(6) NOT NULL,
  `PRIORITY` int(1) NOT NULL,
  `CONNECTION_ID` bigint(19) UNSIGNED,
  `QUEUEING_TIME_MICROSECONDS` bigint(19) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `THREAD_POOL_STATS`
--
DROP TABLE IF EXISTS `THREAD_POOL_STATS`;

CREATE TEMPORARY TABLE `THREAD_POOL_STATS` (
  `GROUP_ID` int(6) NOT NULL,
  `THREAD_CREATIONS` bigint(19) NOT NULL,
  `THREAD_CREATIONS_DUE_TO_STALL` bigint(19) NOT NULL,
  `WAKES` bigint(19) NOT NULL,
  `WAKES_DUE_TO_STALL` bigint(19) NOT NULL,
  `THROTTLES` bigint(19) NOT NULL,
  `STALLS` bigint(19) NOT NULL,
  `POLLS_BY_LISTENER` bigint(19) NOT NULL,
  `POLLS_BY_WORKER` bigint(19) NOT NULL,
  `DEQUEUES_BY_LISTENER` bigint(19) NOT NULL,
  `DEQUEUES_BY_WORKER` bigint(19) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `THREAD_POOL_WAITS`
--
DROP TABLE IF EXISTS `THREAD_POOL_WAITS`;

CREATE TEMPORARY TABLE `THREAD_POOL_WAITS` (
  `REASON` varchar(16) NOT NULL,
  `COUNT` bigint(19) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `TRIGGERS`
--
DROP TABLE IF EXISTS `TRIGGERS`;

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) NOT NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL,
  `TRIGGER_NAME` varchar(64) NOT NULL,
  `EVENT_MANIPULATION` varchar(6) NOT NULL,
  `EVENT_OBJECT_CATALOG` varchar(512) NOT NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL,
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL,
  `ACTION_ORDER` bigint(4) NOT NULL,
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL,
  `ACTION_TIMING` varchar(6) NOT NULL,
  `ACTION_REFERENCE_OLD_TABLE` varchar(64),
  `ACTION_REFERENCE_NEW_TABLE` varchar(64),
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL,
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL,
  `CREATED` datetime(2),
  `SQL_MODE` varchar(8192) NOT NULL,
  `DEFINER` varchar(189) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `DATABASE_COLLATION` varchar(32) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `USER_PRIVILEGES`
--
DROP TABLE IF EXISTS `USER_PRIVILEGES`;

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL,
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL,
  `IS_GRANTABLE` varchar(3) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `USER_STATISTICS`
--
DROP TABLE IF EXISTS `USER_STATISTICS`;

CREATE TEMPORARY TABLE `USER_STATISTICS` (
  `USER` varchar(128) NOT NULL,
  `TOTAL_CONNECTIONS` int(11) NOT NULL,
  `CONCURRENT_CONNECTIONS` int(11) NOT NULL,
  `CONNECTED_TIME` int(11) NOT NULL,
  `BUSY_TIME` double NOT NULL,
  `CPU_TIME` double NOT NULL,
  `BYTES_RECEIVED` bigint(21) NOT NULL,
  `BYTES_SENT` bigint(21) NOT NULL,
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL,
  `ROWS_READ` bigint(21) NOT NULL,
  `ROWS_SENT` bigint(21) NOT NULL,
  `ROWS_DELETED` bigint(21) NOT NULL,
  `ROWS_INSERTED` bigint(21) NOT NULL,
  `ROWS_UPDATED` bigint(21) NOT NULL,
  `SELECT_COMMANDS` bigint(21) NOT NULL,
  `UPDATE_COMMANDS` bigint(21) NOT NULL,
  `OTHER_COMMANDS` bigint(21) NOT NULL,
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL,
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL,
  `DENIED_CONNECTIONS` bigint(21) NOT NULL,
  `LOST_CONNECTIONS` bigint(21) NOT NULL,
  `ACCESS_DENIED` bigint(21) NOT NULL,
  `EMPTY_QUERIES` bigint(21) NOT NULL,
  `TOTAL_SSL_CONNECTIONS` bigint(21) UNSIGNED NOT NULL,
  `MAX_STATEMENT_TIME_EXCEEDED` bigint(21) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `user_variables`
--
DROP TABLE IF EXISTS `user_variables`;

CREATE TEMPORARY TABLE `user_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(2048),
  `VARIABLE_TYPE` varchar(64) NOT NULL,
  `CHARACTER_SET_NAME` varchar(32)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para vista `VIEWS`
--
DROP TABLE IF EXISTS `VIEWS`;

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) NOT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL,
  `IS_UPDATABLE` varchar(3) NOT NULL,
  `DEFINER` varchar(189) NOT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL,
  `COLLATION_CONNECTION` varchar(32) NOT NULL,
  `ALGORITHM` varchar(10) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
