RpcApi.SimpleOrganism[RpcApi.SimpleOrganism(0x00000000000a244d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_34(var_33::Int16=-5267)
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_33
        end
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_17 = Int(Creature.idRight(o))
            var_31 = if 127 >= abs(6895082982099111278)
                    Int8(6895082982099111278)
                else
                    127
                end
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.80144,0,88.565,518416,0x0000006d,Dict(0=>0,127=>127),[781,315],4416,36,75),RpcApi.SimpleOrganism(0x00000000000a1d5e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)                                                                     local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            Creature.eatRight(c,o,Int(var_32))                                                                             end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = sec(14957)
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],42.7442,0,38.9908,487085,0x0000006b,Dict(0=>0,127=>127),[771,313],22254,2,69),RpcApi.SimpleOrganism(0x00000000000a24c7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_33::String = "02zAAGsu"
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]                                                                                                  else                                                                                                                   var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = isempty("Fk6ZgIfQ")
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],25.3799,0,8.34357,440917,0x0000006b,Dict(0=>0,127=>127),[776,314],3196,29,67),RpcApi.SimpleOrganism(0x00000000000a1df5,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            var_20 = var_20 * var_20
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            o.mem[var_4] = var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = (Int8)(var_32) << (Int8)(var_32)
        end
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8                                                                                              var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],92.7061,0,45.0922,312935,0x0000006b,Dict(0=>0,127=>127),[791,311],20741,32,64),RpcApi.SimpleOrganism(0x00000000000a2593,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_37::Bool=true,var_38::Float64=0.085098,var_39::Float64=0.126393)
            var_37 = var_37 & var_37
            var_38 = pi
            return var_37
        end
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_31 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(o.pos.y)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)                                                                                          local var_32::Int8 = 79
            Creature.eatRight(c,o,Int(var_32))
            var_32 = func_5(var_32)
        end
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_36::Bool = true
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],15.9098,0,21.8462,293785,0x0000006b,Dict(316=>316,0=>0,319=>319,314=>314,321=>321,1001=>1001,320=>320,317=>317,127=>127,315=>315,322=>322,318=>318),[816,322],1156,13,70),RpcApi.SimpleOrganism(0x00000000000a25a0,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_36 = Int(Creature.idUp(o))
            var_37 = string(var_37)
            var_37 = string(var_38)
            var_36 = Int(Creature.idRight(o))
            var_36 = Int(Creature.idDown(o))
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_8 = 0.288695 < (Float64)(1)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)                                                                                       var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],95.7215,0,62.7096,268566,0x0000006b,Dict(830=>830,824=>824,0=>0,838=>838,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[838,350],1027,16,69),RpcApi.SimpleOrganism(0x00000000000a248b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::String = "DHwecIIq"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            var_20 = string(var_20)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_34::String = "TeiKrSfF"
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = (Int8)(var_31) | (Int8)(var_18)
            var_31 = var_3 - var_3
            var_17 = Creature.energyUp(o)
            var_31 = (Int8)(var_31) | (Int8)(var_18)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                local var_35::Bool = false
                var_35 = Bool(abs(var_35 - var_35))
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
                var_35 = isempty("7ZhIDm4P")
            end
            var_4 = Int16(o.color)
            o.mem[var_4] = var_4
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_31)))
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(o.color)
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246                                                                                                Int8(round(0.166246))
                else
                    127
                end
            var_31 = (Int8)(var_3) | (Int8)(var_18)
            var_18 = if 127 >= abs(var_31)
                    Int8(var_31)
                else
                    127
                end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = if false
                    1
                else
                    0
                end
        end
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023                                                                                  var_28 = Float64(6746598103934035732)
            var_28 = pi
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_2 = func_5(var_2)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],48.8712,0,21.2337,248366,0x0000006c,Dict(306=>306,1316=>1316,1333=>1333,1889=>1889,1895=>1895,289=>289,318=>318,1845=>1845,803=>803,1819=>1819,1533=>1533,552=>552,1816=>1816,489=>489,117=>117,1386=>1386,1400=>1400,534=>534,559=>559,1714=>1714,1374=>1374,1587=>1587,1155=>1155,1549=>1549,797=>797,353=>353,617=>617,79=>79,1479=>1479,579=>579,1664=>1664,1746=>1746,184=>184,1301=>1301,1705=>1705,107=>107,1393=>1393,129=>129,1743=>1743,88=>88,429=>429,966=>966,980=>980,261=>261,149=>149,514=>514,840=>840,1358=>1358,630=>630,1456=>1456,15=>15,245=>245,461=>461,1135=>1135,957=>957,1635=>1635,1822=>1822,1488=>1488,573=>573,1158=>1158,236=>236,1787=>1787,1505=>1505,1278=>1278,1141=>1141,592=>592,973=>973,1418=>1418,1199=>1199,1857=>1857,620=>620,543=>543,1240=>1240,549=>549,135=>135,1148=>1148,37=>37,1100=>1100,394=>394,436=>436,1813=>1813,1574=>1574,309=>309,1769=>1769,30=>30,47=>47,366=>366,1511=>1511,944=>944,91=>91,9=>9,1173=>1173,152=>152,1348=>1348,1568=>1568,843=>843,1077=>1077,941=>941,795=>795,1673=>1673,846=>846,1008=>1008,177=>177,123=>123,312=>312,446=>446,1435=>1435,1365=>1365,1368=>1368,602=>602,1074=>1074,508=>508,1444=>1444,1775=>1775,142=>142,935=>935,614=>614,986=>986,1403=>1403,1638=>1638,874=>874,1058=>1058,820=>820,817=>817,1083=>1083,1307=>1307,1755=>1755,1093=>1093,1540=>1540,1228=>1228,963=>963,94=>94,1112=>1112,1647=>1647,373=>373,1065=>1065,455=>455,0=>0,599=>599,417=>417,891=>891,1784=>1784,426=>426,1211=>1211,1546=>1546,1463=>1463,884=>884,1778=>1778,1450=>1450,12=>12,1231=>1231,1246=>1246,1288=>1288,1810=>1810,471=>471,1167=>1167,1734=>1734,1559=>1559,274=>274,1118=>1118,338=>338,1115=>1115,1205=>1205,634=>634,1068=>1068,97=>97,1740=>1740,85=>85,1377=>1377,1018=>1018,894=>894,1071=>1071,1330=>1330,356=>356,254=>254,458=>458,1702=>1702,635=>635,1476=>1476,1594=>1594,868=>868,1644=>1644,849=>849,233=>233,1737=>1737,1109=>1109,1571=>1571,286=>286,408=>408,1867=>1867,524=>524,1441=>1441,932=>932,126=>126,1351=>1351,190=>190,1428=>1428,1708=>1708,303=>303,1682=>1682,82=>82,567=>567,228=>228,537=>537,947=>947,347=>347,1848=>1848,517=>517,1603=>1603,1580=>1580,989=>989,1685=>1685,1543=>1543,1202=>1202,1263=>1263,540=>540,161=>161,1138=>1138,1336=>1336,24=>24,222=>222,1514=>1514,1036=>1036,1438=>1438,53=>53,1453=>1453,1176=>1176,502=>502,1260=>1260,496=>496,983=>983,27=>27,1196=>1196,56=>56,1600=>1600,633=>633,1772=>1772,1629=>1629,1807=>1807,158=>158,464=>464,582=>582,391=>391,478=>478,1103=>1103,992=>992,499=>499,1565=>1565,1015=>1015,1218=>1218,114=>114,1880=>1880,511=>511,1170=>1170,1164=>1164,1797=>1797,1412=>1412,1790=>1790,1208=>1208,564=>564,50=>50,608=>608,248=>248,1727=>1727,1520=>1520,1699=>1699,605=>605,132=>132,1720=>1720,231=>231,1609=>1609,401=>401,855=>855,786=>786,1517=>1517,1552=>1552,1558=>1558,120=>120,225=>225,167=>167,903=>903,414=>414,1447=>1447,62=>62,21=>21,1523=>1523,280=>280,251=>251,561=>561,1825=>1825,877=>877,331=>331,1854=>1854,638=>638,1508=>1508,1237=>1237,1670=>1670,1234=>1234,909=>909,239=>239,1892=>1892,155=>155,296=>296,1470=>1470,344=>344,787=>787,929=>929,1498=>1498,205=>205,1161=>1161,1272=>1272,871=>871,212=>212,1415=>1415,1860=>1860,452=>452,65=>65,202=>202,44=>44,324=>324,127=>127,858=>858,1080=>1080,1193=>1193,637=>637,1804=>1804,800=>800,1421=>1421,1027=>1027,1033=>1033,1485=>1485,379=>379,960=>960,919=>919,1323=>1323,1606=>1606,998=>998,570=>570,826=>826,1045=>1045,1086=>1086,100=>100,411=>411,1555=>1555,1225=>1225,196=>196,576=>576,268=>268,1851=>1851,1667=>1667,1632=>1632,277=>277,1612=>1612,1842=>1842,1275=>1275,1491=>1491,1641=>1641,861=>861,164=>164,108=>108,1190=>1190,2=>2,1269=>1269,1128=>1128,1562=>1562,1874=>1874,1253=>1253,788=>788,900=>900,611=>611,1313=>1313,1832=>1832,1304=>1304,283=>283,1650=>1650,1657=>1657,1024=>1024,926=>926,1310=>1310,1839=>1839,833=>833,1001=>1001,350=>350,823=>823,1281=>1281,585=>585,906=>906,1679=>1679,636=>636,897=>897,359=>359,481=>481,1622=>1622,1298=>1298,1051=>1051,1749=>1749,482=>482,1877=>1877,1266=>1266,912=>912,242=>242,1781=>1781,1577=>1577,1345=>1345,805=>805,505=>505,1752=>1752,443=>443,1676=>1676,1762=>1762,1526=>1526,72=>72,449=>449,1339=>1339,1021=>1021,1597=>1597,170=>170,382=>382,193=>193,938=>938,1380=>1380,59=>59,199=>199,1183=>1183,995=>995,811=>811,631=>631,865=>865,1692=>1692,1121=>1121,18=>18,388=>388,852=>852,219=>219,1243=>1243,187=>187,1883=>1883,1886=>1886,814=>814,1371=>1371,1383=>1383,1406=>1406,531=>531,954=>954,1482=>1482,1295=>1295,385=>385,1342=>1342,1039=>1039,808=>808,546=>546,376=>376,1048=>1048,862=>862,632=>632,1711=>1711,629=>629,341=>341,321=>321,1030=>1030,420=>420,1615=>1615,1042=>1042,1717=>1717,423=>423,271=>271,1106=>1106,315=>315,1409=>1409,1473=>1473),[640,319],3797,70,87),RpcApi.SimpleOrganism(0x00000000000a1f72,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_41::Int16 = 5598
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_40::Int8 = -33
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end                                                                                                        var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepRight(o)
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_38 = string(var_38)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = 2076969366078696768 > (Int64)(0)
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = 0.176567 < (Float64)(1)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_8 = Creature.stepRight(o)
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)                                                                                        end
        return true
    end),[98,38,30,73,83,1,72,0,51],53.2212,0,71.3625,247653,0x0000006b,Dict(0=>0,119=>119,127=>127,30=>30),[1354,619],16893,62,66),RpcApi.SimpleOrganism(0x00000000000a24c1,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_40::Int8 = -41
            var_38 = Creature.stepDown(o)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_37 = string(var_38)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(o.pos.y)
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= 0.367101
                    Int16(round(0.367101))
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        Creature.eatRight(c,o,Int(var_33))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))                                                                     var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],90.3113,0,4.32337,234085,0x0000006c,Dict(830=>830,828=>828,815=>815,835=>835,820=>820,824=>824,817=>817,0=>0,838=>838,837=>837,833=>833,832=>832,831=>831,814=>814,827=>827,816=>816,819=>819,813=>813,823=>823,811=>811,825=>825,829=>829,127=>127,836=>836,840=>840,822=>822,812=>812,821=>821,826=>826,841=>841,818=>818,834=>834,839=>839),[841,351],3255,3,68),RpcApi.SimpleOrganism(0x00000000000a235a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            if var_20 != var_20
            end
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if false
                    1
                else
                    0
                end
            o.mem[var_4] = var_4
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_2 = var_2 * var_2
        return true
    end),[98,38,30,73,83,1,72,0,51],7.33872,0,94.1718,230872,0x0000006b,Dict(0=>0,47=>47,72=>72,48=>48,127=>127),[1322,271],6865,93,57),RpcApi.SimpleOrganism(0x00000000000a1ab3,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_33 = if haskey(o.mem,var_33)
                    o.mem[var_33]
                else
                    var_33
                end
            Creature.stepUp(o)
            var_6 = string(true)
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)                                                                                            Creature.eatDown(c,o,Int(var_2))                                                                                   var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
            var_28 = pi
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],28.1883,0,56.0474,216027,0x0000006b,Dict(0=>0,127=>127),[777,316],29117,28,72),RpcApi.SimpleOrganism(0x00000000000a128c,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(0.288045)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4                                                                                                          end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],3.16157,0,52.8146,204837,0x0000006b,Dict(0=>0,127=>127),[1603,271],50020,14,59),RpcApi.SimpleOrganism(0x00000000000a1a9a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            if var_4 == var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))                                                                      var_18 = if 127 >= 0.166246                                                                                                Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 * var_32
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = if isempty("rHgurgJP")
                    0.0
                else
                    1.0
                end
            var_28 = cos(-97)
            var_28 = cot(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],79.4687,0,12.6461,201288,0x0000006b,Dict(0=>0,127=>127),[788,312],29368,49,67),RpcApi.SimpleOrganism(0x00000000000a236d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            o.mem[var_4] = var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))                                                                    var_17 = Int(Creature.idRight(o))                                                                                  var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = (Int8)(var_32) << (Int8)(var_32)
        end
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
            var_28 = sqrt(abs(var_28))
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],88.1691,0,28.3815,198362,0x0000006b,Dict(0=>0,127=>127),[792,312],6676,76,61),RpcApi.SimpleOrganism(0x00000000000a2449,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = var_4 + var_4
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3                                                                                                   end
        var_13 = Int16(o.color)                                                                                            var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        Creature.eatDown(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],72.0405,0,0.597102,195492,0x0000006b,Dict(830=>830,828=>828,845=>845,815=>815,835=>835,820=>820,824=>824,817=>817,0=>0,838=>838,837=>837,833=>833,832=>832,831=>831,814=>814,827=>827,816=>816,846=>846,819=>819,813=>813,848=>848,823=>823,811=>811,825=>825,847=>847,829=>829,127=>127,836=>836,840=>840,844=>844,842=>842,822=>822,812=>812,821=>821,826=>826,843=>843,818=>818,841=>841,834=>834,839=>839,849=>849),[849,351],4458,99,62),RpcApi.SimpleOrganism(0x00000000000a2049,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_36 = Int(Creature.idUp(o))
            var_36 = Int(Creature.idDown(o))
            var_38 = Creature.stepRight(o)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        Creature.eatDown(c,o,Int(var_2))                                                                                   Creature.eatRight(c,o,Int(var_2))                                                                                  var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)                                                                                       var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.41689,0,19.101,187957,0x0000006b,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,820=>820,817=>817,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127),[831,347],14735,50,63),RpcApi.SimpleOrganism(0x00000000000a1f69,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            local var_31::Bool = true
            var_31 = Creature.stepLeft(o)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            var_17 = if 127 >= 0.992323
                    Int8(round(0.992323))
                else
                    127
                end
            Creature.stepUp(o)
            var_17 = var_17 - var_17
            var_17 = (Int8)(var_17) | (Int8)(var_17)
            Creature.eatRight(c,o,Int(var_17))
            for i::Int8 = 1:div(var_17,16)
                Creature.stepLeft(o)
            end
            return var_17
        end
        local var_13::Int16 = 1446
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_32::Int8 = -40
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_21::Int16 = -16711
            local var_19::Int64 = 8381526388126889670
            var_19 = (Int64)(var_19) & (Int64)(var_19)
            var_19 = Int(var_3)
            var_19 = Int(round(0.293498))
            var_19 = (Int64)(var_19) | (Int64)(var_19)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_21 = if 32767 >= abs(var_19)
                    Int16(var_19)
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_19 = (Int64)(var_19) $ (Int64)(var_19)
            var_21 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_21
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idLeft(o))
            var_4 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_4                                                                                                          end                                                                                                            o.mem[var_21] = var_21
            var_21 = (Int16)(var_21) & (Int16)(var_21)
            var_19 = Creature.energyRight(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_19 = Creature.energyLeft(o)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = Int(Creature.idLeft(o))
            return var_3
        end
        var_13 = var_13 % if var_13 === (Int16)(0)
                    (Int16)(1)
                else
                    var_13
                end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = func_5(var_2)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if 32767 >= abs(3185861975728357435)
                Int16(3185861975728357435)
            else
                32767
            end
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Int(var_1)
        var_13 = if isempty("Bnm5Bc6T")
                0
            else
                1
            end
        var_13 = div(var_13,if var_13 === (Int16)(0)
                    (Int16)(1)
                else
                    var_13
                end)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            var_22 = 90 < (Int8)(1)
        end
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
            local var_33::Int16 = 25996
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],93.5242,0,76.548,187910,0x0000006d,Dict(0=>0,127=>127,1=>1),[511,607],16986,8,84),RpcApi.SimpleOrganism(0x00000000000a24a3,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_39::Int8 = 40
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)                                                                     local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.color)
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-6724586075432056744)
                    Int8(-6724586075432056744)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],12.0221,0,46.1771,184016,0x0000006b,Dict(0=>0,119=>119,31=>31,47=>47,120=>120,107=>107,56=>56,48=>48,22=>22,127=>127),[879,383],3556,61,60),RpcApi.SimpleOrganism(0x00000000000a2394,:(function (c::Config.ConfigData,o::Creature.Organism)                                                                                  function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = (Bool)(var_39) | (Bool)(var_39)
            var_39 = Creature.stepDown(o)
            var_39 = Creature.stepLeft(o)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_41::String = "ZCjvw9XJ"
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            if var_41 != var_41
            end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_18 = if 127 >= abs(9082486496736465654)
                    Int8(9082486496736465654)
                else
                    127
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = var_18 - var_3
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_18 = if 127 >= abs(var_3)
                    Int8(var_3)
                else
                    127
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        var_8 = Creature.stepRight(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],88.8742,0,6.33218,183927,0x0000006b,Dict(0=>0,119=>119,63=>63,94=>94,127=>127),[985,630],6283,9,72),RpcApi.SimpleOrganism(0x00000000000a106a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")                                                                              Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 * var_32
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = if isempty("rHgurgJP")
                    0.0
                else
                    1.0
                end
            var_28 = cos(-97)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true                                                                                                    end),[98,38,30,73,83,1,72,0,51],59.2918,0,28.6812,180049,0x0000006b,Dict(0=>0,127=>127),[786,312],55512,16,66),RpcApi.SimpleOrganism(0x00000000000a1a75,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_39::Bool = true
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],27.3094,0,81.3793,174263,0x0000006b,Dict(0=>0,119=>119,31=>31,40=>40,39=>39,127=>127),[1090,421],29738,7,62),RpcApi.SimpleOrganism(0x00000000000a24b6,:(function (c::Config.ConfigData,o::Creature.Organism)                                                                                                                 function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_40::Int8 = -41
            var_38 = Creature.stepUp(o)
            var_36 = Creature.energyUp(o)
            var_36 = Int(Creature.idDown(o))
            var_37 = string(var_38)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(o.pos.y)
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= 0.367101
                    Int16(round(0.367101))
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],52.4554,0,92.966,173097,0x0000006c,Dict(830=>830,824=>824,0=>0,838=>838,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,840=>840,834=>834,839=>839),[840,350],3365,77,67),RpcApi.SimpleOrganism(0x00000000000a0f05,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")                                                                            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)                                                                                      var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        if var_8 >= var_8
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],26.4295,0,88.4288,168973,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,103=>103,48=>48,127=>127),[459,689],59094,20,63),RpcApi.SimpleOrganism(0x00000000000a1a7a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")                                                                              return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)                                                                     local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],47.6186,0,28.1588,167134,0x0000006b,Dict(0=>0,127=>127),[1320,269],29689,16,57),RpcApi.SimpleOrganism(0x00000000000a1bee,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            o.mem[var_4] = var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))                                                                    var_17 = Int(Creature.idRight(o))                                                                                  var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = (Int8)(var_32) << (Int8)(var_32)
        end
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],11.6522,0,45.0922,164252,0x0000006b,Dict(0=>0,127=>127),[790,311],25946,72,63),RpcApi.SimpleOrganism(0x00000000000a20ac,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4                                                                                                          end                                                                                                            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],94.9137,0,90.6712,163658,0x0000006c,Dict(0=>0,127=>127),[776,318],13747,52,69),RpcApi.SimpleOrganism(0x00000000000a1b1d,:(function (c::Config.ConfigData,o::Creature.Organism)                            local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = var_4 + var_4
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end                                                                                                                var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],64.5084,0,84.9295,158274,0x0000006b,Dict(830=>830,828=>828,845=>845,815=>815,835=>835,820=>820,824=>824,817=>817,0=>0,838=>838,837=>837,833=>833,832=>832,831=>831,814=>814,827=>827,816=>816,846=>846,819=>819,813=>813,848=>848,823=>823,811=>811,825=>825,847=>847,829=>829,127=>127,836=>836,840=>840,844=>844,842=>842,822=>822,812=>812,821=>821,826=>826,843=>843,818=>818,841=>841,834=>834,839=>839),[848,350],28059,15,61),RpcApi.SimpleOrganism(0x00000000000a216f,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_36 = Int(Creature.idUp(o))
            var_37 = string(var_37)
            var_36 = Creature.energyUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyLeft(o)
            var_36 = Int(Creature.idDown(o))
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],77.2273,0,35.7519,156596,0x0000006b,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[836,349],11775,50,68),RpcApi.SimpleOrganism(0x00000000000a10d4,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_18)
                    Int16(var_18)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)                                                                                            var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],18.7967,0,42.7027,155331,0x0000006b,Dict(0=>0,119=>119,127=>127),[1764,200],54450,7,59),RpcApi.SimpleOrganism(0x00000000000a1fae,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3                                                                                                   end
        var_13 = Int16(o.color)                                                                                            var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,6.45853,154039,0x0000006b,Dict(0=>0,119=>119,112=>112,118=>118,127=>127),[1489,170],16295,50,60),RpcApi.SimpleOrganism(0x00000000000a1775,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            if var_20 != var_20
            end
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)                                                                                               Int8(30028)                                                                                                    else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        Creature.eatRight(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],3.41671,0,78.5537,150385,0x0000006b,Dict(0=>0,119=>119,127=>127),[1173,585],37416,64,61),RpcApi.SimpleOrganism(0x00000000000a1b2b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))                                                                                          else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 * var_32
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],4.09412,0,56.6256,149501,0x0000006b,Dict(0=>0,127=>127),[777,308],27916,50,68),RpcApi.SimpleOrganism(0x00000000000a1cde,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)                                                                                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.01898,0,70.3418,149278,0x0000006b,Dict(0=>0,119=>119,58=>58,48=>48,127=>127),[1838,694],23539,50,60),RpcApi.SimpleOrganism(0x00000000000a2409,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            var_6 = string(0.909701)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_39 = Creature.stepLeft(o)
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end                                                                                                        var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = 7072649080054378790 < (Int64)(1)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        if var_8 >= var_8
            local var_41::Float64 = 0.208425
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],38.7287,0,17.0778,142366,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,103=>103,48=>48,127=>127),[146,887],5103,98,67),RpcApi.SimpleOrganism(0x00000000000a192d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)                                                                                            var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,50.7198,141945,0x0000006b,Dict(0=>0,119=>119,120=>120,48=>48,56=>56,118=>118,127=>127),[1172,80],33017,50,60),RpcApi.SimpleOrganism(0x00000000000a237b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_36::Int8 = -62
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)                                                                                            var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = 19490 > (Int16)(0)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],90.0976,0,39.4861,140116,0x0000006b,Dict(0=>0,127=>127),[1769,271],6536,21,63),RpcApi.SimpleOrganism(0x00000000000a2573,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::String = "u3QTEDTs"
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_48::Int64 = -6293073624067597708
            local var_43::Int8 = -40
            var_30 = Int16(Creature.eatDown(c,o,Int(var_43)))
            Creature.stepLeft(o)
            o.mem[var_49] = var_49
            o.mem[var_42] = var_30
            if var_30 < var_30
            end
            var_29 = var_29 * var_29
            var_43 = (Int8)(var_43) >> (Int8)(var_43)
            if var_29 <= var_29
            end
            var_48 = Int(Creature.idRight(o))
            var_42 = (Int16)(var_30) >> (Int16)(var_42)
            var_30 = if 32767 >= abs(var_43)
                    Int16(var_43)
                else
                    32767
                end
            Creature.stepLeft(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_44::String = "F7I4ygrV"
            return var_6
        end
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idDown(o))
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= 0.388149
                Int8(round(0.388149))
            else
                127
            end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_33 = Int(Creature.idDown(o))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.stepUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(var_2)
        var_28 = string(0.77727)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Int(Creature.idDown(o))
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)                                                                                   var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idRight(o))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_20 = string(var_33)
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(o.pos.y)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            local var_47::Bool = true
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepDown(o)
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],86.5733,0,61.3858,138834,0x0000006c,Dict{Int16,Int16}(),[1758,296],1475,94,71),RpcApi.SimpleOrganism(0x00000000000a1787,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end                                                                                                                local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],90.433,0,97.7294,136553,0x0000006b,Dict(0=>0,119=>119,102=>102,103=>103,127=>127),[456,174],37240,50,62),RpcApi.SimpleOrganism(0x00000000000a126a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_40::Float64 = 0.0682069
            var_20 = var_20 * var_20
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            var_6 = string(0.909701)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        if var_8 >= var_8
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)                                                                              var_8 = var_2 > (Int8)(0)                                                                                          o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],29.328,0,31.1135,135965,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,103=>103,48=>48,127=>127),[461,751],50371,39,66),RpcApi.SimpleOrganism(0x00000000000a1e40,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_31::Int16 = 7897
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            var_27 = cos(var_27)
            var_26 = var_26 * var_26
            var_26 = string(var_27)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepUp(o)
            var_17 = (Int8)(var_17) $ (Int8)(var_17)
            Creature.eatRight(c,o,Int(var_17))
            var_17 = if 127 >= 0.992323
                    Int8(round(0.992323))
                else
                    127
                end
            var_17 = var_17 - var_17
            Creature.eatDown(c,o,Int(var_17))
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            var_17 = (Int8)(var_17) | (Int8)(var_17)
            for i::Int8 = 1:div(var_17,16)
                Creature.stepRight(o)
            end
            return var_17
        end
        local var_13::Int16 = 1446
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_21::Int16 = -16711
            local var_19::Int64 = 8381526388126889670
            var_19 = (Int64)(var_19) & (Int64)(var_19)
            var_19 = Int(var_3)
            var_19 = Int(round(0.293498))
            var_19 = (Int64)(var_19) | (Int64)(var_19)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_21 = if 32767 >= abs(var_19)
                    Int16(var_19)
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_19 = (Int64)(var_19) $ (Int64)(var_19)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
            o.mem[var_21] = var_21
            var_19 = Creature.energyRight(o)
            var_19 = Int(var_21)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_19 = Creature.energyLeft(o)
            for i::Int8 = 1:div(var_3,16)
            end
            var_19 = Int(Creature.idLeft(o))
            return var_3
        end
        var_13 = var_13 % if var_13 === (Int16)(0)
                    (Int16)(1)
                else
                    var_13
                end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)                                                                                     var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_1 = Int(var_1)
        var_13 = if isempty("Bnm5Bc6T")
                0
            else
                1
            end
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            var_22 = 90 < (Int8)(1)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_13 > (Int16)(0)
        var_2 = if 127 >= abs(9209221037788761074)
                Int8(9209221037788761074)
            else
                127
            end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],46.5778,0,10.8181,132234,0x0000006c,Dict(0=>0,127=>127,1=>1),[529,599],19973,38,80),RpcApi.SimpleOrganism(0x00000000000a1af7,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            var_20 = string(true)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end                                                                                                        return var_3                                                                                                   end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],95.1726,0,61.5584,130004,0x0000006b,Dict(0=>0,119=>119,47=>47,58=>58,56=>56,127=>127),[1785,843],28439,5,61),RpcApi.SimpleOrganism(0x00000000000a2455,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")                                                                              return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,87.7001,128116,0x0000006b,Dict(0=>0,119=>119,49=>49,127=>127),[1272,801],4336,50,60),RpcApi.SimpleOrganism(0x00000000000a20d3,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)                        var_38 = Creature.stepDown(o)
            var_37 = var_37 * var_37
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = var_4 + var_4
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_8 = var_33 > (Int8)(0)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],10.3628,0,67.1104,126511,0x0000006b,Dict(830=>830,824=>824,0=>0,838=>838,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[838,353],13354,25,61),RpcApi.SimpleOrganism(0x00000000000a1e93,:(function (c::Config.ConfigData,o::Creature.Organism)                                                                                                                         local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],36.7061,0,64.0236,126299,0x0000006b,Dict(0=>0,119=>119,127=>127),[1001,869],19135,36,61),RpcApi.SimpleOrganism(0x00000000000a1d7d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)                                                                                            var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,89.6347,124973,0x0000006b,Dict(0=>0,119=>119,47=>47,120=>120,103=>103,127=>127,111=>111),[746,555],21935,50,59),RpcApi.SimpleOrganism(0x00000000000a252a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],17.0046,0,32.468,122450,0x0000006b,Dict(0=>0,119=>119,9=>9,102=>102,47=>47,121=>121,127=>127,65=>65,111=>111,30=>30),[668,209],2206,50,58),RpcApi.SimpleOrganism(0x00000000000a2509,:(function (c::Config.ConfigData,o::Creature.Organism)                                                                                   local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],73.2937,0,87.4723,121462,0x0000006b,Dict(0=>0,119=>119,47=>47,94=>94,127=>127),[1078,484],2536,50,60),RpcApi.SimpleOrganism(0x00000000000a131a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::String = "DHwecIIq"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            var_20 = string(var_20)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_34::String = "TeiKrSfF"
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = (Int8)(var_31) | (Int8)(var_18)                                                                           var_31 = var_3 - var_3                                                                                             var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                local var_35::Bool = false
                var_35 = Bool(abs(var_35 - var_35))
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            o.mem[var_4] = var_4
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_31)))
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(o.color)
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_31 = var_18 % if var_31 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_31
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_31 = (Int8)(var_3) | (Int8)(var_18)
            var_18 = if 127 >= abs(var_31)
                    Int8(var_31)
                else
                    127
                end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_2 = func_5(var_2)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end                                                                                                                var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],6.31792,0,71.6576,119337,0x0000006c,Dict(306=>306,1316=>1316,1333=>1333,1889=>1889,1895=>1895,289=>289,318=>318,1845=>1845,803=>803,1819=>1819,1533=>1533,552=>552,1816=>1816,489=>489,117=>117,1386=>1386,1400=>1400,534=>534,559=>559,1714=>1714,1374=>1374,1587=>1587,1155=>1155,1549=>1549,797=>797,353=>353,617=>617,79=>79,1479=>1479,579=>579,1664=>1664,1746=>1746,184=>184,1301=>1301,1705=>1705,107=>107,1393=>1393,129=>129,1743=>1743,88=>88,429=>429,966=>966,980=>980,261=>261,149=>149,514=>514,840=>840,1358=>1358,630=>630,1456=>1456,15=>15,245=>245,461=>461,1135=>1135,957=>957,1635=>1635,1822=>1822,1488=>1488,573=>573,1158=>1158,236=>236,1787=>1787,1505=>1505,1278=>1278,1141=>1141,592=>592,973=>973,1418=>1418,1199=>1199,1857=>1857,620=>620,543=>543,1240=>1240,549=>549,135=>135,1148=>1148,37=>37,1100=>1100,394=>394,436=>436,1813=>1813,1574=>1574,309=>309,1769=>1769,30=>30,47=>47,366=>366,1511=>1511,944=>944,91=>91,9=>9,1173=>1173,152=>152,1348=>1348,1568=>1568,843=>843,1077=>1077,941=>941,795=>795,1673=>1673,846=>846,1008=>1008,177=>177,123=>123,312=>312,446=>446,1435=>1435,1365=>1365,1368=>1368,602=>602,1074=>1074,508=>508,1444=>1444,1775=>1775,142=>142,935=>935,614=>614,986=>986,1403=>1403,1638=>1638,874=>874,1058=>1058,820=>820,817=>817,1083=>1083,1307=>1307,1755=>1755,1093=>1093,1540=>1540,1228=>1228,963=>963,94=>94,1112=>1112,1647=>1647,373=>373,1065=>1065,455=>455,0=>0,599=>599,417=>417,891=>891,1784=>1784,426=>426,1211=>1211,1546=>1546,1463=>1463,884=>884,1778=>1778,1450=>1450,12=>12,1231=>1231,1246=>1246,1288=>1288,1810=>1810,471=>471,1167=>1167,1734=>1734,1559=>1559,274=>274,1118=>1118,338=>338,1115=>1115,1205=>1205,634=>634,1068=>1068,97=>97,1740=>1740,85=>85,1377=>1377,1018=>1018,894=>894,1071=>1071,1330=>1330,356=>356,254=>254,458=>458,1702=>1702,635=>635,1476=>1476,1594=>1594,868=>868,1644=>1644,849=>849,233=>233,1737=>1737,1109=>1109,1571=>1571,286=>286,408=>408,1867=>1867,524=>524,1441=>1441,932=>932,126=>126,1351=>1351,190=>190,1428=>1428,1708=>1708,303=>303,1682=>1682,82=>82,567=>567,228=>228,537=>537,947=>947,347=>347,1848=>1848,517=>517,1603=>1603,1580=>1580,989=>989,1685=>1685,1543=>1543,1202=>1202,1263=>1263,540=>540,161=>161,1138=>1138,1336=>1336,24=>24,222=>222,1514=>1514,1036=>1036,1438=>1438,53=>53,1453=>1453,1176=>1176,502=>502,1260=>1260,496=>496,983=>983,27=>27,1196=>1196,56=>56,1600=>1600,633=>633,1772=>1772,1629=>1629,1807=>1807,158=>158,464=>464,582=>582,391=>391,478=>478,1103=>1103,992=>992,499=>499,1565=>1565,1015=>1015,1218=>1218,114=>114,1880=>1880,511=>511,1170=>1170,1164=>1164,1797=>1797,1412=>1412,1790=>1790,1208=>1208,564=>564,50=>50,608=>608,248=>248,1727=>1727,1520=>1520,1699=>1699,605=>605,132=>132,1720=>1720,231=>231,1609=>1609,401=>401,855=>855,786=>786,1517=>1517,1552=>1552,1558=>1558,120=>120,225=>225,167=>167,903=>903,414=>414,1447=>1447,62=>62,21=>21,1523=>1523,280=>280,251=>251,561=>561,1825=>1825,877=>877,331=>331,1854=>1854,638=>638,1508=>1508,1237=>1237,1670=>1670,1234=>1234,909=>909,239=>239,1892=>1892,155=>155,296=>296,1470=>1470,344=>344,787=>787,929=>929,1498=>1498,205=>205,1161=>1161,1272=>1272,871=>871,212=>212,1415=>1415,1860=>1860,452=>452,65=>65,202=>202,44=>44,324=>324,127=>127,858=>858,1080=>1080,1193=>1193,637=>637,1804=>1804,800=>800,1421=>1421,1027=>1027,1033=>1033,1485=>1485,379=>379,960=>960,919=>919,1323=>1323,1606=>1606,998=>998,570=>570,826=>826,1045=>1045,1086=>1086,100=>100,411=>411,1555=>1555,1225=>1225,196=>196,576=>576,268=>268,1851=>1851,1667=>1667,1632=>1632,277=>277,1612=>1612,1842=>1842,1275=>1275,1491=>1491,1641=>1641,861=>861,164=>164,1190=>1190,2=>2,1269=>1269,1128=>1128,1562=>1562,1874=>1874,1253=>1253,788=>788,900=>900,611=>611,1313=>1313,1832=>1832,1304=>1304,283=>283,1650=>1650,1657=>1657,1024=>1024,926=>926,1310=>1310,1839=>1839,833=>833,1001=>1001,350=>350,823=>823,1281=>1281,585=>585,906=>906,1679=>1679,636=>636,897=>897,359=>359,481=>481,1622=>1622,1298=>1298,1051=>1051,1749=>1749,482=>482,1877=>1877,1266=>1266,912=>912,242=>242,1781=>1781,1577=>1577,1345=>1345,805=>805,505=>505,1752=>1752,443=>443,1676=>1676,1762=>1762,1526=>1526,72=>72,449=>449,1339=>1339,1021=>1021,1597=>1597,170=>170,382=>382,193=>193,938=>938,1380=>1380,59=>59,199=>199,1183=>1183,995=>995,811=>811,631=>631,865=>865,1692=>1692,1121=>1121,18=>18,388=>388,852=>852,219=>219,1243=>1243,187=>187,1883=>1883,1886=>1886,814=>814,1371=>1371,1383=>1383,1406=>1406,531=>531,954=>954,1482=>1482,1295=>1295,385=>385,1342=>1342,1039=>1039,808=>808,546=>546,376=>376,1048=>1048,862=>862,632=>632,1711=>1711,629=>629,341=>341,321=>321,1030=>1030,420=>420,1615=>1615,1042=>1042,1717=>1717,423=>423,271=>271,1106=>1106,315=>315,1409=>1409,1473=>1473),[638,316],48600,30,82),RpcApi.SimpleOrganism(0x00000000000a2266,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Bool=true,var_37::Float64=0.739296,var_38::Bool=false)
            var_37 = tan(104)
            var_37 = sqrt(abs(var_37))
            var_37 = cos(98)
            if var_37 <= var_37
            end
            return var_36
        end
        function func_21(var_20::String="aEhz4rt6")
            local var_41::Bool = true
            var_20 = string(var_41)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            for i::Int8 = 1:div(var_3,16)
                Creature.stepRight(o)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            Creature.stepUp(o)
            var_4 = Int16(o.color)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            o.mem[var_4] = var_4
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)                                                                                                    else                                                                                                                   127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        Creature.eatDown(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = 0.158243 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        if var_2 !== var_2
        end
        var_8 = Creature.stepLeft(o)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = var_23 - var_23
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],78.9531,0,51.5468,119278,0x0000006b,Dict(0=>0,127=>127),[1216,828],9303,16,67),RpcApi.SimpleOrganism(0x00000000000a1e45,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],80.598,0,61.7117,118152,0x0000006b,Dict(0=>0,119=>119,31=>31,56=>56,127=>127),[793,393],19924,50,58),RpcApi.SimpleOrganism(0x00000000000a11ae,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_3 = if 127 >= abs(var_3)
                    Int8(var_3)
                else
                    127
                end
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_4 = Int16(o.pos.x)                                                                                             var_3 = (Int8)(var_3) | (Int8)(var_3)                                                                              var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = 15794 < (Int16)(1)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_8 = Creature.stepRight(o)
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = Creature.stepLeft(o)
        var_8 = var_2 > (Int8)(0)
        Creature.eatUp(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) >> (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],4.07818,0,19.7724,118008,0x0000006b,Dict(0=>0,119=>119,47=>47,127=>127),[1080,295],52258,14,65),RpcApi.SimpleOrganism(0x00000000000a14af,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_42(var_41::Int8=-84)
            local var_45::Int8 = 1
            var_41 = (Int8)(var_41) | (Int8)(var_41)
            var_41 = (Int8)(var_45) $ (Int8)(var_41)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepLeft(o)
            var_41 = var_41 + var_41
            var_41 = div(var_41,if var_41 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_41
                    end)
            var_41 = if true
                    1
                else
                    0
                end
            Creature.stepRight(o)
            var_41 = (Int8)(var_41) | (Int8)(var_41)
            Creature.stepLeft(o)
            return var_41
        end
        local var_40::String = "3M8wIEZn"
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = var_30 % if var_30 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_30
                    end
            Creature.stepLeft(o)
            var_44 = Creature.energyLeft(o)
            Creature.stepUp(o)
            var_44 = Int(Creature.idRight(o))
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(-4651)
            if var_6 >= var_6
            end
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)                                                                         var_33 = Creature.energyUp(o)                                                                                      var_2 = if 127 >= 0.385419                                                                                                 Int8(round(0.385419))                                                                                          else                                                                                                                   127                                                                                                            end                                                                                                            for i::Int8 = 1:div(var_2,16)                                                                                      end                                                                                                                var_2 = if 127 >= 0.388149                                                                                                 Int8(round(0.388149))                                                                                          else                                                                                                                   127                                                                                                            end                                                                                                            var_2 = if 127 >= abs(30028)                                                                                               Int8(30028)                                                                                                    else                                                                                                                   127                                                                                                            end                                                                                                            var_33 = Int(Creature.idRight(o))                                                                                  var_33 = if isempty(var_20)                                                                                                0                                                                                                              else                                                                                                                   1                                                                                                              end                                                                                                            Creature.eatRight(c,o,Int(var_2))                                                                                  Creature.eatDown(c,o,Int(var_2))                                                                                   Creature.eatRight(c,o,Int(var_2))                                                                                  var_33 = Int(Creature.idDown(o))                                                                                   Creature.eatUp(c,o,Int(var_2))                                                                                     var_33 = Creature.energyUp(o)                                                                                      Creature.eatLeft(c,o,Int(var_2))                                                                                   var_33 = Creature.energyUp(o)                                                                                      Creature.eatRight(c,o,Int(var_2))                                                                                  Creature.eatUp(c,o,Int(var_2))                                                                                     var_33 = Creature.energyUp(o)                                                                                      Creature.eatUp(c,o,Int(var_2))                                                                                     var_20 = string(24637)                                                                                             var_33 = Int(Creature.idRight(o))                                                                                  Creature.eatUp(c,o,Int(var_2))                                                                                     var_20 = string(var_20)                                                                                            var_33 = Int(Creature.idLeft(o))                                                                                   Creature.eatUp(c,o,Int(var_2))                                                                                     Creature.eatRight(c,o,Int(var_2))                                                                                  Creature.eatLeft(c,o,Int(var_2))                                                                                   var_33 = Creature.energyUp(o)                                                                                      var_33 = Creature.energyLeft(o)                                                                                    var_20 = func_7(var_28)                                                                                            var_33 = Creature.energyLeft(o)                                                                                    var_33 = Creature.energyDown(o)                                                                                    var_33 = (Int64)(var_33) | (Int64)(var_33)                                                                         var_20 = var_20 * var_20                                                                                           var_2 = if 127 >= abs(var_33)                                                                                              Int8(var_33)                                                                                                   else                                                                                                                   127                                                                                                            end                                                                                                            for i::Int8 = 1:div(var_2,16)                                                                                          var_36 = if 127 >= abs(1571)                                                                                               Int8(1571)                                                                                                     else                                                                                                                   127                                                                                                            end                                                                                                            Creature.eatDown(c,o,Int(var_36))                                                                                  var_36 = (Int8)(var_36) >> (Int8)(var_36)                                                                      end                                                                                                                var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))                                                                   var_2 = (Int8)(var_2) | (Int8)(var_2)                                                                              var_20 = string(-3373)                                                                                             Creature.eatRight(c,o,Int(var_2))                                                                                  var_33 = Int(Creature.idLeft(o))                                                                                   Creature.eatDown(c,o,Int(var_2))                                                                                   return true                                                                                                    end),[98,38,30,73,83,1,72,0,51],0.647635,0,91.3005,116439,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[646,875],44549,50,73),RpcApi.SimpleOrganism(0x00000000000a21e7,:(function (c::Config.ConfigData,o::Creature.Organism)                                                                                  local var_38::String = "Vm2emDuU"                                                                                  local var_36::String = "lLH70sn1"                                                                                  function func_21(var_20::String="aEhz4rt6")                                                                            var_20 = var_20[1:if length(var_20) > length(var_20)                                                                               0                                                                                                              else                                                                                                                   length(var_20) - length(var_20)                                                                                end]                                                                                                   return var_20                                                                                                  end                                                                                                                local var_8::Bool = true                                                                                           function func_7(var_6::String="ZKRF9L8v")                                                                              return var_6                                                                                                   end                                                                                                                function func_5(var_3::Int8=119,var_4::Int16=1001)                                                                     local var_18::Int8 = 72                                                                                            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))                                                                    var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))                                                                    var_17 = Int(Creature.idUp(o))                                                                                     var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))                                                                   var_4 = if haskey(o.mem,var_4)                                                                                             o.mem[var_4]                                                                                                   else                                                                                                                   var_4                                                                                                          end                                                                                                            if var_4 != var_4                                                                                                  end                                                                                                                var_17 = Creature.energyUp(o)                                                                                      var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))                                                                      var_4 = (Int16)(var_4) << (Int16)(var_4)                                                                           var_4 = Int16(o.pos.x)                                                                                             var_3 = (Int8)(var_3) | (Int8)(var_3)                                                                              var_17 = Int(Creature.idRight(o))                                                                                  var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))                                                                   var_4 = if 32767 >= abs(-6338901960376032265)                                                                              Int16(-6338901960376032265)                                                                                    else                                                                                                                   32767                                                                                                          end                                                                                                            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))                                                                      var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))                                                                     var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))                                                                   var_4 = if 32767 >= abs(-5746121176220009266)                                                                              Int16(-5746121176220009266)                                                                                    else                                                                                                                   32767                                                                                                          end                                                                                                            var_4 = Int16(o.color)                                                                                             var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))                                                                    var_4 = var_4 % if var_4 === (Int16)(0)                                                                                        (Int16)(1)                                                                                                     else                                                                                                                   var_4                                                                                                          end                                                                                                        return var_3                                                                                                   end                                                                                                                var_13 = Int16(o.color)                                                                                            var_2 = if 127 >= abs(30028)                                                                                               Int8(30028)                                                                                                    else                                                                                                                   127                                                                                                            end                                                                                                            var_13 = if haskey(o.mem,var_13)                                                                                           o.mem[var_13]                                                                                                  else                                                                                                                   var_13                                                                                                         end                                                                                                            var_8 = var_8 | var_8                                                                                              var_2 = (Int8)(var_2) | (Int8)(var_2)                                                                              Creature.eatDown(c,o,Int(var_2))                                                                                   if var_38 < var_36                                                                                                 end                                                                                                                var_1 = Creature.energyDown(o)                                                                                     Creature.eatRight(c,o,Int(var_2))                                                                                  var_2 = func_5(var_2,var_13)                                                                                       var_13 = Int16(o.color)                                                                                            var_2 = func_5(var_2,var_13)                                                                                       var_8 = isempty("I33YlJlI")                                                                                        var_8 = Creature.stepUp(o)                                                                                         var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))                                                                  var_13 = Int16(o.pos.x)                                                                                            var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))                                                                   var_13 = Int16(o.color)                                                                                            Creature.eatUp(c,o,Int(var_2))                                                                                     var_8 = var_8 | var_8                                                                                              var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))                                                                     var_8 = Creature.stepRight(o)                                                                                      Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.01898,0,48.6857,114288,0x0000006b,Dict(0=>0,119=>119,47=>47,120=>120,56=>56,94=>94,39=>39,127=>127,57=>57),[1119,391],10575,17,61),RpcApi.SimpleOrganism(0x00000000000a2167,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_33::Float64 = 0.562609
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)                                                                                            var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],55.6586,0,78.5551,113988,0x0000006b,Dict(0=>0,127=>127),[770,313],11857,50,69),RpcApi.SimpleOrganism(0x00000000000a24b2,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)                                                                              var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.681947,0,19.674,113636,0x0000006b,Dict(0=>0,119=>119,31=>31,56=>56,127=>127),[983,250],3406,58,64),RpcApi.SimpleOrganism(0x00000000000a2094,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)                                                                                               Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.01898,0,35.3992,112160,0x0000006b,Dict(0=>0,119=>119,47=>47,120=>120,112=>112,113=>113,127=>127),[1522,189],13984,50,61),RpcApi.SimpleOrganism(0x00000000000a2521,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_41(var_39::Int16=12230,var_40::Float64=0.0742441)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_18 = (Int8)(var_18) >> (Int8)(var_18)
            return var_3
        end
        var_13 = Int16(o.color)
        var_8 = 26078 < (Int16)(1)                                                                                         var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],73.8499,0,13.9277,111628,0x0000006b,Dict(0=>0,119=>119,31=>31,94=>94,118=>118,127=>127),[1119,480],2295,37,63),RpcApi.SimpleOrganism(0x00000000000a1f7a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)                                                                                     Creature.eatRight(c,o,Int(var_2))                                                                                  var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,8.8807,110986,0x0000006b,Dict(0=>0,119=>119,49=>49,127=>127),[501,647],16814,45,59),RpcApi.SimpleOrganism(0x00000000000a22e6,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(2025318057010354853)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_39::Float64 = 0.826539
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
                Creature.stepUp(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 <= var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)                                                                              Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
            Creature.stepUp(o)
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],21.3425,0,33.83,108023,0x0000006b,Dict(0=>0,119=>119,31=>31,56=>56,127=>127,57=>57),[899,378],8024,29,64),RpcApi.SimpleOrganism(0x00000000000a251d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_39::Bool=false)
            var_39 = -6662067427062515463 > (Int64)(0)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)                                                                                              Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],98.2672,0,57.6057,107808,0x0000006b,Dict(0=>0,119=>119,31=>31,47=>47,94=>94,39=>39,127=>127),[304,893],2336,45,59),RpcApi.SimpleOrganism(0x00000000000a18c2,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13                                                                                                         end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],40.9081,0,37.3528,107729,0x0000006b,Dict(0=>0,127=>127),[776,316],34089,6,66),RpcApi.SimpleOrganism(0x00000000000a255a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end                                                                                                            var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.08181,0,90.0612,106919,0x0000006b,Dict(0=>0,119=>119,47=>47,127=>127,45=>45),[1605,317],1726,50,60),RpcApi.SimpleOrganism(0x00000000000a21ec,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(45)
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            o.mem[var_4] = var_4
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = isempty("ducoY3Lk")
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepDown(o)
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8                                                                                              var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],37.5838,0,59.1559,105735,0x0000006b,Dict(0=>0,127=>127),[1453,883],10524,43,57),RpcApi.SimpleOrganism(0x00000000000a15ee,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)                                                                                           o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],19.8968,0,99.0024,104861,0x0000006b,Dict(0=>0,119=>119,47=>47,56=>56,127=>127),[1216,323],41350,50,61),RpcApi.SimpleOrganism(0x00000000000a1b54,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end                                                                                                        return var_3                                                                                                   end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,19.8377,104777,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,13=>13,103=>103,127=>127,111=>111),[457,349],27506,50,62),RpcApi.SimpleOrganism(0x00000000000a2160,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            local var_44::Int16 = 17279
            var_36 = Int(Creature.idLeft(o))
            var_36 = Int(Creature.idRight(o))
            var_44 = var_44 * var_44
            var_44 = Int16(o.pos.x)
            var_44 = Int16(o.pos.y)
            var_36 = (Int64)(var_36) >> (Int64)(var_36)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)                                                         o.mem[var_30] = var_30
            var_30 = Int16(o.pos.y)                                                                                            var_30 = Int16(o.pos.y)
            var_29 = string(var_29)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= 0.388149
                Int8(round(0.388149))
            else
                127
            end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.stepUp(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        var_20 = string(true)
        for i::Int8 = 1:div(var_2,16)
            local var_42::Bool = true
            var_42 = var_42
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_13 = Int16(o.pos.y)
        var_2 = if isempty(var_28)
                0
            else
                1
            end
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_20 = string(var_33)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],38.1555,0,20.4785,104184,0x0000006b,Dict{Int16,Int16}(),[424,361],11923,12,62),RpcApi.SimpleOrganism(0x00000000000a1cd4,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)                                                                                             var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))                                                                   var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else                                                                                                                   var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],2.72898,0,86.0126,103922,0x0000006b,Dict(0=>0,127=>127),[775,310],23636,50,68),RpcApi.SimpleOrganism(0x00000000000a1435,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],2.72898,0,57.0414,102504,0x0000006b,Dict(0=>0,127=>127),[774,313],45772,50,68),RpcApi.SimpleOrganism(0x00000000000a2474,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(0.288045)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end                                                                                                            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],44.1418,0,52.8146,102109,0x0000006b,Dict(0=>0,127=>127),[1607,272],4026,50,59),RpcApi.SimpleOrganism(0x00000000000a2077,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end                                                                                                        var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,72.6879,102021,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,13=>13,103=>103,127=>127,111=>111),[458,249],14274,50,62),RpcApi.SimpleOrganism(0x00000000000a23ea,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767                                                                                                          end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],71.8657,0,19.5963,101465,0x0000006b,Dict(0=>0,119=>119,31=>31,47=>47,26=>26,23=>23,72=>72,127=>127,30=>30),[587,296],5414,50,62),RpcApi.SimpleOrganism(0x00000000000a25d1,:(function (c::Config.ConfigData,o::Creature.Organism)                                                                                             function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            if var_4 == var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            if var_4 != var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyDown(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_31 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = if 127 >= 0.166246
                    Int8(round(0.166246))
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 * var_32
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = if isempty("rHgurgJP")
                    0.0
                else
                    1.0
                end
            var_28 = cos(-97)
            var_28 = cot(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],9.07629,0,4.73608,100465,0x0000006b,Dict(0=>0,127=>127),[790,312],535,28,69),RpcApi.SimpleOrganism(0x00000000000a2238,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4                                                                                                          end                                                                                                        return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],4.45561,0,29.8958,98549,0x0000006b,Dict(0=>0,119=>119,31=>31,47=>47,72=>72,112=>112,56=>56,127=>127,30=>30),[1648,166],9764,50,62),RpcApi.SimpleOrganism(0x00000000000a2368,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_39::Float64 = 0.685362
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))                                                                                  var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],9.67539,0,89.322,98515,0x0000006b,Dict(0=>0,119=>119,9=>9,102=>102,40=>40,127=>127,111=>111),[1647,146],6724,50,59),RpcApi.SimpleOrganism(0x00000000000a20e7,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)                                                                                                     else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.56187,0,11.9331,98506,0x0000006b,Dict(0=>0,119=>119,31=>31,121=>121,56=>56,127=>127),[231,564],13134,50,61),RpcApi.SimpleOrganism(0x00000000000a1c53,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_17 = Int(Creature.idUp(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_3 = if 127 >= abs(-1675172456071721237)
                    Int8(-1675172456071721237)
                else
                    127
                end
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)                                                                              Int16(-5746121176220009266)
                else
                    32767
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],95.9628,0,44.7955,97401,0x0000006b,Dict(0=>0,119=>119,26=>26,31=>31,47=>47,103=>103,127=>127),[801,75],24937,24,61),RpcApi.SimpleOrganism(0x00000000000a20d8,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(45)
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)                                                                              var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)                                                                                               Int8(30028)
            else                                                                                                                   127
            end                                                                                                            var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]                                                                                                  else
                var_13                                                                                                         end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))                                                                                     var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],81.5847,0,50.4935,97148,0x0000006b,Dict(0=>0,127=>127),[1283,265],13305,99,54),RpcApi.SimpleOrganism(0x00000000000a21c5,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::String = "u3QTEDTs"
        local var_33::Int64 = 3761244718335218341                                                                          function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_43::Int8 = -40
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_42] = var_30
            var_30 = Int16(Creature.eatDown(c,o,Int(var_43)))
            var_29 = var_29 * var_29
            var_43 = (Int8)(var_43) >> (Int8)(var_43)
            var_43 = if 127 >= abs(5552773293978460898)
                    Int8(5552773293978460898)
                else
                    127
                end
            var_30 = if 32767 >= abs(var_43)
                    Int16(var_43)
                else
                    32767
                end
            if var_29 <= var_29
                local var_47::Int64 = -6105005697714235059
            end
            var_30 = Int16(Creature.eatLeft(c,o,Int(var_43)))
            var_30 = (Int16)(var_30) $ (Int16)(var_30)
            var_29 = string(var_30)
            var_30 = Int16(Creature.eatRight(c,o,Int(var_43)))
            Creature.stepLeft(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::String = "WTIll0xx"
            return var_6
        end
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idDown(o))
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= 0.388149
                Int8(round(0.388149))
            else
                127
            end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.stepUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_28 = string(0.77727)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Int(Creature.idDown(o))
        var_33 = Creature.energyLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_45 = func_7(var_20)
        var_33 = Int(Creature.idRight(o))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_20 = string(var_33)
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(o.pos.y)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
            Creature.stepDown(o)
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],11.7835,0,6.96244,95826,0x0000006b,Dict{Int16,Int16}(),[532,54],10914,12,71),RpcApi.SimpleOrganism(0x00000000000a22da,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
            end
            var_17 = Creature.energyUp(o)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-5746121176220009266)
                    Int16(-5746121176220009266)
                else
                    32767
                end
            if var_3 > var_18
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = isempty(var_38)
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        if var_38 < var_36
        end
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],10.7611,0,49.5696,95366,0x0000006b,Dict(0=>0,119=>119,48=>48,127=>127),[1839,681],8144,10,63),RpcApi.SimpleOrganism(0x00000000000a1d49,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            local var_46::Int64 = 8006580329107396077
            local var_44::Int64 = -5384721271356734687
            if var_37 >= var_38
            end
            var_36 = Creature.energyRight(o)
            var_36 = Int(Creature.idRight(o))
            Creature.stepRight(o)
            var_44 = Creature.energyDown(o)
            Creature.stepDown(o)
            var_36 = Creature.energyLeft(o)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.pos.x)
            o.mem[var_30] = var_30
            Creature.stepDown(o)
            var_30 = Int16(o.color)
            var_29 = string(var_29)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= 0.388149
                Int8(round(0.388149))
            else
                127
            end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.stepUp(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        var_20 = string(true)
        for i::Int8 = 1:div(var_2,16)
            local var_42::Bool = true
            var_42 = (Bool)(var_42) & (Bool)(var_42)
            var_42 = var_42
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        if var_2 > var_2
            Creature.stepRight(o)
        end
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_13 = Int16(o.pos.y)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],92.7545,0,3.99414,94945,0x0000006b,Dict{Int16,Int16}(),[759,57],22466,24,69)]