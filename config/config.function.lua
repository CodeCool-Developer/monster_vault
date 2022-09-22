-- ปรับแต่ง Show Help Menu
Config.ClientOnShowHelpMenu = function(vault)
    ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ Open Safe")

    -- cc_text_UI ดาวน์โหลดได้ที่ https://github.com/CodeCool-Developer/cc_text_UI
    --exports['cc_text_UI']:ShowHelpNotification('กด ~INPUT_CONTEXT~ เพื่อเปิด ~y~ตู้เซฟ' .. vault.Name .. '~s~')
end

-- ปรับแต่งแจ้งเตือน ฝั่ง Client
Config.ClientOnNotify = function(message)
    TriggerEvent("pNotify:SendNotification", { text = msg, type = "error" })

    --exports.nc_notify:PushNotification({ title = message, type = 'error', duration = 4000 })
end

-- ปรับแต่งแจ้งเตือน ฝั่ง Server
Config.ServerOnNotify = function(xPlayer, notify)
    TriggerClientEvent("pNotify:SendNotification", xPlayer.source, { text = notify.message, type = notify.type })

    --exports.nc_notify:PushNotification(xPlayer.source, { title = notify.message, type = notify.type, duration = notify.duration })
end

-- ปรับแต่งแจ้ง Discord Log ฝั่ง Server
Config.ServerOnSendDiscord = function(xPlayer, message, webHook)
    --TODO -- ตัวอย่างการใช้งานกับ nc_discordlogs หรือ azael_dc-serverlogs
    --TODO **อย่าลืมไปอื่นรายละเอียดที่ config.general.lua**
    --exports.nc_discordlogs:Discord({
    --    webhook = webHook,
    --    xPlayer = xPlayer,
    --    message = 'แจ้งเตือนตู้เซฟ',
    --    description = message,
    --    color = 'ff4081',
    --})

    CustomDiscordHook(xPlayer, message, webHook)
end

function CustomDiscordHook(xPlayer, message, webHook)
    local headers = {
        ['Content-Type'] = 'application/json'
    }
    local data = {
        ["username"] = 'แจ้งเตือนตู้เซฟ',
        ['avatar_url'] = 'https://cdn.discordapp.com/attachments/1020489161083465768/1020489429212737547/CCDEV.png',
        ["embeds"] = {
            {
                ['title'] = ('ผู้เล่น **%s** | Identifier: **%s**'):format(xPlayer.getName(), xPlayer.getIdentifier()),
                ['description'] = '```' .. message .. '```',
                ["color"] = 1942002,
                ["footer"] = {
                    ['text'] = ' 🕚เวลา : ' .. os.date('%X') .. ' • CodeCool Developer. ',
                },
            }
        }
    }

    PerformHttpRequest(webHook, function(err, text, headers)
    end, 'POST', json.encode(data), headers)
end