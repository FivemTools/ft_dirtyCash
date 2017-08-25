/**
 * @Project: FiveM Tools
 * @Author: Samuelds
 * @License: GNU General Public License v3.0
 * @Source: https://github.com/FivemTools/ft_dirtyCash
 */

ALTER TABLE `players` ADD `dirtyCash` FLOAT NOT NULL DEFAULT '0' AFTER `steamId`;
