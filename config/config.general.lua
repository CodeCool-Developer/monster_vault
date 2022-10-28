Config = {}

Config.EventRoute = {
    ['getSharedObject'] = 'esx:getSharedObject',                            -- Default: 'esx:getSharedObject'
    ['openVaultInventory'] = 'esx_inventoryhud:openVaultInventory',         -- ของกระเป๋า NC (ถ้าไม่ตรง ให้อ่านคำอธิบายด้านล่าง)
    --['openVaultInventory'] = 'monster_inventoryhud:openVaultInventory',   -- ของกระเป๋า esx_inventoryhud (ถ้าไม่ตรง ให้อ่านคำอธิบายด้านล่าง)
}

---อธิบาย ['openVaultInventory'] เพิ่มเติม
-- openVaultInventory คือ ชื่อ event ไว้สำหรับเปิดหน้าต่างตู้เซฟของแต่ละกระเป๋า
--      ถ้ากระเป๋า NC ให้ดูที่ nc_inventory_bridge/config.lua
--      ถ้ากระเป๋า esx_inventoryhud ให้ดูที่ esx_inventoryhud/client/vault.lua
------------------------------------------------------------------

Config.Debug = true

Config.VaultMessage = {
    ["PutItem"] 	= "ได้ทำการนำไอเทม %s เก็บเข้าตู้เซฟ %s เป็นจำนวน %s ชิ้น",       -- นำไอเท็มเข้า
    ["PutMoney"] 	= "ได้ทำการนำเงิน %s เก็บเข้าตู้เซฟ %s เป็นจำนวน %s ดอลล่า",      -- นำเงินเข้า
    ["PutWeapon"] 	= "ได้ทำการนำอาวุธ %s เก็บเข้าตู้เซฟ %s เป็นจำนวน %s ชิ้น",        -- นำอาวุธเข้า
    ["GetItem"] 	= "ได้ทำการนำไอเทม %s ออกจากตู้เซฟ %s เป็นจำนวน %s ชิ้น",      -- นำไอเท็มออก
    ["GetMoney"] 	= "ได้ทำการนำเงิน %s ออกจากตู้เซฟ %s เป็นจำนวน %s ดอลล่า",     -- นำเงินออก
    ["GetWeapon"] 	= "ได้ทำการนำอาวุธ %s ออกจากตู้เซฟ %s เป็นจำนวน %s ชิ้น",       -- นำอาวุธออก
}

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

-- ชื่อ item ห้ามยัดเข้าตู้
Config.ItemBlackList = {
    --'water',
}

--TODO -- ตัวอย่างการใช้งานกับ nc_discordlogs หรือ azael_dc-serverlogs ตรง DiscordHook ให้เปลี่ยนจากใส่ link เป็นใส่ชื่อ hook ที่สร้างไว้ใน script log ของแต่ละเจ้า
--TODO -- และใน config.function.lua ที่ Config.ServerOnSendDiscord ให้ส่งไปตามตัวอย่างได้เลย

--['ambulance'] = {
--    Name = 'หมอ',
--    Coords = vector3(339.8, -575.32, 43.32),
--    Heading = 342.16,
--    Model = 'p_v_43_safe_s',
--    NeedItemLicense = {
--        'vault_key_ambulance',
--    },
--    AllowBlackMoney = false,
--    DiscordHook = {
--        ["PutItem"]   = "vaultAmbulancePutItem", -- นำไอเท็มเข้า
--        ["PutMoney"]  = "vaultAmbulancePutMoney", -- นำเงินเข้า
--        ["PutWeapon"] = "vaultAmbulancePutWeapon", -- นำอาวุธเข้า
--        ["GetItem"]   = "vaultAmbulanceGetItem", -- นำไอเท็มออก
--        ["GetMoney"]  = "vaultAmbulanceGetMoney", -- นำเงินออก
--        ["GetWeapon"] = "vaultAmbulanceGetWeapon", -- นำอาวุธออก
--    }
--},
