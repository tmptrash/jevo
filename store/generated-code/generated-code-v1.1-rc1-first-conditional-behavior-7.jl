RpcApi.SimpleOrganism[RpcApi.SimpleOrganism(0x00000000000caed8,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_38::Bool=false,var_39::String="HwZriMcz")
            var_38 = isempty(var_39)
            var_38 = Creature.stepRight(o)
            return var_38
        end
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = var_18 * var_3
            o.mem[var_4] = var_4
            var_4 = Int16(o.color)
            return var_3
        end
        var_8 = -3106336015693160006 < (Int64)(1)
        var_13 = Int16(o.color)
        var_35 = Float64(-29342)
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
        var_2 = func_5(var_2)
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            Creature.eatUp(c,o,Int(var_32))
            var_32 = if 127 >= abs(var_32)
                    Int8(var_32)
                else
                    127
                end
            Creature.eatRight(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_35 = sin(var_35)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(-2510235961336378945)
            var_28 = Float64(8308804046738285107)
            var_28 = csc(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
            var_28 = tan(var_28)
            var_28 = var_28 - var_28
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],7.10336,0,22.9499,277110,0x00000070,Dict(0=>0,332=>332,72=>72,127=>127),[817,338],50283,12,80),RpcApi.SimpleOrganism(0x00000000000cbeaa,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_40::Int8 = -80
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if isempty("Jvebz2bB")
                    0
                else
                    1
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_3 > var_3
                local var_39::Bool = true
                var_39 = Creature.stepLeft(o)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = 0.978408 < (Float64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_8 = var_8 * var_8
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = isempty("zLDEwCsP")
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_38::Bool = true
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = var_23 % if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_23))
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],56.0849,0,6.37551,268461,0x00000071,Dict(0=>0,127=>127),[866,387],9636,7,82),RpcApi.SimpleOrganism(0x00000000000cb51d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_38::Bool=false,var_39::String="HwZriMcz")
            return var_38
        end
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
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
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if 32767 >= 0.24202
                    Int16(round(0.24202))
                else
                    32767
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
                local var_41::Int16 = 5344
            end
            var_18 = var_18 * var_3
            var_4 = Int16(o.color)
            return var_3
        end
        var_8 = -3106336015693160006 < (Int64)(1)
        var_13 = Int16(o.color)
        var_35 = Float64(-29342)
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
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 % if var_32 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_32
                    end
            Creature.eatUp(c,o,Int(var_32))
            Creature.eatRight(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = -5425250595519028010 > (Int64)(0)
        var_35 = sin(var_35)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(-2510235961336378945)
            var_28 = Float64(8308804046738285107)
            var_28 = csc(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
            var_28 = var_28 - var_28
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],17.4199,0,29.5255,267102,0x00000070,Dict(0=>0,332=>332,127=>127),[822,330],34215,83,81),RpcApi.SimpleOrganism(0x00000000000cbae5,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_49::String = "W27FJ7YG"
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = (Int64)(var_47) << (Int64)(var_47)
            var_47 = Int(Creature.idUp(o))
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_47 = Creature.energyLeft(o)
            var_47 = Int(Creature.idRight(o))
            var_6 = var_6 * var_6
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_44 = !var_44
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
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
        var_8 = 0.383526 < (Float64)(1)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = if haskey(o.mem,var_45)
                o.mem[var_45]
            else
                var_45
            end
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepUp(o)
        var_8 = var_45 > (Int16)(0)
        Creature.eatDown(c,o,Int(var_2))
        if var_2 > var_2
            Creature.stepLeft(o)
        end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],80.643,0,85.6324,255430,0x00000075,Dict(114=>114,109=>109,0=>0,119=>119,116=>116,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108,115=>115),[680,259],19324,50,87),RpcApi.SimpleOrganism(0x00000000000cb5db,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_41 = Int(Creature.idLeft(o))
            var_41 = Int(Creature.idDown(o))
            var_41 = Int(Creature.idRight(o))
            var_41 = Int(Creature.idLeft(o))
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],11.6524,0,8.28314,234526,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[473,202],32316,3,87),RpcApi.SimpleOrganism(0x00000000000cc102,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(true)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_41 = Int(Creature.idLeft(o))
            var_41 = Int(Creature.idDown(o))
            var_41 = Int(Creature.idRight(o))
            var_41 = Creature.energyLeft(o)
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_43::Int16 = -26748
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_13 = Int16(o.pos.x)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],49.5388,0,19.3775,228576,0x0000006e,Dict(109=>109,0=>0,55=>55,119=>119,110=>110,127=>127,13=>13,120=>120,117=>117,94=>94,108=>108),[482,201],3596,19,87),RpcApi.SimpleOrganism(0x00000000000cb09f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_48 = Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_6 = var_6 * var_6
            var_6 = string(121)
            if var_6 == var_6
            end
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],91.6427,0,3.49507,203291,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[592,790],45732,2,83),RpcApi.SimpleOrganism(0x00000000000cbe6b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_38::Bool=false,var_39::String="HwZriMcz")
            local var_42::Int64 = -5331057991674155774
            var_39 = string(-7312)
            var_42 = Creature.energyUp(o)
            var_42 = Int(var_38)
            return var_38
        end
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = if 127 >= abs(-3763982263395863049)
                    Int8(-3763982263395863049)
                else
                    127
                end
            var_31 = var_3 - var_3
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
                local var_41::Int16 = 5344
            end
            var_18 = var_18 * var_3
            var_4 = Int16(o.color)
            return var_3
        end
        var_8 = -3106336015693160006 < (Int64)(1)
        var_13 = Int16(o.color)
        var_35 = Float64(-29342)
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
        var_8 = var_8 | var_8
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 % if var_32 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_32
                    end
            Creature.eatUp(c,o,Int(var_32))
            Creature.eatRight(c,o,Int(var_32))
            Creature.eatLeft(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(-2510235961336378945)
            var_28 = Float64(8308804046738285107)
            var_28 = csc(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
            var_28 = tan(var_28)
            var_28 = var_28 - var_28
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],48.1353,0,83.7808,186791,0x00000070,Dict(0=>0,332=>332,127=>127),[823,332],10276,35,83),RpcApi.SimpleOrganism(0x00000000000cbb28,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_39::Int16 = 21430
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            if var_3 > var_3
                Creature.stepRight(o)
            end
            for i::Int8 = 1:div(var_18,16)
                local var_40::Int16 = 29004
                var_40 = Int16(o.pos.y)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            var_4 = if 32767 >= abs(var_3)
                    Int16(var_3)
                else
                    32767
                end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if false
                    1
                else
                    0
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = 0.978408 < (Float64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = var_8
        var_8 = 1245572765719810997 < (Int64)(1)
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_39 = Int16(o.color)
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.stepDown(o)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            Creature.eatRight(c,o,Int(var_23))
        end
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],82.0503,0,91.8606,173592,0x00000074,Dict(0=>0,901=>901,903=>903,900=>900,72=>72,48=>48,902=>902,127=>127),[903,328],18654,4,85),RpcApi.SimpleOrganism(0x00000000000cc237,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_51(var_49::Int16=-2201,var_50::Bool=true)
            var_50 = isempty("Jwdc0pMc")
            var_50 = var_50 * var_50
            o.mem[var_49] = var_49
            return var_49
        end
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::Bool = true
            var_47 = Int(var_46)
            var_47 = Creature.energyUp(o)
            var_6 = var_6 * var_6
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_45 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],85.4309,0,48.5404,162889,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[1860,137],506,50,80),RpcApi.SimpleOrganism(0x00000000000cab35,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_48 = Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_46 = Creature.stepLeft(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_18 = div(var_3,if var_18 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_18
                    end)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_8 = Creature.stepLeft(o)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],12.6542,0,73.9001,159177,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[1202,131],59594,1,83),RpcApi.SimpleOrganism(0x00000000000cb756,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_38::Bool=false,var_39::String="HwZriMcz")
            local var_42::Int64 = -5331057991674155774
            var_39 = string(-7312)
            var_42 = Creature.energyUp(o)
            var_38 = var_42 > (Int64)(0)
            return var_38
        end
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = if 127 >= abs(-3763982263395863049)
                    Int8(-3763982263395863049)
                else
                    127
                end
            var_31 = var_3 - var_3
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
                local var_41::Int16 = 5344
            end
            var_18 = var_18 * var_3
            var_4 = Int16(o.color)
            return var_3
        end
        var_8 = -3106336015693160006 < (Int64)(1)
        var_13 = Int16(o.color)
        var_35 = Float64(-29342)
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
        var_8 = var_8 | var_8
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 % if var_32 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_32
                    end
            Creature.eatUp(c,o,Int(var_32))
            Creature.eatRight(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_35 = sin(var_35)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(-2510235961336378945)
            var_28 = Float64(8308804046738285107)
            var_28 = csc(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
            var_28 = tan(var_28)
            var_28 = var_28 - var_28
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],50.9848,0,41.3914,151661,0x00000070,Dict(0=>0,332=>332,127=>127),[822,332],28477,36,83),RpcApi.SimpleOrganism(0x00000000000cbe07,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_51(var_49::Int16=-2201,var_50::Bool=true)
            var_50 = isempty("Jwdc0pMc")
            var_50 = var_50 * var_50
            o.mem[var_49] = var_49
            return var_49
        end
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::Bool = true
            var_47 = Int(var_46)
            var_47 = Creature.energyUp(o)
            var_6 = var_6 * var_6
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_45 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],49.7327,0,15.8506,150844,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[780,232],11276,50,80),RpcApi.SimpleOrganism(0x00000000000cac36,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_52::Bool = true
            var_48 = tan(-5357644356788136690)
            var_48 = sec(var_48)
            var_48 = tan(25985)
            var_48 = cos(-7691396677931947649)
            var_52 = Creature.stepRight(o)
            var_48 = sec(var_48)
            Creature.eatDown(c,o,Int(var_47))
            var_48 = cos(6981779778412706805)
            Creature.eatRight(c,o,Int(var_47))
            var_48 = sqrt(abs(var_48))
            var_52 = var_47 < (Int8)(1)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.eatLeft(c,o,Int(var_42))
            var_42 = var_42 % if var_42 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_42
                    end
            Creature.stepUp(o)
            var_42 = (Int8)(var_42) & (Int8)(var_42)
            Creature.stepRight(o)
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepUp(o)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_59::Int64 = -2235656631507554630
            var_20 = string(0.956485)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_58::Int8 = 74
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.y)
            var_3 = if 127 >= abs(-5771353413385223667)
                    Int8(-5771353413385223667)
                else
                    127
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
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
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_17 = Creature.energyUp(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            o.mem[var_4] = var_4
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            return var_3
        end
        var_54 = 8882044479142391752 > (Int64)(0)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = isempty("I33YlJlI")
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],99.2406,0,87.8794,148467,0x00000075,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,32767=>32767,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1449,201],57024,9,89),RpcApi.SimpleOrganism(0x00000000000cbf96,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Int(Creature.idRight(o))
            var_47 = Int(Creature.idUp(o))
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_8 = Creature.stepDown(o)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],40.9145,0,56.3498,147759,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[613,857],7245,50,83),RpcApi.SimpleOrganism(0x00000000000cc11a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_51::Bool = true
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_46::Bool = false
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_52::Int64 = 7103892796849015296
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_46 = var_44 | var_46
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
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
        if var_8 < var_8
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        var_8 = Creature.stepRight(o)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],40.7939,0,96.8631,140692,0x00000073,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108,115=>115),[292,281],3356,47,81),RpcApi.SimpleOrganism(0x00000000000cbb89,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        function func_7(var_6::String="ZKRF9L8v")
            local var_43::Int64 = 7328904548598726579
            local var_41::Int64 = 8079688643533571310
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_41 = Int(Creature.idUp(o))
            Creature.stepDown(o)
            var_41 = Creature.energyLeft(o)
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],29.5045,0,31.9761,140494,0x00000070,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,94=>94,108=>108),[484,10],17685,11,82),RpcApi.SimpleOrganism(0x00000000000cbc4a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_49::String = "W27FJ7YG"
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = (Int64)(var_47) << (Int64)(var_47)
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_47 = Int(Creature.idRight(o))
            var_6 = var_6 * var_6
            var_47 = Int(Creature.idRight(o))
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_44 = !var_44
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = if haskey(o.mem,var_45)
                o.mem[var_45]
            else
                var_45
            end
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepUp(o)
        var_8 = var_45 > (Int16)(0)
        Creature.eatDown(c,o,Int(var_2))
        if var_2 > var_2
        end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],3.83804,0,24.8956,138893,0x00000074,Dict(114=>114,109=>109,0=>0,119=>119,116=>116,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108,115=>115),[695,369],15743,4,84),RpcApi.SimpleOrganism(0x00000000000cc20c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(var_20)
            Creature.stepDown(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_8 = Creature.stepLeft(o)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = Creature.stepUp(o)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = 0.632379 > (Float64)(0)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],34.8792,0,74.9131,137264,0x00000071,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[1790,215],937,5,80),RpcApi.SimpleOrganism(0x00000000000cb109,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_37 = if isempty(var_20)
                    0.0
                else
                    1.0
                end
            var_37 = cos(var_35)
            if var_20 != var_20
                local var_39::String = "SO4zmXsb"
            end
            var_37 = csc(if -4049501349614374066 === (Int64)(0)
                        (Int64)(1)
                    else
                        -4049501349614374066
                    end)
            Creature.stepDown(o)
            if var_20 <= var_20
            end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            Creature.stepRight(o)
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = div(var_3,if var_18 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_18
                    end)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.pos.y)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_18)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if false
                    1
                else
                    0
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = 0.978408 < (Float64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],56.7415,0,32.594,134549,0x00000071,Dict(0=>0,127=>127),[879,383],44674,12,85),RpcApi.SimpleOrganism(0x00000000000cb910,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_48::Bool = true
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_6 = string(-23840)
            var_47 = Creature.energyUp(o)
            var_46 = var_46
            var_47 = Creature.energyDown(o)
            var_6 = var_6 * var_6
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_45 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],38.033,0,45.6675,127154,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[572,119],24023,9,81),RpcApi.SimpleOrganism(0x00000000000cbef8,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            var_37 = div(var_37,if var_37 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_37
                    end)
            var_37 = if isempty(var_20)
                    0.0
                else
                    1.0
                end
            var_37 = csc(if var_37 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_37
                    end)
            Creature.stepRight(o)
            var_37 = csc(if var_37 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_37
                    end)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            var_37 = pi
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_3 > var_3
                Creature.stepRight(o)
            end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_18 = if 127 >= abs(6345907840553745356)
                    Int8(6345907840553745356)
                else
                    127
                end
            var_4 = if false
                    1
                else
                    0
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = 0.978408 < (Float64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_2 = func_5(var_2,var_13)
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = isempty("mt0NZN7T")
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],30.0646,0,83.8545,123812,0x00000071,Dict(0=>0,127=>127),[887,393],8846,7,81),RpcApi.SimpleOrganism(0x00000000000cbf78,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(var_20)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_45::Float64 = 0.840129
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],2.312,0,72.2503,122650,0x00000071,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[644,56],7557,50,79),RpcApi.SimpleOrganism(0x00000000000cb523,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(var_20)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_45::Float64 = 0.840129
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_46::String = "xS24dFR9"
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_44 = var_44 & var_44
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = Creature.stepUp(o)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.stepRight(o)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],8.03617,0,49.839,121970,0x00000071,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[1446,202],34155,5,82),RpcApi.SimpleOrganism(0x00000000000cbc74,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            Creature.stepLeft(o)
            var_20 = string(-4123852891719520085)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_41 = Creature.energyUp(o)
            var_41 = Int(Creature.idLeft(o))
            Creature.stepDown(o)
            var_41 = (Int64)(var_41) << (Int64)(var_41)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            if var_18 <= var_3
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = -31063 < (Int16)(1)
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
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_2 = var_2 + var_2
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = (Int8)(var_23) $ (Int8)(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],95.4626,0,82.651,120724,0x00000070,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,94=>94,108=>108),[443,727],15323,16,89),RpcApi.SimpleOrganism(0x00000000000cc15a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyLeft(o)
            var_47 = Creature.energyLeft(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            var_46 = Creature.stepDown(o)
            var_47 = Int(Creature.idLeft(o))
            var_47 = Creature.energyDown(o)
            var_46 = isempty(var_6)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_45 = var_45 * var_45
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_45 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        var_38 = func_7(var_36)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = if 32767 >= abs(var_2)
                Int16(var_2)
            else
                32767
            end
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_45 = if haskey(o.mem,var_45)
                o.mem[var_45]
            else
                var_45
            end
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        var_8 = Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_8 = var_8 | var_8
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],46.2131,0,8.89177,119525,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[104,90],2715,43,86),RpcApi.SimpleOrganism(0x00000000000cc175,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            var_48 = cot(if 1090972472858539494 === (Int64)(0)
                        (Int64)(1)
                    else
                        1090972472858539494
                    end)
            for i::Int8 = 1:div(var_47,16)
                Creature.stepRight(o)
            end
            Creature.eatRight(c,o,Int(var_47))
            var_48 = cot(if -4456981896469280127 === (Int64)(0)
                        (Int64)(1)
                    else
                        -4456981896469280127
                    end)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.eatRight(c,o,Int(var_42))
            Creature.eatDown(c,o,Int(var_42))
            Creature.stepUp(o)
            return var_42
        end
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_18 = if 127 >= abs(9082486496736465654)
                    Int8(9082486496736465654)
                else
                    127
                end
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = if isempty("OqHwYAvF")
                    0
                else
                    1
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
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.color)
            o.mem[var_4] = var_4
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_3 = if 127 >= abs(-2054894000875240867)
                    Int8(-2054894000875240867)
                else
                    127
                end
            var_4 = var_4 - var_4
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_54 = Creature.stepRight(o)
        Creature.eatRight(c,o,Int(var_2))
        if var_8 === var_54
            local var_62::String = "8gVOVEgd"
            var_62 = var_62 * var_62
            var_62 = string(0.767226)
        end
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = 0.0276347 < (Float64)(1)
        var_8 = Creature.stepUp(o)
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = var_23 + var_23
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_54 = var_54
        return true
    end),[98,38,30,73,83,1,72,0,51],1.19012,0,49.9173,118789,0x00000072,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[706,806],2448,50,82),RpcApi.SimpleOrganism(0x00000000000cbbf8,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(119)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_47 = Creature.energyLeft(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            var_47 = Int(Creature.idLeft(o))
            var_47 = Creature.energyDown(o)
            var_46 = isempty(var_6)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_45 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        var_38 = func_7(var_36)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = if 32767 >= abs(var_2)
                Int16(var_2)
            else
                32767
            end
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_45 = if haskey(o.mem,var_45)
                o.mem[var_45]
            else
                var_45
            end
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        var_8 = Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_8 = var_8 | var_8
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],64.625,0,19.7215,117638,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[1798,222],16563,73,87),RpcApi.SimpleOrganism(0x00000000000cbda1,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_46::Int64=-845532850787946339,var_47::Int16=-23115,var_48::Int64=4551311384182987305)
            local var_52::Int64 = -8954520437480416976
            var_46 = Int(Creature.idRight(o))
            var_47 = (Int16)(var_47) << (Int16)(var_47)
            var_48 = Int(Creature.getEnergy(o,Int(var_47),Int(var_47)))
            var_46 = Creature.energyDown(o)
            return var_46
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = if 32767 >= 0.340777
                    Int16(round(0.340777))
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_44::Bool = false
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_3 = if 127 >= abs(7204639374623572879)
                    Int8(7204639374623572879)
                else
                    127
                end
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_3 = if 127 >= abs(-4540043796095084675)
                    Int8(-4540043796095084675)
                else
                    127
                end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_45::String = "Gbfy3reJ"
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = Bool(abs(var_8 - var_8))
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = isempty(var_36)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_51::Int64 = -6132575998075024511
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],1.99088,0,5.09864,117117,0x00000070,Dict(32=>32,80=>80,109=>109,16=>16,96=>96,82=>82,0=>0,9=>9,25=>25,55=>55,7=>7,10=>10,17=>17,64=>64,8=>8,24=>24,119=>119,73=>73,3=>3,72=>72,110=>110,111=>111,127=>127,63=>63,14=>14,13=>13,120=>120,117=>117,112=>112,56=>56,94=>94,108=>108,33=>33),[1005,621],12297,50,85),RpcApi.SimpleOrganism(0x00000000000cba95,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_48::Bool=false)
            var_48 = var_48 | var_48
            return var_48
        end
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
            local var_46::Bool = false
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_50::Int64 = 6623392707030044084
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_51::Bool = false
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_38 = var_38 * var_38
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        var_8 = 0.956221 < (Float64)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],66.8221,0,25.7774,117083,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[537,451],20123,48,82),RpcApi.SimpleOrganism(0x00000000000cb8d6,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_39::Int16 = 21430
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            Creature.stepDown(o)
            Creature.stepDown(o)
            var_37 = sin(-96)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            var_37 = csc(if -4049501349614374066 === (Int64)(0)
                        (Int64)(1)
                    else
                        -4049501349614374066
                    end)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_3 > var_3
                Creature.stepRight(o)
                Creature.stepLeft(o)
            end
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if false
                    1
                else
                    0
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        var_39 = Int16(o.pos.x)
        var_8 = 0.978408 < (Float64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        for i::Int8 = 1:div(var_2,16)
            local var_40::String = "YvzzTzxj"
        end
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],97.6965,0,99.8946,117001,0x00000072,Dict(0=>0,127=>127),[890,397],24603,31,88),RpcApi.SimpleOrganism(0x00000000000cbe74,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_41 = Int(Creature.idDown(o))
            Creature.stepDown(o)
            var_41 = Int(Creature.idUp(o))
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = -31063 < (Int16)(1)
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
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],84.0519,0,34.5985,116418,0x0000006f,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,94=>94,108=>108),[434,729],10186,11,85),RpcApi.SimpleOrganism(0x00000000000cbb53,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = if isempty(var_20)
                    0.0
                else
                    1.0
                end
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            var_37 = csc(if -22267 === (Int16)(0)
                        (Int16)(1)
                    else
                        -22267
                    end)
            var_37 = pi
            var_37 = cos(var_37)
            var_37 = csc(if -4049501349614374066 === (Int64)(0)
                        (Int64)(1)
                    else
                        -4049501349614374066
                    end)
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_3 > var_3
                Creature.stepRight(o)
            end
            var_4 = Int16(o.pos.y)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if false
                    1
                else
                    0
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = 0.978408 < (Float64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_39::String = "xOXIYrub"
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],26.7267,0,90.3147,116215,0x00000071,Dict(0=>0,127=>127),[880,391],18224,59,83),RpcApi.SimpleOrganism(0x00000000000cb730,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_43::Bool = true
            Creature.stepUp(o)
            var_20 = var_20 * var_20
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            Creature.stepDown(o)
            var_41 = Creature.energyUp(o)
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            var_41 = Int(Creature.idDown(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],35.278,0,30.6157,113519,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[450,427],28855,30,91),RpcApi.SimpleOrganism(0x00000000000cbf70,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(var_20)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_45::Float64 = 0.840129
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            var_23 = (Int8)(var_23) >> (Int8)(var_23)
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],0.113731,0,74.2046,111010,0x00000071,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[641,232],7635,50,79),RpcApi.SimpleOrganism(0x00000000000cab3f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatDown(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepLeft(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_2 > (Int8)(0)
        var_8 = -5319 > (Int16)(0)
        o.mem[var_13] = var_13
        var_8 = !var_8
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],90.1039,0,92.1067,109977,0x0000006e,Dict(1760=>1760,306=>306,1316=>1316,1333=>1333,1671=>1671,1131=>1131,74=>74,1662=>1662,1265=>1265,1469=>1469,1461=>1461,285=>285,1881=>1881,1481=>1481,318=>318,1124=>1124,1337=>1337,873=>873,1273=>1273,975=>975,610=>610,354=>354,1082=>1082,1791=>1791,117=>117,1400=>1400,1327=>1327,1714=>1714,1588=>1588,474=>474,1374=>1374,1616=>1616,621=>621,1446=>1446,353=>353,430=>430,1166=>1166,1329=>1329,79=>79,1640=>1640,1479=>1479,154=>154,1331=>1331,1683=>1683,845=>845,107=>107,1648=>1648,682=>682,416=>416,10=>10,642=>642,162=>162,240=>240,974=>974,5=>5,1146=>1146,1230=>1230,1097=>1097,1817=>1817,776=>776,1324=>1324,573=>573,1460=>1460,512=>512,1503=>1503,90=>90,1527=>1527,396=>396,1201=>1201,1017=>1017,1141=>1141,592=>592,973=>973,1052=>1052,1418=>1418,655=>655,1873=>1873,620=>620,965=>965,146=>146,130=>130,1148=>1148,545=>545,660=>660,1475=>1475,1062=>1062,110=>110,1813=>1813,981=>981,1150=>1150,525=>525,1029=>1029,899=>899,366=>366,556=>556,128=>128,1722=>1722,1417=>1417,831=>831,522=>522,183=>183,931=>931,345=>345,742=>742,152=>152,1043=>1043,723=>723,843=>843,1643=>1643,982=>982,732=>732,1703=>1703,941=>941,1008=>1008,1274=>1274,454=>454,312=>312,1599=>1599,663=>663,446=>446,751=>751,659=>659,602=>602,1465=>1465,1853=>1853,241=>241,370=>370,197=>197,1887=>1887,142=>142,935=>935,848=>848,1786=>1786,614=>614,1694=>1694,612=>612,433=>433,1107=>1107,677=>677,1652=>1652,1381=>1381,1563=>1563,1540=>1540,890=>890,958=>958,916=>916,672=>672,94=>94,115=>115,418=>418,455=>455,373=>373,641=>641,1496=>1496,426=>426,1710=>1710,1211=>1211,551=>551,503=>503,914=>914,859=>859,1209=>1209,1288=>1288,471=>471,707=>707,1655=>1655,393=>393,497=>497,1167=>1167,1759=>1759,1802=>1802,1602=>1602,1115=>1115,1782=>1782,1522=>1522,1252=>1252,1858=>1858,1430=>1430,377=>377,1245=>1245,1382=>1382,1751=>1751,1560=>1560,1740=>1740,1437=>1437,1018=>1018,1044=>1044,867=>867,1506=>1506,1114=>1114,1607=>1607,635=>635,628=>628,254=>254,1702=>1702,20=>20,1644=>1644,1134=>1134,451=>451,166=>166,397=>397,35=>35,1126=>1126,1157=>1157,1054=>1054,1109=>1109,1571=>1571,816=>816,286=>286,1900=>1900,1831=>1831,392=>392,554=>554,346=>346,126=>126,303=>303,567=>567,872=>872,883=>883,237=>237,594=>594,613=>613,386=>386,1530=>1530,1213=>1213,517=>517,1691=>1691,1698=>1698,949=>949,1551=>1551,523=>523,1580=>1580,1309=>1309,504=>504,98=>98,666=>666,1713=>1713,540=>540,1875=>1875,161=>161,952=>952,1896=>1896,22=>22,73=>73,119=>119,646=>646,222=>222,1514=>1514,580=>580,687=>687,640=>640,502=>502,498=>498,603=>603,1423=>1423,1271=>1271,1826=>1826,1629=>1629,1807=>1807,131=>131,391=>391,249=>249,1532=>1532,207=>207,173=>173,1565=>1565,1891=>1891,1261=>1261,1735=>1735,1151=>1151,1015=>1015,625=>625,70=>70,1129=>1129,886=>886,1385=>1385,1513=>1513,1326=>1326,1060=>1060,327=>327,511=>511,1797=>1797,780=>780,951=>951,773=>773,1545=>1545,720=>720,1879=>1879,326=>326,248=>248,1520=>1520,1420=>1420,447=>447,555=>555,217=>217,855=>855,1830=>1830,506=>506,1517=>1517,120=>120,1558=>1558,681=>681,1487=>1487,1767=>1767,143=>143,62=>62,1447=>1447,996=>996,1459=>1459,548=>548,1355=>1355,961=>961,251=>251,1250=>1250,649=>649,1825=>1825,1854=>1854,656=>656,1820=>1820,766=>766,909=>909,1579=>1579,569=>569,155=>155,1625=>1625,344=>344,787=>787,747=>747,1471=>1471,1576=>1576,929=>929,253=>253,1610=>1610,1498=>1498,1079=>1079,1120=>1120,815=>815,1542=>1542,324=>324,1322=>1322,858=>858,13=>13,1806=>1806,1800=>1800,1080=>1080,647=>647,137=>137,105=>105,1547=>1547,765=>765,307=>307,1448=>1448,273=>273,1143=>1143,1032=>1032,1323=>1323,1182=>1182,100=>100,904=>904,1555=>1555,790=>790,1159=>1159,1346=>1346,268=>268,243=>243,535=>535,1612=>1612,317=>317,1732=>1732,676=>676,1661=>1661,1425=>1425,108=>108,1105=>1105,329=>329,1262=>1262,755=>755,1312=>1312,735=>735,144=>144,400=>400,1849=>1849,788=>788,1285=>1285,375=>375,494=>494,893=>893,1024=>1024,112=>112,544=>544,1310=>1310,106=>106,1811=>1811,1153=>1153,350=>350,823=>823,1823=>1823,585=>585,834=>834,1679=>1679,54=>54,337=>337,481=>481,60=>60,1277=>1277,1051=>1051,1893=>1893,1320=>1320,1785=>1785,936=>936,1781=>1781,189=>189,398=>398,913=>913,875=>875,896=>896,1676=>1676,1762=>1762,695=>695,1838=>1838,380=>380,1554=>1554,1041=>1041,1649=>1649,1697=>1697,1384=>1384,68=>68,275=>275,724=>724,382=>382,1380=>1380,547=>547,1111=>1111,1439=>1439,199=>199,323=>323,1005=>1005,669=>669,406=>406,683=>683,652=>652,232=>232,1243=>1243,83=>83,1480=>1480,45=>45,1402=>1402,954=>954,662=>662,1334=>1334,1192=>1192,1039=>1039,808=>808,442=>442,976=>976,595=>595,1023=>1023,972=>972,1075=>1075,376=>376,684=>684,61=>61,1761=>1761,1489=>1489,431=>431,862=>862,870=>870,1160=>1160,1733=>1733,304=>304,629=>629,476=>476,361=>361,772=>772,1030=>1030,706=>706,1104=>1104,1106=>1106,1152=>1152,841=>841,1215=>1215,288=>288,1805=>1805,1050=>1050,1889=>1889,1000=>1000,1570=>1570,57=>57,1899=>1899,1617=>1617,799=>799,445=>445,252=>252,835=>835,1376=>1376,727=>727,1556=>1556,1819=>1819,49=>49,552=>552,1827=>1827,716=>716,1723=>1723,1466=>1466,1587=>1587,1155=>1155,1549=>1549,264=>264,984=>984,221=>221,153=>153,579=>579,590=>590,1370=>1370,390=>390,619=>619,484=>484,1089=>1089,1393=>1393,129=>129,88=>88,429=>429,1743=>1743,1458=>1458,937=>937,149=>149,439=>439,1456=>1456,1729=>1729,210=>210,1635=>1635,1822=>1822,1726=>1726,789=>789,1890=>1890,1405=>1405,1787=>1787,1596=>1596,175=>175,1278=>1278,543=>543,1411=>1411,1264=>1264,987=>987,970=>970,596=>596,419=>419,436=>436,967=>967,793=>793,942=>942,1574=>1574,216=>216,47=>47,147=>147,1123=>1123,1108=>1108,1186=>1186,829=>829,488=>488,1504=>1504,1568=>1568,1777=>1777,863=>863,1742=>1742,560=>560,688=>688,1673=>1673,950=>950,51=>51,123=>123,1256=>1256,358=>358,1766=>1766,1696=>1696,661=>661,1497=>1497,740=>740,581=>581,713=>713,1716=>1716,1026=>1026,658=>658,532=>532,1350=>1350,1132=>1132,365=>365,771=>771,1443=>1443,509=>509,521=>521,407=>407,1464=>1464,1181=>1181,1058=>1058,874=>874,817=>817,1307=>1307,1083=>1083,1363=>1363,138=>138,703=>703,292=>292,235=>235,692=>692,971=>971,1647=>1647,1229=>1229,1855=>1855,1112=>1112,1770=>1770,1065=>1065,1764=>1764,0=>0,838=>838,1518=>1518,1156=>1156,1200=>1200,1546=>1546,1016=>1016,1147=>1147,12=>12,1601=>1601,528=>528,410=>410,626=>626,1736=>1736,364=>364,1246=>1246,1810=>1810,1180=>1180,889=>889,837=>837,623=>623,1388=>1388,979=>979,678=>678,1203=>1203,262=>262,92=>92,1592=>1592,1205=>1205,1843=>1843,1651=>1651,1828=>1828,124=>124,791=>791,360=>360,85=>85,1377=>1377,181=>181,1028=>1028,894=>894,1773=>1773,1071=>1071,1483=>1483,1422=>1422,458=>458,1675=>1675,1476=>1476,1163=>1163,1646=>1646,233=>233,52=>52,1709=>1709,367=>367,278=>278,1222=>1222,959=>959,336=>336,1737=>1737,64=>64,568=>568,1397=>1397,444=>444,257=>257,220=>220,943=>943,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,1428=>1428,7=>7,1424=>1424,395=>395,537=>537,437=>437,325=>325,1848=>1848,536=>536,878=>878,526=>526,340=>340,399=>399,1202=>1202,174=>174,371=>371,1221=>1221,1336=>1336,24=>24,116=>116,1046=>1046,1391=>1391,1260=>1260,496=>496,1774=>1774,1630=>1630,1600=>1600,520=>520,895=>895,11=>11,491=>491,1557=>1557,478=>478,1103=>1103,1534=>1534,1495=>1495,1047=>1047,490=>490,946=>946,335=>335,828=>828,165=>165,1859=>1859,133=>133,1880=>1880,1678=>1678,748=>748,328=>328,977=>977,752=>752,425=>425,1569=>1569,1373=>1373,1175=>1175,77=>77,311=>311,1727=>1727,1750=>1750,605=>605,1302=>1302,441=>441,132=>132,1681=>1681,1631=>1631,1389=>1389,550=>550,725=>725,231=>231,1550=>1550,302=>302,1178=>1178,1882=>1882,225=>225,1087=>1087,1593=>1593,204=>204,122=>122,1509=>1509,180=>180,1844=>1844,601=>601,413=>413,806=>806,731=>731,877=>877,331=>331,1433=>1433,1700=>1700,948=>948,679=>679,1237=>1237,1872=>1872,1357=>1357,1892=>1892,1626=>1626,969=>969,1184=>1184,1133=>1133,296=>296,1470=>1470,1621=>1621,1833=>1833,1210=>1210,717=>717,1686=>1686,1145=>1145,705=>705,212=>212,310=>310,1415=>1415,760=>760,265=>265,853=>853,1573=>1573,17=>17,466=>466,1885=>1885,1013=>1013,475=>475,851=>851,637=>637,1804=>1804,744=>744,1022=>1022,226=>226,1421=>1421,43=>43,1033=>1033,1137=>1137,104=>104,1268=>1268,999=>999,919=>919,465=>465,857=>857,1318=>1318,711=>711,737=>737,1765=>1765,1086=>1086,1660=>1660,291=>291,422=>422,196=>196,1394=>1394,576=>576,968=>968,281=>281,1667=>1667,578=>578,1275=>1275,1721=>1721,1282=>1282,405=>405,1641=>1641,1321=>1321,1190=>1190,2=>2,1269=>1269,1416=>1416,1006=>1006,1776=>1776,925=>925,1674=>1674,151=>151,1562=>1562,1874=>1874,1793=>1793,1057=>1057,1701=>1701,1220=>1220,1284=>1284,611=>611,1313=>1313,741=>741,283=>283,1850=>1850,448=>448,459=>459,109=>109,1847=>1847,833=>833,298=>298,1001=>1001,1623=>1623,722=>722,1706=>1706,1238=>1238,644=>644,906=>906,1493=>1493,1477=>1477,784=>784,1162=>1162,636=>636,359=>359,1687=>1687,332=>332,1622=>1622,1528=>1528,1207=>1207,198=>198,1758=>1758,272=>272,1749=>1749,1037=>1037,1586=>1586,1206=>1206,482=>482,469=>469,1335=>1335,1752=>1752,443=>443,689=>689,1526=>1526,1747=>1747,1308=>1308,1314=>1314,369=>369,850=>850,1021=>1021,1728=>1728,1501=>1501,990=>990,698=>698,486=>486,1040=>1040,170=>170,1270=>1270,42=>42,1300=>1300,796=>796,1352=>1352,1553=>1553,811=>811,1139=>1139,865=>865,388=>388,69=>69,991=>991,351=>351,1294=>1294,572=>572,1886=>1886,434=>434,1398=>1398,1244=>1244,1383=>1383,460=>460,357=>357,263=>263,1406=>1406,915=>915,206=>206,927=>927,385=>385,1340=>1340,809=>809,670=>670,923=>923,1659=>1659,1427=>1427,1259=>1259,1125=>1125,910=>910,804=>804,404=>404,1081=>1081,691=>691,812=>812,1025=>1025,1012=>1012,618=>618,1390=>1390,186=>186,420=>420,1035=>1035,6=>6,856=>856,1717=>1717,1038=>1038,218=>218,1473=>1473,1704=>1704,1090=>1090,29=>29,905=>905,176=>176,892=>892,1693=>1693,1845=>1845,1442=>1442,563=>563,1451=>1451,1194=>1194,880=>880,671=>671,721=>721,930=>930,1386=>1386,1195=>1195,284=>284,1144=>1144,1116=>1116,1581=>1581,589=>589,782=>782,685=>685,188=>188,1835=>1835,1871=>1871,797=>797,617=>617,71=>71,1664=>1664,184=>184,1780=>1780,1127=>1127,1821=>1821,794=>794,1301=>1301,908=>908,733=>733,1705=>1705,1795=>1795,294=>294,1426=>1426,606=>606,881=>881,1510=>1510,917=>917,966=>966,980=>980,261=>261,1102=>1102,514=>514,1512=>1512,840=>840,1358=>1358,41=>41,15=>15,461=>461,148=>148,1135=>1135,957=>957,586=>586,66=>66,1488=>1488,1410=>1410,1158=>1158,95=>95,236=>236,111=>111,844=>844,14=>14,933=>933,1598=>1598,256=>256,1505=>1505,1136=>1136,1712=>1712,1876=>1876,565=>565,1199=>1199,763=>763,1240=>1240,549=>549,135=>135,125=>125,1387=>1387,453=>453,1100=>1100,1247=>1247,1445=>1445,309=>309,99=>99,1349=>1349,1286=>1286,1779=>1779,9=>9,1634=>1634,348=>348,860=>860,736=>736,591=>591,1179=>1179,103=>103,1348=>1348,730=>730,1719=>1719,1484=>1484,1276=>1276,667=>667,911=>911,1618=>1618,795=>795,1003=>1003,1536=>1536,832=>832,846=>846,191=>191,1677=>1677,1672=>1672,918=>918,276=>276,508=>508,1368=>1368,1074=>1074,1798=>1798,1763=>1763,1444=>1444,1608=>1608,1072=>1072,654=>654,593=>593,624=>624,1369=>1369,1049=>1049,1375=>1375,956=>956,1055=>1055,718=>718,1638=>1638,818=>818,372=>372,1457=>1457,664=>664,1739=>1739,279=>279,700=>700,368=>368,609=>609,1191=>1191,922=>922,885=>885,1227=>1227,1604=>1604,1228=>1228,963=>963,1796=>1796,290=>290,650=>650,1794=>1794,607=>607,824=>824,171=>171,1829=>1829,750=>750,334=>334,1572=>1572,1645=>1645,1091=>1091,178=>178,313=>313,1463=>1463,1098=>1098,493=>493,1884=>1884,1801=>1801,577=>577,113=>113,293=>293,1538=>1538,1637=>1637,297=>297,507=>507,1548=>1548,1177=>1177,1748=>1748,1559=>1559,274=>274,1073=>1073,1118=>1118,1624=>1624,28=>28,634=>634,1255=>1255,97=>97,1449=>1449,584=>584,1757=>1757,1715=>1715,39=>39,58=>58,8=>8,739=>739,333=>333,428=>428,1330=>1330,185=>185,1594=>1594,868=>868,1738=>1738,849=>849,774=>774,266=>266,421=>421,1898=>1898,1440=>1440,145=>145,1441=>1441,1494=>1494,1064=>1064,86=>86,1233=>1233,587=>587,1708=>1708,1656=>1656,82=>82,1682=>1682,75=>75,1492=>1492,701=>701,87=>87,1730=>1730,668=>668,510=>510,1502=>1502,947=>947,347=>347,1639=>1639,1603=>1603,1059=>1059,1543=>1543,792=>792,1101=>1101,389=>389,1725=>1725,598=>598,1392=>1392,562=>562,53=>53,869=>869,745=>745,305=>305,1325=>1325,27=>27,1690=>1690,1564=>1564,134=>134,215=>215,1248=>1248,882=>882,542=>542,499=>499,477=>477,201=>201,1818=>1818,876=>876,31=>31,1401=>1401,597=>597,1636=>1636,1454=>1454,33=>33,1338=>1338,1218=>1218,1189=>1189,1117=>1117,1031=>1031,1689=>1689,473=>473,1490=>1490,1170=>1170,1164=>1164,978=>978,230=>230,1756=>1756,1412=>1412,50=>50,513=>513,80=>80,1699=>1699,1216=>1216,412=>412,1188=>1188,401=>401,847=>847,786=>786,1613=>1613,1814=>1814,822=>822,1354=>1354,1668=>1668,167=>167,903=>903,1076=>1076,21=>21,1094=>1094,280=>280,260=>260,1611=>1611,761=>761,1174=>1174,1684=>1684,1293=>1293,463=>463,438=>438,1614=>1614,1870=>1870,1508=>1508,1670=>1670,757=>757,699=>699,1372=>1372,55=>55,1034=>1034,1589=>1589,694=>694,728=>728,709=>709,1745=>1745,1654=>1654,483=>483,258=>258,205=>205,1161=>1161,1584=>1584,269=>269,452=>452,492=>492,65=>65,202=>202,44=>44,1056=>1056,192=>192,729=>729,901=>901,270=>270,1894=>1894,1367=>1367,339=>339,1840=>1840,1619=>1619,800=>800,1027=>1027,1467=>1467,1485=>1485,379=>379,352=>352,1606=>1606,118=>118,38=>38,648=>648,553=>553,570=>570,1223=>1223,826=>826,821=>821,902=>902,715=>715,1771=>1771,411=>411,81=>81,1343=>1343,19=>19,1851=>1851,424=>424,1842=>1842,686=>686,1084=>1084,163=>163,861=>861,1053=>1053,89=>89,1242=>1242,924=>924,1128=>1128,1239=>1239,1253=>1253,1067=>1067,1832=>1832,1583=>1583,1841=>1841,1304=>1304,1650=>1650,1657=>1657,1014=>1014,1808=>1808,1413=>1413,26=>26,387=>387,4=>4,1888=>1888,1281=>1281,440=>440,622=>622,101=>101,897=>897,1356=>1356,34=>34,467=>467,762=>762,1431=>1431,238=>238,674=>674,627=>627,1585=>1585,1877=>1877,295=>295,1226=>1226,1092=>1092,912=>912,242=>242,1204=>1204,810=>810,1577=>1577,775=>775,1815=>1815,16=>16,575=>575,805=>805,208=>208,1019=>1019,1254=>1254,1812=>1812,72=>72,1168=>1168,653=>653,988=>988,1339=>1339,362=>362,643=>643,1666=>1666,1861=>1861,1521=>1521,46=>46,1595=>1595,938=>938,995=>995,247=>247,631=>631,1852=>1852,18=>18,403=>403,1121=>1121,852=>852,994=>994,355=>355,749=>749,187=>187,1149=>1149,1198=>1198,814=>814,539=>539,487=>487,1371=>1371,541=>541,753=>753,1809=>1809,1482=>1482,1414=>1414,1295=>1295,1342=>1342,1529=>1529,1078=>1078,743=>743,546=>546,1219=>1219,945=>945,754=>754,1048=>1048,500=>500,710=>710,383=>383,330=>330,409=>409,36=>36,1711=>1711,680=>680,415=>415,1305=>1305,1615=>1615,423=>423,271=>271,714=>714,1478=>1478,23=>23,315=>315,1409=>1409,1753=>1753,1279=>1279,1862=>1862,712=>712,300=>300,1895=>1895,289=>289,1289=>1289,435=>435,1395=>1395,1169=>1169,1232=>1232,704=>704,690=>690,779=>779,921=>921,96=>96,1718=>1718,803=>803,1533=>1533,819=>819,1744=>1744,489=>489,1816=>1816,1544=>1544,898=>898,534=>534,559=>559,227=>227,515=>515,195=>195,157=>157,697=>697,1085=>1085,1347=>1347,1746=>1746,169=>169,1154=>1154,783=>783,1362=>1362,1004=>1004,529=>529,630=>630,472=>472,63=>63,557=>557,501=>501,245=>245,574=>574,1119=>1119,1591=>1591,734=>734,495=>495,1468=>1468,566=>566,1251=>1251,1007=>1007,962=>962,150=>150,209=>209,888=>888,1257=>1257,1680=>1680,308=>308,200=>200,1317=>1317,778=>778,1292=>1292,1857=>1857,172=>172,314=>314,583=>583,394=>394,37=>37,1628=>1628,450=>450,953=>953,1769=>1769,141=>141,30=>30,1=>1,1511=>1511,214=>214,1868=>1868,944=>944,91=>91,470=>470,639=>639,244=>244,693=>693,1173=>1173,1836=>1836,1897=>1897,1499=>1499,1224=>1224,140=>140,785=>785,1077=>1077,378=>378,1695=>1695,759=>759,177=>177,657=>657,427=>427,1435=>1435,1525=>1525,1365=>1365,1341=>1341,756=>756,1775=>1775,1539=>1539,1561=>1561,1541=>1541,825=>825,907=>907,78=>78,986=>986,1403=>1403,1864=>1864,1297=>1297,616=>616,1688=>1688,820=>820,182=>182,1755=>1755,1093=>1093,964=>964,518=>518,1789=>1789,866=>866,1283=>1283,673=>673,1865=>1865,1754=>1754,40=>40,1359=>1359,599=>599,417=>417,891=>891,1784=>1784,1332=>1332,1452=>1452,1212=>1212,842=>842,1434=>1434,884=>884,1778=>1778,1724=>1724,1450=>1450,1344=>1344,343=>343,1231=>1231,770=>770,246=>246,764=>764,456=>456,1734=>1734,338=>338,1436=>1436,1068=>1068,1633=>1633,1856=>1856,767=>767,1783=>1783,1507=>1507,267=>267,940=>940,1462=>1462,25=>25,798=>798,1404=>1404,768=>768,1217=>1217,1665=>1665,1185=>1185,356=>356,194=>194,1002=>1002,234=>234,758=>758,1669=>1669,1291=>1291,1142=>1142,1605=>1605,533=>533,1620=>1620,408=>408,651=>651,1867=>1867,993=>993,1663=>1663,1578=>1578,229=>229,1351=>1351,190=>190,228=>228,1165=>1165,179=>179,1824=>1824,1803=>1803,1500=>1500,615=>615,1658=>1658,402=>402,989=>989,1685=>1685,1319=>1319,519=>519,1263=>1263,807=>807,1364=>1364,319=>319,1138=>1138,156=>156,1036=>1036,1438=>1438,1311=>1311,1516=>1516,1453=>1453,1176=>1176,349=>349,983=>983,1196=>1196,56=>56,839=>839,633=>633,1113=>1113,1772=>1772,1249=>1249,708=>708,158=>158,464=>464,160=>160,582=>582,1741=>1741,1869=>1869,992=>992,384=>384,1566=>1566,1429=>1429,479=>479,1396=>1396,1280=>1280,114=>114,1846=>1846,1122=>1122,84=>84,738=>738,645=>645,93=>93,1790=>1790,1303=>1303,564=>564,1208=>1208,608=>608,1061=>1061,1720=>1720,516=>516,1590=>1590,1609=>1609,1642=>1642,1552=>1552,224=>224,76=>76,1863=>1863,1360=>1360,213=>213,769=>769,414=>414,287=>287,939=>939,102=>102,1523=>1523,1130=>1130,561=>561,1258=>1258,1353=>1353,985=>985,1328=>1328,638=>638,1234=>1234,462=>462,239=>239,1299=>1299,1455=>1455,139=>139,1408=>1408,871=>871,1272=>1272,1531=>1531,282=>282,1860=>1860,1290=>1290,1214=>1214,801=>801,250=>250,1575=>1575,127=>127,934=>934,1834=>1834,1193=>1193,1063=>1063,1172=>1172,1419=>1419,203=>203,960=>960,604=>604,468=>468,320=>320,1236=>1236,1768=>1768,998=>998,702=>702,1045=>1045,48=>48,1225=>1225,1632=>1632,277=>277,255=>255,1519=>1519,485=>485,1491=>1491,746=>746,301=>301,164=>164,1315=>1315,1792=>1792,830=>830,1432=>1432,136=>136,342=>342,900=>900,1878=>1878,1197=>1197,159=>159,926=>926,1839=>1839,1011=>1011,696=>696,538=>538,121=>121,457=>457,1171=>1171,836=>836,168=>168,1537=>1537,211=>211,1524=>1524,1399=>1399,1567=>1567,777=>777,1515=>1515,1582=>1582,1298=>1298,299=>299,363=>363,1267=>1267,1799=>1799,887=>887,571=>571,1627=>1627,1707=>1707,1266=>1266,955=>955,1653=>1653,1088=>1088,1010=>1010,374=>374,1345=>1345,1379=>1379,505=>505,600=>600,827=>827,1361=>1361,1187=>1187,920=>920,449=>449,879=>879,480=>480,1020=>1020,1597=>1597,1486=>1486,1069=>1069,1306=>1306,1235=>1235,1095=>1095,1070=>1070,1407=>1407,530=>530,1066=>1066,1788=>1788,193=>193,59=>59,1472=>1472,675=>675,1183=>1183,527=>527,726=>726,1692=>1692,219=>219,223=>223,802=>802,1883=>1883,1378=>1378,259=>259,997=>997,1099=>1099,558=>558,1837=>1837,1096=>1096,665=>665,531=>531,1731=>1731,32=>32,316=>316,432=>432,381=>381,719=>719,1009=>1009,781=>781,813=>813,3=>3,1287=>1287,1474=>1474,1866=>1866,928=>928,632=>632,1296=>1296,1140=>1140,1366=>1366,341=>341,321=>321,1110=>1110,1042=>1042,1535=>1535,1241=>1241,322=>322),[1253,225],59494,19,71),RpcApi.SimpleOrganism(0x00000000000cb085,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_51::Int64 = -6822610315154768321
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_49::Int8 = 63
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_6 = string(var_46)
            var_46 = Creature.stepLeft(o)
            var_46 = (Bool)(var_46) $ (Bool)(var_46)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_44 = isempty("vNtE6Dpn")
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_45 = Int16(o.color)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_8 = isempty(var_38)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        var_45 = if 32767 >= abs(var_45)
                Int16(var_45)
            else
                32767
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_50::Int16 = -24204
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],24.8597,0,79.2132,109720,0x00000073,Dict(114=>114,109=>109,0=>0,42=>42,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,56=>56,94=>94,108=>108),[250,305],45993,21,77),RpcApi.SimpleOrganism(0x00000000000cc206,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(1117)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_43::String = "Vo2JVKDe"
            var_41 = Creature.energyRight(o)
            var_42 = tan(var_41)
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_3 = if 127 >= abs(var_18)
                    Int8(var_18)
                else
                    127
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepUp(o)
        var_36 = func_21(var_36)
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_2 > (Int8)(0)
        if var_8 < var_8
        end
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_8 = Bool(abs(var_8 - var_8))
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],19.3613,0,2.38537,109489,0x0000006d,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,127=>127),[964,572],995,85,82),RpcApi.SimpleOrganism(0x00000000000cbcea,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_46 = Creature.stepRight(o)
            var_47 = Creature.energyUp(o)
            var_46 = var_47 > (Int64)(0)
            var_46 = Bool(abs(var_46 - var_46))
            var_47 = Creature.energyDown(o)
            var_47 = Int(Creature.idLeft(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_45 = var_45 - var_45
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        var_8 = Creature.stepUp(o)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.stepRight(o)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],47.8557,0,8.91595,105745,0x00000073,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108,115=>115),[1053,210],14143,52,82),RpcApi.SimpleOrganism(0x00000000000caf9d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_49::Int64 = 369210797348698601
            var_47 = Creature.energyUp(o)
            var_49 = Creature.energyLeft(o)
            var_6 = var_6 * var_6
            var_49 = if isempty(var_6)
                    0
                else
                    1
                end
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_44 = (Bool)(var_44) & (Bool)(var_44)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_45 = Int16(o.pos.x)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_45 = var_45 * var_45
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_45)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_45 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = !var_8
        var_8 = Creature.stepUp(o)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.stepRight(o)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = string(var_2)
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],17.3858,0,51.4604,105671,0x00000074,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108,115=>115),[349,145],48312,4,83),RpcApi.SimpleOrganism(0x00000000000cbc8c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_42 = sec(var_41)
            var_41 = Int(Creature.idRight(o))
            Creature.stepDown(o)
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],6.99005,0,22.1083,105590,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[420,509],15084,23,86),RpcApi.SimpleOrganism(0x00000000000cb575,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_46(var_43::Float64=0.337593,var_44::Int16=31705,var_45::Float64=0.0468462)
            local var_53::Bool = true
            var_43 = Float64(4792090863074545770)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            if var_49 !== var_49
                Creature.stepLeft(o)
            end
            var_44 = if haskey(o.mem,var_44)
                    o.mem[var_44]
                else
                    var_44
                end
            var_45 = Float64(var_44)
            var_44 = if haskey(o.mem,var_44)
                    o.mem[var_44]
                else
                    var_44
                end
            var_45 = cos(var_43)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_43 = Float64(var_53)
            var_45 = sin(-31)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(5229647156616734038)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            Creature.stepDown(o)
            var_41 = Creature.energyRight(o)
            var_41 = Int(Creature.idUp(o))
            var_41 = Creature.energyRight(o)
            var_41 = Creature.energyLeft(o)
            var_41 = Creature.energyDown(o)
            var_41 = Int(Creature.idDown(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_54::String = "jYNxUBBs"
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 - var_4
            var_4 = Int16(o.color)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = if isempty("o7wkLsSF")
                    0
                else
                    1
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_38 = var_36 * var_36
        Creature.eatUp(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_52::Int64 = -5942614688981218277
            var_50 = csc(if -37 === (Int8)(0)
                        (Int8)(1)
                    else
                        -37
                    end)
            var_50 = Float64(false)
        end
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = !var_8
        if var_8 !== var_8
        end
        var_8 = Creature.stepRight(o)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(-12279)
                    Int8(-12279)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],79.079,0,23.9105,105492,0x00000070,Dict(1760=>1760,306=>306,1316=>1316,1333=>1333,1671=>1671,1131=>1131,74=>74,1662=>1662,1265=>1265,1469=>1469,1461=>1461,285=>285,1881=>1881,1481=>1481,318=>318,1124=>1124,1337=>1337,873=>873,1273=>1273,975=>975,354=>354,610=>610,1082=>1082,1791=>1791,117=>117,1400=>1400,1327=>1327,1588=>1588,1714=>1714,1374=>1374,474=>474,1616=>1616,621=>621,1446=>1446,353=>353,430=>430,1166=>1166,1329=>1329,79=>79,1640=>1640,1479=>1479,1331=>1331,154=>154,1683=>1683,845=>845,107=>107,1648=>1648,682=>682,416=>416,10=>10,642=>642,162=>162,240=>240,974=>974,5=>5,1146=>1146,1230=>1230,1097=>1097,1817=>1817,776=>776,1324=>1324,573=>573,1460=>1460,512=>512,1503=>1503,90=>90,1527=>1527,396=>396,1201=>1201,1017=>1017,1141=>1141,592=>592,973=>973,1052=>1052,1418=>1418,655=>655,1873=>1873,620=>620,965=>965,1148=>1148,130=>130,146=>146,545=>545,1475=>1475,660=>660,1062=>1062,110=>110,1813=>1813,981=>981,1150=>1150,525=>525,1029=>1029,899=>899,366=>366,556=>556,128=>128,1722=>1722,1417=>1417,831=>831,183=>183,522=>522,931=>931,345=>345,742=>742,152=>152,1043=>1043,723=>723,843=>843,1643=>1643,982=>982,732=>732,1703=>1703,941=>941,1008=>1008,1274=>1274,454=>454,1599=>1599,312=>312,663=>663,446=>446,751=>751,659=>659,602=>602,1465=>1465,1853=>1853,241=>241,370=>370,197=>197,1887=>1887,142=>142,935=>935,848=>848,1786=>1786,614=>614,1694=>1694,612=>612,433=>433,1107=>1107,677=>677,1652=>1652,1381=>1381,1563=>1563,1540=>1540,890=>890,958=>958,916=>916,672=>672,94=>94,115=>115,418=>418,373=>373,455=>455,641=>641,1496=>1496,426=>426,1710=>1710,1211=>1211,503=>503,551=>551,914=>914,859=>859,1209=>1209,1288=>1288,1655=>1655,707=>707,471=>471,393=>393,497=>497,1167=>1167,1759=>1759,1602=>1602,1802=>1802,1115=>1115,1782=>1782,1252=>1252,1522=>1522,1858=>1858,1430=>1430,377=>377,1245=>1245,1382=>1382,1751=>1751,1560=>1560,1740=>1740,1437=>1437,1018=>1018,1044=>1044,867=>867,1506=>1506,1114=>1114,1607=>1607,254=>254,628=>628,1702=>1702,635=>635,20=>20,1644=>1644,1134=>1134,451=>451,166=>166,1126=>1126,35=>35,397=>397,1157=>1157,1054=>1054,1109=>1109,1571=>1571,816=>816,286=>286,1900=>1900,1831=>1831,392=>392,554=>554,346=>346,126=>126,303=>303,567=>567,872=>872,883=>883,237=>237,594=>594,386=>386,613=>613,1530=>1530,1213=>1213,517=>517,1691=>1691,1698=>1698,949=>949,1551=>1551,523=>523,1309=>1309,1580=>1580,504=>504,98=>98,666=>666,1713=>1713,1875=>1875,540=>540,1896=>1896,952=>952,161=>161,22=>22,73=>73,119=>119,222=>222,646=>646,1514=>1514,580=>580,687=>687,640=>640,502=>502,498=>498,603=>603,1423=>1423,1271=>1271,1826=>1826,1629=>1629,1807=>1807,131=>131,1532=>1532,249=>249,391=>391,207=>207,173=>173,1565=>1565,1891=>1891,1261=>1261,1735=>1735,1151=>1151,1015=>1015,70=>70,625=>625,1129=>1129,886=>886,1385=>1385,1513=>1513,1326=>1326,1060=>1060,327=>327,511=>511,1797=>1797,780=>780,951=>951,773=>773,1545=>1545,720=>720,1879=>1879,326=>326,248=>248,1420=>1420,1520=>1520,447=>447,555=>555,217=>217,855=>855,1830=>1830,506=>506,1517=>1517,120=>120,1487=>1487,681=>681,1558=>1558,1767=>1767,143=>143,1447=>1447,62=>62,996=>996,1459=>1459,548=>548,1355=>1355,961=>961,251=>251,1250=>1250,649=>649,1825=>1825,1854=>1854,656=>656,1820=>1820,766=>766,909=>909,1579=>1579,155=>155,569=>569,1625=>1625,344=>344,787=>787,747=>747,1471=>1471,1576=>1576,929=>929,1079=>1079,1498=>1498,1610=>1610,253=>253,1120=>1120,815=>815,1542=>1542,324=>324,1322=>1322,858=>858,13=>13,1080=>1080,1800=>1800,1806=>1806,647=>647,137=>137,1547=>1547,105=>105,765=>765,1448=>1448,307=>307,273=>273,1143=>1143,1032=>1032,1323=>1323,1182=>1182,100=>100,904=>904,1555=>1555,790=>790,1159=>1159,1346=>1346,268=>268,243=>243,535=>535,1612=>1612,317=>317,1732=>1732,676=>676,1661=>1661,1425=>1425,108=>108,1105=>1105,329=>329,1262=>1262,755=>755,1312=>1312,735=>735,144=>144,400=>400,1849=>1849,788=>788,1285=>1285,375=>375,494=>494,893=>893,1024=>1024,112=>112,544=>544,1310=>1310,106=>106,1811=>1811,1153=>1153,350=>350,823=>823,1823=>1823,585=>585,834=>834,1679=>1679,54=>54,337=>337,60=>60,481=>481,1277=>1277,1051=>1051,1893=>1893,1320=>1320,1785=>1785,936=>936,1781=>1781,189=>189,398=>398,913=>913,875=>875,896=>896,1676=>1676,1762=>1762,695=>695,1838=>1838,1554=>1554,380=>380,1041=>1041,1649=>1649,1697=>1697,1384=>1384,68=>68,275=>275,724=>724,382=>382,1380=>1380,1111=>1111,547=>547,1439=>1439,199=>199,323=>323,1005=>1005,669=>669,406=>406,683=>683,652=>652,232=>232,1243=>1243,83=>83,1480=>1480,45=>45,1402=>1402,954=>954,662=>662,1192=>1192,1334=>1334,1039=>1039,808=>808,442=>442,976=>976,595=>595,1023=>1023,972=>972,1075=>1075,376=>376,684=>684,61=>61,1489=>1489,1761=>1761,431=>431,862=>862,870=>870,1160=>1160,1733=>1733,304=>304,476=>476,629=>629,361=>361,772=>772,1030=>1030,706=>706,1104=>1104,1106=>1106,1152=>1152,841=>841,1215=>1215,288=>288,1805=>1805,1050=>1050,1889=>1889,1000=>1000,1570=>1570,1899=>1899,57=>57,1617=>1617,799=>799,445=>445,252=>252,835=>835,1376=>1376,727=>727,1556=>1556,1819=>1819,49=>49,552=>552,1827=>1827,716=>716,1723=>1723,1466=>1466,1587=>1587,1155=>1155,1549=>1549,264=>264,984=>984,221=>221,153=>153,579=>579,590=>590,1370=>1370,390=>390,619=>619,484=>484,1089=>1089,1393=>1393,129=>129,1743=>1743,88=>88,429=>429,1458=>1458,937=>937,149=>149,439=>439,1456=>1456,1729=>1729,210=>210,1635=>1635,1822=>1822,1726=>1726,789=>789,1890=>1890,1405=>1405,1787=>1787,1596=>1596,175=>175,1278=>1278,543=>543,1411=>1411,1264=>1264,987=>987,970=>970,419=>419,596=>596,436=>436,793=>793,967=>967,942=>942,1574=>1574,216=>216,47=>47,147=>147,1123=>1123,1108=>1108,1186=>1186,829=>829,488=>488,1504=>1504,1568=>1568,1777=>1777,863=>863,1742=>1742,560=>560,688=>688,1673=>1673,950=>950,51=>51,123=>123,1256=>1256,358=>358,1696=>1696,1766=>1766,661=>661,1497=>1497,740=>740,581=>581,713=>713,1716=>1716,1026=>1026,532=>532,658=>658,1350=>1350,1132=>1132,365=>365,771=>771,1443=>1443,509=>509,521=>521,1464=>1464,407=>407,1181=>1181,874=>874,1058=>1058,817=>817,1083=>1083,1307=>1307,1363=>1363,138=>138,703=>703,292=>292,235=>235,692=>692,971=>971,1112=>1112,1229=>1229,1647=>1647,1855=>1855,1770=>1770,1065=>1065,1764=>1764,0=>0,838=>838,1518=>1518,1156=>1156,1200=>1200,1546=>1546,1016=>1016,1147=>1147,12=>12,1601=>1601,1736=>1736,410=>410,528=>528,626=>626,364=>364,1246=>1246,1180=>1180,1810=>1810,889=>889,837=>837,623=>623,1388=>1388,979=>979,678=>678,1203=>1203,262=>262,92=>92,1592=>1592,1205=>1205,1843=>1843,1651=>1651,1828=>1828,124=>124,791=>791,360=>360,85=>85,1377=>1377,181=>181,1028=>1028,894=>894,1773=>1773,1071=>1071,1483=>1483,1422=>1422,458=>458,1675=>1675,1163=>1163,1476=>1476,1646=>1646,52=>52,1709=>1709,233=>233,367=>367,278=>278,1222=>1222,959=>959,336=>336,1737=>1737,64=>64,568=>568,1397=>1397,444=>444,257=>257,220=>220,943=>943,524=>524,854=>854,932=>932,588=>588,67=>67,864=>864,1428=>1428,7=>7,1424=>1424,395=>395,537=>537,325=>325,437=>437,1848=>1848,536=>536,878=>878,340=>340,526=>526,399=>399,1202=>1202,174=>174,371=>371,1221=>1221,1336=>1336,24=>24,116=>116,1046=>1046,1391=>1391,1260=>1260,496=>496,1630=>1630,1774=>1774,1600=>1600,520=>520,895=>895,11=>11,491=>491,1557=>1557,478=>478,1103=>1103,1534=>1534,1495=>1495,1047=>1047,490=>490,946=>946,335=>335,828=>828,165=>165,1859=>1859,133=>133,1678=>1678,1880=>1880,748=>748,328=>328,977=>977,752=>752,425=>425,1569=>1569,1373=>1373,1175=>1175,77=>77,311=>311,1727=>1727,1750=>1750,605=>605,1302=>1302,441=>441,132=>132,1631=>1631,1681=>1681,1389=>1389,231=>231,725=>725,550=>550,1550=>1550,302=>302,1178=>1178,1882=>1882,1087=>1087,225=>225,1593=>1593,204=>204,122=>122,1509=>1509,180=>180,1844=>1844,413=>413,601=>601,806=>806,731=>731,877=>877,331=>331,1433=>1433,1700=>1700,948=>948,679=>679,1237=>1237,1872=>1872,1357=>1357,1626=>1626,1892=>1892,969=>969,1133=>1133,1184=>1184,296=>296,1470=>1470,1621=>1621,1833=>1833,1210=>1210,717=>717,1145=>1145,1686=>1686,705=>705,212=>212,310=>310,1415=>1415,760=>760,265=>265,853=>853,1573=>1573,17=>17,466=>466,1885=>1885,1013=>1013,475=>475,851=>851,637=>637,1804=>1804,744=>744,1022=>1022,226=>226,1421=>1421,43=>43,1033=>1033,1137=>1137,1268=>1268,104=>104,999=>999,919=>919,465=>465,857=>857,1318=>1318,711=>711,737=>737,1086=>1086,1765=>1765,1660=>1660,291=>291,422=>422,1394=>1394,196=>196,576=>576,968=>968,281=>281,1667=>1667,578=>578,1275=>1275,1721=>1721,1282=>1282,405=>405,1321=>1321,1641=>1641,1190=>1190,2=>2,1269=>1269,1416=>1416,1006=>1006,1776=>1776,925=>925,1674=>1674,151=>151,1562=>1562,1874=>1874,1793=>1793,1057=>1057,1701=>1701,1220=>1220,1284=>1284,611=>611,1313=>1313,741=>741,283=>283,1850=>1850,448=>448,459=>459,109=>109,1847=>1847,833=>833,298=>298,1001=>1001,1623=>1623,722=>722,1706=>1706,1238=>1238,644=>644,906=>906,1477=>1477,1493=>1493,784=>784,1162=>1162,636=>636,359=>359,1687=>1687,332=>332,1622=>1622,1528=>1528,1207=>1207,198=>198,1758=>1758,1749=>1749,1206=>1206,1037=>1037,1586=>1586,272=>272,482=>482,469=>469,1335=>1335,1752=>1752,443=>443,689=>689,1526=>1526,1747=>1747,1308=>1308,1314=>1314,1501=>1501,850=>850,1021=>1021,1728=>1728,369=>369,990=>990,698=>698,486=>486,1040=>1040,1270=>1270,170=>170,42=>42,1300=>1300,796=>796,1352=>1352,1553=>1553,811=>811,1139=>1139,865=>865,388=>388,69=>69,991=>991,1294=>1294,351=>351,572=>572,1398=>1398,1886=>1886,434=>434,1244=>1244,1383=>1383,460=>460,1406=>1406,263=>263,357=>357,915=>915,206=>206,927=>927,385=>385,1340=>1340,809=>809,670=>670,923=>923,1659=>1659,1427=>1427,1125=>1125,1259=>1259,804=>804,910=>910,1081=>1081,404=>404,691=>691,812=>812,1025=>1025,1012=>1012,618=>618,1390=>1390,186=>186,420=>420,1035=>1035,6=>6,856=>856,1717=>1717,1038=>1038,218=>218,1473=>1473,1704=>1704,1090=>1090,29=>29,905=>905,176=>176,892=>892,1693=>1693,1845=>1845,1442=>1442,563=>563,1451=>1451,1194=>1194,880=>880,671=>671,721=>721,930=>930,1195=>1195,1386=>1386,284=>284,1144=>1144,1116=>1116,1581=>1581,188=>188,685=>685,782=>782,1835=>1835,589=>589,1871=>1871,797=>797,617=>617,71=>71,1127=>1127,1664=>1664,1780=>1780,184=>184,1821=>1821,794=>794,1301=>1301,908=>908,733=>733,1705=>1705,1795=>1795,294=>294,1426=>1426,606=>606,881=>881,1510=>1510,917=>917,966=>966,980=>980,261=>261,1102=>1102,514=>514,1512=>1512,840=>840,1358=>1358,15=>15,41=>41,461=>461,148=>148,1135=>1135,957=>957,1488=>1488,66=>66,586=>586,1410=>1410,1158=>1158,95=>95,236=>236,111=>111,844=>844,14=>14,933=>933,1598=>1598,1505=>1505,256=>256,1136=>1136,1712=>1712,1876=>1876,565=>565,1199=>1199,763=>763,1240=>1240,549=>549,135=>135,125=>125,1387=>1387,1100=>1100,453=>453,1247=>1247,1445=>1445,309=>309,99=>99,1349=>1349,1286=>1286,1779=>1779,9=>9,1634=>1634,348=>348,736=>736,860=>860,591=>591,1179=>1179,103=>103,1348=>1348,730=>730,1276=>1276,1484=>1484,1719=>1719,667=>667,911=>911,1618=>1618,795=>795,1003=>1003,1536=>1536,832=>832,846=>846,191=>191,1677=>1677,1672=>1672,918=>918,276=>276,1368=>1368,1074=>1074,508=>508,1798=>1798,1763=>1763,1444=>1444,1608=>1608,1072=>1072,593=>593,654=>654,624=>624,1369=>1369,1049=>1049,1375=>1375,956=>956,1055=>1055,718=>718,1638=>1638,818=>818,372=>372,1457=>1457,664=>664,1739=>1739,279=>279,700=>700,368=>368,609=>609,1191=>1191,885=>885,922=>922,1227=>1227,1604=>1604,1228=>1228,963=>963,1796=>1796,1794=>1794,290=>290,650=>650,607=>607,824=>824,171=>171,1829=>1829,750=>750,1572=>1572,334=>334,1645=>1645,1091=>1091,178=>178,1098=>1098,1463=>1463,313=>313,1884=>1884,1801=>1801,493=>493,577=>577,113=>113,293=>293,1538=>1538,1637=>1637,297=>297,507=>507,1548=>1548,1177=>1177,1748=>1748,1559=>1559,1073=>1073,274=>274,1118=>1118,1624=>1624,28=>28,634=>634,1255=>1255,1449=>1449,97=>97,584=>584,1715=>1715,1757=>1757,39=>39,58=>58,739=>739,8=>8,333=>333,428=>428,1330=>1330,185=>185,1594=>1594,868=>868,1738=>1738,774=>774,849=>849,266=>266,421=>421,1898=>1898,1440=>1440,145=>145,1441=>1441,1494=>1494,1064=>1064,86=>86,1233=>1233,587=>587,1708=>1708,1656=>1656,1682=>1682,82=>82,75=>75,1492=>1492,701=>701,87=>87,1730=>1730,668=>668,510=>510,1502=>1502,947=>947,347=>347,1639=>1639,1603=>1603,1059=>1059,1543=>1543,792=>792,1101=>1101,1725=>1725,389=>389,1392=>1392,598=>598,562=>562,53=>53,869=>869,745=>745,305=>305,1325=>1325,1690=>1690,27=>27,1564=>1564,134=>134,215=>215,1248=>1248,882=>882,542=>542,499=>499,201=>201,477=>477,1818=>1818,876=>876,31=>31,1401=>1401,1636=>1636,597=>597,1454=>1454,33=>33,1218=>1218,1338=>1338,1189=>1189,1117=>1117,1031=>1031,1689=>1689,473=>473,1490=>1490,1170=>1170,1164=>1164,978=>978,230=>230,1412=>1412,1756=>1756,50=>50,80=>80,513=>513,1699=>1699,1216=>1216,412=>412,1188=>1188,401=>401,847=>847,786=>786,1613=>1613,1814=>1814,822=>822,1354=>1354,1668=>1668,167=>167,903=>903,1076=>1076,21=>21,1094=>1094,1611=>1611,260=>260,280=>280,761=>761,1174=>1174,1293=>1293,1684=>1684,463=>463,1614=>1614,438=>438,1870=>1870,1508=>1508,1670=>1670,757=>757,699=>699,1372=>1372,55=>55,1034=>1034,1589=>1589,694=>694,709=>709,728=>728,1745=>1745,1654=>1654,483=>483,258=>258,205=>205,1161=>1161,1584=>1584,269=>269,452=>452,492=>492,65=>65,202=>202,44=>44,1056=>1056,192=>192,729=>729,901=>901,270=>270,1894=>1894,1367=>1367,1619=>1619,1840=>1840,339=>339,800=>800,1027=>1027,1467=>1467,1485=>1485,379=>379,352=>352,1606=>1606,38=>38,118=>118,1223=>1223,553=>553,570=>570,648=>648,821=>821,826=>826,902=>902,715=>715,1771=>1771,411=>411,81=>81,1343=>1343,19=>19,1851=>1851,424=>424,1842=>1842,686=>686,1084=>1084,163=>163,861=>861,1053=>1053,1242=>1242,89=>89,924=>924,1128=>1128,1239=>1239,1253=>1253,1067=>1067,1832=>1832,1304=>1304,1583=>1583,1841=>1841,1650=>1650,1657=>1657,1014=>1014,1808=>1808,1413=>1413,26=>26,387=>387,4=>4,1888=>1888,1281=>1281,440=>440,622=>622,101=>101,897=>897,1356=>1356,34=>34,467=>467,762=>762,1431=>1431,238=>238,674=>674,627=>627,1585=>1585,1877=>1877,295=>295,1092=>1092,1226=>1226,912=>912,1204=>1204,242=>242,810=>810,1577=>1577,775=>775,1815=>1815,16=>16,575=>575,805=>805,208=>208,1019=>1019,1254=>1254,1812=>1812,72=>72,1168=>1168,653=>653,988=>988,1339=>1339,362=>362,643=>643,1666=>1666,1861=>1861,1521=>1521,46=>46,1595=>1595,938=>938,995=>995,247=>247,631=>631,1852=>1852,18=>18,1121=>1121,403=>403,852=>852,994=>994,355=>355,749=>749,187=>187,1149=>1149,1198=>1198,814=>814,1371=>1371,487=>487,539=>539,541=>541,753=>753,1809=>1809,1482=>1482,1414=>1414,1295=>1295,1342=>1342,1529=>1529,1078=>1078,743=>743,1219=>1219,546=>546,945=>945,754=>754,1048=>1048,500=>500,710=>710,383=>383,330=>330,409=>409,36=>36,1711=>1711,680=>680,415=>415,1305=>1305,1615=>1615,423=>423,271=>271,714=>714,1478=>1478,23=>23,315=>315,1409=>1409,1753=>1753,1279=>1279,1862=>1862,712=>712,300=>300,1895=>1895,1289=>1289,289=>289,435=>435,1395=>1395,1169=>1169,1232=>1232,704=>704,690=>690,779=>779,921=>921,96=>96,1718=>1718,803=>803,1533=>1533,819=>819,1744=>1744,1816=>1816,489=>489,1544=>1544,898=>898,534=>534,559=>559,227=>227,515=>515,195=>195,157=>157,697=>697,1085=>1085,1347=>1347,1746=>1746,169=>169,1154=>1154,1362=>1362,783=>783,1004=>1004,63=>63,472=>472,529=>529,630=>630,557=>557,501=>501,245=>245,574=>574,1119=>1119,1591=>1591,734=>734,1468=>1468,495=>495,566=>566,1251=>1251,1007=>1007,962=>962,150=>150,209=>209,888=>888,1257=>1257,1680=>1680,200=>200,308=>308,1292=>1292,778=>778,1317=>1317,1857=>1857,172=>172,314=>314,583=>583,37=>37,1628=>1628,394=>394,450=>450,953=>953,1769=>1769,141=>141,1=>1,30=>30,1511=>1511,214=>214,1868=>1868,944=>944,91=>91,470=>470,639=>639,244=>244,693=>693,1173=>1173,1836=>1836,1897=>1897,1224=>1224,1499=>1499,140=>140,785=>785,1077=>1077,378=>378,1695=>1695,759=>759,177=>177,657=>657,427=>427,1435=>1435,1525=>1525,1365=>1365,1341=>1341,756=>756,1775=>1775,1539=>1539,1561=>1561,1541=>1541,825=>825,907=>907,78=>78,986=>986,1403=>1403,1297=>1297,1864=>1864,616=>616,1688=>1688,820=>820,182=>182,1755=>1755,1093=>1093,964=>964,1789=>1789,518=>518,866=>866,1283=>1283,673=>673,1865=>1865,1754=>1754,40=>40,1359=>1359,599=>599,417=>417,891=>891,1784=>1784,1332=>1332,1212=>1212,1452=>1452,842=>842,1434=>1434,884=>884,1778=>1778,1724=>1724,1450=>1450,1344=>1344,343=>343,1231=>1231,770=>770,246=>246,764=>764,456=>456,1734=>1734,338=>338,1436=>1436,1068=>1068,1633=>1633,1783=>1783,767=>767,1507=>1507,1856=>1856,267=>267,940=>940,1462=>1462,25=>25,798=>798,1404=>1404,768=>768,1217=>1217,1665=>1665,1185=>1185,356=>356,194=>194,1002=>1002,234=>234,758=>758,1669=>1669,1142=>1142,1291=>1291,1605=>1605,533=>533,1620=>1620,408=>408,651=>651,1867=>1867,993=>993,1663=>1663,1578=>1578,229=>229,1351=>1351,190=>190,228=>228,1165=>1165,1803=>1803,1824=>1824,179=>179,1500=>1500,615=>615,1658=>1658,402=>402,989=>989,1319=>1319,1685=>1685,519=>519,1263=>1263,807=>807,1364=>1364,319=>319,1138=>1138,156=>156,1036=>1036,1438=>1438,1311=>1311,1516=>1516,1453=>1453,1176=>1176,349=>349,983=>983,1196=>1196,56=>56,839=>839,633=>633,1113=>1113,1772=>1772,1249=>1249,708=>708,158=>158,1741=>1741,160=>160,464=>464,582=>582,1869=>1869,992=>992,384=>384,1566=>1566,1429=>1429,479=>479,1396=>1396,1280=>1280,114=>114,1846=>1846,1122=>1122,84=>84,738=>738,645=>645,93=>93,1790=>1790,1303=>1303,1208=>1208,564=>564,608=>608,1061=>1061,1720=>1720,1590=>1590,516=>516,1609=>1609,1642=>1642,1552=>1552,1863=>1863,76=>76,1360=>1360,224=>224,213=>213,769=>769,414=>414,287=>287,939=>939,102=>102,1130=>1130,1523=>1523,561=>561,1258=>1258,1353=>1353,985=>985,1328=>1328,638=>638,1234=>1234,462=>462,239=>239,1299=>1299,1455=>1455,139=>139,1272=>1272,871=>871,1408=>1408,1531=>1531,282=>282,1860=>1860,1290=>1290,1214=>1214,801=>801,250=>250,1575=>1575,127=>127,934=>934,1834=>1834,1193=>1193,1063=>1063,1172=>1172,1419=>1419,203=>203,960=>960,468=>468,320=>320,604=>604,1236=>1236,1768=>1768,998=>998,702=>702,1045=>1045,48=>48,1225=>1225,1632=>1632,277=>277,1519=>1519,255=>255,485=>485,1491=>1491,746=>746,301=>301,164=>164,1315=>1315,1792=>1792,830=>830,1432=>1432,136=>136,342=>342,900=>900,1878=>1878,1197=>1197,159=>159,926=>926,1839=>1839,1011=>1011,696=>696,538=>538,121=>121,457=>457,1171=>1171,836=>836,168=>168,1537=>1537,1524=>1524,1399=>1399,211=>211,1567=>1567,777=>777,1515=>1515,1582=>1582,1298=>1298,299=>299,363=>363,1267=>1267,1799=>1799,887=>887,1088=>1088,1627=>1627,1266=>1266,1707=>1707,955=>955,1653=>1653,571=>571,1010=>1010,1345=>1345,374=>374,1379=>1379,505=>505,600=>600,827=>827,1187=>1187,1361=>1361,920=>920,449=>449,879=>879,480=>480,1020=>1020,1486=>1486,1597=>1597,1069=>1069,1306=>1306,1235=>1235,1095=>1095,1070=>1070,1407=>1407,530=>530,1066=>1066,1788=>1788,193=>193,59=>59,1472=>1472,675=>675,1183=>1183,527=>527,726=>726,1692=>1692,219=>219,223=>223,802=>802,1883=>1883,1378=>1378,259=>259,997=>997,1099=>1099,558=>558,1837=>1837,1096=>1096,665=>665,531=>531,1731=>1731,32=>32,316=>316,432=>432,381=>381,719=>719,1009=>1009,781=>781,813=>813,3=>3,1287=>1287,1474=>1474,1866=>1866,928=>928,632=>632,1296=>1296,1140=>1140,1366=>1366,341=>341,321=>321,1110=>1110,1042=>1042,1535=>1535,1241=>1241,322=>322),[1686,79],33341,50,106),RpcApi.SimpleOrganism(0x00000000000cbfc1,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(119)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyLeft(o)
            var_47 = Creature.energyLeft(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            var_47 = Int(Creature.idLeft(o))
            var_47 = Creature.energyDown(o)
            var_46 = isempty(var_6)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_45 = var_45 * var_45
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_45 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        var_38 = func_7(var_36)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_45 = if 32767 >= abs(var_2)
                Int16(var_2)
            else
                32767
            end
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_45 = if haskey(o.mem,var_45)
                o.mem[var_45]
            else
                var_45
            end
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        var_8 = Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_8 = var_8 | var_8
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],33.9886,0,99.6991,103969,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[1796,220],6807,71,87),RpcApi.SimpleOrganism(0x00000000000cc18e,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            Creature.stepRight(o)
            if var_20 < var_20
            end
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_41 = Creature.energyRight(o)
            var_6 = string(-22067)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            Creature.stepDown(o)
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if true
                    1
                else
                    0
                end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            o.mem[var_4] = var_4
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],96.3669,0,96.3041,103852,0x0000006e,Dict(109=>109,471=>471,0=>0,470=>470,119=>119,468=>468,110=>110,127=>127,13=>13,472=>472,120=>120,469=>469,117=>117,94=>94,108=>108),[471,511],2195,33,89),RpcApi.SimpleOrganism(0x00000000000cb550,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(var_20)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_45::Float64 = 0.840129
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        if var_2 > var_2
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],2.312,0,88.0021,103629,0x00000071,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[640,496],33707,11,80),RpcApi.SimpleOrganism(0x00000000000cbe1c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Int(Creature.idRight(o))
            var_47 = Int(Creature.idUp(o))
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        var_8 = Creature.stepDown(o)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],49.3115,0,54.6727,102845,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[612,862],11068,50,83),RpcApi.SimpleOrganism(0x00000000000cbc22,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_48 = Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_6 = var_6 * var_6
            var_47 = Creature.energyLeft(o)
            if var_6 == var_6
            end
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_8 = var_8 * var_8
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],61.8181,0,58.7125,102703,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[677,120],16144,71,84),RpcApi.SimpleOrganism(0x00000000000cb2f0,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            var_20 = var_20 * var_20
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_42 = sec(var_41)
            var_41 = Int(Creature.idRight(o))
            Creature.stepDown(o)
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],80.6205,0,74.9569,102638,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[439,407],39796,1,87),RpcApi.SimpleOrganism(0x00000000000cc194,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
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
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_45 = Int16(o.pos.x)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_45 = var_45 * var_45
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_45)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_45 = if var_8
                1
            else
                0
            end
        var_8 = !var_8
        var_8 = Creature.stepUp(o)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = string(var_2)
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.43516,0,43.0166,102108,0x00000073,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108,115=>115),[1725,253],2136,50,74),RpcApi.SimpleOrganism(0x00000000000cc067,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            var_20 = string(-25699)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            Creature.stepRight(o)
            var_6 = string(-22067)
            var_41 = Int(Creature.idUp(o))
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if true
                    1
                else
                    0
                end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            o.mem[var_4] = var_4
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_2 = var_2 - var_2
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(-29547)
                    Int8(-29547)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if isempty("WV8zpWEr")
                    0
                else
                    1
                end
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],4.74593,0,47.6053,101971,0x0000006f,Dict(474=>474,0=>0,470=>470,478=>478,468=>468,477=>477,111=>111,120=>120,469=>469,109=>109,476=>476,471=>471,473=>473,119=>119,110=>110,127=>127,475=>475,13=>13,472=>472,117=>117,94=>94,108=>108),[476,513],5147,65,87),RpcApi.SimpleOrganism(0x00000000000cc251,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.y)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
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
        var_8 = Creature.stepDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatDown(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_36 = string(-22185)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepLeft(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_2 > (Int8)(0)
        var_8 = -5319 > (Int16)(0)
        o.mem[var_13] = var_13
        var_8 = !var_8
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],25.7947,0,4.4474,100684,0x0000006e,Dict(1760=>1760,306=>306,1316=>1316,1333=>1333,1671=>1671,1131=>1131,74=>74,1662=>1662,1265=>1265,1469=>1469,1461=>1461,285=>285,1881=>1881,1481=>1481,318=>318,1124=>1124,1337=>1337,873=>873,1273=>1273,975=>975,610=>610,354=>354,1082=>1082,1791=>1791,117=>117,1400=>1400,1327=>1327,1714=>1714,1588=>1588,474=>474,1374=>1374,1616=>1616,621=>621,1446=>1446,353=>353,430=>430,1166=>1166,1329=>1329,79=>79,1640=>1640,1479=>1479,154=>154,1331=>1331,1683=>1683,845=>845,107=>107,1648=>1648,682=>682,416=>416,10=>10,642=>642,162=>162,240=>240,974=>974,5=>5,1146=>1146,1230=>1230,1097=>1097,1817=>1817,776=>776,1324=>1324,573=>573,1460=>1460,512=>512,1503=>1503,90=>90,1527=>1527,396=>396,1201=>1201,1017=>1017,1141=>1141,592=>592,973=>973,1052=>1052,1418=>1418,655=>655,1873=>1873,620=>620,965=>965,146=>146,130=>130,1148=>1148,545=>545,660=>660,1475=>1475,1062=>1062,110=>110,1813=>1813,981=>981,1150=>1150,525=>525,1029=>1029,899=>899,366=>366,556=>556,128=>128,1722=>1722,1417=>1417,831=>831,522=>522,183=>183,931=>931,345=>345,742=>742,152=>152,1043=>1043,723=>723,843=>843,1643=>1643,982=>982,732=>732,1703=>1703,941=>941,1008=>1008,1274=>1274,454=>454,312=>312,1599=>1599,663=>663,446=>446,751=>751,659=>659,602=>602,1465=>1465,1853=>1853,241=>241,370=>370,197=>197,1887=>1887,142=>142,935=>935,848=>848,1786=>1786,614=>614,1694=>1694,612=>612,433=>433,1107=>1107,677=>677,1652=>1652,1381=>1381,1563=>1563,1540=>1540,890=>890,958=>958,916=>916,672=>672,94=>94,115=>115,418=>418,455=>455,373=>373,641=>641,1496=>1496,426=>426,1710=>1710,1211=>1211,551=>551,503=>503,914=>914,859=>859,1209=>1209,1288=>1288,471=>471,707=>707,1655=>1655,393=>393,497=>497,1167=>1167,1759=>1759,1802=>1802,1602=>1602,1115=>1115,1782=>1782,1522=>1522,1252=>1252,1858=>1858,1430=>1430,377=>377,1245=>1245,1382=>1382,1751=>1751,1560=>1560,1740=>1740,1437=>1437,1018=>1018,1044=>1044,867=>867,1506=>1506,1114=>1114,1607=>1607,635=>635,628=>628,254=>254,1702=>1702,20=>20,1644=>1644,1134=>1134,451=>451,166=>166,397=>397,35=>35,1126=>1126,1157=>1157,1054=>1054,1109=>1109,1571=>1571,816=>816,286=>286,1900=>1900,1831=>1831,392=>392,554=>554,346=>346,126=>126,303=>303,567=>567,872=>872,883=>883,237=>237,594=>594,613=>613,386=>386,1530=>1530,1213=>1213,517=>517,1691=>1691,1698=>1698,949=>949,1551=>1551,523=>523,1580=>1580,1309=>1309,504=>504,98=>98,666=>666,1713=>1713,540=>540,1875=>1875,161=>161,952=>952,1896=>1896,22=>22,73=>73,119=>119,646=>646,222=>222,1514=>1514,580=>580,687=>687,640=>640,502=>502,498=>498,603=>603,1423=>1423,1271=>1271,1826=>1826,1629=>1629,1807=>1807,131=>131,391=>391,249=>249,1532=>1532,207=>207,173=>173,1565=>1565,1891=>1891,1261=>1261,1735=>1735,1151=>1151,1015=>1015,625=>625,70=>70,1129=>1129,886=>886,1385=>1385,1513=>1513,1326=>1326,1060=>1060,327=>327,511=>511,1797=>1797,780=>780,951=>951,773=>773,1545=>1545,720=>720,1879=>1879,326=>326,248=>248,1520=>1520,1420=>1420,447=>447,555=>555,217=>217,855=>855,1830=>1830,506=>506,1517=>1517,120=>120,1558=>1558,681=>681,1487=>1487,1767=>1767,143=>143,62=>62,1447=>1447,996=>996,1459=>1459,548=>548,1355=>1355,961=>961,251=>251,1250=>1250,649=>649,1825=>1825,1854=>1854,656=>656,1820=>1820,766=>766,909=>909,1579=>1579,569=>569,155=>155,1625=>1625,344=>344,787=>787,747=>747,1471=>1471,1576=>1576,929=>929,253=>253,1610=>1610,1498=>1498,1079=>1079,1120=>1120,815=>815,1542=>1542,324=>324,1322=>1322,858=>858,13=>13,1806=>1806,1800=>1800,1080=>1080,647=>647,137=>137,105=>105,1547=>1547,765=>765,307=>307,1448=>1448,273=>273,1143=>1143,1032=>1032,1323=>1323,1182=>1182,100=>100,904=>904,1555=>1555,790=>790,1159=>1159,1346=>1346,268=>268,243=>243,535=>535,1612=>1612,317=>317,1732=>1732,676=>676,1661=>1661,1425=>1425,108=>108,1105=>1105,329=>329,1262=>1262,755=>755,1312=>1312,735=>735,144=>144,400=>400,1849=>1849,788=>788,1285=>1285,375=>375,494=>494,893=>893,1024=>1024,112=>112,544=>544,1310=>1310,106=>106,1811=>1811,1153=>1153,350=>350,823=>823,1823=>1823,585=>585,834=>834,1679=>1679,54=>54,337=>337,481=>481,60=>60,1277=>1277,1051=>1051,1893=>1893,1320=>1320,1785=>1785,936=>936,1781=>1781,189=>189,398=>398,913=>913,875=>875,896=>896,1676=>1676,1762=>1762,695=>695,1838=>1838,380=>380,1554=>1554,1041=>1041,1649=>1649,1697=>1697,1384=>1384,68=>68,275=>275,724=>724,382=>382,1380=>1380,547=>547,1111=>1111,1439=>1439,199=>199,323=>323,1005=>1005,669=>669,406=>406,683=>683,652=>652,232=>232,1243=>1243,83=>83,1480=>1480,45=>45,1402=>1402,954=>954,662=>662,1334=>1334,1192=>1192,1039=>1039,808=>808,442=>442,976=>976,595=>595,1023=>1023,972=>972,1075=>1075,376=>376,684=>684,61=>61,1761=>1761,1489=>1489,431=>431,862=>862,870=>870,1160=>1160,1733=>1733,304=>304,629=>629,476=>476,361=>361,772=>772,1030=>1030,706=>706,1104=>1104,1106=>1106,1152=>1152,841=>841,1215=>1215,288=>288,1805=>1805,1050=>1050,1889=>1889,1000=>1000,1570=>1570,57=>57,1899=>1899,1617=>1617,799=>799,445=>445,252=>252,835=>835,1376=>1376,727=>727,1556=>1556,1819=>1819,49=>49,552=>552,1827=>1827,716=>716,1723=>1723,1466=>1466,1587=>1587,1155=>1155,1549=>1549,264=>264,984=>984,221=>221,153=>153,579=>579,590=>590,1370=>1370,390=>390,619=>619,484=>484,1089=>1089,1393=>1393,129=>129,88=>88,429=>429,1743=>1743,1458=>1458,937=>937,149=>149,439=>439,1456=>1456,1729=>1729,210=>210,1635=>1635,1822=>1822,1726=>1726,789=>789,1890=>1890,1405=>1405,1787=>1787,1596=>1596,175=>175,1278=>1278,543=>543,1411=>1411,1264=>1264,987=>987,970=>970,596=>596,419=>419,436=>436,967=>967,793=>793,942=>942,1574=>1574,216=>216,47=>47,147=>147,1123=>1123,1108=>1108,1186=>1186,829=>829,488=>488,1504=>1504,1568=>1568,1777=>1777,863=>863,1742=>1742,560=>560,688=>688,1673=>1673,950=>950,51=>51,123=>123,1256=>1256,358=>358,1766=>1766,1696=>1696,661=>661,1497=>1497,740=>740,581=>581,713=>713,1716=>1716,1026=>1026,658=>658,532=>532,1350=>1350,1132=>1132,365=>365,771=>771,1443=>1443,509=>509,521=>521,407=>407,1464=>1464,1181=>1181,1058=>1058,874=>874,817=>817,1307=>1307,1083=>1083,1363=>1363,138=>138,703=>703,292=>292,235=>235,692=>692,971=>971,1647=>1647,1229=>1229,1855=>1855,1112=>1112,1770=>1770,1065=>1065,1764=>1764,0=>0,838=>838,1518=>1518,1156=>1156,1200=>1200,1546=>1546,1016=>1016,1147=>1147,12=>12,1601=>1601,528=>528,410=>410,626=>626,1736=>1736,364=>364,1246=>1246,1810=>1810,1180=>1180,889=>889,837=>837,623=>623,1388=>1388,979=>979,678=>678,1203=>1203,262=>262,92=>92,1592=>1592,1205=>1205,1843=>1843,1651=>1651,1828=>1828,124=>124,791=>791,360=>360,85=>85,1377=>1377,181=>181,1028=>1028,894=>894,1773=>1773,1071=>1071,1483=>1483,1422=>1422,458=>458,1675=>1675,1476=>1476,1163=>1163,1646=>1646,233=>233,52=>52,1709=>1709,367=>367,278=>278,1222=>1222,959=>959,336=>336,1737=>1737,64=>64,568=>568,1397=>1397,444=>444,257=>257,220=>220,943=>943,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,1428=>1428,7=>7,1424=>1424,395=>395,537=>537,437=>437,325=>325,1848=>1848,536=>536,878=>878,526=>526,340=>340,399=>399,1202=>1202,174=>174,371=>371,1221=>1221,1336=>1336,24=>24,116=>116,1046=>1046,1391=>1391,1260=>1260,496=>496,1774=>1774,1630=>1630,1600=>1600,520=>520,895=>895,11=>11,491=>491,1557=>1557,478=>478,1103=>1103,1534=>1534,1495=>1495,1047=>1047,490=>490,946=>946,335=>335,828=>828,165=>165,1859=>1859,133=>133,1880=>1880,1678=>1678,748=>748,328=>328,977=>977,752=>752,425=>425,1569=>1569,1373=>1373,1175=>1175,77=>77,311=>311,1727=>1727,1750=>1750,605=>605,1302=>1302,441=>441,132=>132,1681=>1681,1631=>1631,1389=>1389,550=>550,725=>725,231=>231,1550=>1550,302=>302,1178=>1178,1882=>1882,225=>225,1087=>1087,1593=>1593,204=>204,122=>122,1509=>1509,180=>180,1844=>1844,601=>601,413=>413,806=>806,731=>731,877=>877,331=>331,1433=>1433,1700=>1700,948=>948,679=>679,1237=>1237,1872=>1872,1357=>1357,1892=>1892,1626=>1626,969=>969,1184=>1184,1133=>1133,296=>296,1470=>1470,1621=>1621,1833=>1833,1210=>1210,717=>717,1686=>1686,1145=>1145,705=>705,212=>212,310=>310,1415=>1415,760=>760,265=>265,853=>853,1573=>1573,17=>17,466=>466,1885=>1885,1013=>1013,475=>475,851=>851,637=>637,1804=>1804,744=>744,1022=>1022,226=>226,1421=>1421,43=>43,1033=>1033,1137=>1137,104=>104,1268=>1268,999=>999,919=>919,465=>465,857=>857,1318=>1318,711=>711,737=>737,1765=>1765,1086=>1086,1660=>1660,291=>291,422=>422,196=>196,1394=>1394,576=>576,968=>968,281=>281,1667=>1667,578=>578,1275=>1275,1721=>1721,1282=>1282,405=>405,1641=>1641,1321=>1321,1190=>1190,2=>2,1269=>1269,1416=>1416,1006=>1006,1776=>1776,925=>925,1674=>1674,151=>151,1562=>1562,1874=>1874,1793=>1793,1057=>1057,1701=>1701,1220=>1220,1284=>1284,611=>611,1313=>1313,741=>741,283=>283,1850=>1850,448=>448,459=>459,109=>109,1847=>1847,833=>833,298=>298,1001=>1001,1623=>1623,722=>722,1706=>1706,1238=>1238,644=>644,906=>906,1493=>1493,1477=>1477,784=>784,1162=>1162,636=>636,359=>359,1687=>1687,332=>332,1622=>1622,1528=>1528,1207=>1207,198=>198,1758=>1758,272=>272,1749=>1749,1037=>1037,1586=>1586,1206=>1206,482=>482,469=>469,1335=>1335,1752=>1752,443=>443,689=>689,1526=>1526,1747=>1747,1308=>1308,1314=>1314,369=>369,850=>850,1021=>1021,1728=>1728,1501=>1501,990=>990,698=>698,486=>486,1040=>1040,170=>170,1270=>1270,42=>42,1300=>1300,796=>796,1352=>1352,1553=>1553,811=>811,1139=>1139,865=>865,388=>388,69=>69,991=>991,351=>351,1294=>1294,572=>572,1886=>1886,434=>434,1398=>1398,1244=>1244,1383=>1383,460=>460,357=>357,263=>263,1406=>1406,915=>915,206=>206,927=>927,385=>385,1340=>1340,809=>809,670=>670,923=>923,1659=>1659,1427=>1427,1259=>1259,1125=>1125,910=>910,804=>804,404=>404,1081=>1081,691=>691,812=>812,1025=>1025,1012=>1012,618=>618,1390=>1390,186=>186,420=>420,1035=>1035,6=>6,856=>856,1717=>1717,1038=>1038,218=>218,1473=>1473,1704=>1704,1090=>1090,29=>29,905=>905,176=>176,892=>892,1693=>1693,1845=>1845,1442=>1442,563=>563,1451=>1451,1194=>1194,880=>880,671=>671,721=>721,930=>930,1386=>1386,1195=>1195,284=>284,1144=>1144,1116=>1116,1581=>1581,589=>589,782=>782,685=>685,188=>188,1835=>1835,1871=>1871,797=>797,617=>617,71=>71,1664=>1664,184=>184,1780=>1780,1127=>1127,1821=>1821,794=>794,1301=>1301,908=>908,733=>733,1705=>1705,1795=>1795,294=>294,1426=>1426,606=>606,881=>881,1510=>1510,917=>917,966=>966,980=>980,261=>261,1102=>1102,514=>514,1512=>1512,840=>840,1358=>1358,41=>41,15=>15,461=>461,148=>148,1135=>1135,957=>957,586=>586,66=>66,1488=>1488,1410=>1410,1158=>1158,95=>95,236=>236,111=>111,844=>844,14=>14,933=>933,1598=>1598,256=>256,1505=>1505,1136=>1136,1712=>1712,1876=>1876,565=>565,1199=>1199,763=>763,1240=>1240,549=>549,135=>135,125=>125,1387=>1387,453=>453,1100=>1100,1247=>1247,1445=>1445,309=>309,99=>99,1349=>1349,1286=>1286,1779=>1779,9=>9,1634=>1634,348=>348,860=>860,736=>736,591=>591,1179=>1179,103=>103,1348=>1348,730=>730,1719=>1719,1484=>1484,1276=>1276,667=>667,911=>911,1618=>1618,795=>795,1003=>1003,1536=>1536,832=>832,846=>846,191=>191,1677=>1677,1672=>1672,918=>918,276=>276,508=>508,1368=>1368,1074=>1074,1798=>1798,1763=>1763,1444=>1444,1608=>1608,1072=>1072,654=>654,593=>593,624=>624,1369=>1369,1049=>1049,1375=>1375,956=>956,1055=>1055,718=>718,1638=>1638,818=>818,372=>372,1457=>1457,664=>664,1739=>1739,279=>279,700=>700,368=>368,609=>609,1191=>1191,922=>922,885=>885,1227=>1227,1604=>1604,1228=>1228,963=>963,1796=>1796,290=>290,650=>650,1794=>1794,607=>607,824=>824,171=>171,1829=>1829,750=>750,334=>334,1572=>1572,1645=>1645,1091=>1091,178=>178,313=>313,1463=>1463,1098=>1098,493=>493,1884=>1884,1801=>1801,577=>577,113=>113,293=>293,1538=>1538,1637=>1637,297=>297,507=>507,1548=>1548,1177=>1177,1748=>1748,1559=>1559,274=>274,1073=>1073,1118=>1118,1624=>1624,28=>28,634=>634,1255=>1255,97=>97,1449=>1449,584=>584,1757=>1757,1715=>1715,39=>39,58=>58,8=>8,739=>739,333=>333,428=>428,1330=>1330,185=>185,1594=>1594,868=>868,1738=>1738,849=>849,774=>774,266=>266,421=>421,1898=>1898,1440=>1440,145=>145,1441=>1441,1494=>1494,1064=>1064,86=>86,1233=>1233,587=>587,1708=>1708,1656=>1656,82=>82,1682=>1682,75=>75,1492=>1492,701=>701,87=>87,1730=>1730,668=>668,510=>510,1502=>1502,947=>947,347=>347,1639=>1639,1603=>1603,1059=>1059,1543=>1543,792=>792,1101=>1101,389=>389,1725=>1725,598=>598,1392=>1392,562=>562,53=>53,869=>869,745=>745,305=>305,1325=>1325,27=>27,1690=>1690,1564=>1564,134=>134,215=>215,1248=>1248,882=>882,542=>542,499=>499,477=>477,201=>201,1818=>1818,876=>876,31=>31,1401=>1401,597=>597,1636=>1636,1454=>1454,33=>33,1338=>1338,1218=>1218,1189=>1189,1117=>1117,1031=>1031,1689=>1689,473=>473,1490=>1490,1170=>1170,1164=>1164,978=>978,230=>230,1756=>1756,1412=>1412,50=>50,513=>513,80=>80,1699=>1699,1216=>1216,412=>412,1188=>1188,401=>401,847=>847,786=>786,1613=>1613,1814=>1814,822=>822,1354=>1354,1668=>1668,167=>167,903=>903,1076=>1076,21=>21,1094=>1094,280=>280,260=>260,1611=>1611,761=>761,1174=>1174,1684=>1684,1293=>1293,463=>463,438=>438,1614=>1614,1870=>1870,1508=>1508,1670=>1670,757=>757,699=>699,1372=>1372,55=>55,1034=>1034,1589=>1589,694=>694,728=>728,709=>709,1745=>1745,1654=>1654,483=>483,258=>258,205=>205,1161=>1161,1584=>1584,269=>269,452=>452,492=>492,65=>65,202=>202,44=>44,1056=>1056,192=>192,729=>729,901=>901,270=>270,1894=>1894,1367=>1367,339=>339,1840=>1840,1619=>1619,800=>800,1027=>1027,1467=>1467,1485=>1485,379=>379,352=>352,1606=>1606,118=>118,38=>38,648=>648,553=>553,570=>570,1223=>1223,826=>826,821=>821,902=>902,715=>715,1771=>1771,411=>411,81=>81,1343=>1343,19=>19,1851=>1851,424=>424,1842=>1842,686=>686,1084=>1084,163=>163,861=>861,1053=>1053,89=>89,1242=>1242,924=>924,1128=>1128,1239=>1239,1253=>1253,1067=>1067,1832=>1832,1583=>1583,1841=>1841,1304=>1304,1650=>1650,1657=>1657,1014=>1014,1808=>1808,1413=>1413,26=>26,387=>387,4=>4,1888=>1888,1281=>1281,440=>440,622=>622,101=>101,897=>897,1356=>1356,34=>34,467=>467,762=>762,1431=>1431,238=>238,674=>674,627=>627,1585=>1585,1877=>1877,295=>295,1226=>1226,1092=>1092,912=>912,242=>242,1204=>1204,810=>810,1577=>1577,775=>775,1815=>1815,16=>16,575=>575,805=>805,208=>208,1019=>1019,1254=>1254,1812=>1812,72=>72,1168=>1168,653=>653,988=>988,1339=>1339,362=>362,643=>643,1666=>1666,1861=>1861,1521=>1521,46=>46,1595=>1595,938=>938,995=>995,247=>247,631=>631,1852=>1852,18=>18,403=>403,1121=>1121,852=>852,994=>994,355=>355,749=>749,187=>187,1149=>1149,1198=>1198,814=>814,539=>539,487=>487,1371=>1371,541=>541,753=>753,1809=>1809,1482=>1482,1414=>1414,1295=>1295,1342=>1342,1529=>1529,1078=>1078,743=>743,546=>546,1219=>1219,945=>945,754=>754,1048=>1048,500=>500,710=>710,383=>383,330=>330,409=>409,36=>36,1711=>1711,680=>680,415=>415,1305=>1305,1615=>1615,423=>423,271=>271,714=>714,1478=>1478,23=>23,315=>315,1409=>1409,1753=>1753,1279=>1279,1862=>1862,712=>712,300=>300,1895=>1895,289=>289,1289=>1289,435=>435,1395=>1395,1169=>1169,1232=>1232,704=>704,690=>690,779=>779,921=>921,96=>96,1718=>1718,803=>803,1533=>1533,819=>819,1744=>1744,489=>489,1816=>1816,1544=>1544,898=>898,534=>534,559=>559,227=>227,515=>515,195=>195,157=>157,697=>697,1085=>1085,1347=>1347,1746=>1746,169=>169,1154=>1154,783=>783,1362=>1362,1004=>1004,529=>529,630=>630,472=>472,63=>63,557=>557,501=>501,245=>245,574=>574,1119=>1119,1591=>1591,734=>734,495=>495,1468=>1468,566=>566,1251=>1251,1007=>1007,962=>962,150=>150,209=>209,888=>888,1257=>1257,1680=>1680,308=>308,200=>200,1317=>1317,778=>778,1292=>1292,1857=>1857,172=>172,314=>314,583=>583,394=>394,37=>37,1628=>1628,450=>450,953=>953,1769=>1769,141=>141,30=>30,1=>1,1511=>1511,214=>214,1868=>1868,944=>944,91=>91,470=>470,639=>639,244=>244,693=>693,1173=>1173,1836=>1836,1897=>1897,1499=>1499,1224=>1224,140=>140,785=>785,1077=>1077,378=>378,1695=>1695,759=>759,177=>177,657=>657,427=>427,1435=>1435,1525=>1525,1365=>1365,1341=>1341,756=>756,1775=>1775,1539=>1539,1561=>1561,1541=>1541,825=>825,907=>907,78=>78,986=>986,1403=>1403,1864=>1864,1297=>1297,616=>616,1688=>1688,820=>820,182=>182,1755=>1755,1093=>1093,964=>964,518=>518,1789=>1789,866=>866,1283=>1283,673=>673,1865=>1865,1754=>1754,40=>40,1359=>1359,599=>599,417=>417,891=>891,1784=>1784,1332=>1332,1452=>1452,1212=>1212,842=>842,1434=>1434,884=>884,1778=>1778,1724=>1724,1450=>1450,1344=>1344,343=>343,1231=>1231,770=>770,246=>246,764=>764,456=>456,1734=>1734,338=>338,1436=>1436,1068=>1068,1633=>1633,1856=>1856,767=>767,1783=>1783,1507=>1507,267=>267,940=>940,1462=>1462,25=>25,798=>798,1404=>1404,768=>768,1217=>1217,1665=>1665,1185=>1185,356=>356,194=>194,1002=>1002,234=>234,758=>758,1669=>1669,1291=>1291,1142=>1142,1605=>1605,533=>533,1620=>1620,408=>408,651=>651,1867=>1867,993=>993,1663=>1663,1578=>1578,229=>229,1351=>1351,190=>190,228=>228,1165=>1165,179=>179,1824=>1824,1803=>1803,1500=>1500,615=>615,1658=>1658,402=>402,989=>989,1685=>1685,1319=>1319,519=>519,1263=>1263,807=>807,1364=>1364,319=>319,1138=>1138,156=>156,1036=>1036,1438=>1438,1311=>1311,1516=>1516,1453=>1453,1176=>1176,349=>349,983=>983,1196=>1196,56=>56,839=>839,633=>633,1113=>1113,1772=>1772,1249=>1249,708=>708,158=>158,464=>464,160=>160,582=>582,1741=>1741,1869=>1869,992=>992,384=>384,1566=>1566,1429=>1429,479=>479,1396=>1396,1280=>1280,114=>114,1846=>1846,1122=>1122,84=>84,738=>738,645=>645,93=>93,1790=>1790,1303=>1303,564=>564,1208=>1208,608=>608,1061=>1061,1720=>1720,516=>516,1590=>1590,1609=>1609,1642=>1642,1552=>1552,224=>224,76=>76,1863=>1863,1360=>1360,213=>213,769=>769,414=>414,287=>287,939=>939,102=>102,1523=>1523,1130=>1130,561=>561,1258=>1258,1353=>1353,985=>985,1328=>1328,638=>638,1234=>1234,462=>462,239=>239,1299=>1299,1455=>1455,139=>139,1408=>1408,871=>871,1272=>1272,1531=>1531,282=>282,1860=>1860,1290=>1290,1214=>1214,801=>801,250=>250,1575=>1575,127=>127,934=>934,1834=>1834,1193=>1193,1063=>1063,1172=>1172,1419=>1419,203=>203,960=>960,604=>604,468=>468,320=>320,1236=>1236,1768=>1768,998=>998,702=>702,1045=>1045,48=>48,1225=>1225,1632=>1632,277=>277,255=>255,1519=>1519,485=>485,1491=>1491,746=>746,301=>301,164=>164,1315=>1315,1792=>1792,830=>830,1432=>1432,136=>136,342=>342,900=>900,1878=>1878,1197=>1197,159=>159,926=>926,1839=>1839,1011=>1011,696=>696,538=>538,121=>121,457=>457,1171=>1171,836=>836,168=>168,1537=>1537,211=>211,1524=>1524,1399=>1399,1567=>1567,777=>777,1515=>1515,1582=>1582,1298=>1298,299=>299,363=>363,1267=>1267,1799=>1799,887=>887,571=>571,1627=>1627,1707=>1707,1266=>1266,955=>955,1653=>1653,1088=>1088,1010=>1010,374=>374,1345=>1345,1379=>1379,505=>505,600=>600,827=>827,1361=>1361,1187=>1187,920=>920,449=>449,879=>879,480=>480,1020=>1020,1597=>1597,1486=>1486,1069=>1069,1306=>1306,1235=>1235,1095=>1095,1070=>1070,1407=>1407,530=>530,1066=>1066,1788=>1788,193=>193,59=>59,1472=>1472,675=>675,1183=>1183,527=>527,726=>726,1692=>1692,219=>219,223=>223,802=>802,1883=>1883,1378=>1378,259=>259,997=>997,1099=>1099,558=>558,1837=>1837,1096=>1096,665=>665,531=>531,1731=>1731,32=>32,316=>316,432=>432,381=>381,719=>719,1009=>1009,781=>781,813=>813,3=>3,1287=>1287,1474=>1474,1866=>1866,928=>928,632=>632,1296=>1296,1140=>1140,1366=>1366,341=>341,321=>321,1110=>1110,1042=>1042,1535=>1535,1241=>1241,322=>322),[633,702],246,26,73),RpcApi.SimpleOrganism(0x00000000000cbf08,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_46(var_43::Float64=0.337593,var_44::Int16=31705,var_45::Float64=0.0468462)
            local var_53::Bool = true
            var_43 = Float64(4792090863074545770)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            if var_49 !== var_49
                Creature.stepLeft(o)
            end
            var_44 = if haskey(o.mem,var_44)
                    o.mem[var_44]
                else
                    var_44
                end
            var_45 = Float64(var_44)
            var_44 = if haskey(o.mem,var_44)
                    o.mem[var_44]
                else
                    var_44
                end
            var_45 = cos(var_43)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_43 = Float64(var_53)
            var_45 = sin(-31)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(5229647156616734038)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            Creature.stepDown(o)
            var_41 = Creature.energyRight(o)
            var_41 = Int(Creature.idUp(o))
            var_41 = Creature.energyRight(o)
            var_41 = Creature.energyLeft(o)
            var_41 = Creature.energyDown(o)
            var_41 = Int(Creature.idDown(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_54::String = "jYNxUBBs"
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 - var_4
            var_4 = Int16(o.color)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = if isempty("o7wkLsSF")
                    0
                else
                    1
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_38 = var_36 * var_36
        Creature.eatUp(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_52::Int64 = -5942614688981218277
            var_50 = csc(if -37 === (Int8)(0)
                        (Int8)(1)
                    else
                        -37
                    end)
            var_50 = Float64(false)
        end
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = !var_8
        if var_8 !== var_8
        end
        var_8 = Creature.stepRight(o)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(-12279)
                    Int8(-12279)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.869494,0,10.4159,100290,0x00000070,Dict(1760=>1760,306=>306,1316=>1316,1333=>1333,1671=>1671,1131=>1131,74=>74,1662=>1662,1265=>1265,1469=>1469,1461=>1461,285=>285,1881=>1881,1481=>1481,318=>318,1124=>1124,1337=>1337,873=>873,1273=>1273,975=>975,354=>354,610=>610,1082=>1082,1791=>1791,117=>117,1400=>1400,1327=>1327,1588=>1588,1714=>1714,1374=>1374,474=>474,1616=>1616,621=>621,1446=>1446,353=>353,430=>430,1166=>1166,1329=>1329,79=>79,1640=>1640,1479=>1479,1331=>1331,154=>154,1683=>1683,845=>845,107=>107,1648=>1648,682=>682,416=>416,10=>10,642=>642,162=>162,240=>240,974=>974,5=>5,1146=>1146,1230=>1230,1097=>1097,1817=>1817,776=>776,1324=>1324,573=>573,1460=>1460,512=>512,1503=>1503,90=>90,1527=>1527,396=>396,1201=>1201,1017=>1017,1141=>1141,592=>592,973=>973,1052=>1052,1418=>1418,655=>655,1873=>1873,620=>620,965=>965,1148=>1148,130=>130,146=>146,545=>545,1475=>1475,660=>660,1062=>1062,110=>110,1813=>1813,981=>981,1150=>1150,525=>525,1029=>1029,899=>899,366=>366,556=>556,128=>128,1722=>1722,1417=>1417,831=>831,183=>183,522=>522,931=>931,345=>345,742=>742,152=>152,1043=>1043,723=>723,843=>843,1643=>1643,982=>982,732=>732,1703=>1703,941=>941,1008=>1008,1274=>1274,454=>454,1599=>1599,312=>312,663=>663,446=>446,751=>751,659=>659,602=>602,1465=>1465,1853=>1853,241=>241,370=>370,197=>197,1887=>1887,142=>142,935=>935,848=>848,1786=>1786,614=>614,1694=>1694,612=>612,433=>433,1107=>1107,677=>677,1652=>1652,1381=>1381,1563=>1563,1540=>1540,890=>890,958=>958,916=>916,672=>672,94=>94,115=>115,418=>418,373=>373,455=>455,641=>641,1496=>1496,426=>426,1710=>1710,1211=>1211,503=>503,551=>551,914=>914,859=>859,1209=>1209,1288=>1288,1655=>1655,707=>707,471=>471,393=>393,497=>497,1167=>1167,1759=>1759,1602=>1602,1802=>1802,1115=>1115,1782=>1782,1252=>1252,1522=>1522,1858=>1858,1430=>1430,377=>377,1245=>1245,1382=>1382,1751=>1751,1560=>1560,1740=>1740,1437=>1437,1018=>1018,1044=>1044,867=>867,1506=>1506,1114=>1114,1607=>1607,254=>254,628=>628,1702=>1702,635=>635,20=>20,1644=>1644,1134=>1134,451=>451,166=>166,1126=>1126,35=>35,397=>397,1157=>1157,1054=>1054,1109=>1109,1571=>1571,816=>816,286=>286,1900=>1900,1831=>1831,392=>392,554=>554,346=>346,126=>126,303=>303,567=>567,872=>872,883=>883,237=>237,594=>594,386=>386,613=>613,1530=>1530,1213=>1213,517=>517,1691=>1691,1698=>1698,949=>949,1551=>1551,523=>523,1309=>1309,1580=>1580,504=>504,98=>98,666=>666,1713=>1713,1875=>1875,540=>540,1896=>1896,952=>952,161=>161,22=>22,73=>73,119=>119,222=>222,646=>646,1514=>1514,580=>580,687=>687,640=>640,502=>502,498=>498,603=>603,1423=>1423,1271=>1271,1826=>1826,1629=>1629,1807=>1807,131=>131,1532=>1532,249=>249,391=>391,207=>207,173=>173,1565=>1565,1891=>1891,1261=>1261,1735=>1735,1151=>1151,1015=>1015,70=>70,625=>625,1129=>1129,886=>886,1385=>1385,1513=>1513,1326=>1326,1060=>1060,327=>327,511=>511,1797=>1797,780=>780,951=>951,773=>773,1545=>1545,720=>720,1879=>1879,326=>326,248=>248,1420=>1420,1520=>1520,447=>447,555=>555,217=>217,855=>855,1830=>1830,506=>506,1517=>1517,120=>120,1487=>1487,681=>681,1558=>1558,1767=>1767,143=>143,1447=>1447,62=>62,996=>996,1459=>1459,548=>548,1355=>1355,961=>961,251=>251,1250=>1250,649=>649,1825=>1825,1854=>1854,656=>656,1820=>1820,766=>766,909=>909,1579=>1579,155=>155,569=>569,1625=>1625,344=>344,787=>787,747=>747,1471=>1471,1576=>1576,929=>929,1079=>1079,1498=>1498,1610=>1610,253=>253,1120=>1120,815=>815,1542=>1542,324=>324,1322=>1322,858=>858,13=>13,1080=>1080,1800=>1800,1806=>1806,647=>647,137=>137,1547=>1547,105=>105,765=>765,1448=>1448,307=>307,273=>273,1143=>1143,1032=>1032,1323=>1323,1182=>1182,100=>100,904=>904,1555=>1555,790=>790,1159=>1159,1346=>1346,268=>268,243=>243,535=>535,1612=>1612,317=>317,1732=>1732,676=>676,1661=>1661,1425=>1425,108=>108,1105=>1105,329=>329,1262=>1262,755=>755,1312=>1312,735=>735,144=>144,400=>400,1849=>1849,788=>788,1285=>1285,375=>375,494=>494,893=>893,1024=>1024,112=>112,544=>544,1310=>1310,106=>106,1811=>1811,1153=>1153,350=>350,823=>823,1823=>1823,585=>585,834=>834,1679=>1679,54=>54,337=>337,60=>60,481=>481,1277=>1277,1051=>1051,1893=>1893,1320=>1320,1785=>1785,936=>936,1781=>1781,189=>189,398=>398,913=>913,875=>875,896=>896,1676=>1676,1762=>1762,695=>695,1838=>1838,1554=>1554,380=>380,1041=>1041,1649=>1649,1697=>1697,1384=>1384,68=>68,275=>275,724=>724,382=>382,1380=>1380,1111=>1111,547=>547,1439=>1439,199=>199,323=>323,1005=>1005,669=>669,406=>406,683=>683,652=>652,232=>232,1243=>1243,83=>83,1480=>1480,45=>45,1402=>1402,954=>954,662=>662,1192=>1192,1334=>1334,1039=>1039,808=>808,442=>442,976=>976,595=>595,1023=>1023,972=>972,1075=>1075,376=>376,684=>684,61=>61,1489=>1489,1761=>1761,431=>431,862=>862,870=>870,1160=>1160,1733=>1733,304=>304,476=>476,629=>629,361=>361,772=>772,1030=>1030,706=>706,1104=>1104,1106=>1106,1152=>1152,841=>841,1215=>1215,288=>288,1805=>1805,1050=>1050,1889=>1889,1000=>1000,1570=>1570,1899=>1899,57=>57,1617=>1617,799=>799,445=>445,252=>252,835=>835,1376=>1376,727=>727,1556=>1556,1819=>1819,49=>49,552=>552,1827=>1827,716=>716,1723=>1723,1466=>1466,1587=>1587,1155=>1155,1549=>1549,264=>264,984=>984,221=>221,153=>153,579=>579,590=>590,1370=>1370,390=>390,619=>619,484=>484,1089=>1089,1393=>1393,129=>129,1743=>1743,88=>88,429=>429,1458=>1458,937=>937,149=>149,439=>439,1456=>1456,1729=>1729,210=>210,1635=>1635,1822=>1822,1726=>1726,789=>789,1890=>1890,1405=>1405,1787=>1787,1596=>1596,175=>175,1278=>1278,543=>543,1411=>1411,1264=>1264,987=>987,970=>970,419=>419,596=>596,436=>436,793=>793,967=>967,942=>942,1574=>1574,216=>216,47=>47,147=>147,1123=>1123,1108=>1108,1186=>1186,829=>829,488=>488,1504=>1504,1568=>1568,1777=>1777,863=>863,1742=>1742,560=>560,688=>688,1673=>1673,950=>950,51=>51,123=>123,1256=>1256,358=>358,1696=>1696,1766=>1766,661=>661,1497=>1497,740=>740,581=>581,713=>713,1716=>1716,1026=>1026,532=>532,658=>658,1350=>1350,1132=>1132,365=>365,771=>771,1443=>1443,509=>509,521=>521,1464=>1464,407=>407,1181=>1181,874=>874,1058=>1058,817=>817,1083=>1083,1307=>1307,1363=>1363,138=>138,703=>703,292=>292,235=>235,692=>692,971=>971,1112=>1112,1229=>1229,1647=>1647,1855=>1855,1770=>1770,1065=>1065,1764=>1764,0=>0,838=>838,1518=>1518,1156=>1156,1200=>1200,1546=>1546,1016=>1016,1147=>1147,12=>12,1601=>1601,1736=>1736,410=>410,528=>528,626=>626,364=>364,1246=>1246,1180=>1180,1810=>1810,889=>889,837=>837,623=>623,1388=>1388,979=>979,678=>678,1203=>1203,262=>262,92=>92,1592=>1592,1205=>1205,1843=>1843,1651=>1651,1828=>1828,124=>124,791=>791,360=>360,85=>85,1377=>1377,181=>181,1028=>1028,894=>894,1773=>1773,1071=>1071,1483=>1483,1422=>1422,458=>458,1675=>1675,1163=>1163,1476=>1476,1646=>1646,52=>52,1709=>1709,233=>233,367=>367,278=>278,1222=>1222,959=>959,336=>336,1737=>1737,64=>64,568=>568,1397=>1397,444=>444,257=>257,220=>220,943=>943,524=>524,854=>854,932=>932,588=>588,67=>67,864=>864,1428=>1428,7=>7,1424=>1424,395=>395,537=>537,325=>325,437=>437,1848=>1848,536=>536,878=>878,340=>340,526=>526,399=>399,1202=>1202,174=>174,371=>371,1221=>1221,1336=>1336,24=>24,116=>116,1046=>1046,1391=>1391,1260=>1260,496=>496,1630=>1630,1774=>1774,1600=>1600,520=>520,895=>895,11=>11,491=>491,1557=>1557,478=>478,1103=>1103,1534=>1534,1495=>1495,1047=>1047,490=>490,946=>946,335=>335,828=>828,165=>165,1859=>1859,133=>133,1678=>1678,1880=>1880,748=>748,328=>328,977=>977,752=>752,425=>425,1569=>1569,1373=>1373,1175=>1175,77=>77,311=>311,1727=>1727,1750=>1750,605=>605,1302=>1302,441=>441,132=>132,1631=>1631,1681=>1681,1389=>1389,231=>231,725=>725,550=>550,1550=>1550,302=>302,1178=>1178,1882=>1882,1087=>1087,225=>225,1593=>1593,204=>204,122=>122,1509=>1509,180=>180,1844=>1844,413=>413,601=>601,806=>806,731=>731,877=>877,331=>331,1433=>1433,1700=>1700,948=>948,679=>679,1237=>1237,1872=>1872,1357=>1357,1626=>1626,1892=>1892,969=>969,1133=>1133,1184=>1184,296=>296,1470=>1470,1621=>1621,1833=>1833,1210=>1210,717=>717,1145=>1145,1686=>1686,705=>705,212=>212,310=>310,1415=>1415,760=>760,265=>265,853=>853,1573=>1573,17=>17,466=>466,1885=>1885,1013=>1013,475=>475,851=>851,637=>637,1804=>1804,744=>744,1022=>1022,226=>226,1421=>1421,43=>43,1033=>1033,1137=>1137,1268=>1268,104=>104,999=>999,919=>919,465=>465,857=>857,1318=>1318,711=>711,737=>737,1086=>1086,1765=>1765,1660=>1660,291=>291,422=>422,1394=>1394,196=>196,576=>576,968=>968,281=>281,1667=>1667,578=>578,1275=>1275,1721=>1721,1282=>1282,405=>405,1321=>1321,1641=>1641,1190=>1190,2=>2,1269=>1269,1416=>1416,1006=>1006,1776=>1776,925=>925,1674=>1674,151=>151,1562=>1562,1874=>1874,1793=>1793,1057=>1057,1701=>1701,1220=>1220,1284=>1284,611=>611,1313=>1313,741=>741,283=>283,1850=>1850,448=>448,459=>459,109=>109,1847=>1847,833=>833,298=>298,1001=>1001,1623=>1623,722=>722,1706=>1706,1238=>1238,644=>644,906=>906,1477=>1477,1493=>1493,784=>784,1162=>1162,636=>636,359=>359,1687=>1687,332=>332,1622=>1622,1528=>1528,1207=>1207,198=>198,1758=>1758,1749=>1749,1206=>1206,1037=>1037,1586=>1586,272=>272,482=>482,469=>469,1335=>1335,1752=>1752,443=>443,689=>689,1526=>1526,1747=>1747,1308=>1308,1314=>1314,1501=>1501,850=>850,1021=>1021,1728=>1728,369=>369,990=>990,698=>698,486=>486,1040=>1040,1270=>1270,170=>170,42=>42,1300=>1300,796=>796,1352=>1352,1553=>1553,811=>811,1139=>1139,865=>865,388=>388,69=>69,991=>991,1294=>1294,351=>351,572=>572,1398=>1398,1886=>1886,434=>434,1244=>1244,1383=>1383,460=>460,1406=>1406,263=>263,357=>357,915=>915,206=>206,927=>927,385=>385,1340=>1340,809=>809,670=>670,923=>923,1659=>1659,1427=>1427,1125=>1125,1259=>1259,804=>804,910=>910,1081=>1081,404=>404,691=>691,812=>812,1025=>1025,1012=>1012,618=>618,1390=>1390,186=>186,420=>420,1035=>1035,6=>6,856=>856,1717=>1717,1038=>1038,218=>218,1473=>1473,1704=>1704,1090=>1090,29=>29,905=>905,176=>176,892=>892,1693=>1693,1845=>1845,1442=>1442,563=>563,1451=>1451,1194=>1194,880=>880,671=>671,721=>721,930=>930,1195=>1195,1386=>1386,284=>284,1144=>1144,1116=>1116,1581=>1581,188=>188,685=>685,782=>782,1835=>1835,589=>589,1871=>1871,797=>797,617=>617,71=>71,1127=>1127,1664=>1664,1780=>1780,184=>184,1821=>1821,794=>794,1301=>1301,908=>908,733=>733,1705=>1705,1795=>1795,294=>294,1426=>1426,606=>606,881=>881,1510=>1510,917=>917,966=>966,980=>980,261=>261,1102=>1102,514=>514,1512=>1512,840=>840,1358=>1358,15=>15,41=>41,461=>461,148=>148,1135=>1135,957=>957,1488=>1488,66=>66,586=>586,1410=>1410,1158=>1158,95=>95,236=>236,111=>111,844=>844,14=>14,933=>933,1598=>1598,1505=>1505,256=>256,1136=>1136,1712=>1712,1876=>1876,565=>565,1199=>1199,763=>763,1240=>1240,549=>549,135=>135,125=>125,1387=>1387,1100=>1100,453=>453,1247=>1247,1445=>1445,309=>309,99=>99,1349=>1349,1286=>1286,1779=>1779,9=>9,1634=>1634,348=>348,736=>736,860=>860,591=>591,1179=>1179,103=>103,1348=>1348,730=>730,1276=>1276,1484=>1484,1719=>1719,667=>667,911=>911,1618=>1618,795=>795,1003=>1003,1536=>1536,832=>832,846=>846,191=>191,1677=>1677,1672=>1672,918=>918,276=>276,1368=>1368,1074=>1074,508=>508,1798=>1798,1763=>1763,1444=>1444,1608=>1608,1072=>1072,593=>593,654=>654,624=>624,1369=>1369,1049=>1049,1375=>1375,956=>956,1055=>1055,718=>718,1638=>1638,818=>818,372=>372,1457=>1457,664=>664,1739=>1739,279=>279,700=>700,368=>368,609=>609,1191=>1191,885=>885,922=>922,1227=>1227,1604=>1604,1228=>1228,963=>963,1796=>1796,1794=>1794,290=>290,650=>650,607=>607,824=>824,171=>171,1829=>1829,750=>750,1572=>1572,334=>334,1645=>1645,1091=>1091,178=>178,1098=>1098,1463=>1463,313=>313,1884=>1884,1801=>1801,493=>493,577=>577,113=>113,293=>293,1538=>1538,1637=>1637,297=>297,507=>507,1548=>1548,1177=>1177,1748=>1748,1559=>1559,1073=>1073,274=>274,1118=>1118,1624=>1624,28=>28,634=>634,1255=>1255,1449=>1449,97=>97,584=>584,1715=>1715,1757=>1757,39=>39,58=>58,739=>739,8=>8,333=>333,428=>428,1330=>1330,185=>185,1594=>1594,868=>868,1738=>1738,774=>774,849=>849,266=>266,421=>421,1898=>1898,1440=>1440,145=>145,1441=>1441,1494=>1494,1064=>1064,86=>86,1233=>1233,587=>587,1708=>1708,1656=>1656,1682=>1682,82=>82,75=>75,1492=>1492,701=>701,87=>87,1730=>1730,668=>668,510=>510,1502=>1502,947=>947,347=>347,1639=>1639,1603=>1603,1059=>1059,1543=>1543,792=>792,1101=>1101,1725=>1725,389=>389,1392=>1392,598=>598,562=>562,53=>53,869=>869,745=>745,305=>305,1325=>1325,1690=>1690,27=>27,1564=>1564,134=>134,215=>215,1248=>1248,882=>882,542=>542,499=>499,201=>201,477=>477,1818=>1818,876=>876,31=>31,1401=>1401,1636=>1636,597=>597,1454=>1454,33=>33,1218=>1218,1338=>1338,1189=>1189,1117=>1117,1031=>1031,1689=>1689,473=>473,1490=>1490,1170=>1170,1164=>1164,978=>978,230=>230,1412=>1412,1756=>1756,50=>50,80=>80,513=>513,1699=>1699,1216=>1216,412=>412,1188=>1188,401=>401,847=>847,786=>786,1613=>1613,1814=>1814,822=>822,1354=>1354,1668=>1668,167=>167,903=>903,1076=>1076,21=>21,1094=>1094,1611=>1611,260=>260,280=>280,761=>761,1174=>1174,1293=>1293,1684=>1684,463=>463,1614=>1614,438=>438,1870=>1870,1508=>1508,1670=>1670,757=>757,699=>699,1372=>1372,55=>55,1034=>1034,1589=>1589,694=>694,709=>709,728=>728,1745=>1745,1654=>1654,483=>483,258=>258,205=>205,1161=>1161,1584=>1584,269=>269,452=>452,492=>492,65=>65,202=>202,44=>44,1056=>1056,192=>192,729=>729,901=>901,270=>270,1894=>1894,1367=>1367,1619=>1619,1840=>1840,339=>339,800=>800,1027=>1027,1467=>1467,1485=>1485,379=>379,352=>352,1606=>1606,38=>38,118=>118,1223=>1223,553=>553,570=>570,648=>648,821=>821,826=>826,902=>902,715=>715,1771=>1771,411=>411,81=>81,1343=>1343,19=>19,1851=>1851,424=>424,1842=>1842,686=>686,1084=>1084,163=>163,861=>861,1053=>1053,1242=>1242,89=>89,924=>924,1128=>1128,1239=>1239,1253=>1253,1067=>1067,1832=>1832,1304=>1304,1583=>1583,1841=>1841,1650=>1650,1657=>1657,1014=>1014,1808=>1808,1413=>1413,26=>26,387=>387,4=>4,1888=>1888,1281=>1281,440=>440,622=>622,101=>101,897=>897,1356=>1356,34=>34,467=>467,762=>762,1431=>1431,238=>238,674=>674,627=>627,1585=>1585,1877=>1877,295=>295,1092=>1092,1226=>1226,912=>912,1204=>1204,242=>242,810=>810,1577=>1577,775=>775,1815=>1815,16=>16,575=>575,805=>805,208=>208,1019=>1019,1254=>1254,1812=>1812,72=>72,1168=>1168,653=>653,988=>988,1339=>1339,362=>362,643=>643,1666=>1666,1861=>1861,1521=>1521,46=>46,1595=>1595,938=>938,995=>995,247=>247,631=>631,1852=>1852,18=>18,1121=>1121,403=>403,852=>852,994=>994,355=>355,749=>749,187=>187,1149=>1149,1198=>1198,814=>814,1371=>1371,487=>487,539=>539,541=>541,753=>753,1809=>1809,1482=>1482,1414=>1414,1295=>1295,1342=>1342,1529=>1529,1078=>1078,743=>743,1219=>1219,546=>546,945=>945,754=>754,1048=>1048,500=>500,710=>710,383=>383,330=>330,409=>409,36=>36,1711=>1711,680=>680,415=>415,1305=>1305,1615=>1615,423=>423,271=>271,714=>714,1478=>1478,23=>23,315=>315,1409=>1409,1753=>1753,1279=>1279,1862=>1862,712=>712,300=>300,1895=>1895,1289=>1289,289=>289,435=>435,1395=>1395,1169=>1169,1232=>1232,704=>704,690=>690,779=>779,921=>921,96=>96,1718=>1718,803=>803,1533=>1533,819=>819,1744=>1744,1816=>1816,489=>489,1544=>1544,898=>898,534=>534,559=>559,227=>227,515=>515,195=>195,157=>157,697=>697,1085=>1085,1347=>1347,1746=>1746,169=>169,1154=>1154,1362=>1362,783=>783,1004=>1004,63=>63,472=>472,529=>529,630=>630,557=>557,501=>501,245=>245,574=>574,1119=>1119,1591=>1591,734=>734,1468=>1468,495=>495,566=>566,1251=>1251,1007=>1007,962=>962,150=>150,209=>209,888=>888,1257=>1257,1680=>1680,200=>200,308=>308,1292=>1292,778=>778,1317=>1317,1857=>1857,172=>172,314=>314,583=>583,37=>37,1628=>1628,394=>394,450=>450,953=>953,1769=>1769,141=>141,1=>1,30=>30,1511=>1511,214=>214,1868=>1868,944=>944,91=>91,470=>470,639=>639,244=>244,693=>693,1173=>1173,1836=>1836,1897=>1897,1224=>1224,1499=>1499,140=>140,785=>785,1077=>1077,378=>378,1695=>1695,759=>759,177=>177,657=>657,427=>427,1435=>1435,1525=>1525,1365=>1365,1341=>1341,756=>756,1775=>1775,1539=>1539,1561=>1561,1541=>1541,825=>825,907=>907,78=>78,986=>986,1403=>1403,1297=>1297,1864=>1864,616=>616,1688=>1688,820=>820,182=>182,1755=>1755,1093=>1093,964=>964,1789=>1789,518=>518,866=>866,1283=>1283,673=>673,1865=>1865,1754=>1754,40=>40,1359=>1359,599=>599,417=>417,891=>891,1784=>1784,1332=>1332,1212=>1212,1452=>1452,842=>842,1434=>1434,884=>884,1778=>1778,1724=>1724,1450=>1450,1344=>1344,343=>343,1231=>1231,770=>770,246=>246,764=>764,456=>456,1734=>1734,338=>338,1436=>1436,1068=>1068,1633=>1633,1783=>1783,767=>767,1507=>1507,1856=>1856,267=>267,940=>940,1462=>1462,25=>25,798=>798,1404=>1404,768=>768,1217=>1217,1665=>1665,1185=>1185,356=>356,194=>194,1002=>1002,234=>234,758=>758,1669=>1669,1142=>1142,1291=>1291,1605=>1605,533=>533,1620=>1620,408=>408,651=>651,1867=>1867,993=>993,1663=>1663,1578=>1578,229=>229,1351=>1351,190=>190,228=>228,1165=>1165,1803=>1803,1824=>1824,179=>179,1500=>1500,615=>615,1658=>1658,402=>402,989=>989,1319=>1319,1685=>1685,519=>519,1263=>1263,807=>807,1364=>1364,319=>319,1138=>1138,156=>156,1036=>1036,1438=>1438,1311=>1311,1516=>1516,1453=>1453,1176=>1176,349=>349,983=>983,1196=>1196,56=>56,839=>839,633=>633,1113=>1113,1772=>1772,1249=>1249,708=>708,158=>158,1741=>1741,160=>160,464=>464,582=>582,1869=>1869,992=>992,384=>384,1566=>1566,1429=>1429,479=>479,1396=>1396,1280=>1280,114=>114,1846=>1846,1122=>1122,84=>84,738=>738,645=>645,93=>93,1790=>1790,1303=>1303,1208=>1208,564=>564,608=>608,1061=>1061,1720=>1720,1590=>1590,516=>516,1609=>1609,1642=>1642,1552=>1552,1863=>1863,76=>76,1360=>1360,224=>224,213=>213,769=>769,414=>414,287=>287,939=>939,102=>102,1130=>1130,1523=>1523,561=>561,1258=>1258,1353=>1353,985=>985,1328=>1328,638=>638,1234=>1234,462=>462,239=>239,1299=>1299,1455=>1455,139=>139,1272=>1272,871=>871,1408=>1408,1531=>1531,282=>282,1860=>1860,1290=>1290,1214=>1214,801=>801,250=>250,1575=>1575,127=>127,934=>934,1834=>1834,1193=>1193,1063=>1063,1172=>1172,1419=>1419,203=>203,960=>960,468=>468,320=>320,604=>604,1236=>1236,1768=>1768,998=>998,702=>702,1045=>1045,48=>48,1225=>1225,1632=>1632,277=>277,1519=>1519,255=>255,485=>485,1491=>1491,746=>746,301=>301,164=>164,1315=>1315,1792=>1792,830=>830,1432=>1432,136=>136,342=>342,900=>900,1878=>1878,1197=>1197,159=>159,926=>926,1839=>1839,1011=>1011,696=>696,538=>538,121=>121,457=>457,1171=>1171,836=>836,168=>168,1537=>1537,1524=>1524,1399=>1399,211=>211,1567=>1567,777=>777,1515=>1515,1582=>1582,1298=>1298,299=>299,363=>363,1267=>1267,1799=>1799,887=>887,1088=>1088,1627=>1627,1266=>1266,1707=>1707,955=>955,1653=>1653,571=>571,1010=>1010,1345=>1345,374=>374,1379=>1379,505=>505,600=>600,827=>827,1187=>1187,1361=>1361,920=>920,449=>449,879=>879,480=>480,1020=>1020,1486=>1486,1597=>1597,1069=>1069,1306=>1306,1235=>1235,1095=>1095,1070=>1070,1407=>1407,530=>530,1066=>1066,1788=>1788,193=>193,59=>59,1472=>1472,675=>675,1183=>1183,527=>527,726=>726,1692=>1692,219=>219,223=>223,802=>802,1883=>1883,1378=>1378,259=>259,997=>997,1099=>1099,558=>558,1837=>1837,1096=>1096,665=>665,531=>531,1731=>1731,32=>32,316=>316,432=>432,381=>381,719=>719,1009=>1009,781=>781,813=>813,3=>3,1287=>1287,1474=>1474,1866=>1866,928=>928,632=>632,1296=>1296,1140=>1140,1366=>1366,341=>341,321=>321,1110=>1110,1042=>1042,1535=>1535,1241=>1241,322=>322),[878,224],8686,50,106),RpcApi.SimpleOrganism(0x00000000000cc152,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Creature.energyUp(o)
            if var_3 > var_3
                Creature.stepUp(o)
                Creature.stepLeft(o)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
                local var_42::Int8 = 12
                Creature.eatRight(c,o,Int(var_42))
            end
            var_17 = Int(Creature.idLeft(o))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        var_8 = 1245572765719810997 < (Int64)(1)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = if false
                    1
                else
                    0
                end
            var_32 = var_32 - var_32
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = if 127 >= abs(-6659)
                Int8(-6659)
            else
                127
            end
        var_13 = Int16(o.color)
        Creature.eatDown(c,o,Int(var_2))
        var_8 = -5854316936238117094 > (Int64)(0)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_45::Int16 = 5742
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_45 = Int16(o.color)
            var_23 = if 127 >= abs(var_45)
                    Int8(var_45)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            var_23 = if 127 >= abs(-4920416989042279517)
                    Int8(-4920416989042279517)
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],64.3628,0,30.1456,100232,0x0000006b,Dict(0=>0,107=>107,127=>127),[866,384],2796,50,71),RpcApi.SimpleOrganism(0x00000000000cb152,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            Creature.eatUp(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_48 = tan(-5357644356788136690)
            var_48 = tan(25985)
            var_48 = tan(var_48)
            Creature.eatRight(c,o,Int(var_46))
            var_52 = Creature.stepDown(o)
            Creature.eatDown(c,o,Int(var_47))
            var_48 = cos(var_48)
            var_48 = cos(6981779778412706805)
            Creature.eatRight(c,o,Int(var_47))
            for i::Int8 = 1:div(var_46,16)
            end
            var_48 = sqrt(abs(var_48))
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.stepLeft(o)
            var_43 = string(-2723269788406594365)
            Creature.eatLeft(c,o,Int(var_42))
            Creature.eatLeft(c,o,Int(var_42))
            var_43 = string(var_42)
            return var_42
        end
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_62::Int64 = -3258748914649854167
            local var_59::Int64 = -2235656631507554630
            var_59 = Int(Creature.idDown(o))
            var_59 = Creature.energyUp(o)
            var_20 = string(0.956485)
            var_59 = Creature.energyDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_58::Int8 = 74
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.y)
            var_3 = if 127 >= abs(-5771353413385223667)
                    Int8(-5771353413385223667)
                else
                    127
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
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
            for i::Int8 = 1:div(var_3,16)
                local var_61::Int16 = -5555
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_17 = Creature.energyUp(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            return var_3
        end
        var_54 = 8882044479142391752 > (Int64)(0)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = isempty("I33YlJlI")
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],15.7672,0,7.59561,99854,0x00000075,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,32767=>32767,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[816,198],43942,10,94),RpcApi.SimpleOrganism(0x00000000000cb4ef,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_46::Int8 = 40
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(o.color)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
                var_43 = (Bool)(var_43) & (Bool)(var_43)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 4844 < (Int16)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],62.9813,0,85.6035,99766,0x00000071,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[633,789],34675,87,80),RpcApi.SimpleOrganism(0x00000000000cb0df,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_43 = Creature.stepRight(o)
            var_42 = Int(Creature.idLeft(o))
            var_43 = Creature.stepLeft(o)
            var_43 = var_43 & var_43
            if var_42 > var_42
                Creature.stepUp(o)
                Creature.stepLeft(o)
                Creature.stepDown(o)
                Creature.stepDown(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            var_43 = (Bool)(var_43) | (Bool)(var_43)
            var_42 = Creature.energyRight(o)
            var_53 = sec(-84)
            var_53 = sin(var_42)
            var_43 = Creature.stepLeft(o)
            var_42 = Int(Creature.idRight(o))
            var_42 = Creature.energyDown(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_59::Bool = true
            local var_57::Bool = true
            local var_56::Bool = true
            var_36 = Creature.energyDown(o)
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            if var_36 != var_36
                Creature.stepUp(o)
            end
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyRight(o)
            var_38 = var_38 * var_38
            var_59 = Creature.stepLeft(o)
            var_38 = Creature.stepRight(o)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_38 = Creature.stepUp(o)
            var_49 = (Int16)(var_49) $ (Int16)(var_49)
            var_38 = Bool(abs(var_38 - var_38))
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) << (Int16)(var_49)
            var_36 = Creature.energyLeft(o)
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_36 = Creature.energyDown(o)
            var_49 = Int16(o.pos.x)
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_38 = var_38 * var_38
            var_57 = 0.23044 < (Float64)(1)
            var_36 = (Int64)(var_36) | (Int64)(var_36)
            var_36 = Int(Creature.idLeft(o))
            var_38 = Creature.stepLeft(o)
            var_47 = div(var_47,if var_47 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_47
                    end)
            if var_49 >= var_49
                local var_58::String = "7GbpZMUT"
                Creature.stepDown(o)
            end
            var_36 = (Int64)(var_36) << (Int64)(var_36)
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepUp(o)
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_47 = Int16(o.pos.y)
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepDown(o)
            var_38 = var_38 | var_38
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "Cs4Qutm0"
            local var_40::Float64 = 0.48812
            local var_18::Int8 = 72
            var_3 = (Int8)(var_3) | (Int8)(var_18)
            var_40 = pi
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_18 = var_18 + var_18
            var_40 = sec(var_4)
            var_40 = csc(if var_40 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_40
                    end)
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_40 = tan(var_3)
            var_40 = csc(if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_40 = div(var_40,if var_40 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_40
                    end)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            for i::Int8 = 1:div(var_18,16)
                Creature.stepUp(o)
            end
            var_4 = var_4 - var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_40 = sec(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_48 = var_48 - var_48
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_48 = pi
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_48 = cos(28976)
        var_2 = func_5(var_2,var_13)
        var_48 = sin(6398575851573551237)
        var_48 = sec(-340169456510138209)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        var_48 = tan(2336)
        if var_8 <= var_8
        end
        var_48 = sqrt(abs(var_48))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_48 = var_48 * var_48
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            var_52 = string(var_23)
            var_52 = string(var_23)
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.82618,0,32.5716,99327,0x0000007d,Dict(830=>830,828=>828,124=>124,121=>121,122=>122,815=>815,835=>835,107=>107,820=>820,824=>824,817=>817,0=>0,837=>837,125=>125,833=>833,1001=>1001,832=>832,831=>831,814=>814,827=>827,816=>816,119=>119,819=>819,813=>813,123=>123,823=>823,811=>811,825=>825,829=>829,127=>127,836=>836,822=>822,120=>120,812=>812,821=>821,826=>826,834=>834,818=>818),[855,940],45093,50,150),RpcApi.SimpleOrganism(0x00000000000cb353,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_38::Bool=false,var_39::String="HwZriMcz")
            var_39 = string(-7312)
            var_39 = var_39 * var_39
            return var_38
        end
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
                local var_41::Int16 = 5344
            end
            var_18 = var_18 * var_3
            var_4 = Int16(o.color)
            return var_3
        end
        var_8 = -3106336015693160006 < (Int64)(1)
        var_13 = Int16(o.color)
        var_35 = Float64(-29342)
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
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 % if var_32 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_32
                    end
            Creature.eatUp(c,o,Int(var_32))
            Creature.eatRight(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_35 = sin(var_35)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(-2510235961336378945)
            var_28 = Float64(8308804046738285107)
            var_28 = csc(if var_28 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_28
                    end)
            var_28 = tan(var_28)
            var_28 = var_28 - var_28
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],3.4571,0,63.461,97087,0x0000006f,Dict(0=>0,332=>332,127=>127),[817,330],38806,2,80),RpcApi.SimpleOrganism(0x00000000000cc1f2,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_46(var_43::Float64=0.337593,var_44::Int16=31705,var_45::Float64=0.0468462)
            local var_53::Bool = true
            var_43 = pi
            var_43 = Float64(4792090863074545770)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            if var_49 !== var_49
                Creature.stepLeft(o)
            end
            var_44 = if haskey(o.mem,var_44)
                    o.mem[var_44]
                else
                    var_44
                end
            var_45 = Float64(var_44)
            var_44 = if haskey(o.mem,var_44)
                    o.mem[var_44]
                else
                    var_44
                end
            var_45 = cos(var_43)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_43 = Float64(var_53)
            var_45 = sin(-31)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(5229647156616734038)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            Creature.stepDown(o)
            var_41 = Creature.energyRight(o)
            var_41 = Int(Creature.idUp(o))
            var_41 = Creature.energyRight(o)
            var_41 = Creature.energyLeft(o)
            var_41 = Creature.energyDown(o)
            var_41 = Int(Creature.idDown(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_54::String = "jYNxUBBs"
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 - var_4
            var_4 = Int16(o.color)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_18 = if isempty("o7wkLsSF")
                    0
                else
                    1
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
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
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_38 = var_36 * var_36
        Creature.eatUp(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_52::Int64 = -5942614688981218277
            var_50 = csc(if -37 === (Int8)(0)
                        (Int8)(1)
                    else
                        -37
                    end)
            var_50 = Float64(false)
        end
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = !var_8
        if var_8 !== var_8
        end
        var_8 = Creature.stepRight(o)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(-12279)
                    Int8(-12279)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.869494,0,86.6385,96946,0x00000070,Dict(1760=>1760,306=>306,1316=>1316,1333=>1333,1671=>1671,1131=>1131,74=>74,1662=>1662,1265=>1265,1469=>1469,1461=>1461,285=>285,1881=>1881,1481=>1481,318=>318,1124=>1124,1337=>1337,873=>873,1273=>1273,975=>975,354=>354,610=>610,1082=>1082,1791=>1791,117=>117,1400=>1400,1327=>1327,1588=>1588,1714=>1714,1374=>1374,474=>474,1616=>1616,621=>621,1446=>1446,353=>353,430=>430,1166=>1166,1329=>1329,79=>79,1640=>1640,1479=>1479,1331=>1331,154=>154,1683=>1683,845=>845,107=>107,1648=>1648,682=>682,416=>416,10=>10,642=>642,162=>162,240=>240,974=>974,5=>5,1146=>1146,1230=>1230,1097=>1097,1817=>1817,776=>776,1324=>1324,573=>573,1460=>1460,512=>512,1503=>1503,90=>90,1527=>1527,396=>396,1201=>1201,1017=>1017,1141=>1141,592=>592,973=>973,1052=>1052,1418=>1418,655=>655,1873=>1873,620=>620,965=>965,1148=>1148,130=>130,146=>146,545=>545,1475=>1475,660=>660,1062=>1062,110=>110,1813=>1813,981=>981,1150=>1150,525=>525,1029=>1029,899=>899,366=>366,556=>556,128=>128,1722=>1722,1417=>1417,831=>831,183=>183,522=>522,931=>931,345=>345,742=>742,152=>152,1043=>1043,723=>723,843=>843,1643=>1643,982=>982,732=>732,1703=>1703,941=>941,1008=>1008,1274=>1274,454=>454,1599=>1599,312=>312,663=>663,446=>446,751=>751,659=>659,602=>602,1465=>1465,1853=>1853,241=>241,370=>370,197=>197,1887=>1887,142=>142,935=>935,848=>848,1786=>1786,614=>614,1694=>1694,612=>612,433=>433,1107=>1107,677=>677,1652=>1652,1381=>1381,1563=>1563,1540=>1540,890=>890,958=>958,916=>916,672=>672,94=>94,115=>115,418=>418,373=>373,455=>455,641=>641,1496=>1496,426=>426,1710=>1710,1211=>1211,503=>503,551=>551,914=>914,859=>859,1209=>1209,1288=>1288,1655=>1655,707=>707,471=>471,393=>393,497=>497,1167=>1167,1759=>1759,1602=>1602,1802=>1802,1115=>1115,1782=>1782,1252=>1252,1522=>1522,1858=>1858,1430=>1430,377=>377,1245=>1245,1382=>1382,1751=>1751,1560=>1560,1740=>1740,1437=>1437,1018=>1018,1044=>1044,867=>867,1506=>1506,1114=>1114,1607=>1607,254=>254,628=>628,1702=>1702,635=>635,20=>20,1644=>1644,1134=>1134,451=>451,166=>166,1126=>1126,35=>35,397=>397,1157=>1157,1054=>1054,1109=>1109,1571=>1571,816=>816,286=>286,1900=>1900,1831=>1831,392=>392,554=>554,346=>346,126=>126,303=>303,567=>567,872=>872,883=>883,237=>237,594=>594,386=>386,613=>613,1530=>1530,1213=>1213,517=>517,1691=>1691,1698=>1698,949=>949,1551=>1551,523=>523,1309=>1309,1580=>1580,504=>504,98=>98,666=>666,1713=>1713,1875=>1875,540=>540,1896=>1896,952=>952,161=>161,22=>22,73=>73,119=>119,222=>222,646=>646,1514=>1514,580=>580,687=>687,640=>640,502=>502,498=>498,603=>603,1423=>1423,1271=>1271,1826=>1826,1629=>1629,1807=>1807,131=>131,1532=>1532,249=>249,391=>391,207=>207,173=>173,1565=>1565,1891=>1891,1261=>1261,1735=>1735,1151=>1151,1015=>1015,70=>70,625=>625,1129=>1129,886=>886,1385=>1385,1513=>1513,1326=>1326,1060=>1060,327=>327,511=>511,1797=>1797,780=>780,951=>951,773=>773,1545=>1545,720=>720,1879=>1879,326=>326,248=>248,1420=>1420,1520=>1520,447=>447,555=>555,217=>217,855=>855,1830=>1830,506=>506,1517=>1517,120=>120,1487=>1487,681=>681,1558=>1558,1767=>1767,143=>143,1447=>1447,62=>62,996=>996,1459=>1459,548=>548,1355=>1355,961=>961,251=>251,1250=>1250,649=>649,1825=>1825,1854=>1854,656=>656,1820=>1820,766=>766,909=>909,1579=>1579,155=>155,569=>569,1625=>1625,344=>344,787=>787,747=>747,1471=>1471,1576=>1576,929=>929,1079=>1079,1498=>1498,1610=>1610,253=>253,1120=>1120,815=>815,1542=>1542,324=>324,1322=>1322,858=>858,13=>13,1080=>1080,1800=>1800,1806=>1806,647=>647,137=>137,1547=>1547,105=>105,765=>765,1448=>1448,307=>307,273=>273,1143=>1143,1032=>1032,1323=>1323,1182=>1182,100=>100,904=>904,1555=>1555,790=>790,1159=>1159,1346=>1346,268=>268,243=>243,535=>535,1612=>1612,317=>317,1732=>1732,676=>676,1661=>1661,1425=>1425,108=>108,1105=>1105,329=>329,1262=>1262,755=>755,1312=>1312,735=>735,144=>144,400=>400,1849=>1849,788=>788,1285=>1285,375=>375,494=>494,893=>893,1024=>1024,112=>112,544=>544,1310=>1310,106=>106,1811=>1811,1153=>1153,350=>350,823=>823,1823=>1823,585=>585,834=>834,1679=>1679,54=>54,337=>337,60=>60,481=>481,1277=>1277,1051=>1051,1893=>1893,1320=>1320,1785=>1785,936=>936,1781=>1781,189=>189,398=>398,913=>913,875=>875,896=>896,1676=>1676,1762=>1762,695=>695,1838=>1838,1554=>1554,380=>380,1041=>1041,1649=>1649,1697=>1697,1384=>1384,68=>68,275=>275,724=>724,382=>382,1380=>1380,1111=>1111,547=>547,1439=>1439,199=>199,323=>323,1005=>1005,669=>669,406=>406,683=>683,652=>652,232=>232,1243=>1243,83=>83,1480=>1480,45=>45,1402=>1402,954=>954,662=>662,1192=>1192,1334=>1334,1039=>1039,808=>808,442=>442,976=>976,595=>595,1023=>1023,972=>972,1075=>1075,376=>376,684=>684,61=>61,1489=>1489,1761=>1761,431=>431,862=>862,870=>870,1160=>1160,1733=>1733,304=>304,476=>476,629=>629,361=>361,772=>772,1030=>1030,706=>706,1104=>1104,1106=>1106,1152=>1152,841=>841,1215=>1215,288=>288,1805=>1805,1050=>1050,1889=>1889,1000=>1000,1570=>1570,1899=>1899,57=>57,1617=>1617,799=>799,445=>445,252=>252,835=>835,1376=>1376,727=>727,1556=>1556,1819=>1819,49=>49,552=>552,1827=>1827,716=>716,1723=>1723,1466=>1466,1587=>1587,1155=>1155,1549=>1549,264=>264,984=>984,221=>221,153=>153,579=>579,590=>590,1370=>1370,390=>390,619=>619,484=>484,1089=>1089,1393=>1393,129=>129,1743=>1743,88=>88,429=>429,1458=>1458,937=>937,149=>149,439=>439,1456=>1456,1729=>1729,210=>210,1635=>1635,1822=>1822,1726=>1726,789=>789,1890=>1890,1405=>1405,1787=>1787,1596=>1596,175=>175,1278=>1278,543=>543,1411=>1411,1264=>1264,987=>987,970=>970,419=>419,596=>596,436=>436,793=>793,967=>967,942=>942,1574=>1574,216=>216,47=>47,147=>147,1123=>1123,1108=>1108,1186=>1186,829=>829,488=>488,1504=>1504,1568=>1568,1777=>1777,863=>863,1742=>1742,560=>560,688=>688,1673=>1673,950=>950,51=>51,123=>123,1256=>1256,358=>358,1696=>1696,1766=>1766,661=>661,1497=>1497,740=>740,581=>581,713=>713,1716=>1716,1026=>1026,532=>532,658=>658,1350=>1350,1132=>1132,365=>365,771=>771,1443=>1443,509=>509,521=>521,1464=>1464,407=>407,1181=>1181,874=>874,1058=>1058,817=>817,1083=>1083,1307=>1307,1363=>1363,138=>138,703=>703,292=>292,235=>235,692=>692,971=>971,1112=>1112,1229=>1229,1647=>1647,1855=>1855,1770=>1770,1065=>1065,1764=>1764,0=>0,838=>838,1518=>1518,1156=>1156,1200=>1200,1546=>1546,1016=>1016,1147=>1147,12=>12,1601=>1601,1736=>1736,410=>410,528=>528,626=>626,364=>364,1246=>1246,1180=>1180,1810=>1810,889=>889,837=>837,623=>623,1388=>1388,979=>979,678=>678,1203=>1203,262=>262,92=>92,1592=>1592,1205=>1205,1843=>1843,1651=>1651,1828=>1828,124=>124,791=>791,360=>360,85=>85,1377=>1377,181=>181,1028=>1028,894=>894,1773=>1773,1071=>1071,1483=>1483,1422=>1422,458=>458,1675=>1675,1163=>1163,1476=>1476,1646=>1646,52=>52,1709=>1709,233=>233,367=>367,278=>278,1222=>1222,959=>959,336=>336,1737=>1737,64=>64,568=>568,1397=>1397,444=>444,257=>257,220=>220,943=>943,524=>524,854=>854,932=>932,588=>588,67=>67,864=>864,1428=>1428,7=>7,1424=>1424,395=>395,537=>537,325=>325,437=>437,1848=>1848,536=>536,878=>878,340=>340,526=>526,399=>399,1202=>1202,174=>174,371=>371,1221=>1221,1336=>1336,24=>24,116=>116,1046=>1046,1391=>1391,1260=>1260,496=>496,1630=>1630,1774=>1774,1600=>1600,520=>520,895=>895,11=>11,491=>491,1557=>1557,478=>478,1103=>1103,1534=>1534,1495=>1495,1047=>1047,490=>490,946=>946,335=>335,828=>828,165=>165,1859=>1859,133=>133,1678=>1678,1880=>1880,748=>748,328=>328,977=>977,752=>752,425=>425,1569=>1569,1373=>1373,1175=>1175,77=>77,311=>311,1727=>1727,1750=>1750,605=>605,1302=>1302,441=>441,132=>132,1631=>1631,1681=>1681,1389=>1389,231=>231,725=>725,550=>550,1550=>1550,302=>302,1178=>1178,1882=>1882,1087=>1087,225=>225,1593=>1593,204=>204,122=>122,1509=>1509,180=>180,1844=>1844,413=>413,601=>601,806=>806,731=>731,877=>877,331=>331,1433=>1433,1700=>1700,948=>948,679=>679,1237=>1237,1872=>1872,1357=>1357,1626=>1626,1892=>1892,969=>969,1133=>1133,1184=>1184,296=>296,1470=>1470,1621=>1621,1833=>1833,1210=>1210,717=>717,1145=>1145,1686=>1686,705=>705,212=>212,310=>310,1415=>1415,760=>760,265=>265,853=>853,1573=>1573,17=>17,466=>466,1885=>1885,1013=>1013,475=>475,851=>851,637=>637,1804=>1804,744=>744,1022=>1022,226=>226,1421=>1421,43=>43,1033=>1033,1137=>1137,1268=>1268,104=>104,999=>999,919=>919,465=>465,857=>857,1318=>1318,711=>711,737=>737,1086=>1086,1765=>1765,1660=>1660,291=>291,422=>422,1394=>1394,196=>196,576=>576,968=>968,281=>281,1667=>1667,578=>578,1275=>1275,1721=>1721,1282=>1282,405=>405,1321=>1321,1641=>1641,1190=>1190,2=>2,1269=>1269,1416=>1416,1006=>1006,1776=>1776,925=>925,1674=>1674,151=>151,1562=>1562,1874=>1874,1793=>1793,1057=>1057,1701=>1701,1220=>1220,1284=>1284,611=>611,1313=>1313,741=>741,283=>283,1850=>1850,448=>448,459=>459,109=>109,1847=>1847,833=>833,298=>298,1001=>1001,1623=>1623,722=>722,1706=>1706,1238=>1238,644=>644,906=>906,1477=>1477,1493=>1493,784=>784,1162=>1162,636=>636,359=>359,1687=>1687,332=>332,1622=>1622,1528=>1528,1207=>1207,198=>198,1758=>1758,1749=>1749,1206=>1206,1037=>1037,1586=>1586,272=>272,482=>482,469=>469,1335=>1335,1752=>1752,443=>443,689=>689,1526=>1526,1747=>1747,1308=>1308,1314=>1314,1501=>1501,850=>850,1021=>1021,1728=>1728,369=>369,990=>990,698=>698,486=>486,1040=>1040,1270=>1270,170=>170,42=>42,1300=>1300,796=>796,1352=>1352,1553=>1553,811=>811,1139=>1139,865=>865,388=>388,69=>69,991=>991,1294=>1294,351=>351,572=>572,1398=>1398,1886=>1886,434=>434,1244=>1244,1383=>1383,460=>460,1406=>1406,263=>263,357=>357,915=>915,206=>206,927=>927,385=>385,1340=>1340,809=>809,670=>670,923=>923,1659=>1659,1427=>1427,1125=>1125,1259=>1259,804=>804,910=>910,1081=>1081,404=>404,691=>691,812=>812,1025=>1025,1012=>1012,618=>618,1390=>1390,186=>186,420=>420,1035=>1035,6=>6,856=>856,1717=>1717,1038=>1038,218=>218,1473=>1473,1704=>1704,1090=>1090,29=>29,905=>905,176=>176,892=>892,1693=>1693,1845=>1845,1442=>1442,563=>563,1451=>1451,1194=>1194,880=>880,671=>671,721=>721,930=>930,1195=>1195,1386=>1386,284=>284,1144=>1144,1116=>1116,1581=>1581,188=>188,685=>685,782=>782,1835=>1835,589=>589,1871=>1871,797=>797,617=>617,71=>71,1127=>1127,1664=>1664,1780=>1780,184=>184,1821=>1821,794=>794,1301=>1301,908=>908,733=>733,1705=>1705,1795=>1795,294=>294,1426=>1426,606=>606,881=>881,1510=>1510,917=>917,966=>966,980=>980,261=>261,1102=>1102,514=>514,1512=>1512,840=>840,1358=>1358,15=>15,41=>41,461=>461,148=>148,1135=>1135,957=>957,1488=>1488,66=>66,586=>586,1410=>1410,1158=>1158,95=>95,236=>236,111=>111,844=>844,14=>14,933=>933,1598=>1598,1505=>1505,256=>256,1136=>1136,1712=>1712,1876=>1876,565=>565,1199=>1199,763=>763,1240=>1240,549=>549,135=>135,125=>125,1387=>1387,1100=>1100,453=>453,1247=>1247,1445=>1445,309=>309,99=>99,1349=>1349,1286=>1286,1779=>1779,9=>9,1634=>1634,348=>348,736=>736,860=>860,591=>591,1179=>1179,103=>103,1348=>1348,730=>730,1276=>1276,1484=>1484,1719=>1719,667=>667,911=>911,1618=>1618,795=>795,1003=>1003,1536=>1536,832=>832,846=>846,191=>191,1677=>1677,1672=>1672,918=>918,276=>276,1368=>1368,1074=>1074,508=>508,1798=>1798,1763=>1763,1444=>1444,1608=>1608,1072=>1072,593=>593,654=>654,624=>624,1369=>1369,1049=>1049,1375=>1375,956=>956,1055=>1055,718=>718,1638=>1638,818=>818,372=>372,1457=>1457,664=>664,1739=>1739,279=>279,700=>700,368=>368,609=>609,1191=>1191,885=>885,922=>922,1227=>1227,1604=>1604,1228=>1228,963=>963,1796=>1796,1794=>1794,290=>290,650=>650,607=>607,824=>824,171=>171,1829=>1829,750=>750,1572=>1572,334=>334,1645=>1645,1091=>1091,178=>178,1098=>1098,1463=>1463,313=>313,1884=>1884,1801=>1801,493=>493,577=>577,113=>113,293=>293,1538=>1538,1637=>1637,297=>297,507=>507,1548=>1548,1177=>1177,1748=>1748,1559=>1559,1073=>1073,274=>274,1118=>1118,1624=>1624,28=>28,634=>634,1255=>1255,1449=>1449,97=>97,584=>584,1715=>1715,1757=>1757,39=>39,58=>58,739=>739,8=>8,333=>333,428=>428,1330=>1330,185=>185,1594=>1594,868=>868,1738=>1738,774=>774,849=>849,266=>266,421=>421,1898=>1898,1440=>1440,145=>145,1441=>1441,1494=>1494,1064=>1064,86=>86,1233=>1233,587=>587,1708=>1708,1656=>1656,1682=>1682,82=>82,75=>75,1492=>1492,701=>701,87=>87,1730=>1730,668=>668,510=>510,1502=>1502,947=>947,347=>347,1639=>1639,1603=>1603,1059=>1059,1543=>1543,792=>792,1101=>1101,1725=>1725,389=>389,1392=>1392,598=>598,562=>562,53=>53,869=>869,745=>745,305=>305,1325=>1325,1690=>1690,27=>27,1564=>1564,134=>134,215=>215,1248=>1248,882=>882,542=>542,499=>499,201=>201,477=>477,1818=>1818,876=>876,31=>31,1401=>1401,1636=>1636,597=>597,1454=>1454,33=>33,1218=>1218,1338=>1338,1189=>1189,1117=>1117,1031=>1031,1689=>1689,473=>473,1490=>1490,1170=>1170,1164=>1164,978=>978,230=>230,1412=>1412,1756=>1756,50=>50,80=>80,513=>513,1699=>1699,1216=>1216,412=>412,1188=>1188,401=>401,847=>847,786=>786,1613=>1613,1814=>1814,822=>822,1354=>1354,1668=>1668,167=>167,903=>903,1076=>1076,21=>21,1094=>1094,1611=>1611,260=>260,280=>280,761=>761,1174=>1174,1293=>1293,1684=>1684,463=>463,1614=>1614,438=>438,1870=>1870,1508=>1508,1670=>1670,757=>757,699=>699,1372=>1372,55=>55,1034=>1034,1589=>1589,694=>694,709=>709,728=>728,1745=>1745,1654=>1654,483=>483,258=>258,205=>205,1161=>1161,1584=>1584,269=>269,452=>452,492=>492,65=>65,202=>202,44=>44,1056=>1056,192=>192,729=>729,901=>901,270=>270,1894=>1894,1367=>1367,1619=>1619,1840=>1840,339=>339,800=>800,1027=>1027,1467=>1467,1485=>1485,379=>379,352=>352,1606=>1606,38=>38,118=>118,1223=>1223,553=>553,570=>570,648=>648,821=>821,826=>826,902=>902,715=>715,1771=>1771,411=>411,81=>81,1343=>1343,19=>19,1851=>1851,424=>424,1842=>1842,686=>686,1084=>1084,163=>163,861=>861,1053=>1053,1242=>1242,89=>89,924=>924,1128=>1128,1239=>1239,1253=>1253,1067=>1067,1832=>1832,1304=>1304,1583=>1583,1841=>1841,1650=>1650,1657=>1657,1014=>1014,1808=>1808,1413=>1413,26=>26,387=>387,4=>4,1888=>1888,1281=>1281,440=>440,622=>622,101=>101,897=>897,1356=>1356,34=>34,467=>467,762=>762,1431=>1431,238=>238,674=>674,627=>627,1585=>1585,1877=>1877,295=>295,1092=>1092,1226=>1226,912=>912,1204=>1204,242=>242,810=>810,1577=>1577,775=>775,1815=>1815,16=>16,575=>575,805=>805,208=>208,1019=>1019,1254=>1254,1812=>1812,72=>72,1168=>1168,653=>653,988=>988,1339=>1339,362=>362,643=>643,1666=>1666,1861=>1861,1521=>1521,46=>46,1595=>1595,938=>938,995=>995,247=>247,631=>631,1852=>1852,18=>18,1121=>1121,403=>403,852=>852,994=>994,355=>355,749=>749,187=>187,1149=>1149,1198=>1198,814=>814,1371=>1371,487=>487,539=>539,541=>541,753=>753,1809=>1809,1482=>1482,1414=>1414,1295=>1295,1342=>1342,1529=>1529,1078=>1078,743=>743,1219=>1219,546=>546,945=>945,754=>754,1048=>1048,500=>500,710=>710,383=>383,330=>330,409=>409,36=>36,1711=>1711,680=>680,415=>415,1305=>1305,1615=>1615,423=>423,271=>271,714=>714,1478=>1478,23=>23,315=>315,1409=>1409,1753=>1753,1279=>1279,1862=>1862,712=>712,300=>300,1895=>1895,1289=>1289,289=>289,435=>435,1395=>1395,1169=>1169,1232=>1232,704=>704,690=>690,779=>779,921=>921,96=>96,1718=>1718,803=>803,1533=>1533,819=>819,1744=>1744,1816=>1816,489=>489,1544=>1544,898=>898,534=>534,559=>559,227=>227,515=>515,195=>195,157=>157,697=>697,1085=>1085,1347=>1347,1746=>1746,169=>169,1154=>1154,1362=>1362,783=>783,1004=>1004,63=>63,472=>472,529=>529,630=>630,557=>557,501=>501,245=>245,574=>574,1119=>1119,1591=>1591,734=>734,1468=>1468,495=>495,566=>566,1251=>1251,1007=>1007,962=>962,150=>150,209=>209,888=>888,1257=>1257,1680=>1680,200=>200,308=>308,1292=>1292,778=>778,1317=>1317,1857=>1857,172=>172,314=>314,583=>583,37=>37,1628=>1628,394=>394,450=>450,953=>953,1769=>1769,141=>141,1=>1,30=>30,1511=>1511,214=>214,1868=>1868,944=>944,91=>91,470=>470,639=>639,244=>244,693=>693,1173=>1173,1836=>1836,1897=>1897,1224=>1224,1499=>1499,140=>140,785=>785,1077=>1077,378=>378,1695=>1695,759=>759,177=>177,657=>657,427=>427,1435=>1435,1525=>1525,1365=>1365,1341=>1341,756=>756,1775=>1775,1539=>1539,1561=>1561,1541=>1541,825=>825,907=>907,78=>78,986=>986,1403=>1403,1297=>1297,1864=>1864,616=>616,1688=>1688,820=>820,182=>182,1755=>1755,1093=>1093,964=>964,1789=>1789,518=>518,866=>866,1283=>1283,673=>673,1865=>1865,1754=>1754,40=>40,1359=>1359,599=>599,417=>417,891=>891,1784=>1784,1332=>1332,1212=>1212,1452=>1452,842=>842,1434=>1434,884=>884,1778=>1778,1724=>1724,1450=>1450,1344=>1344,343=>343,1231=>1231,770=>770,246=>246,764=>764,456=>456,1734=>1734,338=>338,1436=>1436,1068=>1068,1633=>1633,1783=>1783,767=>767,1507=>1507,1856=>1856,267=>267,940=>940,1462=>1462,25=>25,798=>798,1404=>1404,768=>768,1217=>1217,1665=>1665,1185=>1185,356=>356,194=>194,1002=>1002,234=>234,758=>758,1669=>1669,1142=>1142,1291=>1291,1605=>1605,533=>533,1620=>1620,408=>408,651=>651,1867=>1867,993=>993,1663=>1663,1578=>1578,229=>229,1351=>1351,190=>190,228=>228,1165=>1165,1803=>1803,1824=>1824,179=>179,1500=>1500,615=>615,1658=>1658,402=>402,989=>989,1319=>1319,1685=>1685,519=>519,1263=>1263,807=>807,1364=>1364,319=>319,1138=>1138,156=>156,1036=>1036,1438=>1438,1311=>1311,1516=>1516,1453=>1453,1176=>1176,349=>349,983=>983,1196=>1196,56=>56,839=>839,633=>633,1113=>1113,1772=>1772,1249=>1249,708=>708,158=>158,1741=>1741,160=>160,464=>464,582=>582,1869=>1869,992=>992,384=>384,1566=>1566,1429=>1429,479=>479,1396=>1396,1280=>1280,114=>114,1846=>1846,1122=>1122,84=>84,738=>738,645=>645,93=>93,1790=>1790,1303=>1303,1208=>1208,564=>564,608=>608,1061=>1061,1720=>1720,1590=>1590,516=>516,1609=>1609,1642=>1642,1552=>1552,1863=>1863,76=>76,1360=>1360,224=>224,213=>213,769=>769,414=>414,287=>287,939=>939,102=>102,1130=>1130,1523=>1523,561=>561,1258=>1258,1353=>1353,985=>985,1328=>1328,638=>638,1234=>1234,462=>462,239=>239,1299=>1299,1455=>1455,139=>139,1272=>1272,871=>871,1408=>1408,1531=>1531,282=>282,1860=>1860,1290=>1290,1214=>1214,801=>801,250=>250,1575=>1575,127=>127,934=>934,1834=>1834,1193=>1193,1063=>1063,1172=>1172,1419=>1419,203=>203,960=>960,468=>468,320=>320,604=>604,1236=>1236,1768=>1768,998=>998,702=>702,1045=>1045,48=>48,1225=>1225,1632=>1632,277=>277,1519=>1519,255=>255,485=>485,1491=>1491,746=>746,301=>301,164=>164,1315=>1315,1792=>1792,830=>830,1432=>1432,136=>136,342=>342,900=>900,1878=>1878,1197=>1197,159=>159,926=>926,1839=>1839,1011=>1011,696=>696,538=>538,121=>121,457=>457,1171=>1171,836=>836,168=>168,1537=>1537,1524=>1524,1399=>1399,211=>211,1567=>1567,777=>777,1515=>1515,1582=>1582,1298=>1298,299=>299,363=>363,1267=>1267,1799=>1799,887=>887,1088=>1088,1627=>1627,1266=>1266,1707=>1707,955=>955,1653=>1653,571=>571,1010=>1010,1345=>1345,374=>374,1379=>1379,505=>505,600=>600,827=>827,1187=>1187,1361=>1361,920=>920,449=>449,879=>879,480=>480,1020=>1020,1486=>1486,1597=>1597,1069=>1069,1306=>1306,1235=>1235,1095=>1095,1070=>1070,1407=>1407,530=>530,1066=>1066,1788=>1788,193=>193,59=>59,1472=>1472,675=>675,1183=>1183,527=>527,726=>726,1692=>1692,219=>219,223=>223,802=>802,1883=>1883,1378=>1378,259=>259,997=>997,1099=>1099,558=>558,1837=>1837,1096=>1096,665=>665,531=>531,1731=>1731,32=>32,316=>316,432=>432,381=>381,719=>719,1009=>1009,781=>781,813=>813,3=>3,1287=>1287,1474=>1474,1866=>1866,928=>928,632=>632,1296=>1296,1140=>1140,1366=>1366,341=>341,321=>321,1110=>1110,1042=>1042,1535=>1535,1241=>1241,322=>322),[1582,910],1197,50,107),RpcApi.SimpleOrganism(0x00000000000cbfce,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_48::Bool=false)
            local var_52::Bool = false
            var_48 = Creature.stepLeft(o)
            var_48 = Creature.stepDown(o)
            return var_48
        end
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
            local var_46::Bool = false
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_50::Int64 = 6623392707030044084
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_46 = (Bool)(var_44) & (Bool)(var_44)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_44 = (Bool)(var_46) & (Bool)(var_44)
            return var_3
        end
        var_8 = -31063 < (Int16)(1)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_21(var_38)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_38 = var_38 * var_38
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        var_8 = 0.956221 < (Float64)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],93.1414,0,1.0061,96605,0x00000073,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[562,631],6676,6,86),RpcApi.SimpleOrganism(0x00000000000cbd34,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 11658
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_47::Int64 = -7525355648957457164
            local var_46::Bool = true
            var_47 = Creature.energyUp(o)
            var_47 = Creature.energyDown(o)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            var_47 = (Int64)(var_47) $ (Int64)(var_47)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_43::Bool = false
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_2 = if 127 >= abs(-4818672534738455460)
                Int8(-4818672534738455460)
            else
                127
            end
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 & var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_36 = var_38 * var_36
        var_2 = func_5(var_2,var_13)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_45 = (Int16)(var_45) | (Int16)(var_45)
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_45 = (Int16)(var_45) >> (Int16)(var_45)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        var_38 = func_7(var_38)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.24867,0,80.0567,96188,0x00000072,Dict(114=>114,109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,113=>113,94=>94,108=>108),[660,891],13404,19,81)]