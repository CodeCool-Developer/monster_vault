# monster_vault หรือ esx_vault (FiveM) 
ใช้งานแทน monster_vault ตัวเดิม เพิ่มเติมคือมี config ใหม่ ปรับแต่งง่าย แยก Discord log ของแต่ละตู้เซฟ อื่นๆ

### Discord : [discord.gg/K7PDe2jfpW](https://discord.gg/K7PDe2jfpW)

## ตัวอย่าง Config และ Function
### ตัวอย่าง Config [config.general.lua](https://github.com/CodeCool-Developer/monster_vault/blob/main/config/config.general.lua)
```
Config.VaultInventory = {
    ['vault'] = {
        Name = 'ประชาชน',
        Coords = vector3(1734.24, 3323.88, 41.24),
        Heading = 12.36,
        Model = '',
        NeedItemLicense = {
            'vault_key',
            'vault_key_3_day',
            'vault_key_7_day',
        },
        AllowBlackMoney = true,         -- vault_black_money
        DiscordHook = {
            ["PutItem"]     = "link discord หรือ hook name", -- นำไอเท็มเข้า
            ["PutMoney"]    = "link discord หรือ hook name", -- นำเงินเข้า
            ["PutWeapon"]   = "link discord หรือ hook name", -- นำอาวุธเข้า
            ["GetItem"]     = "link discord หรือ hook name", -- นำไอเท็มออก
            ["GetMoney"]    = "link discord หรือ hook name", -- นำเงินออก
            ["GetWeapon"]   = "link discord หรือ hook name", -- นำอาวุธออก
        }
    },
    ['police'] = {
        Name = 'ตำรวจ',
        Coords = vector3(452.24, -974.56, 30.68),
        Heading = 268.94,
        Model = 'p_v_43_safe_s',
        NeedItemLicense = {
            'vault_key_police',
        },
        AllowBlackMoney = false,         -- society_police_black_money
        DiscordHook = {
            ["PutItem"]     = "link discord หรือ hook name", -- นำไอเท็มเข้า
            ["PutMoney"]    = "link discord หรือ hook name", -- นำเงินเข้า
            ["PutWeapon"]   = "link discord หรือ hook name", -- นำอาวุธเข้า
            ["GetItem"]     = "link discord หรือ hook name", -- นำไอเท็มออก
            ["GetMoney"]    = "link discord หรือ hook name", -- นำเงินออก
            ["GetWeapon"]   = "link discord หรือ hook name", -- นำอาวุธออก
        }
    },
}
```

### ตัวอย่าง Config [config.function.lua](https://github.com/CodeCool-Developer/monster_vault/blob/main/config/config.function.lua)
```
-- ปรับแต่ง Show Help Menu
Config.ClientOnShowHelpMenu = function(vault)
    --ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ Open Safe")

    -- cc_text_UI ดาวน์โหลดได้ที่ https://github.com/CodeCool-Developer/cc_text_UI
    exports['cc_text_UI']:ShowHelpNotification('กด ~INPUT_CONTEXT~ เพื่อเปิด ~y~ตู้เซฟ' .. vault.Name .. '~s~')
end

-- ปรับแต่งแจ้งเตือน ฝั่ง Client
Config.ClientOnNotify = function(message)
    --TriggerEvent("pNotify:SendNotification", { text = msg, type = "error" })

    exports.nc_notify:PushNotification({ title = message, type = 'error', duration = 4000 })
end

-- ปรับแต่งแจ้งเตือน ฝั่ง Server
Config.ServerOnNotify = function(xPlayer, notify)
    --TriggerClientEvent("pNotify:SendNotification", xPlayer.source, { text = notify.message, type = notify.type })

    exports.nc_notify:PushNotification(xPlayer.source, { title = notify.message, type = notify.type, duration = notify.duration })
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
```

## ดาวน์โหลด
### ใช้ Git
```
cd resources
git clone https://github.com/CodeCool-Developer/monster_vault.git [local]/[CC]/monster_vault
```

### ด้วยตนเอง
- ดาวน์โหลด https://github.com/CodeCool-Developer/monster_vault/archive/refs/heads/main.zip
- วางไว้ใน `[local]/[CC]/`

## ติดตั้ง
- เพิ่มสิ่งนี้ไปยัง server.cfg `ensure monster_vault` หรือ `start monster_vault`

```
ensure monster_vault
หรือ
start monster_vault
```

## CodeCool Developer
### Discord : [discord.gg/K7PDe2jfpW](https://discord.gg/K7PDe2jfpW)
