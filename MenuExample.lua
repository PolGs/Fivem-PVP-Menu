_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("La Triada","PvP Menu (by polgs)")
_menuPool:Add(mainMenu)
_menuPool:MouseControlsEnabled (false)
_menuPool:MouseEdgeEnabled (false)
_menuPool:ControlDisablingEnabled(false)

function FirstItem(menu)
    local spawnPos = vector3(686.245, 577.950, 130.461)

    local btn_rojos = NativeUI.CreateItem("~b~Equipación Azul","Outfit Azul, Armas y Chaleco")
    local click2 = NativeUI.CreateItem("~r~Equipación Roja","~Outfit Rojo, Armas y Chaleco")
    local click3 = NativeUI.CreateItem("~y~Teleport Mapa 1","Ir al mapa 1")
    local btn_heal = NativeUI.CreateItem("~g~Heal","Heal your character")
    local btn_baller = NativeUI.CreateItem("~y~Baller","Spawn Baller in front of you")
    local btn_scarab = NativeUI.CreateItem("~y~Scarab","Spawn Scarab in front of you")
    local btn_dv = NativeUI.CreateItem("~y~Delete Vehicle","Deletes vehicle near you")

    menu:AddItem(btn_rojos)
    menu:AddItem(click2)
    menu:AddItem(btn_heal)
    menu:AddItem(btn_scarab)
    menu:AddItem(btn_baller)
    
    menu:AddItem(click3)


    menu.OnItemSelect = function(sender, item, index)
        if item == btn_rojos then
            local spawnPos = GetEntityCoords(GetPlayerPed(PlayerId()))
            exports.spawnmanager:setAutoSpawnCallback(function()
            exports.spawnmanager:spawnPlayer({
                    x = spawnPos.x,
                    y = spawnPos.y,
                    z = spawnPos.z,
                    model = 'mp_m_freemode_01'
                }, function()
                    TriggerEvent('chat:addMessage', {
                        args = { 'Welcome to the party!~' }
                    })
                end)
            end)
            exports.spawnmanager:setAutoSpawn(true)
            exports.spawnmanager:forceRespawn()
            Citizen.Wait(1000)
            exports.spawnmanager:setAutoSpawn(false)
            local ped = GetPlayerPed(PlayerId())
            local weapon = GetHashKey("WEAPON_COMBATPISTOL")
            GiveWeaponToPed(ped, weapon, 230, false, false)
            local weapon = GetHashKey("WEAPON_COMBATPDW")
            GiveWeaponToPed(ped, weapon, 250, false, false)
            local weapon = GetHashKey("WEAPON_CARBINERIFLE")
            GiveWeaponToPed(ped, weapon, 250, false, false)
            local weapon = GetHashKey("weapon_appistol")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            local weapon = GetHashKey("weapon_advancedrifle")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            local weapon = GetHashKey("weapon_smg")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            local weapon = GetHashKey("weapon_specialcarbine")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            AddArmourToPed(ped,100)
            SetPedArmour(ped, 100)
            SetPedComponentVariation(ped, 9, 7, 1, 0)
            SetPedComponentVariation(ped, 11, 15, 0, 0)
            SetPedComponentVariation(ped, 3, 1, 0, 0)
            SetPedComponentVariation(ped, 11, 221, 20, 0)
            SetPedComponentVariation(ped, 4, 97, 9,0)
            SetPedComponentVariation(ped, 1, 35,0,0)
            SetPedComponentVariation(ped, 8, 15,0,0)
            SetPedComponentVariation(ped, 6, 24,0,0)
        end
        if item == click2 then
            local spawnPos = GetEntityCoords(GetPlayerPed(PlayerId()))
            exports.spawnmanager:setAutoSpawnCallback(function()
            exports.spawnmanager:spawnPlayer({
                    x = spawnPos.x,
                    y = spawnPos.y,
                    z = spawnPos.z,
                    model = 'mp_m_freemode_01'
                }, function()
                    TriggerEvent('chat:addMessage', {
                        args = { 'Welcome to the party!~' }
                    })
                end)
            end)
            exports.spawnmanager:setAutoSpawn(true)
            exports.spawnmanager:forceRespawn()
            Citizen.Wait(1000)
            exports.spawnmanager:setAutoSpawn(false)
            notify("Teleported")
            local ped = GetPlayerPed(PlayerId())
            local weapon = GetHashKey("WEAPON_COMBATPISTOL")
            GiveWeaponToPed(ped, weapon, 230, false, false)
            local weapon = GetHashKey("WEAPON_COMBATPDW")
            GiveWeaponToPed(ped, weapon, 250, false, false)
            local weapon = GetHashKey("WEAPON_CARBINERIFLE")
            GiveWeaponToPed(ped, weapon, 250, false, false)
            local weapon = GetHashKey("weapon_appistol")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            local weapon = GetHashKey("weapon_advancedrifle")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            local weapon = GetHashKey("weapon_smg")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            local weapon = GetHashKey("weapon_specialcarbine")
            GiveWeaponToPed(ped, weapon, 0, false, false)
            AddArmourToPed(ped,100)
            SetPedArmour(ped, 100)
            SetPedComponentVariation(ped, 9, 7, 1, 0)
            SetPedComponentVariation(ped, 11, 15, 0, 0)
            SetPedComponentVariation(ped, 3, 1, 0, 0)
            SetPedComponentVariation(ped, 11, 221, 20, 0)
            SetPedComponentVariation(ped, 4, 97, 10,0)
            SetPedComponentVariation(ped, 1, 35,0,0)
            SetPedComponentVariation(ped, 8, 15,0,0)
            SetPedComponentVariation(ped, 6, 24,0,0)
        end
        if item == click3 then
            local spawnPos = vector3(1205.0098, -1271.7301, 35.2260)
            exports.spawnmanager:setAutoSpawnCallback(function()
            exports.spawnmanager:spawnPlayer({
                    x = spawnPos.x,
                    y = spawnPos.y,
                    z = spawnPos.z,
                    model = 'mp_m_freemode_01'
                }, function()
                    TriggerEvent('chat:addMessage', {
                        args = { 'Welcome to the party!~' }
                    })
                end)
            end)
            exports.spawnmanager:setAutoSpawn(true)
            exports.spawnmanager:forceRespawn()
            Citizen.Wait(1000)
            exports.spawnmanager:setAutoSpawn(false)
            notify("Teleported")

            local ped = GetPlayerPed(PlayerId())
            SetPedComponentVariation(ped, 9, 7, 1, 0)
            SetPedComponentVariation(ped, 11, 15, 0, 0)
            SetPedComponentVariation(ped, 3, 1, 0, 0)
            SetPedComponentVariation(ped, 11, 221, 20, 0)
            SetPedComponentVariation(ped, 4, 97, 1,0)
            SetPedComponentVariation(ped, 1, 35,0,0)
            SetPedComponentVariation(ped, 8, 15,0,0)
            SetPedComponentVariation(ped, 6, 24,0,0)
        end

        if item == btn_heal then
            SetEntityHealth(GetPlayerPed(-1), 200)
        end

        if item == btn_baller then
            local spawnPos = GetEntityCoords(GetPlayerPed(PlayerId()))
            vehiclehash = GetHashKey("baller5")
            RequestModel(vehiclehash)
            Citizen.CreateThread(function() 
                local waiting = 0
                while not HasModelLoaded(vehiclehash) do
                    waiting = waiting + 100
                    Citizen.Wait(100)
                    if waiting > 5000 then
                        ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                        break
                    end
                end
                CreateVehicle(vehiclehash, spawnPos.x, spawnPos.y + 3, spawnPos.z, GetEntityHeading(GetPlayerPed(PlayerId()))+90, 1, 0)
            end)
        end

        if item == btn_scarab then
            local spawnPos = GetEntityCoords(GetPlayerPed(PlayerId()))
            vehiclehash = GetHashKey("scarab3")
            RequestModel(vehiclehash)
            Citizen.CreateThread(function() 
                local waiting = 0
                while not HasModelLoaded(vehiclehash) do
                    waiting = waiting + 100
                    Citizen.Wait(100)
                    if waiting > 5000 then
                        ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                        break
                    end
                end
                CreateVehicle(vehiclehash, spawnPos.x, spawnPos.y + 3, spawnPos.z, GetEntityHeading(GetPlayerPed(PlayerId()))+90, 1, 0)
            end)
        end

    end
end

FirstItem(mainMenu)


_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        --[[ The "e" button will activate the menu ]]
        if IsControlJustPressed(1, 51) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)

--[[ COPY BELOW ]]

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(50)
    end

    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, x + 2, y + 2, z + 1, GetEntityHeading(PlayerPedId()), true, false)
    SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    
    SetEntityAsNoLongerNeeded(vehicle)
    SetModelAsNoLongerNeeded(vehicleName)
    
    --[[ SetEntityAsMissionEntity(vehicle, true, true) ]]
end