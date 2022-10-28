# monster_vault หรือ esx_vault (FiveM) 
ใช้งานแทน monster_vault ตัวเดิม เพิ่มเติมคือมี config ใหม่ กำหนดไอเทมที่ห้ามเก็บเข้าตู้ได้ด้วย ปรับแต่งง่าย แยก Discord log ของแต่ละตู้เซฟและอื่นๆ

### Discord : [discord.gg/K7PDe2jfpW](https://discord.gg/K7PDe2jfpW)

## ตัวอย่าง Config และ Function
### ตัวอย่าง Config [config.function.lua](https://github.com/CodeCool-Developer/monster_vault/blob/main/config/config.function.lua)
```
Config.EventRoute = {
    ['openVaultInventory'] = 'esx_inventoryhud:openVaultInventory',
}
```
> openVaultInventory คือ ชื่อ event ไว้สำหรับเปิดหน้าต่างตู้เซฟของแต่ละกระเป๋า
>> ถ้ากระเป๋า NC ให้ดูที่ nc_inventory_bridge/config.lua
>
>> ถ้ากระเป๋า esx_inventoryhud ให้ดูที่ esx_inventoryhud/client/vault.lua
------------------------------------------------------------------
### ตัวอย่าง Config ตู้เซฟ [config.general.lua](https://github.com/CodeCool-Developer/monster_vault/blob/main/config/config.general.lua)
```
Config.VaultInventory = {
    ['vault'] = {
        Name = 'ประชาชน',
        Coords = {
            vector4(1736.28, 3308.08, 41.2, 3.12),
            vector4(1722.6, 3306.92, 41.24, 0.4)
        },
        Model = 'p_v_43_safe_s',
        AllowBlackMoney = true,         -- vault_black_money
        NeedItemLicense = {
            'vault_key',
            'vault_key_3_day',
            'vault_key_7_day',
        },
        ItemBlackList = {

        },
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
        Coords = {
            vector4(1759.0, 3284.56, 41.16, 280.08),
            vector4(1762.64, 3269.8, 41.32, 242.28)
        },
        Model = 'p_v_43_safe_s',
        AllowBlackMoney = false,
        NeedItemLicense = {
            'vault_key_police',
        },
        ItemBlackList = {

        },
        DiscordHook = {
            ["PutItem"]     = "link discord หรือ hook name", -- นำไอเท็มเข้า
            ["PutMoney"]    = "link discord หรือ hook name", -- นำเงินเข้า
            ["PutWeapon"]   = "link discord หรือ hook name", -- นำอาวุธเข้า
            ["GetItem"]     = "link discord หรือ hook name", -- นำไอเท็มออก
            ["GetMoney"]    = "link discord หรือ hook name", -- นำเงินออก
            ["GetWeapon"]   = "link discord หรือ hook name", -- นำอาวุธออก
        }
    },
    ['ambulance'] = {
        Name = 'หมอ',
        Coords = {
            vector4(1740.88, 3263.04, 41.28, 107.2),
            vector4(1733.28, 3276.48, 41.12, 122.28)
        },
        Model = 'p_v_43_safe_s',
        AllowBlackMoney = false,
        NeedItemLicense = {
            'vault_key_ambulance',
        },
        ItemBlackList = {

        },
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
