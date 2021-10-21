--
-- Table structure for table `aa_ability`
--

CREATE TABLE `aa_ability` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `category` int(10) NOT NULL DEFAULT '-1',
  `classes` int(10) NOT NULL DEFAULT '131070',
  `races` int(10) NOT NULL DEFAULT '65535',
  `drakkin_heritage` int(10) NOT NULL DEFAULT '127',
  `deities` int(10) NOT NULL DEFAULT '131071',
  `status` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '0',
  `charges` int(11) NOT NULL DEFAULT '0',
  `grant_only` tinyint(4) NOT NULL DEFAULT '0',
  `first_rank_id` int(10) NOT NULL DEFAULT '-1',
  `enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `reset_on_death` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aa_ranks`
--

CREATE TABLE `aa_ranks` (
  `id` int(10) UNSIGNED NOT NULL,
  `upper_hotkey_sid` int(10) NOT NULL DEFAULT '-1',
  `lower_hotkey_sid` int(10) NOT NULL DEFAULT '-1',
  `title_sid` int(10) NOT NULL DEFAULT '-1',
  `desc_sid` int(10) NOT NULL DEFAULT '-1',
  `cost` int(10) NOT NULL DEFAULT '1',
  `level_req` int(10) NOT NULL DEFAULT '51',
  `spell` int(10) NOT NULL DEFAULT '-1',
  `spell_type` int(10) NOT NULL DEFAULT '0',
  `recast_time` int(10) NOT NULL DEFAULT '0',
  `expansion` int(10) NOT NULL DEFAULT '0',
  `prev_id` int(10) NOT NULL DEFAULT '-1',
  `next_id` int(10) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aa_rank_effects`
--

CREATE TABLE `aa_rank_effects` (
  `rank_id` int(10) UNSIGNED NOT NULL,
  `slot` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `effect_id` int(10) NOT NULL DEFAULT '0',
  `base1` int(10) NOT NULL DEFAULT '0',
  `base2` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aa_rank_prereqs`
--

CREATE TABLE `aa_rank_prereqs` (
  `rank_id` int(10) UNSIGNED NOT NULL,
  `aa_id` int(10) NOT NULL,
  `points` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `sharedplat` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT '0',
  `ls_id` varchar(64) DEFAULT 'eqemu',
  `lsaccount_id` int(11) UNSIGNED DEFAULT NULL,
  `gmspeed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `revoked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `karma` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `minilogin_ip` varchar(32) NOT NULL DEFAULT '',
  `hideme` tinyint(4) NOT NULL DEFAULT '0',
  `rulesflag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspendeduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_creation` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expansion` tinyint(4) NOT NULL DEFAULT '0',
  `ban_reason` text,
  `suspend_reason` text,
  `checksum_crc1_eqgame` text,
  `checksum_crc2_skillcaps` text,
  `checksum_crc3_basedata` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_flags`
--

CREATE TABLE `account_flags` (
  `p_accid` int(10) UNSIGNED NOT NULL,
  `p_flag` varchar(50) NOT NULL,
  `p_value` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_ip`
--

CREATE TABLE `account_ip` (
  `accid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '1',
  `lastused` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_rewards`
--

CREATE TABLE `account_rewards` (
  `account_id` int(10) UNSIGNED NOT NULL,
  `reward_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adventure_details`
--

CREATE TABLE `adventure_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `adventure_id` smallint(5) UNSIGNED NOT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '-1',
  `count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `assassinate_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `time_created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time_zoned` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time_completed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adventure_members`
--

CREATE TABLE `adventure_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `charid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adventure_stats`
--

CREATE TABLE `adventure_stats` (
  `player_id` int(10) UNSIGNED NOT NULL,
  `guk_wins` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mir_wins` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mmc_wins` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ruj_wins` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tak_wins` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `guk_losses` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mir_losses` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mmc_losses` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ruj_losses` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tak_losses` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adventure_template`
--

CREATE TABLE `adventure_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(64) NOT NULL,
  `zone_version` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_hard` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_raid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `min_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `max_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '65',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `type_data` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `assa_x` float NOT NULL DEFAULT '0',
  `assa_y` float NOT NULL DEFAULT '0',
  `assa_z` float NOT NULL DEFAULT '0',
  `assa_h` float NOT NULL DEFAULT '0',
  `text` varchar(511) DEFAULT NULL,
  `duration` int(10) UNSIGNED NOT NULL DEFAULT '7200',
  `zone_in_time` int(10) UNSIGNED NOT NULL DEFAULT '1800',
  `win_points` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `lose_points` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `theme` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `zone_in_zone_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `zone_in_x` float NOT NULL DEFAULT '0',
  `zone_in_y` float NOT NULL DEFAULT '0',
  `zone_in_object_id` smallint(4) NOT NULL DEFAULT '0',
  `dest_x` float NOT NULL DEFAULT '0',
  `dest_y` float NOT NULL DEFAULT '0',
  `dest_z` float NOT NULL DEFAULT '0',
  `dest_h` float NOT NULL DEFAULT '0',
  `graveyard_zone_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `graveyard_x` float NOT NULL DEFAULT '0',
  `graveyard_y` float NOT NULL DEFAULT '0',
  `graveyard_z` float NOT NULL DEFAULT '0',
  `graveyard_radius` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adventure_template_entry`
--

CREATE TABLE `adventure_template_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adventure_template_entry_flavor`
--

CREATE TABLE `adventure_template_entry_flavor` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alternate_currency`
--

CREATE TABLE `alternate_currency` (
  `id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auras`
--

CREATE TABLE `auras` (
  `type` int(10) NOT NULL,
  `npc_type` int(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `spell_id` int(10) NOT NULL,
  `distance` int(10) NOT NULL DEFAULT '60',
  `aura_type` int(10) NOT NULL DEFAULT '1',
  `spawn_type` int(10) NOT NULL DEFAULT '0',
  `movement` int(10) NOT NULL DEFAULT '0',
  `duration` int(10) NOT NULL DEFAULT '5400',
  `icon` int(10) NOT NULL DEFAULT '-1',
  `cast_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banned_ips`
--

CREATE TABLE `banned_ips` (
  `ip_address` varchar(32) NOT NULL,
  `notes` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_data`
--

CREATE TABLE `base_data` (
  `level` int(10) UNSIGNED NOT NULL,
  `class` int(10) UNSIGNED NOT NULL,
  `hp` double NOT NULL,
  `mana` double NOT NULL,
  `end` double NOT NULL,
  `unk1` double NOT NULL,
  `unk2` double NOT NULL,
  `hp_fac` double NOT NULL,
  `mana_fac` double NOT NULL,
  `end_fac` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blocked_spells`
--

CREATE TABLE `blocked_spells` (
  `id` int(11) NOT NULL,
  `spellid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `zoneid` int(4) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `x_diff` float NOT NULL DEFAULT '0',
  `y_diff` float NOT NULL DEFAULT '0',
  `z_diff` float NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `txtfile` text NOT NULL,
  `language` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` int(11) UNSIGNED NOT NULL,
  `zone` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `ui` varchar(128) NOT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `type` varchar(64) NOT NULL,
  `flag` tinyint(3) UNSIGNED NOT NULL,
  `target` varchar(64) DEFAULT NULL,
  `bug` varchar(1024) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bug_reports`
--

CREATE TABLE `bug_reports` (
  `id` int(11) UNSIGNED NOT NULL,
  `zone` varchar(32) NOT NULL DEFAULT 'Unknown',
  `client_version_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `client_version_name` varchar(24) NOT NULL DEFAULT 'Unknown',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `character_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `character_name` varchar(64) NOT NULL DEFAULT 'Unknown',
  `reporter_spoof` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `category_name` varchar(64) NOT NULL DEFAULT 'Other',
  `reporter_name` varchar(64) NOT NULL DEFAULT 'Unknown',
  `ui_path` varchar(128) NOT NULL DEFAULT 'Unknown',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `heading` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_played` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `target_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `target_name` varchar(64) NOT NULL DEFAULT 'Unknown',
  `optional_info_mask` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `_can_duplicate` tinyint(1) NOT NULL DEFAULT '0',
  `_crash_bug` tinyint(1) NOT NULL DEFAULT '0',
  `_target_info` tinyint(1) NOT NULL DEFAULT '0',
  `_character_flags` tinyint(1) NOT NULL DEFAULT '0',
  `_unknown_value` tinyint(1) NOT NULL DEFAULT '0',
  `bug_report` varchar(1024) NOT NULL DEFAULT '',
  `system_info` varchar(1024) NOT NULL DEFAULT '',
  `report_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bug_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `last_review` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_reviewer` varchar(64) NOT NULL DEFAULT 'None',
  `reviewer_notes` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `charid` int(11) NOT NULL DEFAULT '0',
  `buyslot` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `itemname` varchar(65) NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_activities`
--

CREATE TABLE `character_activities` (
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `activityid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `donecount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_alternate_abilities`
--

CREATE TABLE `character_alternate_abilities` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_value` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `charges` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_alt_currency`
--

CREATE TABLE `character_alt_currency` (
  `char_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_auras`
--

CREATE TABLE `character_auras` (
  `id` int(10) NOT NULL,
  `slot` tinyint(10) NOT NULL,
  `spell_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_bandolier`
--

CREATE TABLE `character_bandolier` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bandolier_id` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `bandolier_slot` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `icon` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bandolier_name` varchar(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_bind`
--

CREATE TABLE `character_bind` (
  `id` int(11) UNSIGNED NOT NULL,
  `slot` int(4) NOT NULL DEFAULT '0',
  `zone_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `instance_id` mediumint(11) UNSIGNED NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_buffs`
--

CREATE TABLE `character_buffs` (
  `character_id` int(10) UNSIGNED NOT NULL,
  `slot_id` tinyint(3) UNSIGNED NOT NULL,
  `spell_id` smallint(10) UNSIGNED NOT NULL,
  `caster_level` tinyint(3) UNSIGNED NOT NULL,
  `caster_name` varchar(64) NOT NULL,
  `ticsremaining` int(11) NOT NULL,
  `counters` int(10) UNSIGNED NOT NULL,
  `numhits` int(10) UNSIGNED NOT NULL,
  `melee_rune` int(10) UNSIGNED NOT NULL,
  `magic_rune` int(10) UNSIGNED NOT NULL,
  `persistent` tinyint(3) UNSIGNED NOT NULL,
  `dot_rune` int(10) NOT NULL DEFAULT '0',
  `caston_x` int(10) NOT NULL DEFAULT '0',
  `caston_y` int(10) NOT NULL DEFAULT '0',
  `caston_z` int(10) NOT NULL DEFAULT '0',
  `ExtraDIChance` int(10) NOT NULL DEFAULT '0',
  `instrument_mod` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_corpses`
--

CREATE TABLE `character_corpses` (
  `id` int(11) UNSIGNED NOT NULL,
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `zone_id` smallint(5) NOT NULL DEFAULT '0',
  `instance_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `time_of_death` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `guild_consent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `is_rezzed` tinyint(3) UNSIGNED DEFAULT '0',
  `is_buried` tinyint(3) NOT NULL DEFAULT '0',
  `was_at_graveyard` tinyint(3) NOT NULL DEFAULT '0',
  `is_locked` tinyint(11) DEFAULT '0',
  `exp` int(11) UNSIGNED DEFAULT '0',
  `size` int(11) UNSIGNED DEFAULT '0',
  `level` int(11) UNSIGNED DEFAULT '0',
  `race` int(11) UNSIGNED DEFAULT '0',
  `gender` int(11) UNSIGNED DEFAULT '0',
  `class` int(11) UNSIGNED DEFAULT '0',
  `deity` int(11) UNSIGNED DEFAULT '0',
  `texture` int(11) UNSIGNED DEFAULT '0',
  `helm_texture` int(11) UNSIGNED DEFAULT '0',
  `copper` int(11) UNSIGNED DEFAULT '0',
  `silver` int(11) UNSIGNED DEFAULT '0',
  `gold` int(11) UNSIGNED DEFAULT '0',
  `platinum` int(11) UNSIGNED DEFAULT '0',
  `hair_color` int(11) UNSIGNED DEFAULT '0',
  `beard_color` int(11) UNSIGNED DEFAULT '0',
  `eye_color_1` int(11) UNSIGNED DEFAULT '0',
  `eye_color_2` int(11) UNSIGNED DEFAULT '0',
  `hair_style` int(11) UNSIGNED DEFAULT '0',
  `face` int(11) UNSIGNED DEFAULT '0',
  `beard` int(11) UNSIGNED DEFAULT '0',
  `drakkin_heritage` int(11) UNSIGNED DEFAULT '0',
  `drakkin_tattoo` int(11) UNSIGNED DEFAULT '0',
  `drakkin_details` int(11) UNSIGNED DEFAULT '0',
  `wc_1` int(11) UNSIGNED DEFAULT '0',
  `wc_2` int(11) UNSIGNED DEFAULT '0',
  `wc_3` int(11) UNSIGNED DEFAULT '0',
  `wc_4` int(11) UNSIGNED DEFAULT '0',
  `wc_5` int(11) UNSIGNED DEFAULT '0',
  `wc_6` int(11) UNSIGNED DEFAULT '0',
  `wc_7` int(11) UNSIGNED DEFAULT '0',
  `wc_8` int(11) UNSIGNED DEFAULT '0',
  `wc_9` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_corpse_items`
--

CREATE TABLE `character_corpse_items` (
  `corpse_id` int(11) UNSIGNED NOT NULL,
  `equip_slot` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED DEFAULT NULL,
  `charges` int(11) UNSIGNED DEFAULT NULL,
  `aug_1` int(11) UNSIGNED DEFAULT '0',
  `aug_2` int(11) UNSIGNED DEFAULT '0',
  `aug_3` int(11) UNSIGNED DEFAULT '0',
  `aug_4` int(11) UNSIGNED DEFAULT '0',
  `aug_5` int(11) UNSIGNED DEFAULT '0',
  `aug_6` int(11) NOT NULL DEFAULT '0',
  `attuned` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_currency`
--

CREATE TABLE `character_currency` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `platinum` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `gold` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `silver` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `copper` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `platinum_bank` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `gold_bank` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `silver_bank` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `copper_bank` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `platinum_cursor` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `gold_cursor` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `silver_cursor` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `copper_cursor` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `radiant_crystals` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `career_radiant_crystals` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ebon_crystals` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `career_ebon_crystals` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_data`
--

CREATE TABLE `character_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `last_name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(32) NOT NULL DEFAULT '',
  `suffix` varchar(32) NOT NULL DEFAULT '',
  `zone_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zone_instance` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `gender` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `race` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `class` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `level` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `deity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `birthday` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_played` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `level2` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `anon` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `gm` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `face` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair_style` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `beard` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `beard_color` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `eye_color_1` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `eye_color_2` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `drakkin_heritage` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `drakkin_tattoo` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `drakkin_details` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ability_time_seconds` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `ability_number` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `ability_time_minutes` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `ability_time_hours` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_points_spent` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_leadership_exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `raid_leadership_exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_leadership_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `raid_leadership_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cur_hp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `mana` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endurance` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `intoxication` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `str` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sta` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cha` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `int` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `agi` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `wis` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zone_change_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `toxicity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hunger_level` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thirst_level` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ability_up` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ldon_points_guk` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ldon_points_mir` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ldon_points_mmc` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ldon_points_ruj` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ldon_points_tak` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ldon_points_available` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tribute_time_remaining` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `career_tribute_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tribute_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tribute_active` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_status` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_kills` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_deaths` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_current_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_career_points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_best_kill_streak` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_worst_death_streak` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_current_kill_streak` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_current_death_streak` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_infamy` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_vitality` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp2` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pvp_type` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_helm` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_auto_consent` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `raid_auto_consent` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_auto_consent` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `leadership_exp_on` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `RestTimer` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `air_remaining` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `autosplit_enabled` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lfp` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lfg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `mailkey` char(16) NOT NULL DEFAULT '',
  `xtargets` tinyint(3) UNSIGNED NOT NULL DEFAULT '5',
  `firstlogon` tinyint(3) NOT NULL DEFAULT '0',
  `e_aa_effects` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `e_percent_to_aa` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `e_expended_aa_spent` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_points_spent_old` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `aa_points_old` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `e_last_invsnapshot` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_disciplines`
--

CREATE TABLE `character_disciplines` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slot_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `disc_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_enabledtasks`
--

CREATE TABLE `character_enabledtasks` (
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_expedition_lockouts`
--

CREATE TABLE `character_expedition_lockouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `character_id` int(10) UNSIGNED NOT NULL,
  `expedition_name` varchar(128) NOT NULL,
  `event_name` varchar(256) NOT NULL,
  `expire_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_expedition_uuid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_exp_modifiers`
--

CREATE TABLE `character_exp_modifiers` (
  `character_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `aa_modifier` float NOT NULL,
  `exp_modifier` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `character_inspect_messages`
--

CREATE TABLE `character_inspect_messages` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inspect_message` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_instance_safereturns`
--

CREATE TABLE `character_instance_safereturns` (
  `id` int(10) UNSIGNED NOT NULL,
  `character_id` int(10) UNSIGNED NOT NULL,
  `instance_zone_id` int(11) NOT NULL DEFAULT '0',
  `instance_id` int(11) NOT NULL DEFAULT '0',
  `safe_zone_id` int(11) NOT NULL DEFAULT '0',
  `safe_x` float NOT NULL DEFAULT '0',
  `safe_y` float NOT NULL DEFAULT '0',
  `safe_z` float NOT NULL DEFAULT '0',
  `safe_heading` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_item_recast`
--

CREATE TABLE `character_item_recast` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `recast_type` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_languages`
--

CREATE TABLE `character_languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `lang_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_leadership_abilities`
--

CREATE TABLE `character_leadership_abilities` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slot` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `rank` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_material`
--

CREATE TABLE `character_material` (
  `id` int(11) UNSIGNED NOT NULL,
  `slot` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `blue` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `green` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `red` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `use_tint` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `color` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_memmed_spells`
--

CREATE TABLE `character_memmed_spells` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slot_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `spell_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_pet_buffs`
--

CREATE TABLE `character_pet_buffs` (
  `char_id` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `spell_id` int(11) NOT NULL,
  `caster_level` tinyint(4) NOT NULL DEFAULT '0',
  `castername` varchar(64) NOT NULL DEFAULT '',
  `ticsremaining` int(11) NOT NULL DEFAULT '0',
  `counters` int(11) NOT NULL DEFAULT '0',
  `numhits` int(11) NOT NULL DEFAULT '0',
  `rune` int(11) NOT NULL DEFAULT '0',
  `instrument_mod` tinyint(3) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_pet_info`
--

CREATE TABLE `character_pet_info` (
  `char_id` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `petname` varchar(64) NOT NULL DEFAULT '',
  `petpower` int(11) NOT NULL DEFAULT '0',
  `spell_id` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `size` float NOT NULL DEFAULT '0',
  `taunting` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_pet_inventory`
--

CREATE TABLE `character_pet_inventory` (
  `char_id` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_potionbelt`
--

CREATE TABLE `character_potionbelt` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `potion_id` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `icon` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_pvp_entries`
--

CREATE TABLE `character_pvp_entries` (
  `id` int(10) NOT NULL,
  `killer_id` int(10) NOT NULL,
  `killer_level` int(10) NOT NULL,
  `victim_id` int(10) NOT NULL,
  `victim_level` int(10) NOT NULL,
  `zone` int(10) NOT NULL,
  `points` int(10) NOT NULL,
  `timestamp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_skills`
--

CREATE TABLE `character_skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `skill_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_spells`
--

CREATE TABLE `character_spells` (
  `id` int(11) UNSIGNED NOT NULL,
  `slot_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `spell_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_tasks`
--

CREATE TABLE `character_tasks` (
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slot` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `acceptedtime` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_task_timers`
--

CREATE TABLE `character_task_timers` (
  `id` int(10) UNSIGNED NOT NULL,
  `character_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `task_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timer_type` int(11) NOT NULL DEFAULT '0',
  `expire_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_tribute`
--

CREATE TABLE `character_tribute` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tier` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `tribute` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `char_create_combinations`
--

CREATE TABLE `char_create_combinations` (
  `allocation_id` int(10) UNSIGNED NOT NULL,
  `race` int(10) UNSIGNED NOT NULL,
  `class` int(10) UNSIGNED NOT NULL,
  `deity` int(10) UNSIGNED NOT NULL,
  `start_zone` int(10) UNSIGNED NOT NULL,
  `expansions_req` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `char_create_point_allocations`
--

CREATE TABLE `char_create_point_allocations` (
  `id` int(10) UNSIGNED NOT NULL,
  `base_str` int(10) UNSIGNED NOT NULL,
  `base_sta` int(10) UNSIGNED NOT NULL,
  `base_dex` int(10) UNSIGNED NOT NULL,
  `base_agi` int(10) UNSIGNED NOT NULL,
  `base_int` int(10) UNSIGNED NOT NULL,
  `base_wis` int(10) UNSIGNED NOT NULL,
  `base_cha` int(10) UNSIGNED NOT NULL,
  `alloc_str` int(10) UNSIGNED NOT NULL,
  `alloc_sta` int(10) UNSIGNED NOT NULL,
  `alloc_dex` int(10) UNSIGNED NOT NULL,
  `alloc_agi` int(10) UNSIGNED NOT NULL,
  `alloc_int` int(10) UNSIGNED NOT NULL,
  `alloc_wis` int(10) UNSIGNED NOT NULL,
  `alloc_cha` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `char_recipe_list`
--

CREATE TABLE `char_recipe_list` (
  `char_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `madecount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chatchannels`
--

CREATE TABLE `chatchannels` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `owner` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `minstatus` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `command_settings`
--

CREATE TABLE `command_settings` (
  `command` varchar(128) NOT NULL DEFAULT '',
  `access` int(11) NOT NULL DEFAULT '0',
  `aliases` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `completed_shared_tasks`
--

CREATE TABLE `completed_shared_tasks` (
  `id` bigint(20) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `accepted_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `completion_time` datetime DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `completed_shared_task_activity_state`
--

CREATE TABLE `completed_shared_task_activity_state` (
  `shared_task_id` bigint(20) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `done_count` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `completed_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `completed_shared_task_members`
--

CREATE TABLE `completed_shared_task_members` (
  `shared_task_id` bigint(20) NOT NULL,
  `character_id` bigint(20) NOT NULL,
  `is_leader` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `completed_tasks`
--

CREATE TABLE `completed_tasks` (
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `completedtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `activityid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content_flags`
--

CREATE TABLE `content_flags` (
  `id` int(11) NOT NULL,
  `flag_name` varchar(75) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `damageshieldtypes`
--

CREATE TABLE `damageshieldtypes` (
  `spellid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_buckets`
--

CREATE TABLE `data_buckets` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `key` varchar(100) DEFAULT NULL,
  `value` text,
  `expires` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `db_str`
--

CREATE TABLE `db_str` (
  `id` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_version`
--

CREATE TABLE `db_version` (
  `version` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discovered_items`
--

CREATE TABLE `discovered_items` (
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_name` varchar(64) NOT NULL DEFAULT '',
  `discovered_date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doors`
--

CREATE TABLE `doors` (
  `id` int(11) NOT NULL,
  `doorid` smallint(4) NOT NULL DEFAULT '0',
  `zone` varchar(32) DEFAULT NULL,
  `version` smallint(5) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `opentype` smallint(4) NOT NULL DEFAULT '0',
  `guild` smallint(4) NOT NULL DEFAULT '0',
  `lockpick` smallint(4) NOT NULL DEFAULT '0',
  `keyitem` int(11) NOT NULL DEFAULT '0',
  `nokeyring` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `triggerdoor` smallint(4) NOT NULL DEFAULT '0',
  `triggertype` smallint(4) NOT NULL DEFAULT '0',
  `disable_timer` tinyint(2) NOT NULL DEFAULT '0',
  `doorisopen` smallint(4) NOT NULL DEFAULT '0',
  `door_param` int(4) NOT NULL DEFAULT '0',
  `dest_zone` varchar(32) DEFAULT 'NONE',
  `dest_instance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dest_x` float DEFAULT '0',
  `dest_y` float DEFAULT '0',
  `dest_z` float DEFAULT '0',
  `dest_heading` float DEFAULT '0',
  `invert_state` int(11) DEFAULT '0',
  `incline` int(11) DEFAULT '0',
  `size` smallint(5) UNSIGNED NOT NULL DEFAULT '100',
  `buffer` float DEFAULT '0',
  `client_version_mask` int(10) UNSIGNED NOT NULL DEFAULT '4294967295',
  `is_ldon_door` smallint(6) NOT NULL DEFAULT '0',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_zones`
--

CREATE TABLE `dynamic_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `instance_id` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `uuid` varchar(36) CHARACTER SET latin1 NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `leader_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `min_players` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_players` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `compass_zone_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `compass_x` float NOT NULL DEFAULT '0',
  `compass_y` float NOT NULL DEFAULT '0',
  `compass_z` float NOT NULL DEFAULT '0',
  `safe_return_zone_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `safe_return_x` float NOT NULL DEFAULT '0',
  `safe_return_y` float NOT NULL DEFAULT '0',
  `safe_return_z` float NOT NULL DEFAULT '0',
  `safe_return_heading` float NOT NULL DEFAULT '0',
  `zone_in_x` float NOT NULL DEFAULT '0',
  `zone_in_y` float NOT NULL DEFAULT '0',
  `zone_in_z` float NOT NULL DEFAULT '0',
  `zone_in_heading` float NOT NULL DEFAULT '0',
  `has_zone_in` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_zone_members`
--

CREATE TABLE `dynamic_zone_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `dynamic_zone_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eqtime`
--

CREATE TABLE `eqtime` (
  `minute` tinyint(4) NOT NULL DEFAULT '0',
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `day` tinyint(4) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `year` int(4) NOT NULL DEFAULT '0',
  `realtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE `eventlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `accountname` varchar(30) NOT NULL DEFAULT '',
  `accountid` int(10) UNSIGNED DEFAULT '0',
  `status` int(5) NOT NULL DEFAULT '0',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `target` varchar(64) DEFAULT 'None',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descriptiontype` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `event_nid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expeditions`
--

CREATE TABLE `expeditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `dynamic_zone_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `add_replay_on_join` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_locked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expedition_lockouts`
--

CREATE TABLE `expedition_lockouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `expedition_id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(256) NOT NULL,
  `expire_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_expedition_uuid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faction_base_data`
--

CREATE TABLE `faction_base_data` (
  `client_faction_id` smallint(6) NOT NULL,
  `min` smallint(6) DEFAULT '-2000',
  `max` smallint(6) DEFAULT '2000',
  `unk_hero1` smallint(6) DEFAULT NULL,
  `unk_hero2` smallint(6) DEFAULT NULL,
  `unk_hero3` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faction_list`
--

CREATE TABLE `faction_list` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `base` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faction_list_mod`
--

CREATE TABLE `faction_list_mod` (
  `id` int(10) UNSIGNED NOT NULL,
  `faction_id` int(10) UNSIGNED NOT NULL,
  `mod` smallint(6) NOT NULL,
  `mod_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faction_values`
--

CREATE TABLE `faction_values` (
  `char_id` int(4) NOT NULL DEFAULT '0',
  `faction_id` int(4) NOT NULL DEFAULT '0',
  `current_value` smallint(6) NOT NULL DEFAULT '0',
  `temp` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fishing`
--

CREATE TABLE `fishing` (
  `id` int(11) NOT NULL,
  `zoneid` int(4) NOT NULL DEFAULT '0',
  `Itemid` int(11) NOT NULL DEFAULT '0',
  `skill_level` smallint(6) NOT NULL DEFAULT '0',
  `chance` smallint(6) NOT NULL DEFAULT '0',
  `npc_id` int(11) NOT NULL DEFAULT '0',
  `npc_chance` int(11) NOT NULL DEFAULT '0',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forage`
--

CREATE TABLE `forage` (
  `id` int(11) NOT NULL,
  `zoneid` int(4) NOT NULL DEFAULT '0',
  `Itemid` int(11) NOT NULL DEFAULT '0',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `chance` smallint(6) NOT NULL DEFAULT '0',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `charid` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 = Friend, 0 = Ignore',
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_loot`
--

CREATE TABLE `global_loot` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `loottable_id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `min_level` int(11) NOT NULL DEFAULT '0',
  `max_level` int(11) NOT NULL DEFAULT '0',
  `rare` tinyint(4) DEFAULT NULL,
  `raid` tinyint(4) DEFAULT NULL,
  `race` mediumtext,
  `class` mediumtext,
  `bodytype` mediumtext,
  `zone` mediumtext,
  `hot_zone` tinyint(4) DEFAULT NULL,
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gm_ips`
--

CREATE TABLE `gm_ips` (
  `name` varchar(64) NOT NULL,
  `account_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `goallists`
--

CREATE TABLE `goallists` (
  `listid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `entry` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graveyard`
--

CREATE TABLE `graveyard` (
  `id` int(11) NOT NULL,
  `zone_id` int(4) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grid`
--

CREATE TABLE `grid` (
  `id` int(10) NOT NULL DEFAULT '0',
  `zoneid` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '0',
  `type2` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grid_entries`
--

CREATE TABLE `grid_entries` (
  `gridid` int(10) NOT NULL DEFAULT '0',
  `zoneid` int(10) NOT NULL DEFAULT '0',
  `number` int(10) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `pause` int(10) NOT NULL DEFAULT '0',
  `centerpoint` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ground_spawns`
--

CREATE TABLE `ground_spawns` (
  `id` int(11) UNSIGNED NOT NULL,
  `zoneid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` smallint(5) NOT NULL DEFAULT '0',
  `max_x` float NOT NULL DEFAULT '2000',
  `max_y` float NOT NULL DEFAULT '2000',
  `max_z` float NOT NULL DEFAULT '10000',
  `min_x` float NOT NULL DEFAULT '-2000',
  `min_y` float NOT NULL DEFAULT '-2000',
  `heading` float NOT NULL DEFAULT '0',
  `name` varchar(16) NOT NULL DEFAULT '',
  `item` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_allowed` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `respawn_timer` int(11) UNSIGNED NOT NULL DEFAULT '300',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_id`
--

CREATE TABLE `group_id` (
  `groupid` int(4) NOT NULL,
  `charid` int(4) NOT NULL,
  `name` varchar(64) NOT NULL,
  `ismerc` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_leaders`
--

CREATE TABLE `group_leaders` (
  `gid` int(4) NOT NULL DEFAULT '0',
  `leadername` varchar(64) NOT NULL DEFAULT '',
  `marknpc` varchar(64) NOT NULL DEFAULT '',
  `leadershipaa` tinyblob,
  `maintank` varchar(64) NOT NULL DEFAULT '',
  `assist` varchar(64) NOT NULL DEFAULT '',
  `puller` varchar(64) NOT NULL DEFAULT '',
  `mentoree` varchar(64) NOT NULL,
  `mentor_percent` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `leader` int(11) NOT NULL DEFAULT '0',
  `minstatus` smallint(5) NOT NULL DEFAULT '0',
  `motd` text NOT NULL,
  `tribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `motd_setter` varchar(64) NOT NULL DEFAULT '',
  `channel` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(512) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_bank`
--

CREATE TABLE `guild_bank` (
  `guildid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `slot` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `itemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `qty` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `donator` varchar(64) DEFAULT NULL,
  `permissions` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `whofor` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_members`
--

CREATE TABLE `guild_members` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `guild_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tribute_enable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `total_tribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_tribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `banker` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `public_note` text NOT NULL,
  `alt` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `guild_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL DEFAULT '',
  `can_hear` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_speak` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_invite` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_remove` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_promote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_demote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_motd` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `can_warpeace` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_relations`
--

CREATE TABLE `guild_relations` (
  `guild1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `guild2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `relation` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hackers`
--

CREATE TABLE `hackers` (
  `id` int(4) NOT NULL,
  `account` text NOT NULL,
  `name` text NOT NULL,
  `hacked` text NOT NULL,
  `zone` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `horses`
--

CREATE TABLE `horses` (
  `filename` varchar(32) NOT NULL DEFAULT '',
  `race` smallint(3) NOT NULL DEFAULT '216',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `texture` tinyint(2) NOT NULL DEFAULT '0',
  `mountspeed` float(4,2) NOT NULL DEFAULT '0.75',
  `notes` varchar(64) DEFAULT 'Notes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instance_list`
--

CREATE TABLE `instance_list` (
  `id` int(11) NOT NULL,
  `zone` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `version` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `is_global` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duration` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `never_expires` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `instance_list_player`
--

CREATE TABLE `instance_list_player` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slotid` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `itemid` int(11) UNSIGNED DEFAULT '0',
  `charges` smallint(3) UNSIGNED DEFAULT '0',
  `color` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `augslot1` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot2` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot3` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot4` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot5` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot6` mediumint(7) NOT NULL DEFAULT '0',
  `instnodrop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `custom_data` text,
  `ornamenticon` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ornamentidfile` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ornament_hero_model` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_snapshots`
--

CREATE TABLE `inventory_snapshots` (
  `time_index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `charid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slotid` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `itemid` int(11) UNSIGNED DEFAULT '0',
  `charges` smallint(3) UNSIGNED DEFAULT '0',
  `color` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `augslot1` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot2` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot3` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot4` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot5` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot6` mediumint(7) NOT NULL DEFAULT '0',
  `instnodrop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `custom_data` text,
  `ornamenticon` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ornamentidfile` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ornament_hero_model` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_versions`
--

CREATE TABLE `inventory_versions` (
  `version` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `step` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bot_step` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_exemptions`
--

CREATE TABLE `ip_exemptions` (
  `exemption_id` int(11) NOT NULL,
  `exemption_ip` varchar(255) DEFAULT NULL,
  `exemption_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL DEFAULT '0',
  `minstatus` smallint(5) NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `aagi` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `accuracy` int(11) NOT NULL DEFAULT '0',
  `acha` int(11) NOT NULL DEFAULT '0',
  `adex` int(11) NOT NULL DEFAULT '0',
  `aint` int(11) NOT NULL DEFAULT '0',
  `artifactflag` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `asta` int(11) NOT NULL DEFAULT '0',
  `astr` int(11) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `augrestrict` int(11) NOT NULL DEFAULT '0',
  `augslot1type` tinyint(3) NOT NULL DEFAULT '0',
  `augslot1visible` tinyint(3) NOT NULL DEFAULT '0',
  `augslot2type` tinyint(3) NOT NULL DEFAULT '0',
  `augslot2visible` tinyint(3) NOT NULL DEFAULT '0',
  `augslot3type` tinyint(3) NOT NULL DEFAULT '0',
  `augslot3visible` tinyint(3) NOT NULL DEFAULT '0',
  `augslot4type` tinyint(3) NOT NULL DEFAULT '0',
  `augslot4visible` tinyint(3) NOT NULL DEFAULT '0',
  `augslot5type` tinyint(3) NOT NULL DEFAULT '0',
  `augslot5visible` tinyint(3) NOT NULL DEFAULT '0',
  `augslot6type` tinyint(3) NOT NULL DEFAULT '0',
  `augslot6visible` tinyint(3) NOT NULL DEFAULT '0',
  `augtype` int(11) NOT NULL DEFAULT '0',
  `avoidance` int(11) NOT NULL DEFAULT '0',
  `awis` int(11) NOT NULL DEFAULT '0',
  `bagsize` int(11) NOT NULL DEFAULT '0',
  `bagslots` int(11) NOT NULL DEFAULT '0',
  `bagtype` int(11) NOT NULL DEFAULT '0',
  `bagwr` int(11) NOT NULL DEFAULT '0',
  `banedmgamt` int(11) NOT NULL DEFAULT '0',
  `banedmgraceamt` int(11) NOT NULL DEFAULT '0',
  `banedmgbody` int(11) NOT NULL DEFAULT '0',
  `banedmgrace` int(11) NOT NULL DEFAULT '0',
  `bardtype` int(11) NOT NULL DEFAULT '0',
  `bardvalue` int(11) NOT NULL DEFAULT '0',
  `book` int(11) NOT NULL DEFAULT '0',
  `casttime` int(11) NOT NULL DEFAULT '0',
  `casttime_` int(11) NOT NULL DEFAULT '0',
  `charmfile` varchar(32) NOT NULL DEFAULT '',
  `charmfileid` varchar(32) NOT NULL DEFAULT '',
  `classes` int(11) NOT NULL DEFAULT '0',
  `color` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `combateffects` varchar(10) NOT NULL DEFAULT '',
  `extradmgskill` int(11) NOT NULL DEFAULT '0',
  `extradmgamt` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `cr` int(11) NOT NULL DEFAULT '0',
  `damage` int(11) NOT NULL DEFAULT '0',
  `damageshield` int(11) NOT NULL DEFAULT '0',
  `deity` int(11) NOT NULL DEFAULT '0',
  `delay` int(11) NOT NULL DEFAULT '0',
  `augdistiller` int(11) NOT NULL DEFAULT '0',
  `dotshielding` int(11) NOT NULL DEFAULT '0',
  `dr` int(11) NOT NULL DEFAULT '0',
  `clicktype` int(11) NOT NULL DEFAULT '0',
  `clicklevel2` int(11) NOT NULL DEFAULT '0',
  `elemdmgtype` int(11) NOT NULL DEFAULT '0',
  `elemdmgamt` int(11) NOT NULL DEFAULT '0',
  `endur` int(11) NOT NULL DEFAULT '0',
  `factionamt1` int(11) NOT NULL DEFAULT '0',
  `factionamt2` int(11) NOT NULL DEFAULT '0',
  `factionamt3` int(11) NOT NULL DEFAULT '0',
  `factionamt4` int(11) NOT NULL DEFAULT '0',
  `factionmod1` int(11) NOT NULL DEFAULT '0',
  `factionmod2` int(11) NOT NULL DEFAULT '0',
  `factionmod3` int(11) NOT NULL DEFAULT '0',
  `factionmod4` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(32) NOT NULL DEFAULT '',
  `focuseffect` int(11) NOT NULL DEFAULT '0',
  `fr` int(11) NOT NULL DEFAULT '0',
  `fvnodrop` int(11) NOT NULL DEFAULT '0',
  `haste` int(11) NOT NULL DEFAULT '0',
  `clicklevel` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `regen` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `idfile` varchar(30) NOT NULL DEFAULT '',
  `itemclass` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `ldonprice` int(11) NOT NULL DEFAULT '0',
  `ldontheme` int(11) NOT NULL DEFAULT '0',
  `ldonsold` int(11) NOT NULL DEFAULT '0',
  `light` int(11) NOT NULL DEFAULT '0',
  `lore` varchar(80) NOT NULL DEFAULT '',
  `loregroup` int(11) NOT NULL DEFAULT '0',
  `magic` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `manaregen` int(11) NOT NULL DEFAULT '0',
  `enduranceregen` int(11) NOT NULL DEFAULT '0',
  `material` int(11) NOT NULL DEFAULT '0',
  `herosforgemodel` int(11) NOT NULL DEFAULT '0',
  `maxcharges` int(11) NOT NULL DEFAULT '0',
  `mr` int(11) NOT NULL DEFAULT '0',
  `nodrop` int(11) NOT NULL DEFAULT '0',
  `norent` int(11) NOT NULL DEFAULT '0',
  `pendingloreflag` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pr` int(11) NOT NULL DEFAULT '0',
  `procrate` int(11) NOT NULL DEFAULT '0',
  `races` int(11) NOT NULL DEFAULT '0',
  `range` int(11) NOT NULL DEFAULT '0',
  `reclevel` int(11) NOT NULL DEFAULT '0',
  `recskill` int(11) NOT NULL DEFAULT '0',
  `reqlevel` int(11) NOT NULL DEFAULT '0',
  `sellrate` float NOT NULL DEFAULT '0',
  `shielding` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `skillmodtype` int(11) NOT NULL DEFAULT '0',
  `skillmodvalue` int(11) NOT NULL DEFAULT '0',
  `slots` int(11) NOT NULL DEFAULT '0',
  `clickeffect` int(11) NOT NULL DEFAULT '0',
  `spellshield` int(11) NOT NULL DEFAULT '0',
  `strikethrough` int(11) NOT NULL DEFAULT '0',
  `stunresist` int(11) NOT NULL DEFAULT '0',
  `summonedflag` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tradeskills` int(11) NOT NULL DEFAULT '0',
  `favor` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `UNK012` int(11) NOT NULL DEFAULT '0',
  `UNK013` int(11) NOT NULL DEFAULT '0',
  `benefitflag` int(11) NOT NULL DEFAULT '0',
  `UNK054` int(11) NOT NULL DEFAULT '0',
  `UNK059` int(11) NOT NULL DEFAULT '0',
  `booktype` int(11) NOT NULL DEFAULT '0',
  `recastdelay` int(11) NOT NULL DEFAULT '0',
  `recasttype` int(11) NOT NULL DEFAULT '0',
  `guildfavor` int(11) NOT NULL DEFAULT '0',
  `UNK123` int(11) NOT NULL DEFAULT '0',
  `UNK124` int(11) NOT NULL DEFAULT '0',
  `attuneable` int(11) NOT NULL DEFAULT '0',
  `nopet` int(11) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `UNK127` int(11) NOT NULL DEFAULT '0',
  `pointtype` int(11) NOT NULL DEFAULT '0',
  `potionbelt` int(11) NOT NULL DEFAULT '0',
  `potionbeltslots` int(11) NOT NULL DEFAULT '0',
  `stacksize` int(11) NOT NULL DEFAULT '0',
  `notransfer` int(11) NOT NULL DEFAULT '0',
  `stackable` int(11) NOT NULL DEFAULT '0',
  `UNK134` varchar(255) NOT NULL DEFAULT '',
  `UNK137` int(11) NOT NULL DEFAULT '0',
  `proceffect` int(11) NOT NULL DEFAULT '0',
  `proctype` int(11) NOT NULL DEFAULT '0',
  `proclevel2` int(11) NOT NULL DEFAULT '0',
  `proclevel` int(11) NOT NULL DEFAULT '0',
  `UNK142` int(11) NOT NULL DEFAULT '0',
  `worneffect` int(11) NOT NULL DEFAULT '0',
  `worntype` int(11) NOT NULL DEFAULT '0',
  `wornlevel2` int(11) NOT NULL DEFAULT '0',
  `wornlevel` int(11) NOT NULL DEFAULT '0',
  `UNK147` int(11) NOT NULL DEFAULT '0',
  `focustype` int(11) NOT NULL DEFAULT '0',
  `focuslevel2` int(11) NOT NULL DEFAULT '0',
  `focuslevel` int(11) NOT NULL DEFAULT '0',
  `UNK152` int(11) NOT NULL DEFAULT '0',
  `scrolleffect` int(11) NOT NULL DEFAULT '0',
  `scrolltype` int(11) NOT NULL DEFAULT '0',
  `scrolllevel2` int(11) NOT NULL DEFAULT '0',
  `scrolllevel` int(11) NOT NULL DEFAULT '0',
  `UNK157` int(11) NOT NULL DEFAULT '0',
  `serialized` datetime DEFAULT NULL,
  `verified` datetime DEFAULT NULL,
  `serialization` text,
  `source` varchar(20) NOT NULL DEFAULT '',
  `UNK033` int(11) NOT NULL DEFAULT '0',
  `lorefile` varchar(32) NOT NULL DEFAULT '',
  `UNK014` int(11) NOT NULL DEFAULT '0',
  `svcorruption` int(11) NOT NULL DEFAULT '0',
  `skillmodmax` int(11) NOT NULL DEFAULT '0',
  `UNK060` int(11) NOT NULL DEFAULT '0',
  `augslot1unk2` int(11) NOT NULL DEFAULT '0',
  `augslot2unk2` int(11) NOT NULL DEFAULT '0',
  `augslot3unk2` int(11) NOT NULL DEFAULT '0',
  `augslot4unk2` int(11) NOT NULL DEFAULT '0',
  `augslot5unk2` int(11) NOT NULL DEFAULT '0',
  `augslot6unk2` int(11) NOT NULL DEFAULT '0',
  `UNK120` int(11) NOT NULL DEFAULT '0',
  `UNK121` int(11) NOT NULL DEFAULT '0',
  `questitemflag` int(11) NOT NULL DEFAULT '0',
  `UNK132` text CHARACTER SET utf8,
  `clickunk5` int(11) NOT NULL DEFAULT '0',
  `clickunk6` varchar(32) NOT NULL DEFAULT '',
  `clickunk7` int(11) NOT NULL DEFAULT '0',
  `procunk1` int(11) NOT NULL DEFAULT '0',
  `procunk2` int(11) NOT NULL DEFAULT '0',
  `procunk3` int(11) NOT NULL DEFAULT '0',
  `procunk4` int(11) NOT NULL DEFAULT '0',
  `procunk6` varchar(32) NOT NULL DEFAULT '',
  `procunk7` int(11) NOT NULL DEFAULT '0',
  `wornunk1` int(11) NOT NULL DEFAULT '0',
  `wornunk2` int(11) NOT NULL DEFAULT '0',
  `wornunk3` int(11) NOT NULL DEFAULT '0',
  `wornunk4` int(11) NOT NULL DEFAULT '0',
  `wornunk5` int(11) NOT NULL DEFAULT '0',
  `wornunk6` varchar(32) NOT NULL DEFAULT '',
  `wornunk7` int(11) NOT NULL DEFAULT '0',
  `focusunk1` int(11) NOT NULL DEFAULT '0',
  `focusunk2` int(11) NOT NULL DEFAULT '0',
  `focusunk3` int(11) NOT NULL DEFAULT '0',
  `focusunk4` int(11) NOT NULL DEFAULT '0',
  `focusunk5` int(11) NOT NULL DEFAULT '0',
  `focusunk6` varchar(32) NOT NULL DEFAULT '',
  `focusunk7` int(11) NOT NULL DEFAULT '0',
  `scrollunk1` int(11) NOT NULL DEFAULT '0',
  `scrollunk2` int(11) NOT NULL DEFAULT '0',
  `scrollunk3` int(11) NOT NULL DEFAULT '0',
  `scrollunk4` int(11) NOT NULL DEFAULT '0',
  `scrollunk5` int(11) NOT NULL DEFAULT '0',
  `scrollunk6` varchar(32) NOT NULL DEFAULT '',
  `scrollunk7` int(11) NOT NULL DEFAULT '0',
  `UNK193` int(11) NOT NULL DEFAULT '0',
  `purity` int(11) NOT NULL DEFAULT '0',
  `evoitem` int(11) NOT NULL DEFAULT '0',
  `evoid` int(11) NOT NULL DEFAULT '0',
  `evolvinglevel` int(11) NOT NULL DEFAULT '0',
  `evomax` int(11) NOT NULL DEFAULT '0',
  `clickname` varchar(64) NOT NULL DEFAULT '',
  `procname` varchar(64) NOT NULL DEFAULT '',
  `wornname` varchar(64) NOT NULL DEFAULT '',
  `focusname` varchar(64) NOT NULL DEFAULT '',
  `scrollname` varchar(64) NOT NULL DEFAULT '',
  `dsmitigation` smallint(6) NOT NULL DEFAULT '0',
  `heroic_str` smallint(6) NOT NULL DEFAULT '0',
  `heroic_int` smallint(6) NOT NULL DEFAULT '0',
  `heroic_wis` smallint(6) NOT NULL DEFAULT '0',
  `heroic_agi` smallint(6) NOT NULL DEFAULT '0',
  `heroic_dex` smallint(6) NOT NULL DEFAULT '0',
  `heroic_sta` smallint(6) NOT NULL DEFAULT '0',
  `heroic_cha` smallint(6) NOT NULL DEFAULT '0',
  `heroic_pr` smallint(6) NOT NULL DEFAULT '0',
  `heroic_dr` smallint(6) NOT NULL DEFAULT '0',
  `heroic_fr` smallint(6) NOT NULL DEFAULT '0',
  `heroic_cr` smallint(6) NOT NULL DEFAULT '0',
  `heroic_mr` smallint(6) NOT NULL DEFAULT '0',
  `heroic_svcorrup` smallint(6) NOT NULL DEFAULT '0',
  `healamt` smallint(6) NOT NULL DEFAULT '0',
  `spelldmg` smallint(6) NOT NULL DEFAULT '0',
  `clairvoyance` smallint(6) NOT NULL DEFAULT '0',
  `backstabdmg` smallint(6) NOT NULL DEFAULT '0',
  `created` varchar(64) NOT NULL DEFAULT '',
  `elitematerial` smallint(6) NOT NULL DEFAULT '0',
  `ldonsellbackrate` smallint(6) NOT NULL DEFAULT '0',
  `scriptfileid` smallint(6) NOT NULL DEFAULT '0',
  `expendablearrow` smallint(6) NOT NULL DEFAULT '0',
  `powersourcecapacity` smallint(6) NOT NULL DEFAULT '0',
  `bardeffect` smallint(6) NOT NULL DEFAULT '0',
  `bardeffecttype` smallint(6) NOT NULL DEFAULT '0',
  `bardlevel2` smallint(6) NOT NULL DEFAULT '0',
  `bardlevel` smallint(6) NOT NULL DEFAULT '0',
  `bardunk1` smallint(6) NOT NULL DEFAULT '0',
  `bardunk2` smallint(6) NOT NULL DEFAULT '0',
  `bardunk3` smallint(6) NOT NULL DEFAULT '0',
  `bardunk4` smallint(6) NOT NULL DEFAULT '0',
  `bardunk5` smallint(6) NOT NULL DEFAULT '0',
  `bardname` varchar(64) NOT NULL DEFAULT '',
  `bardunk7` smallint(6) NOT NULL DEFAULT '0',
  `UNK214` smallint(6) NOT NULL DEFAULT '0',
  `subtype` int(11) NOT NULL DEFAULT '0',
  `UNK220` int(11) NOT NULL DEFAULT '0',
  `UNK221` int(11) NOT NULL DEFAULT '0',
  `heirloom` int(11) NOT NULL DEFAULT '0',
  `UNK223` int(11) NOT NULL DEFAULT '0',
  `UNK224` int(11) NOT NULL DEFAULT '0',
  `UNK225` int(11) NOT NULL DEFAULT '0',
  `UNK226` int(11) NOT NULL DEFAULT '0',
  `UNK227` int(11) NOT NULL DEFAULT '0',
  `UNK228` int(11) NOT NULL DEFAULT '0',
  `UNK229` int(11) NOT NULL DEFAULT '0',
  `UNK230` int(11) NOT NULL DEFAULT '0',
  `UNK231` int(11) NOT NULL DEFAULT '0',
  `UNK232` int(11) NOT NULL DEFAULT '0',
  `UNK233` int(11) NOT NULL DEFAULT '0',
  `UNK234` int(11) NOT NULL DEFAULT '0',
  `placeable` int(11) NOT NULL DEFAULT '0',
  `UNK236` int(11) NOT NULL DEFAULT '0',
  `UNK237` int(11) NOT NULL DEFAULT '0',
  `UNK238` int(11) NOT NULL DEFAULT '0',
  `UNK239` int(11) NOT NULL DEFAULT '0',
  `UNK240` int(11) NOT NULL DEFAULT '0',
  `UNK241` int(11) NOT NULL DEFAULT '0',
  `epicitem` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_tick`
--

CREATE TABLE `item_tick` (
  `it_itemid` int(11) NOT NULL,
  `it_chance` int(11) NOT NULL,
  `it_level` int(11) NOT NULL,
  `it_id` int(11) NOT NULL,
  `it_qglobal` varchar(50) NOT NULL,
  `it_bagslot` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keyring`
--

CREATE TABLE `keyring` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `launcher`
--

CREATE TABLE `launcher` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dynamics` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `launcher_zones`
--

CREATE TABLE `launcher_zones` (
  `launcher` varchar(64) NOT NULL DEFAULT '',
  `zone` varchar(32) NOT NULL DEFAULT '',
  `port` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ldon_trap_entries`
--

CREATE TABLE `ldon_trap_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `trap_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ldon_trap_templates`
--

CREATE TABLE `ldon_trap_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `spell_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `skill` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `level_exp_mods`
--

CREATE TABLE `level_exp_mods` (
  `level` int(11) NOT NULL DEFAULT '0',
  `exp_mod` float DEFAULT NULL,
  `aa_exp_mod` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lfguild`
--

CREATE TABLE `lfguild` (
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `fromlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tolevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `classes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `aacount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timezone` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timeposted` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_accounts`
--

CREATE TABLE `login_accounts` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_password` text NOT NULL,
  `account_email` varchar(100) NOT NULL,
  `source_loginserver` varchar(64) DEFAULT NULL,
  `last_ip_address` varchar(15) NOT NULL,
  `last_login_date` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_api_tokens`
--

CREATE TABLE `login_api_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `can_write` int(11) DEFAULT '0',
  `can_read` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_server_admins`
--

CREATE TABLE `login_server_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `registration_date` datetime NOT NULL,
  `registration_ip_address` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_server_list_types`
--

CREATE TABLE `login_server_list_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_world_servers`
--

CREATE TABLE `login_world_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `long_name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `tag_description` varchar(50) NOT NULL DEFAULT '',
  `login_server_list_type_id` int(11) NOT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `last_ip_address` varchar(15) DEFAULT NULL,
  `login_server_admin_id` int(11) NOT NULL,
  `is_server_trusted` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logsys_categories`
--

CREATE TABLE `logsys_categories` (
  `log_category_id` int(11) NOT NULL,
  `log_category_description` varchar(150) DEFAULT NULL,
  `log_to_console` smallint(11) DEFAULT '0',
  `log_to_file` smallint(11) DEFAULT '0',
  `log_to_gmsay` smallint(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lootdrop`
--

CREATE TABLE `lootdrop` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `lootdrop_entries`
--

CREATE TABLE `lootdrop_entries` (
  `lootdrop_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_charges` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `equip_item` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '1',
  `disabled_chance` float NOT NULL DEFAULT '0',
  `trivial_min_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `trivial_max_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `multiplier` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `npc_min_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `npc_max_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loottable`
--

CREATE TABLE `loottable` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mincash` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `maxcash` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `avgcoin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `done` tinyint(3) NOT NULL DEFAULT '0',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `loottable_entries`
--

CREATE TABLE `loottable_entries` (
  `loottable_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lootdrop_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `multiplier` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `droplimit` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `mindrop` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `probability` float NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `msgid` int(10) UNSIGNED NOT NULL,
  `charid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `from` varchar(100) NOT NULL DEFAULT '',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `to` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchantlist`
--

CREATE TABLE `merchantlist` (
  `merchantid` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL DEFAULT '0',
  `item` int(11) NOT NULL DEFAULT '0',
  `faction_required` smallint(6) NOT NULL DEFAULT '-100',
  `level_required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `alt_currency_cost` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classes_required` int(11) NOT NULL DEFAULT '65535',
  `probability` int(3) NOT NULL DEFAULT '100',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchantlist_temp`
--

CREATE TABLE `merchantlist_temp` (
  `npcid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `slot` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `itemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charges` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `name_filter`
--

CREATE TABLE `name_filter` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_emotes`
--

CREATE TABLE `npc_emotes` (
  `id` int(10) NOT NULL,
  `emoteid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `event_` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_faction`
--

CREATE TABLE `npc_faction` (
  `id` int(11) NOT NULL,
  `name` tinytext,
  `primaryfaction` int(11) NOT NULL DEFAULT '0',
  `ignore_primary_assist` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `npc_faction_entries`
--

CREATE TABLE `npc_faction_entries` (
  `npc_faction_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `faction_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `npc_value` tinyint(3) NOT NULL DEFAULT '0',
  `temp` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_scale_global_base`
--

CREATE TABLE `npc_scale_global_base` (
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `ac` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `slow_mitigation` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `dexterity` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `wisdom` int(11) DEFAULT NULL,
  `charisma` int(11) DEFAULT NULL,
  `magic_resist` int(11) DEFAULT NULL,
  `cold_resist` int(11) DEFAULT NULL,
  `fire_resist` int(11) DEFAULT NULL,
  `poison_resist` int(11) DEFAULT NULL,
  `disease_resist` int(11) DEFAULT NULL,
  `corruption_resist` int(11) DEFAULT NULL,
  `physical_resist` int(11) DEFAULT NULL,
  `min_dmg` int(11) DEFAULT NULL,
  `max_dmg` int(11) DEFAULT NULL,
  `hp_regen_rate` int(11) DEFAULT NULL,
  `attack_delay` int(11) DEFAULT NULL,
  `spell_scale` int(11) DEFAULT '100',
  `heal_scale` int(11) DEFAULT '100',
  `special_abilities` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `npc_spells`
--

CREATE TABLE `npc_spells` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` tinytext,
  `parent_list` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `attack_proc` smallint(5) NOT NULL DEFAULT '-1',
  `proc_chance` tinyint(3) NOT NULL DEFAULT '3',
  `range_proc` smallint(5) NOT NULL DEFAULT '-1',
  `rproc_chance` smallint(5) NOT NULL DEFAULT '0',
  `defensive_proc` smallint(5) NOT NULL DEFAULT '-1',
  `dproc_chance` smallint(5) NOT NULL DEFAULT '0',
  `fail_recast` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `engaged_no_sp_recast_min` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `engaged_no_sp_recast_max` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `engaged_b_self_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `engaged_b_other_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `engaged_d_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pursue_no_sp_recast_min` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `pursue_no_sp_recast_max` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pursue_d_chance` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `idle_no_sp_recast_min` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `idle_no_sp_recast_max` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `idle_b_chance` tinyint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_spells_effects`
--

CREATE TABLE `npc_spells_effects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` tinytext,
  `parent_list` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_spells_effects_entries`
--

CREATE TABLE `npc_spells_effects_entries` (
  `id` int(11) UNSIGNED NOT NULL,
  `npc_spells_effects_id` int(11) NOT NULL DEFAULT '0',
  `spell_effect_id` smallint(5) NOT NULL DEFAULT '0',
  `minlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `maxlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '255',
  `se_base` int(11) NOT NULL DEFAULT '0',
  `se_limit` int(11) NOT NULL DEFAULT '0',
  `se_max` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_spells_entries`
--

CREATE TABLE `npc_spells_entries` (
  `id` int(11) UNSIGNED NOT NULL,
  `npc_spells_id` int(11) NOT NULL DEFAULT '0',
  `spellid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `maxlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '255',
  `manacost` smallint(5) NOT NULL DEFAULT '-1',
  `recast_delay` int(11) NOT NULL DEFAULT '-1',
  `priority` smallint(5) NOT NULL DEFAULT '0',
  `resist_adjust` int(11) DEFAULT NULL,
  `min_hp` smallint(5) DEFAULT '0',
  `max_hp` smallint(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `npc_types`
--

CREATE TABLE `npc_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `race` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `class` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `bodytype` int(11) NOT NULL DEFAULT '1',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `gender` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `texture` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `helmtexture` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `herosforgemodel` int(11) NOT NULL DEFAULT '0',
  `size` float NOT NULL DEFAULT '0',
  `hp_regen_rate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `mana_regen_rate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `loottable_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `merchant_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `alt_currency_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `npc_spells_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `npc_spells_effects_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `npc_faction_id` int(11) NOT NULL DEFAULT '0',
  `adventure_template_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `trap_template` int(10) UNSIGNED DEFAULT '0',
  `mindmg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxdmg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attack_count` smallint(6) NOT NULL DEFAULT '-1',
  `npcspecialattks` varchar(36) NOT NULL DEFAULT '',
  `special_abilities` text,
  `aggroradius` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `assistradius` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `face` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `luclin_hairstyle` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `luclin_haircolor` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `luclin_eyecolor` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `luclin_eyecolor2` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `luclin_beardcolor` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `luclin_beard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `drakkin_heritage` int(10) NOT NULL DEFAULT '0',
  `drakkin_tattoo` int(10) NOT NULL DEFAULT '0',
  `drakkin_details` int(10) NOT NULL DEFAULT '0',
  `armortint_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `armortint_red` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `armortint_green` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `armortint_blue` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `d_melee_texture1` int(11) NOT NULL DEFAULT '0',
  `d_melee_texture2` int(11) NOT NULL DEFAULT '0',
  `ammo_idfile` varchar(30) NOT NULL DEFAULT 'IT10',
  `prim_melee_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '28',
  `sec_melee_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '28',
  `ranged_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '7',
  `runspeed` float NOT NULL DEFAULT '0',
  `MR` smallint(5) NOT NULL DEFAULT '0',
  `CR` smallint(5) NOT NULL DEFAULT '0',
  `DR` smallint(5) NOT NULL DEFAULT '0',
  `FR` smallint(5) NOT NULL DEFAULT '0',
  `PR` smallint(5) NOT NULL DEFAULT '0',
  `Corrup` smallint(5) NOT NULL DEFAULT '0',
  `PhR` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `see_invis` smallint(4) NOT NULL DEFAULT '0',
  `see_invis_undead` smallint(4) NOT NULL DEFAULT '0',
  `qglobal` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `AC` smallint(5) NOT NULL DEFAULT '0',
  `npc_aggro` tinyint(4) NOT NULL DEFAULT '0',
  `spawn_limit` tinyint(4) NOT NULL DEFAULT '0',
  `attack_speed` float NOT NULL DEFAULT '0',
  `attack_delay` tinyint(3) UNSIGNED NOT NULL DEFAULT '30',
  `findable` tinyint(4) NOT NULL DEFAULT '0',
  `STR` mediumint(8) UNSIGNED NOT NULL DEFAULT '75',
  `STA` mediumint(8) UNSIGNED NOT NULL DEFAULT '75',
  `DEX` mediumint(8) UNSIGNED NOT NULL DEFAULT '75',
  `AGI` mediumint(8) UNSIGNED NOT NULL DEFAULT '75',
  `_INT` mediumint(8) UNSIGNED NOT NULL DEFAULT '80',
  `WIS` mediumint(8) UNSIGNED NOT NULL DEFAULT '75',
  `CHA` mediumint(8) UNSIGNED NOT NULL DEFAULT '75',
  `see_hide` tinyint(4) NOT NULL DEFAULT '0',
  `see_improved_hide` tinyint(4) NOT NULL DEFAULT '0',
  `trackable` tinyint(4) NOT NULL DEFAULT '1',
  `isbot` tinyint(4) NOT NULL DEFAULT '0',
  `exclude` tinyint(4) NOT NULL DEFAULT '1',
  `ATK` mediumint(9) NOT NULL DEFAULT '0',
  `Accuracy` mediumint(9) NOT NULL DEFAULT '0',
  `Avoidance` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `slow_mitigation` smallint(4) NOT NULL DEFAULT '0',
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `maxlevel` tinyint(3) NOT NULL DEFAULT '0',
  `scalerate` int(11) NOT NULL DEFAULT '100',
  `private_corpse` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unique_spawn_by_name` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `underwater` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isquest` tinyint(3) NOT NULL DEFAULT '0',
  `emoteid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `spellscale` float NOT NULL DEFAULT '100',
  `healscale` float NOT NULL DEFAULT '100',
  `no_target_hotkey` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `raid_target` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `armtexture` tinyint(2) NOT NULL DEFAULT '0',
  `bracertexture` tinyint(2) NOT NULL DEFAULT '0',
  `handtexture` tinyint(2) NOT NULL DEFAULT '0',
  `legtexture` tinyint(2) NOT NULL DEFAULT '0',
  `feettexture` tinyint(2) NOT NULL DEFAULT '0',
  `light` tinyint(2) NOT NULL DEFAULT '0',
  `walkspeed` tinyint(2) NOT NULL DEFAULT '0',
  `peqid` int(11) NOT NULL DEFAULT '0',
  `unique_` tinyint(2) NOT NULL DEFAULT '0',
  `fixed` tinyint(2) NOT NULL DEFAULT '0',
  `ignore_despawn` tinyint(2) NOT NULL DEFAULT '0',
  `show_name` tinyint(2) NOT NULL DEFAULT '1',
  `untargetable` tinyint(2) NOT NULL DEFAULT '0',
  `charm_ac` smallint(5) DEFAULT '0',
  `charm_min_dmg` int(10) DEFAULT '0',
  `charm_max_dmg` int(10) DEFAULT '0',
  `charm_attack_delay` tinyint(3) DEFAULT '0',
  `charm_accuracy_rating` mediumint(9) DEFAULT '0',
  `charm_avoidance_rating` mediumint(9) DEFAULT '0',
  `charm_atk` mediumint(9) DEFAULT '0',
  `skip_global_loot` tinyint(4) DEFAULT '0',
  `rare_spawn` tinyint(4) DEFAULT '0',
  `stuck_behavior` tinyint(4) NOT NULL DEFAULT '0',
  `model` smallint(5) NOT NULL DEFAULT '0',
  `flymode` tinyint(4) NOT NULL DEFAULT '-1',
  `always_aggro` tinyint(1) NOT NULL DEFAULT '0',
  `exp_mod` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `npc_types_tint`
--

CREATE TABLE `npc_types_tint` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tint_set_name` text NOT NULL,
  `red1h` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn1h` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu1h` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red2c` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn2c` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu2c` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red3a` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn3a` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu3a` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red4b` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn4b` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu4b` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red5g` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn5g` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu5g` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red6l` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn6l` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu6l` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red7f` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn7f` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu7f` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red8x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn8x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu8x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `red9x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `grn9x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `blu9x` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `id` int(11) NOT NULL,
  `zoneid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `version` smallint(5) NOT NULL DEFAULT '0',
  `xpos` float NOT NULL DEFAULT '0',
  `ypos` float NOT NULL DEFAULT '0',
  `zpos` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `charges` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `objectname` varchar(32) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `unknown08` mediumint(5) NOT NULL DEFAULT '0',
  `unknown10` mediumint(5) NOT NULL DEFAULT '0',
  `unknown20` int(11) NOT NULL DEFAULT '0',
  `unknown24` int(11) NOT NULL DEFAULT '0',
  `unknown60` int(11) NOT NULL DEFAULT '0',
  `unknown64` int(11) NOT NULL DEFAULT '0',
  `unknown68` int(11) NOT NULL DEFAULT '0',
  `unknown72` int(11) NOT NULL DEFAULT '0',
  `unknown76` int(11) NOT NULL DEFAULT '0',
  `unknown84` int(11) NOT NULL DEFAULT '0',
  `size` float NOT NULL DEFAULT '100',
  `tilt_x` float NOT NULL DEFAULT '0',
  `tilt_y` float NOT NULL DEFAULT '0',
  `display_name` varchar(64) DEFAULT NULL,
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object_contents`
--

CREATE TABLE `object_contents` (
  `zoneid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bagidx` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `itemid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `charges` smallint(3) NOT NULL DEFAULT '0',
  `droptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `augslot1` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot2` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot3` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot4` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot5` mediumint(7) UNSIGNED DEFAULT '0',
  `augslot6` mediumint(7) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peq_admin`
--

CREATE TABLE `peq_admin` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `administrator` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perl_event_export_settings`
--

CREATE TABLE `perl_event_export_settings` (
  `event_id` int(11) NOT NULL,
  `event_description` varchar(150) DEFAULT NULL,
  `export_qglobals` smallint(11) DEFAULT '0',
  `export_mob` smallint(11) DEFAULT '0',
  `export_zone` smallint(11) DEFAULT '0',
  `export_item` smallint(11) DEFAULT '0',
  `export_event` smallint(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petitions`
--

CREATE TABLE `petitions` (
  `dib` int(10) UNSIGNED NOT NULL,
  `petid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charname` varchar(32) NOT NULL DEFAULT '',
  `accountname` varchar(32) NOT NULL DEFAULT '',
  `lastgm` varchar(32) NOT NULL DEFAULT '',
  `petitiontext` text NOT NULL,
  `gmtext` text,
  `zone` varchar(32) NOT NULL DEFAULT '',
  `urgency` int(11) NOT NULL DEFAULT '0',
  `charclass` int(11) NOT NULL DEFAULT '0',
  `charrace` int(11) NOT NULL DEFAULT '0',
  `charlevel` int(11) NOT NULL DEFAULT '0',
  `checkouts` int(11) NOT NULL DEFAULT '0',
  `unavailables` int(11) NOT NULL DEFAULT '0',
  `ischeckedout` tinyint(4) NOT NULL DEFAULT '0',
  `senttime` bigint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `type` varchar(64) NOT NULL DEFAULT '',
  `petpower` int(11) NOT NULL DEFAULT '0',
  `npcID` int(11) NOT NULL DEFAULT '0',
  `temp` tinyint(4) NOT NULL DEFAULT '0',
  `petcontrol` tinyint(4) NOT NULL DEFAULT '0',
  `petnaming` tinyint(4) NOT NULL DEFAULT '0',
  `monsterflag` tinyint(4) NOT NULL DEFAULT '0',
  `equipmentset` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pets_beastlord_data`
--

CREATE TABLE `pets_beastlord_data` (
  `player_race` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pet_race` int(10) UNSIGNED NOT NULL DEFAULT '42',
  `texture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `helm_texture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `size_modifier` float UNSIGNED DEFAULT '1',
  `face` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pets_equipmentset`
--

CREATE TABLE `pets_equipmentset` (
  `set_id` int(11) NOT NULL,
  `setname` varchar(30) NOT NULL DEFAULT '',
  `nested_set` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pets_equipmentset_entries`
--

CREATE TABLE `pets_equipmentset_entries` (
  `set_id` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_titlesets`
--

CREATE TABLE `player_titlesets` (
  `id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `title_set` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profanity_list`
--

CREATE TABLE `profanity_list` (
  `word` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proximities`
--

CREATE TABLE `proximities` (
  `zoneid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `exploreid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minx` float(14,6) NOT NULL DEFAULT '0.000000',
  `maxx` float(14,6) NOT NULL DEFAULT '0.000000',
  `miny` float(14,6) NOT NULL DEFAULT '0.000000',
  `maxy` float(14,6) NOT NULL DEFAULT '0.000000',
  `minz` float(14,6) NOT NULL DEFAULT '0.000000',
  `maxz` float(14,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qs_merchant_transaction_record`
--

CREATE TABLE `qs_merchant_transaction_record` (
  `transaction_id` int(11) NOT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `zone_id` int(11) DEFAULT '0',
  `merchant_id` int(11) DEFAULT '0',
  `merchant_pp` int(11) DEFAULT '0',
  `merchant_gp` int(11) DEFAULT '0',
  `merchant_sp` int(11) DEFAULT '0',
  `merchant_cp` int(11) DEFAULT '0',
  `merchant_items` mediumint(7) DEFAULT '0',
  `char_id` int(11) DEFAULT '0',
  `char_pp` int(11) DEFAULT '0',
  `char_gp` int(11) DEFAULT '0',
  `char_sp` int(11) DEFAULT '0',
  `char_cp` int(11) DEFAULT '0',
  `char_items` mediumint(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_merchant_transaction_record_entries`
--

CREATE TABLE `qs_merchant_transaction_record_entries` (
  `event_id` int(11) DEFAULT '0',
  `char_slot` mediumint(7) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `charges` mediumint(7) DEFAULT '0',
  `aug_1` int(11) DEFAULT '0',
  `aug_2` int(11) DEFAULT '0',
  `aug_3` int(11) DEFAULT '0',
  `aug_4` int(11) DEFAULT '0',
  `aug_5` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_aa_rate_hourly`
--

CREATE TABLE `qs_player_aa_rate_hourly` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `hour_time` int(11) NOT NULL,
  `aa_count` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_delete_record`
--

CREATE TABLE `qs_player_delete_record` (
  `delete_id` int(11) NOT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `char_id` int(11) DEFAULT '0',
  `stack_size` mediumint(7) DEFAULT '0',
  `char_items` mediumint(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_delete_record_entries`
--

CREATE TABLE `qs_player_delete_record_entries` (
  `event_id` int(11) DEFAULT '0',
  `char_slot` mediumint(7) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `charges` mediumint(7) DEFAULT '0',
  `aug_1` int(11) DEFAULT '0',
  `aug_2` int(11) DEFAULT '0',
  `aug_3` int(11) DEFAULT '0',
  `aug_4` int(11) DEFAULT '0',
  `aug_5` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_drop_record`
--

CREATE TABLE `qs_player_drop_record` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `char_id` int(11) NOT NULL,
  `pickup` tinyint(1) NOT NULL,
  `zone_id` int(4) NOT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_drop_record_entries`
--

CREATE TABLE `qs_player_drop_record_entries` (
  `event_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `charges` int(11) NOT NULL,
  `aug_1` int(11) NOT NULL,
  `aug_2` int(11) NOT NULL,
  `aug_3` int(11) NOT NULL,
  `aug_4` int(11) NOT NULL,
  `aug_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_events`
--

CREATE TABLE `qs_player_events` (
  `id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) DEFAULT '0',
  `event` int(11) UNSIGNED DEFAULT '0',
  `event_desc` varchar(255) DEFAULT NULL,
  `time` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_handin_record`
--

CREATE TABLE `qs_player_handin_record` (
  `handin_id` int(11) NOT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `quest_id` int(11) DEFAULT '0',
  `char_id` int(11) DEFAULT '0',
  `char_pp` int(11) DEFAULT '0',
  `char_gp` int(11) DEFAULT '0',
  `char_sp` int(11) DEFAULT '0',
  `char_cp` int(11) DEFAULT '0',
  `char_items` mediumint(7) DEFAULT '0',
  `npc_id` int(11) DEFAULT '0',
  `npc_pp` int(11) DEFAULT '0',
  `npc_gp` int(11) DEFAULT '0',
  `npc_sp` int(11) DEFAULT '0',
  `npc_cp` int(11) DEFAULT '0',
  `npc_items` mediumint(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_handin_record_entries`
--

CREATE TABLE `qs_player_handin_record_entries` (
  `event_id` int(11) DEFAULT '0',
  `action_type` char(6) DEFAULT 'action',
  `char_slot` mediumint(7) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `charges` mediumint(7) DEFAULT '0',
  `aug_1` int(11) DEFAULT '0',
  `aug_2` int(11) DEFAULT '0',
  `aug_3` int(11) DEFAULT '0',
  `aug_4` int(11) DEFAULT '0',
  `aug_5` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_move_record`
--

CREATE TABLE `qs_player_move_record` (
  `move_id` int(11) NOT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `char_id` int(11) DEFAULT '0',
  `from_slot` mediumint(7) DEFAULT '0',
  `to_slot` mediumint(7) DEFAULT '0',
  `stack_size` mediumint(7) DEFAULT '0',
  `char_items` mediumint(7) DEFAULT '0',
  `postaction` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_move_record_entries`
--

CREATE TABLE `qs_player_move_record_entries` (
  `event_id` int(11) DEFAULT '0',
  `from_slot` mediumint(7) DEFAULT '0',
  `to_slot` mediumint(7) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `charges` mediumint(7) DEFAULT '0',
  `aug_1` int(11) DEFAULT '0',
  `aug_2` int(11) DEFAULT '0',
  `aug_3` int(11) DEFAULT '0',
  `aug_4` int(11) DEFAULT '0',
  `aug_5` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_npc_kill_record`
--

CREATE TABLE `qs_player_npc_kill_record` (
  `fight_id` int(11) NOT NULL,
  `npc_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_npc_kill_record_entries`
--

CREATE TABLE `qs_player_npc_kill_record_entries` (
  `event_id` int(11) DEFAULT '0',
  `char_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_speech`
--

CREATE TABLE `qs_player_speech` (
  `id` int(11) NOT NULL,
  `from` varchar(64) NOT NULL,
  `to` varchar(64) NOT NULL,
  `message` varchar(256) NOT NULL,
  `minstatus` smallint(5) NOT NULL,
  `guilddbid` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `timerecorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_trade_record`
--

CREATE TABLE `qs_player_trade_record` (
  `trade_id` int(11) NOT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `char1_id` int(11) DEFAULT '0',
  `char1_pp` int(11) DEFAULT '0',
  `char1_gp` int(11) DEFAULT '0',
  `char1_sp` int(11) DEFAULT '0',
  `char1_cp` int(11) DEFAULT '0',
  `char1_items` mediumint(7) DEFAULT '0',
  `char2_id` int(11) DEFAULT '0',
  `char2_pp` int(11) DEFAULT '0',
  `char2_gp` int(11) DEFAULT '0',
  `char2_sp` int(11) DEFAULT '0',
  `char2_cp` int(11) DEFAULT '0',
  `char2_items` mediumint(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qs_player_trade_record_entries`
--

CREATE TABLE `qs_player_trade_record_entries` (
  `event_id` int(11) DEFAULT '0',
  `from_id` int(11) DEFAULT '0',
  `from_slot` mediumint(7) DEFAULT '0',
  `to_id` int(11) DEFAULT '0',
  `to_slot` mediumint(7) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `charges` mediumint(7) DEFAULT '0',
  `aug_1` int(11) DEFAULT '0',
  `aug_2` int(11) DEFAULT '0',
  `aug_3` int(11) DEFAULT '0',
  `aug_4` int(11) DEFAULT '0',
  `aug_5` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quest_globals`
--

CREATE TABLE `quest_globals` (
  `charid` int(11) NOT NULL DEFAULT '0',
  `npcid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(65) NOT NULL DEFAULT '',
  `value` varchar(128) NOT NULL DEFAULT '?',
  `expdate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raid_details`
--

CREATE TABLE `raid_details` (
  `raidid` int(4) NOT NULL DEFAULT '0',
  `loottype` int(4) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `motd` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raid_leaders`
--

CREATE TABLE `raid_leaders` (
  `gid` int(4) UNSIGNED NOT NULL,
  `rid` int(4) UNSIGNED NOT NULL,
  `marknpc` varchar(64) NOT NULL,
  `maintank` varchar(64) NOT NULL,
  `assist` varchar(64) NOT NULL,
  `puller` varchar(64) NOT NULL,
  `leadershipaa` tinyblob NOT NULL,
  `mentoree` varchar(64) NOT NULL,
  `mentor_percent` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raid_members`
--

CREATE TABLE `raid_members` (
  `raidid` int(4) NOT NULL DEFAULT '0',
  `charid` int(4) NOT NULL DEFAULT '0',
  `groupid` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `_class` tinyint(4) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `isgroupleader` tinyint(1) NOT NULL DEFAULT '0',
  `israidleader` tinyint(1) NOT NULL DEFAULT '0',
  `islooter` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `reported` varchar(64) DEFAULT NULL,
  `reported_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `respawn_times`
--

CREATE TABLE `respawn_times` (
  `id` int(11) NOT NULL DEFAULT '0',
  `start` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `instance_id` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rule_sets`
--

CREATE TABLE `rule_sets` (
  `ruleset_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rule_values`
--

CREATE TABLE `rule_values` (
  `ruleset_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rule_name` varchar(64) NOT NULL DEFAULT '',
  `rule_value` varchar(30) NOT NULL DEFAULT '',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saylink`
--

CREATE TABLE `saylink` (
  `id` int(10) NOT NULL,
  `phrase` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server_first_levels`
--

CREATE TABLE `server_first_levels` (
  `char_name` varchar(64) NOT NULL DEFAULT '',
  `leveled_date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `race` int(11) NOT NULL DEFAULT '0',
  `class` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `account_status` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server_scheduled_events`
--

CREATE TABLE `server_scheduled_events` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `event_data` text,
  `minute_start` int(11) DEFAULT '0',
  `hour_start` int(11) DEFAULT '0',
  `day_start` int(11) DEFAULT '0',
  `month_start` int(11) DEFAULT '0',
  `year_start` int(11) DEFAULT '0',
  `minute_end` int(11) DEFAULT '0',
  `hour_end` int(11) DEFAULT '0',
  `day_end` int(11) DEFAULT '0',
  `month_end` int(11) DEFAULT '0',
  `year_end` int(11) DEFAULT '0',
  `cron_expression` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sharedbank`
--

CREATE TABLE `sharedbank` (
  `acctid` int(11) UNSIGNED DEFAULT '0',
  `slotid` mediumint(7) UNSIGNED DEFAULT '0',
  `itemid` int(11) UNSIGNED DEFAULT '0',
  `charges` smallint(3) UNSIGNED DEFAULT '0',
  `augslot1` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot2` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot3` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot4` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot5` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `augslot6` mediumint(7) NOT NULL DEFAULT '0',
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shared_tasks`
--

CREATE TABLE `shared_tasks` (
  `id` bigint(20) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `accepted_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `completion_time` datetime DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shared_task_activity_state`
--

CREATE TABLE `shared_task_activity_state` (
  `shared_task_id` bigint(20) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `done_count` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `completed_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shared_task_dynamic_zones`
--

CREATE TABLE `shared_task_dynamic_zones` (
  `shared_task_id` bigint(20) NOT NULL,
  `dynamic_zone_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shared_task_members`
--

CREATE TABLE `shared_task_members` (
  `shared_task_id` bigint(20) NOT NULL,
  `character_id` bigint(20) NOT NULL,
  `is_leader` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skill_caps`
--

CREATE TABLE `skill_caps` (
  `skillID` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cap` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `class_` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spawn2`
--

CREATE TABLE `spawn2` (
  `id` int(11) NOT NULL,
  `spawngroupID` int(11) NOT NULL DEFAULT '0',
  `zone` varchar(32) DEFAULT NULL,
  `version` smallint(5) NOT NULL DEFAULT '0',
  `x` float(14,6) NOT NULL DEFAULT '0.000000',
  `y` float(14,6) NOT NULL DEFAULT '0.000000',
  `z` float(14,6) NOT NULL DEFAULT '0.000000',
  `heading` float(14,6) NOT NULL DEFAULT '0.000000',
  `respawntime` int(11) NOT NULL DEFAULT '0',
  `variance` int(11) NOT NULL DEFAULT '0',
  `pathgrid` int(10) NOT NULL DEFAULT '0',
  `path_when_zone_idle` tinyint(1) NOT NULL DEFAULT '0',
  `_condition` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `cond_value` mediumint(9) NOT NULL DEFAULT '1',
  `enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `animation` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spawnentry`
--

CREATE TABLE `spawnentry` (
  `spawngroupID` int(11) NOT NULL DEFAULT '0',
  `npcID` int(11) NOT NULL DEFAULT '0',
  `chance` smallint(4) NOT NULL DEFAULT '0',
  `condition_value_filter` mediumint(9) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spawngroup`
--

CREATE TABLE `spawngroup` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `spawn_limit` tinyint(4) NOT NULL DEFAULT '0',
  `dist` float NOT NULL DEFAULT '0',
  `max_x` float NOT NULL DEFAULT '0',
  `min_x` float NOT NULL DEFAULT '0',
  `max_y` float NOT NULL DEFAULT '0',
  `min_y` float NOT NULL DEFAULT '0',
  `delay` int(11) NOT NULL DEFAULT '45000',
  `mindelay` int(11) NOT NULL DEFAULT '15000',
  `despawn` tinyint(3) NOT NULL DEFAULT '0',
  `despawn_timer` int(11) NOT NULL DEFAULT '100',
  `wp_spawns` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spawn_conditions`
--

CREATE TABLE `spawn_conditions` (
  `zone` varchar(32) NOT NULL DEFAULT '',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `value` mediumint(9) NOT NULL DEFAULT '0',
  `onchange` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spawn_condition_values`
--

CREATE TABLE `spawn_condition_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` tinyint(3) UNSIGNED DEFAULT NULL,
  `zone` varchar(64) NOT NULL,
  `instance_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spawn_events`
--

CREATE TABLE `spawn_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(32) DEFAULT NULL,
  `cond_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `period` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `next_minute` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `next_hour` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `next_day` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `next_month` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `next_year` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `action` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `argument` mediumint(9) NOT NULL DEFAULT '0',
  `strict` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spells_new`
--

CREATE TABLE `spells_new` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `player_1` varchar(64) DEFAULT 'BLUE_TRAIL',
  `teleport_zone` varchar(64) DEFAULT NULL,
  `you_cast` varchar(120) DEFAULT NULL,
  `other_casts` varchar(120) DEFAULT NULL,
  `cast_on_you` varchar(120) DEFAULT NULL,
  `cast_on_other` varchar(120) DEFAULT NULL,
  `spell_fades` varchar(120) DEFAULT NULL,
  `range` int(11) NOT NULL DEFAULT '100',
  `aoerange` int(11) NOT NULL DEFAULT '0',
  `pushback` int(11) NOT NULL DEFAULT '0',
  `pushup` int(11) NOT NULL DEFAULT '0',
  `cast_time` int(11) NOT NULL DEFAULT '0',
  `recovery_time` int(11) NOT NULL DEFAULT '0',
  `recast_time` int(11) NOT NULL DEFAULT '0',
  `buffdurationformula` int(11) NOT NULL DEFAULT '7',
  `buffduration` int(11) NOT NULL DEFAULT '65',
  `AEDuration` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `effect_base_value1` int(11) NOT NULL DEFAULT '100',
  `effect_base_value2` int(11) NOT NULL DEFAULT '0',
  `effect_base_value3` int(11) NOT NULL DEFAULT '0',
  `effect_base_value4` int(11) NOT NULL DEFAULT '0',
  `effect_base_value5` int(11) NOT NULL DEFAULT '0',
  `effect_base_value6` int(11) NOT NULL DEFAULT '0',
  `effect_base_value7` int(11) NOT NULL DEFAULT '0',
  `effect_base_value8` int(11) NOT NULL DEFAULT '0',
  `effect_base_value9` int(11) NOT NULL DEFAULT '0',
  `effect_base_value10` int(11) NOT NULL DEFAULT '0',
  `effect_base_value11` int(11) NOT NULL DEFAULT '0',
  `effect_base_value12` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value1` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value2` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value3` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value4` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value5` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value6` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value7` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value8` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value9` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value10` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value11` int(11) NOT NULL DEFAULT '0',
  `effect_limit_value12` int(11) NOT NULL DEFAULT '0',
  `max1` int(11) NOT NULL DEFAULT '0',
  `max2` int(11) NOT NULL DEFAULT '0',
  `max3` int(11) NOT NULL DEFAULT '0',
  `max4` int(11) NOT NULL DEFAULT '0',
  `max5` int(11) NOT NULL DEFAULT '0',
  `max6` int(11) NOT NULL DEFAULT '0',
  `max7` int(11) NOT NULL DEFAULT '0',
  `max8` int(11) NOT NULL DEFAULT '0',
  `max9` int(11) NOT NULL DEFAULT '0',
  `max10` int(11) NOT NULL DEFAULT '0',
  `max11` int(11) NOT NULL DEFAULT '0',
  `max12` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `memicon` int(11) NOT NULL DEFAULT '0',
  `components1` int(11) NOT NULL DEFAULT '-1',
  `components2` int(11) NOT NULL DEFAULT '-1',
  `components3` int(11) NOT NULL DEFAULT '-1',
  `components4` int(11) NOT NULL DEFAULT '-1',
  `component_counts1` int(11) NOT NULL DEFAULT '1',
  `component_counts2` int(11) NOT NULL DEFAULT '1',
  `component_counts3` int(11) NOT NULL DEFAULT '1',
  `component_counts4` int(11) NOT NULL DEFAULT '1',
  `NoexpendReagent1` int(11) NOT NULL DEFAULT '-1',
  `NoexpendReagent2` int(11) NOT NULL DEFAULT '-1',
  `NoexpendReagent3` int(11) NOT NULL DEFAULT '-1',
  `NoexpendReagent4` int(11) NOT NULL DEFAULT '-1',
  `formula1` int(11) NOT NULL DEFAULT '100',
  `formula2` int(11) NOT NULL DEFAULT '100',
  `formula3` int(11) NOT NULL DEFAULT '100',
  `formula4` int(11) NOT NULL DEFAULT '100',
  `formula5` int(11) NOT NULL DEFAULT '100',
  `formula6` int(11) NOT NULL DEFAULT '100',
  `formula7` int(11) NOT NULL DEFAULT '100',
  `formula8` int(11) NOT NULL DEFAULT '100',
  `formula9` int(11) NOT NULL DEFAULT '100',
  `formula10` int(11) NOT NULL DEFAULT '100',
  `formula11` int(11) NOT NULL DEFAULT '100',
  `formula12` int(11) NOT NULL DEFAULT '100',
  `LightType` int(11) NOT NULL DEFAULT '0',
  `goodEffect` int(11) NOT NULL DEFAULT '0',
  `Activated` int(11) NOT NULL DEFAULT '0',
  `resisttype` int(11) NOT NULL DEFAULT '0',
  `effectid1` int(11) NOT NULL DEFAULT '254',
  `effectid2` int(11) NOT NULL DEFAULT '254',
  `effectid3` int(11) NOT NULL DEFAULT '254',
  `effectid4` int(11) NOT NULL DEFAULT '254',
  `effectid5` int(11) NOT NULL DEFAULT '254',
  `effectid6` int(11) NOT NULL DEFAULT '254',
  `effectid7` int(11) NOT NULL DEFAULT '254',
  `effectid8` int(11) NOT NULL DEFAULT '254',
  `effectid9` int(11) NOT NULL DEFAULT '254',
  `effectid10` int(11) NOT NULL DEFAULT '254',
  `effectid11` int(11) NOT NULL DEFAULT '254',
  `effectid12` int(11) NOT NULL DEFAULT '254',
  `targettype` int(11) NOT NULL DEFAULT '2',
  `basediff` int(11) NOT NULL DEFAULT '0',
  `skill` int(11) NOT NULL DEFAULT '98',
  `zonetype` int(11) NOT NULL DEFAULT '-1',
  `EnvironmentType` int(11) NOT NULL DEFAULT '0',
  `TimeOfDay` int(11) NOT NULL DEFAULT '0',
  `classes1` int(11) NOT NULL DEFAULT '255',
  `classes2` int(11) NOT NULL DEFAULT '255',
  `classes3` int(11) NOT NULL DEFAULT '255',
  `classes4` int(11) NOT NULL DEFAULT '255',
  `classes5` int(11) NOT NULL DEFAULT '255',
  `classes6` int(11) NOT NULL DEFAULT '255',
  `classes7` int(11) NOT NULL DEFAULT '255',
  `classes8` int(11) NOT NULL DEFAULT '255',
  `classes9` int(11) NOT NULL DEFAULT '255',
  `classes10` int(11) NOT NULL DEFAULT '255',
  `classes11` int(11) NOT NULL DEFAULT '255',
  `classes12` int(11) NOT NULL DEFAULT '255',
  `classes13` int(11) NOT NULL DEFAULT '255',
  `classes14` int(11) NOT NULL DEFAULT '255',
  `classes15` int(11) NOT NULL DEFAULT '255',
  `classes16` int(11) NOT NULL DEFAULT '255',
  `CastingAnim` int(11) NOT NULL DEFAULT '44',
  `TargetAnim` int(11) NOT NULL DEFAULT '13',
  `TravelType` int(11) NOT NULL DEFAULT '0',
  `SpellAffectIndex` int(11) NOT NULL DEFAULT '-1',
  `disallow_sit` int(11) NOT NULL DEFAULT '0',
  `deities0` int(11) NOT NULL DEFAULT '0',
  `deities1` int(11) NOT NULL DEFAULT '0',
  `deities2` int(11) NOT NULL DEFAULT '0',
  `deities3` int(11) NOT NULL DEFAULT '0',
  `deities4` int(11) NOT NULL DEFAULT '0',
  `deities5` int(11) NOT NULL DEFAULT '0',
  `deities6` int(11) NOT NULL DEFAULT '0',
  `deities7` int(11) NOT NULL DEFAULT '0',
  `deities8` int(11) NOT NULL DEFAULT '0',
  `deities9` int(11) NOT NULL DEFAULT '0',
  `deities10` int(11) NOT NULL DEFAULT '0',
  `deities11` int(11) NOT NULL DEFAULT '0',
  `deities12` int(12) NOT NULL DEFAULT '0',
  `deities13` int(11) NOT NULL DEFAULT '0',
  `deities14` int(11) NOT NULL DEFAULT '0',
  `deities15` int(11) NOT NULL DEFAULT '0',
  `deities16` int(11) NOT NULL DEFAULT '0',
  `field142` int(11) NOT NULL DEFAULT '100',
  `field143` int(11) NOT NULL DEFAULT '0',
  `new_icon` int(11) NOT NULL DEFAULT '161',
  `spellanim` int(11) NOT NULL DEFAULT '0',
  `uninterruptable` int(11) NOT NULL DEFAULT '0',
  `ResistDiff` int(11) NOT NULL DEFAULT '-150',
  `dot_stacking_exempt` int(11) NOT NULL DEFAULT '0',
  `deleteable` int(11) NOT NULL DEFAULT '0',
  `RecourseLink` int(11) NOT NULL DEFAULT '0',
  `no_partial_resist` int(11) NOT NULL DEFAULT '0',
  `field152` int(11) NOT NULL DEFAULT '0',
  `field153` int(11) NOT NULL DEFAULT '0',
  `short_buff_box` int(11) NOT NULL DEFAULT '-1',
  `descnum` int(11) NOT NULL DEFAULT '0',
  `typedescnum` int(11) DEFAULT NULL,
  `effectdescnum` int(11) DEFAULT NULL,
  `effectdescnum2` int(11) NOT NULL DEFAULT '0',
  `npc_no_los` int(11) NOT NULL DEFAULT '0',
  `field160` int(11) NOT NULL DEFAULT '0',
  `reflectable` int(11) NOT NULL DEFAULT '0',
  `bonushate` int(11) NOT NULL DEFAULT '0',
  `field163` int(11) NOT NULL DEFAULT '100',
  `field164` int(11) NOT NULL DEFAULT '-150',
  `ldon_trap` int(11) NOT NULL DEFAULT '0',
  `EndurCost` int(11) NOT NULL DEFAULT '0',
  `EndurTimerIndex` int(11) NOT NULL DEFAULT '0',
  `IsDiscipline` int(11) NOT NULL DEFAULT '0',
  `field169` int(11) NOT NULL DEFAULT '0',
  `field170` int(11) NOT NULL DEFAULT '0',
  `field171` int(11) NOT NULL DEFAULT '0',
  `field172` int(11) NOT NULL DEFAULT '0',
  `HateAdded` int(11) NOT NULL DEFAULT '0',
  `EndurUpkeep` int(11) NOT NULL DEFAULT '0',
  `numhitstype` int(11) NOT NULL DEFAULT '0',
  `numhits` int(11) NOT NULL DEFAULT '0',
  `pvpresistbase` int(11) NOT NULL DEFAULT '-150',
  `pvpresistcalc` int(11) NOT NULL DEFAULT '100',
  `pvpresistcap` int(11) NOT NULL DEFAULT '-150',
  `spell_category` int(11) NOT NULL DEFAULT '-99',
  `pvp_duration` int(11) NOT NULL DEFAULT '0',
  `pvp_duration_cap` int(11) NOT NULL DEFAULT '0',
  `pcnpc_only_flag` int(11) DEFAULT '0',
  `cast_not_standing` int(11) DEFAULT '0',
  `can_mgb` int(11) NOT NULL DEFAULT '0',
  `nodispell` int(11) NOT NULL DEFAULT '-1',
  `npc_category` int(11) NOT NULL DEFAULT '0',
  `npc_usefulness` int(11) NOT NULL DEFAULT '0',
  `MinResist` int(11) NOT NULL DEFAULT '0',
  `MaxResist` int(11) NOT NULL DEFAULT '0',
  `viral_targets` int(11) NOT NULL DEFAULT '0',
  `viral_timer` int(11) NOT NULL DEFAULT '0',
  `nimbuseffect` int(11) DEFAULT '0',
  `ConeStartAngle` int(11) NOT NULL DEFAULT '0',
  `ConeStopAngle` int(11) NOT NULL DEFAULT '0',
  `sneaking` int(11) NOT NULL DEFAULT '0',
  `not_extendable` int(11) NOT NULL DEFAULT '0',
  `field198` int(11) NOT NULL DEFAULT '0',
  `field199` int(11) NOT NULL DEFAULT '1',
  `suspendable` int(11) DEFAULT '0',
  `viral_range` int(11) NOT NULL DEFAULT '0',
  `songcap` int(11) DEFAULT '0',
  `field203` int(11) DEFAULT '0',
  `field204` int(11) DEFAULT '0',
  `no_block` int(11) NOT NULL DEFAULT '0',
  `field206` int(11) DEFAULT '-1',
  `spellgroup` int(11) DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `field209` int(11) DEFAULT '0',
  `field210` int(11) DEFAULT '1',
  `CastRestriction` int(11) NOT NULL DEFAULT '0',
  `allowrest` int(11) DEFAULT '0',
  `InCombat` int(11) NOT NULL DEFAULT '0',
  `OutofCombat` int(11) NOT NULL DEFAULT '0',
  `field215` int(11) DEFAULT '0',
  `field216` int(11) DEFAULT '0',
  `field217` int(11) DEFAULT '0',
  `aemaxtargets` int(11) NOT NULL DEFAULT '0',
  `maxtargets` int(11) DEFAULT '0',
  `field220` int(11) DEFAULT '0',
  `field221` int(11) DEFAULT '0',
  `field222` int(11) DEFAULT '0',
  `field223` int(11) DEFAULT '0',
  `persistdeath` int(11) DEFAULT '0',
  `field225` int(11) NOT NULL DEFAULT '0',
  `field226` int(11) NOT NULL DEFAULT '0',
  `min_dist` float NOT NULL DEFAULT '0',
  `min_dist_mod` float NOT NULL DEFAULT '0',
  `max_dist` float NOT NULL DEFAULT '0',
  `max_dist_mod` float NOT NULL DEFAULT '0',
  `min_range` int(11) NOT NULL DEFAULT '0',
  `field232` int(11) NOT NULL DEFAULT '0',
  `field233` int(11) NOT NULL DEFAULT '0',
  `field234` int(11) NOT NULL DEFAULT '0',
  `field235` int(11) NOT NULL DEFAULT '0',
  `field236` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spell_buckets`
--

CREATE TABLE `spell_buckets` (
  `spellid` bigint(11) UNSIGNED NOT NULL,
  `key` varchar(100) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spell_globals`
--

CREATE TABLE `spell_globals` (
  `spellid` int(11) NOT NULL,
  `spell_name` varchar(64) NOT NULL DEFAULT '',
  `qglobal` varchar(65) NOT NULL DEFAULT '',
  `value` varchar(65) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `starting_items`
--

CREATE TABLE `starting_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `race` int(11) NOT NULL DEFAULT '0',
  `class` int(11) NOT NULL DEFAULT '0',
  `deityid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `item_charges` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `gm` tinyint(1) NOT NULL DEFAULT '0',
  `slot` mediumint(9) NOT NULL DEFAULT '-1',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `start_zones`
--

CREATE TABLE `start_zones` (
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `zone_id` int(4) NOT NULL DEFAULT '0',
  `bind_id` int(4) NOT NULL DEFAULT '0',
  `player_choice` int(2) NOT NULL DEFAULT '0',
  `player_class` int(2) NOT NULL DEFAULT '0',
  `player_deity` int(4) NOT NULL DEFAULT '0',
  `player_race` int(4) NOT NULL DEFAULT '0',
  `start_zone` int(4) NOT NULL DEFAULT '0',
  `bind_x` float NOT NULL DEFAULT '0',
  `bind_y` float NOT NULL DEFAULT '0',
  `bind_z` float NOT NULL DEFAULT '0',
  `select_rank` tinyint(3) UNSIGNED NOT NULL DEFAULT '50',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `duration` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duration_code` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `reward` varchar(64) NOT NULL DEFAULT '',
  `rewardid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cashreward` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `xpreward` int(10) NOT NULL DEFAULT '0',
  `rewardmethod` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `reward_radiant_crystals` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reward_ebon_crystals` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `maxlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `level_spread` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `min_players` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_players` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `repeatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `faction_reward` int(10) NOT NULL DEFAULT '0',
  `completion_emote` varchar(512) NOT NULL DEFAULT '',
  `replay_timer_seconds` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `request_timer_seconds` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasksets`
--

CREATE TABLE `tasksets` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task_activities`
--

CREATE TABLE `task_activities` (
  `taskid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `activityid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `step` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `activitytype` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `target_name` varchar(64) NOT NULL DEFAULT '',
  `item_list` varchar(128) NOT NULL DEFAULT '',
  `skill_list` varchar(64) NOT NULL DEFAULT '-1',
  `spell_list` varchar(64) NOT NULL DEFAULT '0',
  `description_override` varchar(128) NOT NULL DEFAULT '',
  `goalid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `goalmethod` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `goalcount` int(11) DEFAULT '1',
  `delivertonpc` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zones` varchar(64) NOT NULL DEFAULT '',
  `optional` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timers`
--

CREATE TABLE `timers` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `type` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `duration` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enable` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` tinyint(3) NOT NULL DEFAULT '-1',
  `min_skill_value` mediumint(8) NOT NULL DEFAULT '-1',
  `max_skill_value` mediumint(8) NOT NULL DEFAULT '-1',
  `min_aa_points` mediumint(8) NOT NULL DEFAULT '-1',
  `max_aa_points` mediumint(8) NOT NULL DEFAULT '-1',
  `class` tinyint(4) NOT NULL DEFAULT '-1',
  `gender` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '-1 = either, 0 = male, 1 = female',
  `char_id` int(11) NOT NULL DEFAULT '-1',
  `status` int(11) NOT NULL DEFAULT '-1',
  `item_id` int(11) NOT NULL DEFAULT '-1',
  `prefix` varchar(32) NOT NULL DEFAULT '',
  `suffix` varchar(32) NOT NULL DEFAULT '',
  `title_set` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tool_gearup_armor_sets`
--

CREATE TABLE `tool_gearup_armor_sets` (
  `class` tinyint(4) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `slot` tinyint(4) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `score` mediumint(9) DEFAULT NULL,
  `expansion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trader`
--

CREATE TABLE `trader` (
  `char_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `serialnumber` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charges` int(11) NOT NULL DEFAULT '0',
  `item_cost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `slot_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trader_audit`
--

CREATE TABLE `trader_audit` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seller` varchar(64) NOT NULL DEFAULT '',
  `buyer` varchar(64) NOT NULL DEFAULT '',
  `itemname` varchar(64) NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `totalcost` int(11) NOT NULL DEFAULT '0',
  `trantype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tradeskill_recipe`
--

CREATE TABLE `tradeskill_recipe` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `tradeskill` smallint(6) NOT NULL DEFAULT '0',
  `skillneeded` smallint(6) NOT NULL DEFAULT '0',
  `trivial` smallint(6) NOT NULL DEFAULT '0',
  `nofail` tinyint(1) NOT NULL DEFAULT '0',
  `replace_container` tinyint(1) NOT NULL DEFAULT '0',
  `notes` tinytext,
  `must_learn` tinyint(4) NOT NULL DEFAULT '0',
  `quest` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tradeskill_recipe_entries`
--

CREATE TABLE `tradeskill_recipe_entries` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `successcount` tinyint(2) NOT NULL DEFAULT '0',
  `failcount` tinyint(2) NOT NULL DEFAULT '0',
  `componentcount` tinyint(2) NOT NULL DEFAULT '1',
  `salvagecount` tinyint(2) NOT NULL DEFAULT '0',
  `iscontainer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `traps`
--

CREATE TABLE `traps` (
  `id` int(11) NOT NULL,
  `zone` varchar(16) NOT NULL DEFAULT '',
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `z` int(11) NOT NULL DEFAULT '0',
  `chance` tinyint(4) NOT NULL DEFAULT '0',
  `maxzdiff` float NOT NULL DEFAULT '0',
  `radius` float NOT NULL DEFAULT '0',
  `effect` int(11) NOT NULL DEFAULT '0',
  `effectvalue` int(11) NOT NULL DEFAULT '0',
  `effectvalue2` int(11) NOT NULL DEFAULT '0',
  `message` varchar(200) NOT NULL DEFAULT '',
  `skill` int(11) NOT NULL DEFAULT '0',
  `level` mediumint(4) UNSIGNED NOT NULL DEFAULT '1',
  `respawn_time` int(11) UNSIGNED NOT NULL DEFAULT '60',
  `respawn_var` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggered_number` tinyint(4) NOT NULL DEFAULT '0',
  `group` tinyint(4) NOT NULL DEFAULT '0',
  `despawn_when_triggered` tinyint(4) NOT NULL DEFAULT '0',
  `undetectable` tinyint(4) NOT NULL DEFAULT '0',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tributes`
--

CREATE TABLE `tributes` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unknown` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `descr` mediumtext NOT NULL,
  `isguild` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tribute_levels`
--

CREATE TABLE `tribute_levels` (
  `tribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `variables`
--

CREATE TABLE `variables` (
  `varname` varchar(25) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `information` text NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `veteran_reward_templates`
--

CREATE TABLE `veteran_reward_templates` (
  `claim_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `charges` smallint(5) UNSIGNED NOT NULL,
  `reward_slot` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `short_name` varchar(32) DEFAULT NULL,
  `id` int(10) NOT NULL,
  `file_name` varchar(16) DEFAULT NULL,
  `long_name` text NOT NULL,
  `map_file_name` varchar(100) DEFAULT NULL,
  `safe_x` float NOT NULL DEFAULT '0',
  `safe_y` float NOT NULL DEFAULT '0',
  `safe_z` float NOT NULL DEFAULT '0',
  `safe_heading` float NOT NULL DEFAULT '0',
  `graveyard_id` float NOT NULL DEFAULT '0',
  `min_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `min_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `zoneidnumber` int(4) NOT NULL DEFAULT '0',
  `version` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `timezone` int(5) NOT NULL DEFAULT '0',
  `maxclients` int(5) NOT NULL DEFAULT '0',
  `ruleset` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `note` varchar(80) DEFAULT NULL,
  `underworld` float NOT NULL DEFAULT '0',
  `minclip` float NOT NULL DEFAULT '450',
  `maxclip` float NOT NULL DEFAULT '450',
  `fog_minclip` float NOT NULL DEFAULT '450',
  `fog_maxclip` float NOT NULL DEFAULT '450',
  `fog_blue` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_red` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_green` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sky` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ztype` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `zone_exp_multiplier` decimal(6,2) NOT NULL DEFAULT '0.00',
  `walkspeed` float NOT NULL DEFAULT '0.4',
  `time_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `fog_red1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_green1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_blue1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_minclip1` float NOT NULL DEFAULT '450',
  `fog_maxclip1` float NOT NULL DEFAULT '450',
  `fog_red2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_green2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_blue2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_minclip2` float NOT NULL DEFAULT '450',
  `fog_maxclip2` float NOT NULL DEFAULT '450',
  `fog_red3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_green3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_blue3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_minclip3` float NOT NULL DEFAULT '450',
  `fog_maxclip3` float NOT NULL DEFAULT '450',
  `fog_red4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_green4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_blue4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fog_minclip4` float NOT NULL DEFAULT '450',
  `fog_maxclip4` float NOT NULL DEFAULT '450',
  `fog_density` float NOT NULL DEFAULT '0',
  `flag_needed` varchar(128) NOT NULL DEFAULT '',
  `canbind` tinyint(4) NOT NULL DEFAULT '1',
  `cancombat` tinyint(4) NOT NULL DEFAULT '1',
  `canlevitate` tinyint(4) NOT NULL DEFAULT '1',
  `castoutdoor` tinyint(4) NOT NULL DEFAULT '1',
  `hotzone` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `insttype` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT '0',
  `shutdowndelay` bigint(16) UNSIGNED NOT NULL DEFAULT '5000',
  `peqzone` tinyint(4) NOT NULL DEFAULT '1',
  `expansion` tinyint(3) NOT NULL DEFAULT '0',
  `suspendbuffs` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rain_chance1` int(4) NOT NULL DEFAULT '0',
  `rain_chance2` int(4) NOT NULL DEFAULT '0',
  `rain_chance3` int(4) NOT NULL DEFAULT '0',
  `rain_chance4` int(4) NOT NULL DEFAULT '0',
  `rain_duration1` int(4) NOT NULL DEFAULT '0',
  `rain_duration2` int(4) NOT NULL DEFAULT '0',
  `rain_duration3` int(4) NOT NULL DEFAULT '0',
  `rain_duration4` int(4) NOT NULL DEFAULT '0',
  `snow_chance1` int(4) NOT NULL DEFAULT '0',
  `snow_chance2` int(4) NOT NULL DEFAULT '0',
  `snow_chance3` int(4) NOT NULL DEFAULT '0',
  `snow_chance4` int(4) NOT NULL DEFAULT '0',
  `snow_duration1` int(4) NOT NULL DEFAULT '0',
  `snow_duration2` int(4) NOT NULL DEFAULT '0',
  `snow_duration3` int(4) NOT NULL DEFAULT '0',
  `snow_duration4` int(4) NOT NULL DEFAULT '0',
  `gravity` float NOT NULL DEFAULT '0.4',
  `type` int(3) NOT NULL DEFAULT '0',
  `skylock` tinyint(4) NOT NULL DEFAULT '0',
  `fast_regen_hp` int(11) NOT NULL DEFAULT '180',
  `fast_regen_mana` int(11) NOT NULL DEFAULT '180',
  `fast_regen_endurance` int(11) NOT NULL DEFAULT '180',
  `npc_max_aggro_dist` int(11) NOT NULL DEFAULT '600',
  `max_movement_update_range` int(11) UNSIGNED NOT NULL DEFAULT '600',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL,
  `underworld_teleport_index` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zone_flags`
--

CREATE TABLE `zone_flags` (
  `charID` int(11) NOT NULL DEFAULT '0',
  `zoneID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zone_points`
--

CREATE TABLE `zone_points` (
  `id` int(11) NOT NULL,
  `zone` varchar(32) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `number` smallint(4) UNSIGNED NOT NULL DEFAULT '1',
  `y` float NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `target_y` float NOT NULL DEFAULT '0',
  `target_x` float NOT NULL DEFAULT '0',
  `target_z` float NOT NULL DEFAULT '0',
  `target_heading` float NOT NULL DEFAULT '0',
  `zoneinst` smallint(5) UNSIGNED DEFAULT '0',
  `target_zone_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target_instance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `buffer` float DEFAULT '0',
  `client_version_mask` int(10) UNSIGNED NOT NULL DEFAULT '4294967295',
  `min_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_expansion` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `content_flags` varchar(100) DEFAULT NULL,
  `content_flags_disabled` varchar(100) DEFAULT NULL,
  `is_virtual` tinyint(4) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aa_ability`
--
ALTER TABLE `aa_ability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aa_ranks`
--
ALTER TABLE `aa_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aa_rank_effects`
--
ALTER TABLE `aa_rank_effects`
  ADD PRIMARY KEY (`rank_id`,`slot`);

--
-- Indexes for table `aa_rank_prereqs`
--
ALTER TABLE `aa_rank_prereqs`
  ADD PRIMARY KEY (`rank_id`,`aa_id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_ls_id` (`name`,`ls_id`),
  ADD UNIQUE KEY `ls_id_lsaccount_id` (`ls_id`,`lsaccount_id`);

--
-- Indexes for table `account_flags`
--
ALTER TABLE `account_flags`
  ADD PRIMARY KEY (`p_accid`,`p_flag`),
  ADD KEY `p_accid` (`p_accid`);

--
-- Indexes for table `account_ip`
--
ALTER TABLE `account_ip`
  ADD UNIQUE KEY `ip` (`accid`,`ip`);

--
-- Indexes for table `account_rewards`
--
ALTER TABLE `account_rewards`
  ADD UNIQUE KEY `account_reward` (`account_id`,`reward_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `adventure_details`
--
ALTER TABLE `adventure_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adventure_members`
--
ALTER TABLE `adventure_members`
  ADD PRIMARY KEY (`charid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `adventure_stats`
--
ALTER TABLE `adventure_stats`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_id` (`player_id`),
  ADD KEY `player_id_2` (`player_id`);

--
-- Indexes for table `adventure_template`
--
ALTER TABLE `adventure_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `adventure_template_entry`
--
ALTER TABLE `adventure_template_entry`
  ADD PRIMARY KEY (`id`,`template_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `adventure_template_entry_flavor`
--
ALTER TABLE `adventure_template_entry_flavor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `alternate_currency`
--
ALTER TABLE `alternate_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auras`
--
ALTER TABLE `auras`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `base_data`
--
ALTER TABLE `base_data`
  ADD PRIMARY KEY (`level`,`class`);

--
-- Indexes for table `blocked_spells`
--
ALTER TABLE `blocked_spells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD UNIQUE KEY `id` (`name`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `bug_reports`
--
ALTER TABLE `bug_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`charid`,`buyslot`);

--
-- Indexes for table `character_activities`
--
ALTER TABLE `character_activities`
  ADD PRIMARY KEY (`charid`,`taskid`,`activityid`);

--
-- Indexes for table `character_alternate_abilities`
--
ALTER TABLE `character_alternate_abilities`
  ADD PRIMARY KEY (`id`,`aa_id`);

--
-- Indexes for table `character_alt_currency`
--
ALTER TABLE `character_alt_currency`
  ADD PRIMARY KEY (`char_id`,`currency_id`);

--
-- Indexes for table `character_auras`
--
ALTER TABLE `character_auras`
  ADD PRIMARY KEY (`id`,`slot`);

--
-- Indexes for table `character_bandolier`
--
ALTER TABLE `character_bandolier`
  ADD PRIMARY KEY (`id`,`bandolier_id`,`bandolier_slot`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_bind`
--
ALTER TABLE `character_bind`
  ADD PRIMARY KEY (`id`,`slot`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_buffs`
--
ALTER TABLE `character_buffs`
  ADD PRIMARY KEY (`character_id`,`slot_id`),
  ADD KEY `character_id` (`character_id`);

--
-- Indexes for table `character_corpses`
--
ALTER TABLE `character_corpses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zoneid` (`zone_id`),
  ADD KEY `instanceid` (`instance_id`);

--
-- Indexes for table `character_corpse_items`
--
ALTER TABLE `character_corpse_items`
  ADD PRIMARY KEY (`corpse_id`,`equip_slot`);

--
-- Indexes for table `character_currency`
--
ALTER TABLE `character_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_data`
--
ALTER TABLE `character_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `character_disciplines`
--
ALTER TABLE `character_disciplines`
  ADD PRIMARY KEY (`id`,`slot_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_enabledtasks`
--
ALTER TABLE `character_enabledtasks`
  ADD PRIMARY KEY (`charid`,`taskid`);

--
-- Indexes for table `character_expedition_lockouts`
--
ALTER TABLE `character_expedition_lockouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `character_id_expedition_name_event_name` (`character_id`,`expedition_name`,`event_name`);

--
-- Indexes for table `character_exp_modifiers`
--
ALTER TABLE `character_exp_modifiers`
  ADD PRIMARY KEY (`character_id`,`zone_id`) USING BTREE;

--
-- Indexes for table `character_inspect_messages`
--
ALTER TABLE `character_inspect_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_instance_safereturns`
--
ALTER TABLE `character_instance_safereturns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `character_id` (`character_id`);

--
-- Indexes for table `character_item_recast`
--
ALTER TABLE `character_item_recast`
  ADD PRIMARY KEY (`id`,`recast_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_languages`
--
ALTER TABLE `character_languages`
  ADD PRIMARY KEY (`id`,`lang_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_leadership_abilities`
--
ALTER TABLE `character_leadership_abilities`
  ADD PRIMARY KEY (`id`,`slot`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_material`
--
ALTER TABLE `character_material`
  ADD PRIMARY KEY (`id`,`slot`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_memmed_spells`
--
ALTER TABLE `character_memmed_spells`
  ADD PRIMARY KEY (`id`,`slot_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_pet_buffs`
--
ALTER TABLE `character_pet_buffs`
  ADD PRIMARY KEY (`char_id`,`pet`,`slot`);

--
-- Indexes for table `character_pet_info`
--
ALTER TABLE `character_pet_info`
  ADD PRIMARY KEY (`char_id`,`pet`);

--
-- Indexes for table `character_pet_inventory`
--
ALTER TABLE `character_pet_inventory`
  ADD PRIMARY KEY (`char_id`,`pet`,`slot`);

--
-- Indexes for table `character_potionbelt`
--
ALTER TABLE `character_potionbelt`
  ADD PRIMARY KEY (`id`,`potion_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_pvp_entries`
--
ALTER TABLE `character_pvp_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_skills`
--
ALTER TABLE `character_skills`
  ADD PRIMARY KEY (`id`,`skill_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_spells`
--
ALTER TABLE `character_spells`
  ADD PRIMARY KEY (`id`,`slot_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `character_tasks`
--
ALTER TABLE `character_tasks`
  ADD PRIMARY KEY (`charid`,`taskid`);

--
-- Indexes for table `character_task_timers`
--
ALTER TABLE `character_task_timers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `character_tribute`
--
ALTER TABLE `character_tribute`
  ADD KEY `id` (`id`);

--
-- Indexes for table `char_create_combinations`
--
ALTER TABLE `char_create_combinations`
  ADD PRIMARY KEY (`race`,`class`,`deity`,`start_zone`);

--
-- Indexes for table `char_create_point_allocations`
--
ALTER TABLE `char_create_point_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `char_recipe_list`
--
ALTER TABLE `char_recipe_list`
  ADD PRIMARY KEY (`char_id`,`recipe_id`);

--
-- Indexes for table `chatchannels`
--
ALTER TABLE `chatchannels`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `command_settings`
--
ALTER TABLE `command_settings`
  ADD PRIMARY KEY (`command`),
  ADD UNIQUE KEY `UK_command_settings_1` (`command`);

--
-- Indexes for table `completed_shared_tasks`
--
ALTER TABLE `completed_shared_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completed_shared_task_activity_state`
--
ALTER TABLE `completed_shared_task_activity_state`
  ADD PRIMARY KEY (`shared_task_id`,`activity_id`);

--
-- Indexes for table `completed_shared_task_members`
--
ALTER TABLE `completed_shared_task_members`
  ADD PRIMARY KEY (`shared_task_id`,`character_id`);

--
-- Indexes for table `completed_tasks`
--
ALTER TABLE `completed_tasks`
  ADD PRIMARY KEY (`charid`,`completedtime`,`taskid`,`activityid`);

--
-- Indexes for table `content_flags`
--
ALTER TABLE `content_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damageshieldtypes`
--
ALTER TABLE `damageshieldtypes`
  ADD PRIMARY KEY (`spellid`);

--
-- Indexes for table `data_buckets`
--
ALTER TABLE `data_buckets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_index` (`key`) USING BTREE;

--
-- Indexes for table `db_str`
--
ALTER TABLE `db_str`
  ADD PRIMARY KEY (`id`,`type`);

--
-- Indexes for table `discovered_items`
--
ALTER TABLE `discovered_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DoorIndex` (`zone`,`doorid`,`version`);

--
-- Indexes for table `dynamic_zones`
--
ALTER TABLE `dynamic_zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instance_id` (`instance_id`);

--
-- Indexes for table `dynamic_zone_members`
--
ALTER TABLE `dynamic_zone_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dynamic_zone_id_character_id` (`dynamic_zone_id`,`character_id`),
  ADD KEY `character_id` (`character_id`);

--
-- Indexes for table `eventlog`
--
ALTER TABLE `eventlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expeditions`
--
ALTER TABLE `expeditions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dynamic_zone_id` (`dynamic_zone_id`);

--
-- Indexes for table `expedition_lockouts`
--
ALTER TABLE `expedition_lockouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expedition_id_event_name` (`expedition_id`,`event_name`);

--
-- Indexes for table `faction_base_data`
--
ALTER TABLE `faction_base_data`
  ADD PRIMARY KEY (`client_faction_id`);

--
-- Indexes for table `faction_list`
--
ALTER TABLE `faction_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `faction_list_mod`
--
ALTER TABLE `faction_list_mod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faction_id_mod_name` (`faction_id`,`mod_name`);

--
-- Indexes for table `faction_values`
--
ALTER TABLE `faction_values`
  ADD PRIMARY KEY (`char_id`,`faction_id`);

--
-- Indexes for table `fishing`
--
ALTER TABLE `fishing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forage`
--
ALTER TABLE `forage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`charid`,`type`,`name`);

--
-- Indexes for table `global_loot`
--
ALTER TABLE `global_loot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gm_ips`
--
ALTER TABLE `gm_ips`
  ADD UNIQUE KEY `account_id` (`account_id`,`ip_address`),
  ADD UNIQUE KEY `account_id_2` (`account_id`);

--
-- Indexes for table `goallists`
--
ALTER TABLE `goallists`
  ADD PRIMARY KEY (`listid`,`entry`);

--
-- Indexes for table `graveyard`
--
ALTER TABLE `graveyard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone_id_nonunique` (`zone_id`);

--
-- Indexes for table `grid`
--
ALTER TABLE `grid`
  ADD PRIMARY KEY (`zoneid`,`id`);

--
-- Indexes for table `grid_entries`
--
ALTER TABLE `grid_entries`
  ADD PRIMARY KEY (`zoneid`,`gridid`,`number`);

--
-- Indexes for table `ground_spawns`
--
ALTER TABLE `ground_spawns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone` (`zoneid`);

--
-- Indexes for table `group_id`
--
ALTER TABLE `group_id`
  ADD PRIMARY KEY (`groupid`,`charid`,`ismerc`);

--
-- Indexes for table `group_leaders`
--
ALTER TABLE `group_leaders`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `leader` (`leader`);

--
-- Indexes for table `guild_bank`
--
ALTER TABLE `guild_bank`
  ADD KEY `guildid` (`guildid`),
  ADD KEY `area` (`area`),
  ADD KEY `slot` (`slot`);

--
-- Indexes for table `guild_members`
--
ALTER TABLE `guild_members`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexes for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`guild_id`,`rank`);

--
-- Indexes for table `guild_relations`
--
ALTER TABLE `guild_relations`
  ADD PRIMARY KEY (`guild1`,`guild2`);

--
-- Indexes for table `hackers`
--
ALTER TABLE `hackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horses`
--
ALTER TABLE `horses`
  ADD PRIMARY KEY (`filename`);

--
-- Indexes for table `instance_list`
--
ALTER TABLE `instance_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `instance_list_player`
--
ALTER TABLE `instance_list_player`
  ADD PRIMARY KEY (`charid`,`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`charid`,`slotid`);

--
-- Indexes for table `inventory_snapshots`
--
ALTER TABLE `inventory_snapshots`
  ADD PRIMARY KEY (`time_index`,`charid`,`slotid`);

--
-- Indexes for table `ip_exemptions`
--
ALTER TABLE `ip_exemptions`
  ADD PRIMARY KEY (`exemption_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD UNIQUE KEY `ID` (`id`),
  ADD KEY `name_idx` (`Name`),
  ADD KEY `lore_idx` (`lore`),
  ADD KEY `minstatus` (`minstatus`);

--
-- Indexes for table `item_tick`
--
ALTER TABLE `item_tick`
  ADD PRIMARY KEY (`it_id`);

--
-- Indexes for table `launcher`
--
ALTER TABLE `launcher`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `launcher_zones`
--
ALTER TABLE `launcher_zones`
  ADD PRIMARY KEY (`launcher`,`zone`);

--
-- Indexes for table `ldon_trap_entries`
--
ALTER TABLE `ldon_trap_entries`
  ADD PRIMARY KEY (`id`,`trap_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ldon_trap_templates`
--
ALTER TABLE `ldon_trap_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `level_exp_mods`
--
ALTER TABLE `level_exp_mods`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `lfguild`
--
ALTER TABLE `lfguild`
  ADD PRIMARY KEY (`type`,`name`);

--
-- Indexes for table `login_accounts`
--
ALTER TABLE `login_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `source_loginserver_account_name` (`source_loginserver`,`account_name`);

--
-- Indexes for table `login_api_tokens`
--
ALTER TABLE `login_api_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_server_admins`
--
ALTER TABLE `login_server_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_server_list_types`
--
ALTER TABLE `login_server_list_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_world_servers`
--
ALTER TABLE `login_world_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logsys_categories`
--
ALTER TABLE `logsys_categories`
  ADD PRIMARY KEY (`log_category_id`);

--
-- Indexes for table `lootdrop`
--
ALTER TABLE `lootdrop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lootdrop_entries`
--
ALTER TABLE `lootdrop_entries`
  ADD PRIMARY KEY (`lootdrop_id`,`item_id`);

--
-- Indexes for table `loottable`
--
ALTER TABLE `loottable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loottable_entries`
--
ALTER TABLE `loottable_entries`
  ADD PRIMARY KEY (`loottable_id`,`lootdrop_id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`msgid`),
  ADD KEY `charid` (`charid`);

--
-- Indexes for table `merchantlist`
--
ALTER TABLE `merchantlist`
  ADD PRIMARY KEY (`merchantid`,`slot`),
  ADD UNIQUE KEY `merchantid` (`merchantid`,`item`),
  ADD KEY `item` (`item`);

--
-- Indexes for table `merchantlist_temp`
--
ALTER TABLE `merchantlist_temp`
  ADD PRIMARY KEY (`npcid`,`slot`),
  ADD KEY `npcid_2` (`npcid`,`itemid`);

--
-- Indexes for table `name_filter`
--
ALTER TABLE `name_filter`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name_search_index` (`name`);

--
-- Indexes for table `npc_emotes`
--
ALTER TABLE `npc_emotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emoteid` (`emoteid`,`event_`);

--
-- Indexes for table `npc_faction`
--
ALTER TABLE `npc_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npc_faction_entries`
--
ALTER TABLE `npc_faction_entries`
  ADD PRIMARY KEY (`npc_faction_id`,`faction_id`);

--
-- Indexes for table `npc_scale_global_base`
--
ALTER TABLE `npc_scale_global_base`
  ADD PRIMARY KEY (`type`,`level`) USING BTREE;

--
-- Indexes for table `npc_spells`
--
ALTER TABLE `npc_spells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npc_spells_effects`
--
ALTER TABLE `npc_spells_effects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npc_spells_effects_entries`
--
ALTER TABLE `npc_spells_effects_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spellsid_spellid` (`npc_spells_effects_id`,`spell_effect_id`);

--
-- Indexes for table `npc_spells_entries`
--
ALTER TABLE `npc_spells_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spellsid_spellid` (`npc_spells_id`,`spellid`);

--
-- Indexes for table `npc_types`
--
ALTER TABLE `npc_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npc_types_tint`
--
ALTER TABLE `npc_types_tint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone` (`zoneid`);

--
-- Indexes for table `object_contents`
--
ALTER TABLE `object_contents`
  ADD PRIMARY KEY (`parentid`,`bagidx`);

--
-- Indexes for table `peq_admin`
--
ALTER TABLE `peq_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perl_event_export_settings`
--
ALTER TABLE `perl_event_export_settings`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `petitions`
--
ALTER TABLE `petitions`
  ADD PRIMARY KEY (`dib`),
  ADD KEY `petid` (`petid`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`type`,`petpower`);

--
-- Indexes for table `pets_beastlord_data`
--
ALTER TABLE `pets_beastlord_data`
  ADD PRIMARY KEY (`player_race`) USING BTREE;

--
-- Indexes for table `pets_equipmentset`
--
ALTER TABLE `pets_equipmentset`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `pets_equipmentset_entries`
--
ALTER TABLE `pets_equipmentset_entries`
  ADD PRIMARY KEY (`set_id`,`slot`);

--
-- Indexes for table `player_titlesets`
--
ALTER TABLE `player_titlesets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `proximities`
--
ALTER TABLE `proximities`
  ADD PRIMARY KEY (`zoneid`,`exploreid`);

--
-- Indexes for table `qs_merchant_transaction_record`
--
ALTER TABLE `qs_merchant_transaction_record`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `qs_player_aa_rate_hourly`
--
ALTER TABLE `qs_player_aa_rate_hourly`
  ADD PRIMARY KEY (`char_id`,`hour_time`);

--
-- Indexes for table `qs_player_delete_record`
--
ALTER TABLE `qs_player_delete_record`
  ADD PRIMARY KEY (`delete_id`);

--
-- Indexes for table `qs_player_events`
--
ALTER TABLE `qs_player_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qs_player_handin_record`
--
ALTER TABLE `qs_player_handin_record`
  ADD PRIMARY KEY (`handin_id`);

--
-- Indexes for table `qs_player_move_record`
--
ALTER TABLE `qs_player_move_record`
  ADD PRIMARY KEY (`move_id`);

--
-- Indexes for table `qs_player_npc_kill_record`
--
ALTER TABLE `qs_player_npc_kill_record`
  ADD PRIMARY KEY (`fight_id`);

--
-- Indexes for table `qs_player_speech`
--
ALTER TABLE `qs_player_speech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qs_player_trade_record`
--
ALTER TABLE `qs_player_trade_record`
  ADD PRIMARY KEY (`trade_id`);

--
-- Indexes for table `quest_globals`
--
ALTER TABLE `quest_globals`
  ADD PRIMARY KEY (`charid`,`npcid`,`zoneid`,`name`),
  ADD UNIQUE KEY `qname` (`name`,`charid`,`npcid`,`zoneid`);

--
-- Indexes for table `raid_details`
--
ALTER TABLE `raid_details`
  ADD PRIMARY KEY (`raidid`);

--
-- Indexes for table `raid_members`
--
ALTER TABLE `raid_members`
  ADD PRIMARY KEY (`charid`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `respawn_times`
--
ALTER TABLE `respawn_times`
  ADD PRIMARY KEY (`id`,`instance_id`);

--
-- Indexes for table `rule_sets`
--
ALTER TABLE `rule_sets`
  ADD PRIMARY KEY (`ruleset_id`,`name`);

--
-- Indexes for table `rule_values`
--
ALTER TABLE `rule_values`
  ADD PRIMARY KEY (`ruleset_id`,`rule_name`);

--
-- Indexes for table `saylink`
--
ALTER TABLE `saylink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phrase_index` (`phrase`) USING BTREE;

--
-- Indexes for table `server_scheduled_events`
--
ALTER TABLE `server_scheduled_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharedbank`
--
ALTER TABLE `sharedbank`
  ADD UNIQUE KEY `account` (`acctid`,`slotid`);

--
-- Indexes for table `shared_tasks`
--
ALTER TABLE `shared_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shared_task_activity_state`
--
ALTER TABLE `shared_task_activity_state`
  ADD PRIMARY KEY (`shared_task_id`,`activity_id`);

--
-- Indexes for table `shared_task_dynamic_zones`
--
ALTER TABLE `shared_task_dynamic_zones`
  ADD PRIMARY KEY (`shared_task_id`,`dynamic_zone_id`);

--
-- Indexes for table `shared_task_members`
--
ALTER TABLE `shared_task_members`
  ADD PRIMARY KEY (`shared_task_id`,`character_id`);

--
-- Indexes for table `skill_caps`
--
ALTER TABLE `skill_caps`
  ADD PRIMARY KEY (`skillID`,`class`,`level`,`class_`);

--
-- Indexes for table `spawn2`
--
ALTER TABLE `spawn2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ZoneGroup` (`zone`),
  ADD KEY `spawn2_spawngroupid_idx` (`spawngroupID`) USING BTREE;

--
-- Indexes for table `spawnentry`
--
ALTER TABLE `spawnentry`
  ADD PRIMARY KEY (`spawngroupID`,`npcID`);

--
-- Indexes for table `spawngroup`
--
ALTER TABLE `spawngroup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `spawn_conditions`
--
ALTER TABLE `spawn_conditions`
  ADD PRIMARY KEY (`zone`,`id`);

--
-- Indexes for table `spawn_condition_values`
--
ALTER TABLE `spawn_condition_values`
  ADD UNIQUE KEY `instance` (`id`,`instance_id`,`zone`),
  ADD KEY `zoneinstance` (`zone`,`instance_id`);

--
-- Indexes for table `spawn_events`
--
ALTER TABLE `spawn_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spells_new`
--
ALTER TABLE `spells_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spell_buckets`
--
ALTER TABLE `spell_buckets`
  ADD PRIMARY KEY (`spellid`),
  ADD KEY `key_index` (`key`) USING BTREE;

--
-- Indexes for table `spell_globals`
--
ALTER TABLE `spell_globals`
  ADD PRIMARY KEY (`spellid`);

--
-- Indexes for table `starting_items`
--
ALTER TABLE `starting_items`
  ADD PRIMARY KEY (`id`,`race`);

--
-- Indexes for table `start_zones`
--
ALTER TABLE `start_zones`
  ADD PRIMARY KEY (`player_choice`,`player_race`,`player_class`,`player_deity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasksets`
--
ALTER TABLE `tasksets`
  ADD PRIMARY KEY (`id`,`taskid`);

--
-- Indexes for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD PRIMARY KEY (`taskid`,`activityid`);

--
-- Indexes for table `timers`
--
ALTER TABLE `timers`
  ADD PRIMARY KEY (`char_id`,`type`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool_gearup_armor_sets`
--
ALTER TABLE `tool_gearup_armor_sets`
  ADD KEY `class` (`class`,`level`,`slot`,`item_id`);

--
-- Indexes for table `trader`
--
ALTER TABLE `trader`
  ADD PRIMARY KEY (`char_id`,`slot_id`);

--
-- Indexes for table `tradeskill_recipe`
--
ALTER TABLE `tradeskill_recipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tradeskill_recipe_entries`
--
ALTER TABLE `tradeskill_recipe_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `traps`
--
ALTER TABLE `traps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone` (`zone`);

--
-- Indexes for table `tributes`
--
ALTER TABLE `tributes`
  ADD PRIMARY KEY (`id`,`isguild`);

--
-- Indexes for table `tribute_levels`
--
ALTER TABLE `tribute_levels`
  ADD PRIMARY KEY (`tribute_id`,`level`);

--
-- Indexes for table `variables`
--
ALTER TABLE `variables`
  ADD PRIMARY KEY (`varname`);

--
-- Indexes for table `veteran_reward_templates`
--
ALTER TABLE `veteran_reward_templates`
  ADD UNIQUE KEY `claim_reward` (`claim_id`,`reward_slot`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zoneidnumber` (`zoneidnumber`),
  ADD KEY `zonename` (`short_name`);

--
-- Indexes for table `zone_flags`
--
ALTER TABLE `zone_flags`
  ADD PRIMARY KEY (`charID`,`zoneID`);

--
-- Indexes for table `zone_points`
--
ALTER TABLE `zone_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NewIndex` (`number`,`zone`),
  ADD KEY `zone_points_target_idx` (`target_zone_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adventure_details`
--
ALTER TABLE `adventure_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocked_spells`
--
ALTER TABLE `blocked_spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_reports`
--
ALTER TABLE `bug_reports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_bind`
--
ALTER TABLE `character_bind`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_corpses`
--
ALTER TABLE `character_corpses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_data`
--
ALTER TABLE `character_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_expedition_lockouts`
--
ALTER TABLE `character_expedition_lockouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_instance_safereturns`
--
ALTER TABLE `character_instance_safereturns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_languages`
--
ALTER TABLE `character_languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_material`
--
ALTER TABLE `character_material`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_pvp_entries`
--
ALTER TABLE `character_pvp_entries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_skills`
--
ALTER TABLE `character_skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_spells`
--
ALTER TABLE `character_spells`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_task_timers`
--
ALTER TABLE `character_task_timers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_flags`
--
ALTER TABLE `content_flags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_buckets`
--
ALTER TABLE `data_buckets`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doors`
--
ALTER TABLE `doors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dynamic_zones`
--
ALTER TABLE `dynamic_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dynamic_zone_members`
--
ALTER TABLE `dynamic_zone_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventlog`
--
ALTER TABLE `eventlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expeditions`
--
ALTER TABLE `expeditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expedition_lockouts`
--
ALTER TABLE `expedition_lockouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faction_list_mod`
--
ALTER TABLE `faction_list_mod`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fishing`
--
ALTER TABLE `fishing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forage`
--
ALTER TABLE `forage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_loot`
--
ALTER TABLE `global_loot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graveyard`
--
ALTER TABLE `graveyard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ground_spawns`
--
ALTER TABLE `ground_spawns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hackers`
--
ALTER TABLE `hackers`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instance_list`
--
ALTER TABLE `instance_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_exemptions`
--
ALTER TABLE `ip_exemptions`
  MODIFY `exemption_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_tick`
--
ALTER TABLE `item_tick`
  MODIFY `it_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_api_tokens`
--
ALTER TABLE `login_api_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_server_admins`
--
ALTER TABLE `login_server_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_world_servers`
--
ALTER TABLE `login_world_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lootdrop`
--
ALTER TABLE `lootdrop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loottable`
--
ALTER TABLE `loottable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `msgid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `name_filter`
--
ALTER TABLE `name_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_emotes`
--
ALTER TABLE `npc_emotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_faction`
--
ALTER TABLE `npc_faction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_spells`
--
ALTER TABLE `npc_spells`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_spells_effects`
--
ALTER TABLE `npc_spells_effects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_spells_effects_entries`
--
ALTER TABLE `npc_spells_effects_entries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_spells_entries`
--
ALTER TABLE `npc_spells_entries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npc_types`
--
ALTER TABLE `npc_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peq_admin`
--
ALTER TABLE `peq_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petitions`
--
ALTER TABLE `petitions`
  MODIFY `dib` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_titlesets`
--
ALTER TABLE `player_titlesets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_merchant_transaction_record`
--
ALTER TABLE `qs_merchant_transaction_record`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_delete_record`
--
ALTER TABLE `qs_player_delete_record`
  MODIFY `delete_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_events`
--
ALTER TABLE `qs_player_events`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_handin_record`
--
ALTER TABLE `qs_player_handin_record`
  MODIFY `handin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_move_record`
--
ALTER TABLE `qs_player_move_record`
  MODIFY `move_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_npc_kill_record`
--
ALTER TABLE `qs_player_npc_kill_record`
  MODIFY `fight_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_speech`
--
ALTER TABLE `qs_player_speech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qs_player_trade_record`
--
ALTER TABLE `qs_player_trade_record`
  MODIFY `trade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saylink`
--
ALTER TABLE `saylink`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_scheduled_events`
--
ALTER TABLE `server_scheduled_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shared_tasks`
--
ALTER TABLE `shared_tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spawn2`
--
ALTER TABLE `spawn2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spawngroup`
--
ALTER TABLE `spawngroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spawn_events`
--
ALTER TABLE `spawn_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `starting_items`
--
ALTER TABLE `starting_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tradeskill_recipe`
--
ALTER TABLE `tradeskill_recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tradeskill_recipe_entries`
--
ALTER TABLE `tradeskill_recipe_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traps`
--
ALTER TABLE `traps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zone_points`
--
ALTER TABLE `zone_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;