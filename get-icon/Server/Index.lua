print("Package for testing player:GetAccountIconURL function")

function PlayerSpawn(player)
    -- Print player account name and icon url
    print("Player name is: " .. player:GetAccountName())
    print("Player icon is: " .. player:GetAccountIconURL())
end

-- Subscribes to an Event which is triggered when Players join the server (i.e. Spawn)
Player.Subscribe("Spawn", PlayerSpawn)