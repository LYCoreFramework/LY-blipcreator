if config.blipshow then
    CreateThread(function ()
        for _,v in pairs(config.locations) do
            local blip = AddBlipCoord(v.vector)
            SetBlipSprite(blip, v.sprite)
            SetBlipScale(blip, v.scale)
            SetBlipColour(blip, v.colour)
            SetBlipAsShortRange(blip, true)
            BegininTextCommandSetBlipName("STRING")
            AddTextComponentString(v.text)
            EndTextCommandSetBlipName(blip)
        end      
    end)
end