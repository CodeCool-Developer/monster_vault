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
        NeedItemLicense = {
            'vault_key',
            'vault_key_3_day',
            'vault_key_7_day',
        },
        AllowBlackMoney = true,         -- vault_black_money
        DiscordHook = {
            ["PutItem"]     = "https://discord.com/api/webhooks/1020469576305233990/UZDcstEt9e427a79MTSxRjKJWC8tXd1OcNSRFEePAkGJthZv9c3yqvK7BOgnOBtib8Ov", -- นำไอเท็มเข้า
            ["PutMoney"]    = "https://discord.com/api/webhooks/1020469618210508851/hylzShaqSdbNRiYKLPU9WglVjGgggq7GmPYtCQSU28CWlaWer7kITgMGKLWMxEaYTz2m", -- นำเงินเข้า
            ["PutWeapon"]   = "https://discord.com/api/webhooks/1020469666478555197/yY856kAK6EOrjB6e84qupmtinwIjC3dnWDMo9aLNmttunDlLumesTxCqpECkXiif1Gpb", -- นำอาวุธเข้า
            ["GetItem"]     = "https://discord.com/api/webhooks/1020469702776078398/gR05MmIGNs6JmyWvZEvlEvTz22YvXIIj2VhEKuQw-86IZIaDUcMBvzQH7QvqxN70NBlL", -- นำไอเท็มออก
            ["GetMoney"]    = "https://discord.com/api/webhooks/1020469734191415346/QhtN5pZ-2fSrGswjPhuWKE1IjjWiBemTS8rZ4wR2ilSejRyccokSDah8g8ynYoptutmt", -- นำเงินออก
            ["GetWeapon"]   = "https://discord.com/api/webhooks/1020469776629375027/D3FobxLt9yS1b6VEaMM1yQ9vsWOyZHhKy4307dUBU17xvkbzZIAuWr7_VP5QwLoffcQc", -- นำอาวุธออก
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
            ["PutItem"]     = "https://discord.com/api/webhooks/1020470328499109929/FmYQLg2HQmd-yBEvRdNXY07kmI-3ExQBM9tqsJOwIxwpdISKoxS7dLB5ZfsgHTpJhiP6", -- นำไอเท็มเข้า
            ["PutMoney"]    = "https://discord.com/api/webhooks/1020470376536477696/c8YxxQN6aeQp28ef7Yu5Q-8DOM_1510DRUOcX7tnAoVuh4bAency5u7YYaCBAFUcSkBE", -- นำเงินเข้า
            ["PutWeapon"]   = "https://discord.com/api/webhooks/1020470406198607982/_HcVPcMNAXL7htaPClX4dpRQKuyAkO5k__gxWIie8Kiuei7bbFdkgo9JkeNbioWiTxfl", -- นำอาวุธเข้า
            ["GetItem"]     = "https://discord.com/api/webhooks/1020470443817316382/dpsZ1TFSeE57TsnPJMlVoyhxbsnGiRTOopQw8adYphHdpVXflTUcVWvV1vwk8pyM-F7_", -- นำไอเท็มออก
            ["GetMoney"]    = "https://discord.com/api/webhooks/1020470469595517069/baon5wJxZ32s1HLkPNPddFGMKFuKXYiEXtPVPrwasYQ5lMEdpCMSYyOGAoGait7gnVsn", -- นำเงินออก
            ["GetWeapon"]   = "https://discord.com/api/webhooks/1020470502806003752/rbcju78QHcEoUQsS6I14m12ojrdTOF6RozEqna13axIobkrjU4vDhIWGdCz5KlkOljDO", -- นำอาวุธออก
        }
    },
    ['ambulance'] = {
        Name = 'หมอ',
        Coords = vector3(339.8, -575.32, 43.32),
        Heading = 342.16,
        Model = 'p_v_43_safe_s',
        NeedItemLicense = {
            'vault_key_ambulance',
        },
        AllowBlackMoney = false,
        DiscordHook = {
            ["PutItem"]     = "https://discord.com/api/webhooks/1020472109908099142/2nuZZxrjdjcI24xz-lailXILWWIJBA0qsQpA7C87-DHF_aGlgBowdEnFg57oV4K083oJ", -- นำไอเท็มเข้า
            ["PutMoney"]    = "https://discord.com/api/webhooks/1020472144561451008/YGkKT33r1Sr-v7DyW_W02cxiSNCjsTkTdLH3l0ceeYLfCJyoJ_JhOWrnleR9F7Dlpiax", -- นำเงินเข้า
            ["PutWeapon"]   = "https://discord.com/api/webhooks/1020472170670993519/2xZDjw_-aMmcPaCv5jtAZm6zirD3xs1WpdrGGy-Yoo6CCz_oCbVCtDUjxLGNL12yxy_O", -- นำอาวุธเข้า
            ["GetItem"]     = "https://discord.com/api/webhooks/1020472199796244500/Dy53EqalY3rxN533JCTL8XU6mZ6UszxF4iZek_nVM9kKjWvd19G6tAO9zVqIZ5K8vFZk", -- นำไอเท็มออก
            ["GetMoney"]    = "https://discord.com/api/webhooks/1020472228049076244/7Y8D0hxdpWoZ6Pb_SBsPTNIai0iHn6CfCZW7A2lWK8FzOeiLrkkeRRMXGNFWMNOWH76e", -- นำเงินออก
            ["GetWeapon"]   = "https://discord.com/api/webhooks/1020472254896807986/NQGtlYdkl4i5MkEGAePFtzrWp8naBTnt5d6IMsASdR9bgOhU1X_GJTlQrbgzK2r_AnDO", -- นำอาวุธออก
        }
    },
}

Config.ItemBlackList = {
    'job_w_banana',
    'job_w_apple',
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