SET @ENTRY := 100016;

DELETE FROM `acore_string` WHERE `entry` BETWEEN @ENTRY+0 AND @ENTRY+0;

INSERT INTO `acore_string` (`entry`, `content_default`, `locale_koKR`, `locale_frFR`, `locale_deDE`, `locale_zhCN`, `locale_zhTW`, `locale_esES`, `locale_esMX`, `locale_ruRU`) VALUES
(@ENTRY+0, '[XP] Player not found or is offline.', '', '', '', '', '', '[XP] Jugador no encontrado o está desconectado.', '[XP] Jugador no encontrado o está desconectado.', '');

UPDATE `command` SET `help` = 'Syntax: .xp set $rate [$playername]\nSet your custom XP rate or another player''s XP rate.' WHERE `name` = 'xp set';
UPDATE `command` SET `help` = 'Syntax: .xp view [$playername]\nView your current XP rate or another player''s XP rate.' WHERE `name` = 'xp view';
UPDATE `command` SET `help` = 'Syntax: .xp disable [$playername]\nDisable the custom XP rate for yourself or another player.' WHERE `name` = 'xp disable';
UPDATE `command` SET `help` = 'Syntax: .xp enable [$playername]\nEnable the custom XP rate for yourself or another player.' WHERE `name` = 'xp enable';
UPDATE `command` SET `help` = 'Syntax: .xp default [$playername]\nSet your custom XP rate or another player''s XP rate to the default value.' WHERE `name` = 'xp default';
