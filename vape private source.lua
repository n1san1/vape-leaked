-- vape private source
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local COB = function(tab, argstable) 
    return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end

COB("Utility", {
    Name = "ClientCrasher",
    Function = function(callback) 
        if callback then
            pcall(function() 
                shared.VapeCrashAll() 
            end) 
        end
    end,
    HoverText = "crash all lol"
})

COB("Utility", {
    Name = "auto win",
    Function = function(callback) 
        if callback then
            pcall(function() 
                shared.VapeFireProjectile(game.Players:GetPlayers()) 
            end) 
        end
    end,
    HoverText = "tps projeciles at everyone"
})

COB("Utility", {
    Name = "ac disebler",
    Function = function(callback) 
        if callback then
            pcall(function() 
                shared.Invis(game.Players.LocalPlayer) 
            end) 
        end
    end,
    HoverText = "invis :make you invis:"
})

COB("Utility", {
    Name = "Pingspoffer",
    Function = function(callback) 
        if callback then
            pcall(function() 
                shared.SetPing(game.Players.LocalPlayer, 0) 
            end) 
        end
    end,
    HoverText = "sets ping to 0 using network functions"
})
