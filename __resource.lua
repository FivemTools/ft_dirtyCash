--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_dirtyCash
--

dependencies {
  "ft_players",
}

client_scripts {
  "src/cash.client.lua",
}

server_scripts {
  "@ft_utils/src/utils.lua", -- Utils

  "src/cash.server.lua",
  "src/init.server.lua",
}

exports {
  "GetPlayerCash",
}

server_exports {

}
