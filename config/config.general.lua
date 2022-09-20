Config = {}

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
        Coords = vector3(1734.24, 3323.88, 41.24),
        Heading = 12.36,
        Model = '',
        AllowBlackMoney = true,
        NeedItemLicense = {
            'vault_key',
            'vault_key_3_day',
            'vault_key_7_day',
        },
        ItemBlackList = {
            'money',
            'WEAPON_GOLFCLUB',
            'job_w_apple'
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
        Coords = vector3(452.24, -974.56, 30.68),
        Heading = 268.94,
        Model = 'p_v_43_safe_s',
        AllowBlackMoney = false,
        NeedItemLicense = {
            'vault_key_police',
        },
        ItemBlackList = {
            'money',
            'WEAPON_GOLFCLUB',
            'job_w_apple'
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
        Coords = vector3(339.8, -575.32, 43.32),
        Heading = 342.16,
        Model = 'p_v_43_safe_s',
        AllowBlackMoney = false,
        NeedItemLicense = {
            'vault_key_ambulance',
        },
        ItemBlackList = {
            'money',
            'WEAPON_GOLFCLUB',
            'job_w_apple'
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

Config.ItemBlackList = {
    'water',
    'WEAPON_HAMMER',
    'WEAPON_HATCHET',
    'WEAPON_KNUCKLE',
    'WEAPON_KNIFE',
}

--TODO -- ตัวอย่างการใช้งานกับ nc_discordlogs หรือ azael_dc-serverlogs ตรง DiscordHook ให้เปลี่ยนจากใส่ link เป็นใส่ชื่อ hook ที่สร้างไว้ใน script log ของแต่ละเจ้า
--TODO -- และใน config.function.lua ที่ Config.ServerOnSendDiscord ให้ส่งไปตามตัวอย่างได้เลย
--['ambulance'] = {
--    Name = 'หมอ',
--    Coords = vector3(339.8, -575.32, 43.32),
--     Heading = 342.16,
--     Model = 'p_v_43_safe_s',
--     AllowBlackMoney = false,
--     NeedItemLicense = {
--         'vault_key_ambulance',
--     },
--     ItemBlackList = {
--         'money',
--         'water',
--         'WEAPON_GOLFCLUB',
--     },
--     DiscordHook = {
--         ["PutItem"]   = "vaultAmbulancePutItem", -- นำไอเท็มเข้า
--         ["PutMoney"]  = "vaultAmbulancePutMoney", -- นำเงินเข้า
--         ["PutWeapon"] = "vaultAmbulancePutWeapon", -- นำอาวุธเข้า
--          ["GetItem"]   = "vaultAmbulanceGetItem", -- นำไอเท็มออก
--         ["GetMoney"]  = "vaultAmbulanceGetMoney", -- นำเงินออก
--         ["GetWeapon"] = "vaultAmbulanceGetWeapon", -- นำอาวุธออก
--     }
-- },
