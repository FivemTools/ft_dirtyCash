--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_dirtyCash
--

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
  if resource == "ft_dirtyCash" then

    -- Send event
    TriggerEvent('ft_dirtyCash:onResourceReady')

  end
end)

-- Add method in Player
RegisterServerEvent("ft_players:onResourceReady")
AddEventHandler('ft_players:onResourceReady', function ()

  -- Get dirtyCash

  exports.ft_players:AddPlayerMethod('GetDirtyCash', function()
    return toFloat(self.dirtyCash)
  end)

  -- Set dirtyCash
  exports.ft_players:AddPlayerMethod('SetDirtyCash', function(mount)
    self.dirtyCash = mount
  end)

  -- Add dirtyCash

  exports.ft_players:AddPlayerMethod('AddDirtyCash', function(mount)
    local dirtyCash = self.dirtyCash + mount
    self:SetDirtyCash(emitter, dirtyCash)
  end)

  -- Remove dirtyCash
  exports.ft_players:AddPlayerMethod('RemoveDirtyCash', function(mount)
    local dirtyCash = self.dirtyCash - mount
    self:SetDirtyCash(emitter, dirtyCash)
  end)

  -- Give dirtyCash
  exports.ft_players:AddPlayerMethod('GiveDirtyCash', function(player, mount)
    self:RemoveDirtyCash(mount)
    player:AddDirtyCash(mount)
  end)

end)
