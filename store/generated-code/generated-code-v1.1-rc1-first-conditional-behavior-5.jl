RpcApi.SimpleOrganism[RpcApi.SimpleOrganism(0x00000000000bb344,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            var_20 = string(var_20)
            Creature.stepRight(o)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_6 = string(-3137659399683027592)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
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
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = cos(-92)
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],67.0961,0,51.5791,556319,0x0000006e,Dict(0=>0,127=>127),[841,368],23978,1,96),RpcApi.SimpleOrganism(0x00000000000bab5a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_41(var_38::Float64=0.71944,var_39::String="v3Ockzbq",var_40::Int64=3826169482629662085)
            var_40 = (Int64)(var_40) & (Int64)(var_40)
            return var_38
        end
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            Creature.stepDown(o)
            var_37 = cot(if 14606 === (Int16)(0)
                        (Int16)(1)
                    else
                        14606
                    end)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            var_6 = string(-3137659399683027592)
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
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
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
            var_28 = cos(-92)
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
            Creature.eatUp(c,o,Int(var_23))
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],80.0346,0,89.4868,522492,0x0000006e,Dict(0=>0,127=>127),[848,369],44245,2,91),RpcApi.SimpleOrganism(0x00000000000bb47d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_55::Int64 = 2322594414994043420
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            var_44 = 0.744383 > (Float64)(0)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_53::Float64 = 0.649351
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_39 = var_39 & var_39
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_41 < (Int64)(1)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_39 = var_48 > (Int8)(0)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_53 = Float64(var_41)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_41)
                    Int16(var_41)
                else
                    32767
                end
            var_41 = Creature.energyLeft(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_39 = var_53 > (Float64)(0)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyRight(o)
            var_4 = var_4 * var_4
            var_39 = var_53 < (Float64)(1)
            var_53 = cot(if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_53 = var_53 + var_53
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_8 = var_55 < (Int64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_8 = 0.399852 > (Float64)(0)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepDown(o)
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_49 = (Int16)(var_49) >> (Int16)(var_49)
        if var_8 == var_8
            Creature.stepLeft(o)
        end
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        var_49 = Int16(o.pos.y)
        Creature.eatLeft(c,o,Int(var_2))
        var_49 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        var_49 = var_49 + var_49
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(30852)
                    Int8(30852)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],80.1589,0,67.8527,444133,0x0000006f,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[885,267],20852,96,91),RpcApi.SimpleOrganism(0x00000000000bbc2a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_39::Int8=127)
            local var_42::Float64 = 0.251289
            Creature.stepLeft(o)
            return var_39
        end
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            var_37 = cos(3586)
            Creature.stepRight(o)
            var_37 = csc(if 26475 === (Int16)(0)
                        (Int16)(1)
                    else
                        26475
                    end)
            Creature.stepRight(o)
            var_37 = sin(-14)
            if var_20 != var_20
                Creature.stepUp(o)
            end
            var_37 = csc(if -7693452456639944508 === (Int64)(0)
                        (Int64)(1)
                    else
                        -7693452456639944508
                    end)
            var_35 = sin(3185057485418626164)
            var_37 = div(var_35,if var_37 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_37
                    end)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
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
                Creature.stepRight(o)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
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
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
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
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_38::Float64 = 0.210949
            local var_23::Int8 = 63
            var_23 = (Int8)(var_23) & (Int8)(var_23)
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
            var_38 = sin(-8187)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],0.657037,0,21.4066,442011,0x00000070,Dict(0=>0,127=>127),[855,372],1191,50,94),RpcApi.SimpleOrganism(0x00000000000bb6ab,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cos(1417325699522058963)
            Creature.eatDown(c,o,Int(var_47))
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_47))
            var_46 = if isempty(var_55)
                    0
                else
                    1
                end
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            var_42 = div(var_42,if var_42 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_42
                    end)
            return var_42
        end
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_57::Int64 = -905173141516476799
            Creature.stepDown(o)
            Creature.stepDown(o)
            var_57 = Int(Creature.idDown(o))
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
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
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
            var_4 = var_4 - var_4
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
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],97.412,0,34.1746,427858,0x0000006f,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1124,137],15275,5,79),RpcApi.SimpleOrganism(0x00000000000ba7a9,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Int64 = 7536151467655441540
            var_37 = Creature.energyRight(o)
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_36::Bool = false
            var_36 = -8488075777994641324 > (Int64)(0)
            var_36 = 0.743695 > (Float64)(0)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
            local var_38::String = "CuPBhQ7G"
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
            var_28 = Float64(8308804046738285107)
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
            var_23 = var_23 - var_23
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],69.4374,0,57.6888,416159,0x0000006b,Dict(0=>0,127=>127),[785,334],53698,1,75),RpcApi.SimpleOrganism(0x00000000000bbc4a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_35 = cot(if -103 === (Int8)(0)
                        (Int8)(1)
                    else
                        -103
                    end)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
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
                Creature.stepUp(o)
                Creature.stepRight(o)
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
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],44.5291,0,10.7397,281367,0x0000006e,Dict(0=>0,127=>127),[837,372],872,50,92),RpcApi.SimpleOrganism(0x00000000000bbb67,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            Creature.stepUp(o)
            var_20 = string(false)
            Creature.stepDown(o)
            var_37 = csc(if -3686247501541930835 === (Int64)(0)
                        (Int64)(1)
                    else
                        -3686247501541930835
                    end)
            var_35 = var_35 * var_35
            var_20 = string(var_37)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
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
                Creature.stepRight(o)
            end
            var_4 = Int16(o.pos.y)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
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
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.color)
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
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
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
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_38::String = "UUL0wCD6"
            var_28 = cos(-92)
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],78.8847,0,76.5199,257547,0x00000071,Dict(0=>0,127=>127),[829,351],3142,23,91),RpcApi.SimpleOrganism(0x00000000000bb2c0,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_42 = Creature.energyDown(o)
            var_43 = 31727 > (Int16)(0)
            var_43 = Creature.stepRight(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_49::Int16 = 2799
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyRight(o)
            var_38 = var_38 * var_38
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepRight(o)
            var_38 = Creature.stepLeft(o)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Int(Creature.idRight(o))
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = Int16(o.pos.x)
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_38 = var_38 * var_38
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idLeft(o))
            var_47 = div(var_47,if var_47 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_47
                    end)
            if var_49 >= var_49
            end
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_36 = Creature.energyLeft(o)
            var_38 = var_38
            var_36 = Int(Creature.idUp(o))
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_38 = !var_38
            var_36 = Creature.energyLeft(o)
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
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_40 = tan(5940923735371674980)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = var_4 - var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_40 = cos(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_40 = cos(-3584130168200709586)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_53::Int64 = 1966507318388394141
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],17.406,0,93.5625,231840,0x00000076,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[865,940],25299,10,115),RpcApi.SimpleOrganism(0x00000000000bbc49,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_35 = cot(if -103 === (Int8)(0)
                        (Int8)(1)
                    else
                        -103
                    end)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
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
                Creature.stepUp(o)
                Creature.stepRight(o)
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],70.912,0,10.7397,226967,0x0000006e,Dict(0=>0,127=>127),[838,372],884,50,91),RpcApi.SimpleOrganism(0x00000000000bae07,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            if var_3 > var_3
                Creature.stepLeft(o)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
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
            var_28 = tan(-15086)
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
            Creature.eatUp(c,o,Int(var_23))
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
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],31.074,0,25.0124,215079,0x0000006b,Dict(0=>0,127=>127),[810,352],37393,79,69),RpcApi.SimpleOrganism(0x00000000000bb1f7,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_55::Int64 = 2322594414994043420
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            var_44 = 0.899178 > (Float64)(0)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_59::Bool = true
            local var_56::Int8 = 38
            local var_53::Float64 = 0.649351
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_41)
                    Int16(var_41)
                else
                    32767
                end
            var_41 = Creature.energyLeft(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            for i::Int8 = 1:div(var_18,16)
                local var_58::Int64 = 4129292019527387724
                var_58 = Creature.energyUp(o)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            if var_18 > var_18
            end
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_39 = var_39 | var_39
            var_39 = var_53 > (Float64)(0)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_53 = cos(var_53)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepLeft(o)
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_39 = var_53 < (Float64)(1)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_53 = var_53 + var_53
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_55 = Creature.energyRight(o)
        o.mem[var_49] = var_49
        var_8 = 0.399852 > (Float64)(0)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_55 = Int(Creature.idDown(o))
        var_2 = func_5(var_2,var_13)
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_49 = Int16(o.color)
        var_49 = Int16(o.pos.x)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        if var_8 == var_8
        end
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        var_49 = Int16(o.pos.y)
        Creature.eatLeft(c,o,Int(var_2))
        var_49 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        var_49 = var_49 + var_49
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(30852)
                    Int8(30852)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],78.755,0,74.1091,208388,0x00000071,Dict(119=>119,47=>47,-4430=>-4430,121=>121,513=>513,103=>103,514=>514,110=>110,127=>127,111=>111,0=>0,515=>515,102=>102,517=>517,112=>112,48=>48,113=>113,1001=>1001,516=>516,108=>108),[599,521],27310,80,89),RpcApi.SimpleOrganism(0x00000000000bbc52,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_36::Int8 = 73
            if var_36 == var_36
            end
            Creature.eatLeft(c,o,Int(var_36))
            var_36 = if 127 >= abs(1498102771338483563)
                    Int8(1498102771338483563)
                else
                    127
                end
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
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            if var_3 > var_3
                Creature.stepLeft(o)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
                local var_37::Bool = true
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = cos(-92)
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
            var_23 = if 127 >= abs(-4920416989042279517)
                    Int8(-4920416989042279517)
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.62132,0,50.4755,206059,0x0000006b,Dict(0=>0,127=>127),[823,361],791,50,62),RpcApi.SimpleOrganism(0x00000000000bbc5e,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_53::String = "5pFQCa4o"
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_43 = Bool(abs(var_43 - var_43))
            var_43 = var_43 | var_43
            var_43 = isempty("vdU0oiZd")
            var_43 = var_43 & var_43
            var_42 = Creature.energyLeft(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_49::Int16 = 2799
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_38 = var_38 * var_38
            var_38 = Creature.stepRight(o)
            var_38 = Creature.stepLeft(o)
            var_38 = Creature.stepLeft(o)
            var_38 = !var_38
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Int(Creature.idRight(o))
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = Int16(o.pos.x)
            var_38 = var_38 * var_38
            var_36 = Creature.energyDown(o)
            var_36 = Int(Creature.idLeft(o))
            var_36 = Creature.energyLeft(o)
            var_38 = -127 > (Int8)(0)
            var_49 = Int16(o.pos.y)
            var_38 = var_38
            var_38 = isempty(var_37)
            var_36 = Int(Creature.idUp(o))
            var_49 = (Int16)(var_49) & (Int16)(var_49)
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_47 = Int16(o.pos.y)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Creature.energyLeft(o)
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
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
                local var_54::Bool = true
            end
            var_40 = sec(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_40 = tan(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_51 = var_2 % if var_2 === (Int8)(0)
                    (Int8)(1)
                else
                    var_2
                end
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_8 = var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.8406,0,5.86604,202312,0x00000076,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[859,940],672,40,118),RpcApi.SimpleOrganism(0x00000000000bb8c7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_47(var_46::Int16=3925)
            local var_49::Float64 = 0.846529
            if var_46 !== var_46
            end
            Creature.stepDown(o)
            return var_46
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_20 = string(0.364221)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_42 = pi
            var_42 = sec(var_41)
            var_41 = Int(Creature.idUp(o))
            var_41 = Int(Creature.idUp(o))
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            var_41 = Int(Creature.idDown(o))
            var_41 = Creature.energyUp(o)
            var_42 = tan(var_41)
            var_42 = sec(var_41)
            var_41 = Int(Creature.idLeft(o))
            if var_42 == var_42
                Creature.stepUp(o)
            end
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            return var_3
        end
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
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = isempty(var_36)
        var_8 = 6363310529912737580 < (Int64)(1)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = Creature.stepUp(o)
        Creature.eatUp(c,o,Int(var_2))
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
            var_23 = func_5(var_23)
            var_23 = var_23 * var_23
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],65.7146,0,93.1412,184779,0x00000070,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,94=>94,108=>108),[599,726],9861,39,104),RpcApi.SimpleOrganism(0x00000000000bbc0c,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_41(var_38::Float64=0.71944,var_39::String="v3Ockzbq",var_40::Int64=3826169482629662085)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            var_38 = var_38 + var_38
            var_38 = log(if var_38 > (Float64)(0)
                        var_38
                    else
                        abs(if var_38 !== 0.0
                                var_38
                            else
                                1.0
                            end)
                    end)
            return var_38
        end
        function func_21(var_20::String="aEhz4rt6")
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_35 = Float64(var_35)
            var_37 = cos(var_35)
            var_35 = cos(74)
            Creature.stepLeft(o)
            var_35 = cos(-70)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(-57)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
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
            local var_42::String = "ESyfnKoK"
            var_32 = if false
                    1
                else
                    0
                end
            Creature.eatUp(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
            var_28 = cos(-92)
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
            Creature.eatUp(c,o,Int(var_23))
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],44.7884,0,86.8519,171012,0x0000006f,Dict(0=>0,127=>127),[858,369],1492,39,95),RpcApi.SimpleOrganism(0x00000000000bb1a4,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_43::Int8 = 54
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_44::Float64 = 0.562453
            Creature.stepUp(o)
            var_41 = Creature.energyRight(o)
            var_44 = sec(-73)
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            if var_6 == var_6
            end
            var_41 = var_41 * var_41
            var_42 = cot(if var_42 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_42
                    end)
            var_44 = pi
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_3 = if 127 >= abs(-7437274100385907254)
                    Int8(-7437274100385907254)
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
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
        var_38 = string(var_8)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
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
        var_8 = -5319 > (Int16)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
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
    end),[98,38,30,73,83,1,72,0,51],78.7478,0,0.848828,166385,0x0000006f,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,94=>94,108=>108),[440,756],28141,8,86),RpcApi.SimpleOrganism(0x00000000000ba8d7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_6 = string(-3137659399683027592)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
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
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = cos(-92)
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],37.0351,0,11.9414,154264,0x0000006e,Dict(0=>0,127=>127),[840,368],50675,43,95),RpcApi.SimpleOrganism(0x00000000000bbaff,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_36::Int8 = 73
            if var_36 == var_36
            end
            Creature.eatLeft(c,o,Int(var_36))
            var_36 = if 127 >= abs(1498102771338483563)
                    Int8(1498102771338483563)
                else
                    127
                end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            if var_3 > var_3
                Creature.stepLeft(o)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
                local var_37::Bool = true
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
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
            var_23 = if 127 >= abs(-4920416989042279517)
                    Int8(-4920416989042279517)
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],57.3502,0,42.5642,152711,0x0000006b,Dict(0=>0,127=>127),[820,360],4182,7,63),RpcApi.SimpleOrganism(0x00000000000bba2a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_43::Int8 = 54
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            var_41 = Creature.energyRight(o)
            var_44 = sec(-73)
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            if var_6 == var_6
                local var_46::Float64 = 0.963816
            end
            var_41 = var_41 * var_41
            var_42 = cot(if var_42 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_42
                    end)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_3 = if 127 >= abs(-7437274100385907254)
                    Int8(-7437274100385907254)
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_3 = (Int8)(var_18) | (Int8)(var_3)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.x)
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
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
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
        var_8 = -5319 > (Int16)(0)
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_47::Float64 = 0.648434
            local var_23::Int8 = 63
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
    end),[98,38,30,73,83,1,72,0,51],47.8472,0,3.81394,150811,0x00000070,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,16129=>16129,94=>94,108=>108),[440,750],6312,2,84),RpcApi.SimpleOrganism(0x00000000000ba70d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            var_52 = var_52 | var_52
            var_48 = div(var_48,if var_48 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_48
                    end)
            var_48 = csc(if var_47 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_47
                    end)
            var_52 = var_52
            var_48 = sin(-20095)
            var_47 = (Int8)(var_47) | (Int8)(var_47)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_52 = Creature.stepRight(o)
            var_52 = var_46 < (Int8)(1)
            Creature.stepLeft(o)
            Creature.eatRight(c,o,Int(var_46))
            return var_46
        end
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_51::Int16 = -15162
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_6 = string(0.569339)
            var_51 = (Int16)(var_51) | (Int16)(var_51)
            Creature.stepDown(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
            Creature.stepLeft(o)
            if var_6 == var_6
            end
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
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
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_3,16)
            end
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
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],10.3561,0,31.7664,146378,0x0000006d,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1591,368],55257,5,90),RpcApi.SimpleOrganism(0x00000000000bbc65,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_53::Int16 = 8521
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_36 = Int(7606)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idUp(o))
            var_36 = var_36 % if var_36 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_36
                    end
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepRight(o)
            var_37 = string(var_36)
            var_37 = string(-24)
            var_36 = Creature.energyLeft(o)
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_49 = var_49 % if var_49 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_49
                    end
            var_38 = var_36 > (Int64)(0)
            var_38 = Creature.stepRight(o)
            var_36 = Int(Creature.idRight(o))
            var_49 = Int16(o.pos.x)
            var_36 = Creature.energyLeft(o)
            var_36 = Int(Creature.idLeft(o))
            var_36 = (Int64)(var_36) << (Int64)(var_36)
            var_36 = Int(9027)
            var_49 = if isempty(var_37)
                    0
                else
                    1
                end
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_36 = if isempty(var_37)
                    0
                else
                    1
                end
            var_38 = isempty(var_37)
            var_49 = Int16(o.pos.y)
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idLeft(o))
            var_37 = string(0.208808)
            var_36 = Creature.energyRight(o)
            var_36 = Int(var_36)
            var_36 = Creature.energyUp(o)
            var_38 = var_38
            var_36 = Int(Creature.idUp(o))
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyRight(o)
            var_36 = Int(var_38)
            var_36 = Creature.energyLeft(o)
            var_49 = Int16(o.pos.y)
            var_36 = Creature.energyLeft(o)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "Cs4Qutm0"
            local var_40::Float64 = 0.48812
            local var_18::Int8 = 72
            var_3 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            var_40 = cos(var_4)
            var_40 = sec(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_40 = sqrt(abs(var_40))
            var_40 = Float64(var_18)
            var_18 = if isempty(var_41)
                    0
                else
                    1
                end
            var_4 = Int16(o.color)
            var_40 = sin(var_4)
            for i::Int8 = 1:div(var_18,16)
            end
            var_40 = sec(var_4)
            var_41 = string(var_41)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_48 = tan(var_2)
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_53 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_48 = pi
        var_2 = func_5(var_2,var_13)
        var_48 = sin(-2843419327107427339)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_48 = csc(if var_2 === (Int8)(0)
                    (Int8)(1)
                else
                    var_2
                end)
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_53 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        var_48 = cot(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_48 = pi
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            var_23 = (Int8)(var_23) $ (Int8)(var_23)
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.stepUp(o)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = if 127 >= abs(-1296047443035404326)
                    Int8(-1296047443035404326)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],4.72782,0,29.9153,146311,0x0000007b,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[880,560],603,68,130),RpcApi.SimpleOrganism(0x00000000000bba71,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_20 = var_20[1:if length(var_20) > length(var_20)
                            0
                        else
                            length(var_20) - length(var_20)
                        end]
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = var_4 * var_4
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
                Creature.stepDown(o)
            end
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
                var_25 = (Int64)(var_25) | (Int64)(var_25)
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        Creature.eatDown(c,o,Int(var_2))
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
        var_8 = Bool(abs(var_8 - var_8))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            var_28 = Float64(6746598103934035732)
            var_28 = tan(-4871)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = var_23 - var_23
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],81.4371,0,6.63445,146259,0x0000006e,Dict(0=>0,127=>127),[820,343],5601,89,77),RpcApi.SimpleOrganism(0x00000000000bbc8b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
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
                Creature.stepUp(o)
                Creature.stepRight(o)
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
    end),[98,38,30,73,83,1,72,0,51],1.52085,0,30.1616,142547,0x0000006e,Dict(0=>0,127=>127),[842,365],222,50,91),RpcApi.SimpleOrganism(0x00000000000bb86c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_55::Int64 = 2322594414994043420
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            local var_56::Int64 = -3159049554807657162
            var_43 = 24 < (Int8)(1)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_53::Float64 = 0.649351
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_39 = var_39 & var_39
            var_53 = log(if var_53 > (Float64)(0)
                        var_53
                    else
                        abs(if var_53 !== 0.0
                                var_53
                            else
                                1.0
                            end)
                    end)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_41 < (Int64)(1)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_39 = var_48 > (Int8)(0)
            var_53 = log(if var_41 > (Int64)(0)
                        var_41
                    else
                        abs(if var_53 !== 0.0
                                var_53
                            else
                                1.0
                            end)
                    end)
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_53 = Float64(var_41)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_41)
                    Int16(var_41)
                else
                    32767
                end
            var_41 = Creature.energyLeft(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_39 = var_53 > (Float64)(0)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyRight(o)
            var_4 = var_4 * var_4
            var_39 = var_53 < (Float64)(1)
            var_53 = cot(if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_53 = var_53 + var_53
            for i::Int8 = 1:div(var_48,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_53 = log(if var_41 > (Int64)(0)
                        var_41
                    else
                        abs(if var_53 !== 0.0
                                var_53
                            else
                                1.0
                            end)
                    end)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_8 = var_55 < (Int64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_8 = 0.399852 > (Float64)(0)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepDown(o)
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_55 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_49 = (Int16)(var_49) >> (Int16)(var_49)
        if var_8 == var_8
            Creature.stepLeft(o)
        end
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        var_49 = Int16(o.pos.y)
        Creature.eatLeft(c,o,Int(var_2))
        var_49 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        var_49 = var_49 + var_49
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(30852)
                    Int8(30852)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],88.6108,0,31.8397,139233,0x00000070,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[227,222],10772,4,97),RpcApi.SimpleOrganism(0x00000000000bbaab,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_56::Bool = false
            local var_55::String = "SzA3uLC0"
            local var_52::Bool = true
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cos(1417325699522058963)
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            var_47 = var_46 * var_47
            var_47 = if 127 >= abs(var_47)
                    Int8(var_47)
                else
                    127
                end
            var_52 = var_46 < (Int8)(1)
            var_48 = cos(-12988)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatDown(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.eatLeft(c,o,Int(var_42))
            var_42 = if isempty(var_43)
                    0
                else
                    1
                end
            var_42 = (Int8)(var_42) $ (Int8)(var_42)
            return var_42
        end
        function func_40(var_39::Bool=false)
            if var_39 >= var_39
                Creature.stepDown(o)
            end
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_51 = Int16(o.pos.y)
            Creature.stepRight(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
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
            var_4 = Int16(o.color)
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
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
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
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatUp(c,o,Int(var_2))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.462948,0,55.459,138794,0x0000006f,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1000,712],5021,50,93),RpcApi.SimpleOrganism(0x00000000000bbbd6,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_41::Int8 = 31
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
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_4 = var_4 + var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
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
        var_8 = isempty(var_38)
        var_13 = Int16(o.color)
        var_36 = string(var_8)
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepLeft(o)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(o.color)
        var_38 = var_36[1:if length(var_38) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_38)
                    end]
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],36.8952,0,10.6664,134382,0x0000006b,Dict(1=>1,47=>47,32=>32,39=>39,46=>46,85=>85,0=>0,9=>9,55=>55,42=>42,104=>104,118=>118,57=>57,111=>111,31=>31,120=>120,112=>112,48=>48,121=>121,26=>26,102=>102,65=>65,24=>24,119=>119,72=>72,28=>28,127=>127,13=>13,56=>56,94=>94,115=>115,30=>30),[118,465],2032,50,64),RpcApi.SimpleOrganism(0x00000000000bbc7d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_36::Int8 = 73
            Creature.eatUp(c,o,Int(var_36))
            Creature.eatLeft(c,o,Int(var_36))
            Creature.eatUp(c,o,Int(var_36))
            var_36 = if 127 >= abs(1498102771338483563)
                    Int8(1498102771338483563)
                else
                    127
                end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.y)
            Creature.stepRight(o)
            var_17 = Creature.energyUp(o)
            if var_3 > var_3
                Creature.stepLeft(o)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
                local var_37::Bool = true
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
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
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_8 = Creature.stepLeft(o)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.stepDown(o)
            var_23 = if 127 >= abs(-4920416989042279517)
                    Int8(-4920416989042279517)
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],35.444,0,76.7568,132919,0x0000006b,Dict(0=>0,127=>127),[982,502],361,65,68),RpcApi.SimpleOrganism(0x00000000000bae46,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 8079688643533571310
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_6 = var_6 * var_6
            var_43 = sec(var_41)
            var_41 = Creature.energyLeft(o)
            var_41 = Creature.energyLeft(o)
            var_41 = Int(Creature.idRight(o))
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
                local var_44::String = "tcCUevPl"
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
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_8 = Creature.stepRight(o)
        var_8 = 580415503114636981 < (Int64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = !var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.stepLeft(o)
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
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
    end),[98,38,30,73,83,1,72,0,51],17.4377,0,6.93197,132558,0x0000006f,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,94=>94,108=>108),[3,176],36759,48,89),RpcApi.SimpleOrganism(0x00000000000badff,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_44::Int64 = -8566407405178212018
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_41 = Creature.energyRight(o)
            Creature.stepDown(o)
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_41 = Int(Creature.idDown(o))
            var_41 = var_41 * var_41
            var_41 = Creature.energyUp(o)
            Creature.stepDown(o)
            var_42 = tan(var_41)
            var_42 = cot(if var_42 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_42
                    end)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_43::Bool = true
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
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
        var_8 = -5319 > (Int16)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
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
    end),[98,38,30,73,83,1,72,0,51],78.4469,0,18.825,132432,0x0000006f,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,94=>94,108=>108),[347,876],37469,26,89),RpcApi.SimpleOrganism(0x00000000000ba62f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_53::String = "5pFQCa4o"
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_43 = Bool(abs(var_43 - var_43))
            var_43 = isempty("vdU0oiZd")
            var_43 = var_43 & var_43
            var_42 = Creature.energyLeft(o)
            var_43 = Creature.stepLeft(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_49::Int16 = 2799
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_38 = var_38 * var_38
            var_38 = Creature.stepRight(o)
            var_38 = Creature.stepLeft(o)
            var_38 = Creature.stepLeft(o)
            var_38 = !var_38
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Int(Creature.idRight(o))
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = Int16(o.pos.x)
            var_38 = var_38 * var_38
            var_36 = Creature.energyDown(o)
            var_36 = Int(Creature.idLeft(o))
            var_36 = Creature.energyLeft(o)
            var_38 = -127 > (Int8)(0)
            var_49 = Int16(o.pos.y)
            var_38 = var_38
            var_38 = isempty(var_37)
            var_36 = Int(Creature.idUp(o))
            var_49 = (Int16)(var_49) & (Int16)(var_49)
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_47 = Int16(o.pos.y)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Creature.energyLeft(o)
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
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
                local var_54::Bool = true
            end
            var_40 = sec(var_4)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_40 = tan(var_4)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_51 = var_2 % if var_2 === (Int8)(0)
                    (Int8)(1)
                else
                    var_2
                end
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_8 = var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],0.283085,0,93.5492,132357,0x00000076,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[862,940],57478,50,118),RpcApi.SimpleOrganism(0x00000000000bbafa,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            Creature.stepRight(o)
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
    end),[98,38,30,73,83,1,72,0,51],1.96462,0,27.3316,130949,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[505,159],4230,12,87),RpcApi.SimpleOrganism(0x00000000000bba89,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_31 = var_3 - var_3
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_3 > var_3
                Creature.stepRight(o)
                Creature.stepDown(o)
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
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_8 = (Bool)(var_8) | (Bool)(var_8)
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],74.8564,0,94.6152,129757,0x0000006f,Dict(0=>0,127=>127),[835,361],5361,72,92),RpcApi.SimpleOrganism(0x00000000000bbbcf,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            var_27 = var_27 + var_27
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            if var_17 < var_17
            end
            Creature.stepUp(o)
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
            var_19 = Int(round(0.293498))
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_21 = if 32767 >= abs(var_19)
                    Int16(var_19)
                else
                    32767
                end
            var_19 = (Int64)(var_19) << (Int64)(var_19)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_19 = (Int64)(var_19) $ (Int64)(var_19)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_21 = if 32767 >= abs(var_3)
                    Int16(var_3)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
                local var_36::Int64 = -6435703036904900459
                var_36 = Creature.energyUp(o)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = Int(false)
            var_19 = var_19 + var_19
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idDown(o))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
            var_19 = (Int64)(var_19) | (Int64)(var_19)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            o.mem[var_21] = var_21
            var_21 = (Int16)(var_21) & (Int16)(var_21)
            var_19 = Int(var_19)
            var_21 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            for i::Int8 = 1:div(var_3,16)
            end
            var_19 = Creature.energyLeft(o)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_19 = Int(Creature.idRight(o))
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
        var_13 = var_13 + var_13
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = (Int16)(var_13) << (Int16)(var_13)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
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
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
            local var_31::Bool = true
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        return true
    end),[98,38,30,73,83,1,72,0,51],95.3017,0,35.33,129524,0x0000006d,Dict(0=>0,119=>119,127=>127,1=>1),[557,624],2101,69,91),RpcApi.SimpleOrganism(0x00000000000bb229,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_43::Float64 = 0.356778
            local var_41::Int64 = 8079688643533571310
            var_42 = sec(var_41)
            var_6 = string(717)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            Creature.stepUp(o)
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = Creature.stepUp(o)
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
        end
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
    end),[98,38,30,73,83,1,72,0,51],57.7922,0,58.3763,127655,0x0000006f,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,94=>94,108=>108),[499,422],26810,6,83),RpcApi.SimpleOrganism(0x00000000000bb67f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_42 = Creature.energyDown(o)
            var_43 = var_50 > (Float64)(0)
            var_43 = Creature.stepRight(o)
            var_43 = 31727 > (Int16)(0)
            var_43 = Creature.stepRight(o)
            var_42 = Creature.energyRight(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_49::Int16 = 2799
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyRight(o)
            var_38 = var_38 * var_38
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepRight(o)
            var_38 = Creature.stepLeft(o)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Int(Creature.idRight(o))
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = Int16(o.pos.x)
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_38 = var_38 * var_38
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idLeft(o))
            var_47 = div(var_47,if var_47 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_47
                    end)
            if var_49 >= var_49
            end
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_47 = Int16(o.pos.y)
            var_36 = Creature.energyLeft(o)
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
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = var_4 - var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_48 = cos(28976)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.88625,0,34.002,126943,0x00000076,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[867,940],15711,50,115),RpcApi.SimpleOrganism(0x00000000000bbbe9,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(-322505371002813323)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.color)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = var_8 | var_8
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_35 = log(if var_2 > (Int8)(0)
                    var_2
                else
                    abs(if var_35 !== 0.0
                            var_35
                        else
                            1.0
                        end)
                end)
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            Creature.eatLeft(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_35 = cos(22612)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = tan(4906219643694039351)
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
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
            var_23 = var_23 - var_23
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = func_5(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],11.6262,0,26.0429,125727,0x0000006c,Dict(0=>0,127=>127),[812,342],1843,10,77),RpcApi.SimpleOrganism(0x00000000000baa69,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_47))
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepLeft(o)
            if var_39 >= var_39
            end
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_51 = Int16(o.pos.y)
            Creature.stepRight(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            Creature.stepDown(o)
            var_51 = Int16(o.pos.y)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
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
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.91359,0,69.1679,124957,0x0000006e,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1597,258],46654,50,86),RpcApi.SimpleOrganism(0x00000000000badf6,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_52::Bool = true
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cos(1417325699522058963)
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            var_52 = var_46 < (Int8)(1)
            var_48 = cos(-12988)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            var_48 = tan(var_48)
            var_52 = (Bool)(var_52) $ (Bool)(var_52)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            local var_57::Int64 = 1732340978888093502
            var_57 = Int(true)
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepLeft(o)
            if var_39 >= var_39
                local var_56::Bool = false
            end
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_51 = Int16(o.pos.y)
            Creature.stepRight(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            Creature.stepDown(o)
            var_51 = Int16(o.pos.y)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            o.mem[var_4] = var_4
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
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
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
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        if var_38 != var_38
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],24.3862,0,32.9748,122253,0x0000006f,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1421,187],37559,14,92),RpcApi.SimpleOrganism(0x00000000000bb10e,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_2 = func_5(var_2,var_13)
        var_8 = isempty(var_38)
        var_13 = Int16(o.color)
        var_8 = Creature.stepLeft(o)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_38 = var_36[1:if length(var_38) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_38)
                    end]
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
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.156491,0,77.518,120304,0x0000006b,Dict(47=>47,32=>32,121=>121,40=>40,122=>122,11=>11,39=>39,46=>46,85=>85,0=>0,26=>26,102=>102,42=>42,58=>58,104=>104,65=>65,51=>51,24=>24,119=>119,103=>103,72=>72,28=>28,118=>118,57=>57,111=>111,127=>127,31=>31,13=>13,120=>120,112=>112,48=>48,56=>56,94=>94,115=>115,30=>30),[310,259],29640,50,61),RpcApi.SimpleOrganism(0x00000000000bb342,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_3 = (Int8)(var_3) | (Int8)(var_3)
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
        var_8 = isempty(var_38)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepLeft(o)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_38 = var_36[1:if length(var_38) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_38)
                    end]
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
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],2.27836,0,2.99682,119490,0x0000006b,Dict(1=>1,47=>47,32=>32,39=>39,46=>46,85=>85,0=>0,9=>9,55=>55,42=>42,104=>104,118=>118,57=>57,111=>111,31=>31,120=>120,112=>112,48=>48,113=>113,121=>121,26=>26,102=>102,65=>65,119=>119,72=>72,28=>28,127=>127,13=>13,56=>56,94=>94,115=>115,30=>30),[344,569],24000,50,62),RpcApi.SimpleOrganism(0x00000000000bbbce,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            local var_52::Bool = true
            Creature.eatRight(c,o,Int(var_46))
            var_52 = var_52
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatUp(c,o,Int(var_47))
            var_48 = cos(1417325699522058963)
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            Creature.eatUp(c,o,Int(var_46))
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            Creature.eatDown(c,o,Int(var_47))
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            var_43 = var_43 * var_43
            return var_42
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_51 = Int16(o.pos.y)
            Creature.stepRight(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_51 = Int16(o.pos.y)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_57::Int16 = 28974
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
            end
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
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],62.6156,0,94.7774,118693,0x0000006f,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1412,284],2112,3,84),RpcApi.SimpleOrganism(0x00000000000bbaa8,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cos(1417325699522058963)
            Creature.eatUp(c,o,Int(var_46))
            var_48 = pi
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_47))
            Creature.stepRight(o)
            Creature.eatLeft(c,o,Int(var_46))
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            for i::Int8 = 1:div(var_42,16)
            end
            var_43 = string(15934)
            var_43 = string(7101846964130081282)
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepUp(o)
            if var_39 >= var_39
            end
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(-94)
            Creature.stepRight(o)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
            Creature.stepRight(o)
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
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
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
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = if 127 >= abs(7764)
                Int8(7764)
            else
                127
            end
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = var_38 * var_38
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.70451,0,65.812,117004,0x0000006e,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[394,279],5052,10,90),RpcApi.SimpleOrganism(0x00000000000bb33d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_38::Bool = true
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
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
                Creature.stepUp(o)
                Creature.stepRight(o)
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
    end),[98,38,30,73,83,1,72,0,51],89.3686,0,74.1965,116130,0x0000006e,Dict(0=>0,127=>127),[836,364],24050,46,92),RpcApi.SimpleOrganism(0x00000000000ba55a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_53::Int16 = 8521
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            local var_54::String = "p2THwwqO"
            var_42 = Creature.energyDown(o)
            var_42 = Int(Creature.idUp(o))
            var_42 = Creature.energyDown(o)
            if var_42 != var_42
            end
            var_43 = Creature.stepRight(o)
            var_43 = isempty(var_54)
            var_43 = Creature.stepLeft(o)
            var_43 = Creature.stepDown(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_36 = Int(7606)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = var_36 * var_36
            var_36 = Creature.energyLeft(o)
            var_38 = 0.781132 < (Float64)(1)
            var_38 = Creature.stepRight(o)
            var_37 = string(var_36)
            var_38 = Creature.stepLeft(o)
            var_36 = Creature.energyLeft(o)
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_49 = var_49 % if var_49 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_49
                    end
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_38 = var_36 > (Int64)(0)
            var_38 = Creature.stepRight(o)
            var_36 = Int(Creature.idRight(o))
            var_49 = Int16(o.pos.x)
            var_36 = Creature.energyLeft(o)
            var_36 = (Int64)(var_36) << (Int64)(var_36)
            var_49 = if isempty(var_37)
                    0
                else
                    1
                end
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_49 = Int16(o.pos.y)
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idLeft(o))
            var_37 = string(0.208808)
            var_36 = Creature.energyLeft(o)
            var_36 = Creature.energyUp(o)
            var_38 = var_38
            var_36 = Int(Creature.idUp(o))
            var_36 = Creature.energyUp(o)
            var_36 = Int(var_38)
            var_36 = Creature.energyLeft(o)
            var_49 = Int16(o.pos.y)
            var_36 = Creature.energyRight(o)
            var_38 = 0.133179 > (Float64)(0)
            var_36 = Creature.energyLeft(o)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "Cs4Qutm0"
            local var_40::Float64 = 0.48812
            local var_18::Int8 = 72
            var_3 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            var_40 = cos(var_4)
            var_40 = sec(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_40 = Float64(var_18)
            var_4 = Int16(o.color)
            var_40 = sin(var_4)
            for i::Int8 = 1:div(var_18,16)
            end
            var_40 = sec(var_4)
            var_41 = string(var_41)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_53 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_2 = func_5(var_2,var_13)
        var_48 = sin(-2843419327107427339)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        for i::Int8 = 1:div(var_33,16)
        end
        var_48 = csc(if var_2 === (Int8)(0)
                    (Int8)(1)
                else
                    var_2
                end)
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_53 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_48 = pi
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],93.2864,0,13.9583,115039,0x00000079,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[876,940],59608,50,131),RpcApi.SimpleOrganism(0x00000000000bb107,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
            var_20 = var_20 * var_20
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_43::Float64 = 0.356778
            local var_41::Int64 = 8079688643533571310
            var_42 = sec(var_41)
            Creature.stepRight(o)
            var_6 = var_6 * var_6
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_41 = Creature.energyLeft(o)
            var_41 = var_41 - var_41
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
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
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
                local var_44::Int16 = 6116
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = (Bool)(var_8) & (Bool)(var_8)
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
        end
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
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],99.5212,0,45.7228,114855,0x0000006f,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,94=>94,108=>108),[1414,180],29709,42,87),RpcApi.SimpleOrganism(0x00000000000bbc86,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_47(var_46::Int16=3925)
            local var_49::Float64 = 0.846529
            var_49 = csc(if 5717631086844629287 === (Int64)(0)
                        (Int64)(1)
                    else
                        5717631086844629287
                    end)
            var_49 = csc(if 110 === (Int8)(0)
                        (Int8)(1)
                    else
                        110
                    end)
            if var_46 !== var_46
                Creature.stepDown(o)
            end
            return var_46
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(0.364221)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_50::Int64 = -7769369095465066050
            local var_41::Int64 = 8079688643533571310
            var_42 = pi
            var_42 = sec(var_41)
            var_41 = Creature.energyLeft(o)
            var_50 = (Int64)(var_41) $ (Int64)(var_41)
            var_41 = Int(Creature.idUp(o))
            var_41 = Int(Creature.idUp(o))
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            var_41 = Int(Creature.idDown(o))
            var_41 = Creature.energyUp(o)
            var_50 = (Int64)(var_50) >> (Int64)(var_41)
            var_41 = Int(-126)
            var_42 = tan(var_41)
            var_42 = sec(var_41)
            var_41 = Int(Creature.idLeft(o))
            if var_42 == var_42
                local var_51::Int16 = -529
                Creature.stepUp(o)
            end
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            Creature.stepDown(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            return var_3
        end
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
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        var_36 = func_7(var_38)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = isempty(var_36)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_8 = Creature.stepUp(o)
        Creature.eatUp(c,o,Int(var_2))
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
            var_23 = func_5(var_23)
            var_23 = var_23 * var_23
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],46.8938,0,16.6169,114029,0x00000070,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,94=>94,108=>108),[600,27],271,71,110),RpcApi.SimpleOrganism(0x00000000000bb737,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_43::Int8 = 54
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_44::Float64 = 0.562453
            var_41 = Creature.energyRight(o)
            var_44 = var_44 - var_44
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_41 = var_41 * var_41
            var_42 = cot(if var_42 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_42
                    end)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
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
        var_8 = -5319 > (Int16)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
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
    end),[98,38,30,73,83,1,72,0,51],3.68751,0,23.7977,112834,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[480,196],13869,7,83),RpcApi.SimpleOrganism(0x00000000000bbab6,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_57(var_55::Float64=0.998713,var_56::String="uMyBxVcY")
            var_55 = pi
            var_55 = var_55 % if var_55 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_55
                    end
            return var_55
        end
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            local var_60::Bool = false
            var_44 = var_44
            var_43 = (Bool)(var_43) $ (Bool)(var_44)
            var_44 = 83 < (Int8)(1)
            var_44 = (Bool)(var_43) $ (Bool)(var_43)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
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
            local var_53::Float64 = 0.649351
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_41 = Creature.energyDown(o)
            var_41 = div(var_41,if var_41 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_41
                    end)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_41 = Creature.energyRight(o)
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_39 = var_53 > (Float64)(0)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_41 = Creature.energyRight(o)
            var_53 = log(if var_53 > (Float64)(0)
                        var_53
                    else
                        abs(if var_53 !== 0.0
                                var_53
                            else
                                1.0
                            end)
                    end)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_53 = log(if var_18 > (Int8)(0)
                        var_18
                    else
                        abs(if var_53 !== 0.0
                                var_53
                            else
                                1.0
                            end)
                    end)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_49 = Int16(o.color)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepUp(o)
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_8 = 0.399852 > (Float64)(0)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        if var_8 !== var_8
        end
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_49 = (Int16)(var_49) >> (Int16)(var_49)
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        var_49 = Int16(o.pos.y)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        var_49 = var_49 + var_49
        var_8 = Creature.stepUp(o)
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(30852)
                    Int8(30852)
                else
                    127
                end
            Creature.eatUp(c,o,Int(var_23))
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],4.30104,0,27.8468,112621,0x00000070,Dict(47=>47,-4430=>-4430,121=>121,0=>0,102=>102,119=>119,103=>103,72=>72,127=>127,111=>111,112=>112,48=>48,108=>108),[594,841],4912,50,89),RpcApi.SimpleOrganism(0x00000000000bab73,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_42 = Creature.energyDown(o)
            var_43 = 31727 > (Int16)(0)
            var_43 = Creature.stepRight(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_49::Int16 = 2799
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyRight(o)
            var_38 = var_38 * var_38
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepRight(o)
            var_38 = Creature.stepLeft(o)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Int(Creature.idRight(o))
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = Int16(o.pos.x)
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_38 = !var_38
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idLeft(o))
            var_47 = div(var_47,if var_47 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_47
                    end)
            if var_49 >= var_49
            end
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_36 = Creature.energyLeft(o)
            var_38 = var_38
            var_36 = Int(Creature.idUp(o))
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_47 = Int16(o.pos.y)
            var_36 = Creature.energyLeft(o)
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
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_40 = tan(5940923735371674980)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = var_4 - var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_40 = cos(-3584130168200709586)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            var_52 = var_52 * var_52
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],42.072,0,48.4701,112182,0x00000076,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[863,940],43994,22,114),RpcApi.SimpleOrganism(0x00000000000bbb41,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            Creature.stepRight(o)
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
        var_8 = Creature.stepUp(o)
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
    end),[98,38,30,73,83,1,72,0,51],1.96462,0,99.5391,111873,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[522,810],3521,50,86),RpcApi.SimpleOrganism(0x00000000000bbc33,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_40::Bool = true
            var_40 = (Bool)(var_40) $ (Bool)(var_40)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_36::Bool = false
            var_36 = Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Int16 = 16386
            local var_18::Int8 = 72
            var_31 = var_3 - var_3
            var_39 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_39 = (Int16)(var_39) | (Int16)(var_39)
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = if 32767 >= abs(-6102568736861897352)
                    Int16(-6102568736861897352)
                else
                    32767
                end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
            var_28 = Float64(8308804046738285107)
            var_28 = var_28 - var_28
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = var_23 - var_23
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],89.3613,0,81.2146,111859,0x0000006c,Dict(0=>0,127=>127),[787,334],1101,10,76),RpcApi.SimpleOrganism(0x00000000000bb0c0,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_43::Int8 = 54
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_44::Float64 = 0.562453
            var_41 = Creature.energyRight(o)
            var_44 = var_44 - var_44
            var_42 = sec(var_41)
            var_6 = var_6 * var_6
            var_41 = Int(Creature.idRight(o))
            var_41 = var_41 * var_41
            var_42 = cot(if var_42 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_42
                    end)
            var_44 = sin(-8483)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
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
        var_8 = -5319 > (Int16)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
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
    end),[98,38,30,73,83,1,72,0,51],81.4199,0,87.5451,109998,0x0000006e,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,109=>109,94=>94,108=>108,110=>110,127=>127),[483,195],30420,50,84),RpcApi.SimpleOrganism(0x00000000000bbb16,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_3 = (Int8)(var_3) | (Int8)(var_3)
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
        var_8 = isempty(var_38)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepLeft(o)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_38 = var_36[1:if length(var_38) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_38)
                    end]
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
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],95.0054,0,63.6379,106258,0x0000006b,Dict(1=>1,47=>47,32=>32,39=>39,46=>46,85=>85,0=>0,9=>9,55=>55,42=>42,104=>104,118=>118,57=>57,111=>111,31=>31,120=>120,112=>112,48=>48,121=>121,26=>26,102=>102,65=>65,119=>119,72=>72,28=>28,127=>127,13=>13,86=>86,56=>56,94=>94,115=>115,30=>30),[326,4],3952,50,63),RpcApi.SimpleOrganism(0x00000000000bb7d8,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Float64 = 0.830444
            local var_35::Float64 = 0.681884
            var_35 = cot(if -49 === (Int8)(0)
                        (Int8)(1)
                    else
                        -49
                    end)
            var_37 = cos(var_35)
            Creature.stepRight(o)
            var_37 = sin(-14)
            var_35 = cot(if 8453116806082131768 === (Int64)(0)
                        (Int64)(1)
                    else
                        8453116806082131768
                    end)
            if var_20 != var_20
            end
            Creature.stepDown(o)
            var_37 = Float64(var_35)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
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
                Creature.stepUp(o)
                Creature.stepRight(o)
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
        end
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],69.8658,0,81.3214,104741,0x0000006e,Dict(0=>0,127=>127),[838,368],12260,50,92),RpcApi.SimpleOrganism(0x00000000000bb025,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            local var_52::Bool = true
            var_52 = var_52 | var_52
            var_48 = div(var_48,if var_48 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_48
                    end)
            var_48 = csc(if var_47 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_47
                    end)
            var_52 = Creature.stepRight(o)
            Creature.eatRight(c,o,Int(var_46))
            var_48 = sec(-2671568694035507399)
            Creature.eatRight(c,o,Int(var_46))
            var_52 = Creature.stepRight(o)
            Creature.eatRight(c,o,Int(var_46))
            return var_46
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_51::Int16 = -15162
            local var_56::Bool = false
            var_51 = (Int16)(var_51) | (Int16)(var_51)
            var_51 = Int16(o.color)
            Creature.stepDown(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            if var_6 == var_6
                Creature.stepRight(o)
            end
            var_51 = var_51 % if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end
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
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_3,16)
            end
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
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.841365,0,43.5541,104585,0x0000006f,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[768,463],31969,50,89),RpcApi.SimpleOrganism(0x00000000000bbbd2,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_55::Int64 = 2322594414994043420
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            var_43 = var_43 | var_43
            var_43 = -443838446659964022 > (Int64)(0)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            if var_20 === var_20
                local var_56::Float64 = 0.564212
                var_56 = sec(32412)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_53::Float64 = 0.649351
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_41 = Creature.energyRight(o)
            var_39 = var_39 & var_39
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_39 = var_48 > (Int8)(0)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_53 = Float64(var_41)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_41)
                    Int16(var_41)
                else
                    32767
                end
            var_41 = Creature.energyLeft(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_39 = var_53 > (Float64)(0)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_53 = sec(var_53)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyRight(o)
            var_39 = var_53 < (Float64)(1)
            var_39 = var_39 * var_39
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_53 = var_53 + var_53
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_8 = var_55 < (Int64)(1)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_8 = 0.399852 > (Float64)(0)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepDown(o)
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_49 = (Int16)(var_49) >> (Int16)(var_49)
        if var_8 == var_8
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        var_49 = Int16(o.pos.y)
        Creature.eatLeft(c,o,Int(var_2))
        var_49 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_55 = div(var_55,if var_55 === (Int64)(0)
                    (Int64)(1)
                else
                    var_55
                end)
        var_49 = var_49 + var_49
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],86.8837,0,31.8349,104565,0x00000070,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[1562,281],2070,96,96),RpcApi.SimpleOrganism(0x00000000000bb0c2,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_63(var_60::Float64=0.523027,var_61::Float64=0.391923,var_62::Bool=true)
            return var_60
        end
        local var_56::Bool = false
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_57::Int64 = 6066664877779026625
            local var_55::String = "SzA3uLC0"
            local var_52::Bool = true
            var_48 = pi
            Creature.eatRight(c,o,Int(var_46))
            var_47 = (Int8)(var_46) $ (Int8)(var_47)
            var_52 = Creature.stepDown(o)
            var_57 = (Int64)(var_57) | (Int64)(var_57)
            var_48 = cos(1417325699522058963)
            var_52 = var_48 < (Float64)(1)
            var_52 = var_46 < (Int8)(1)
            if var_52 > var_52
            end
            var_48 = log(if var_46 > (Int8)(0)
                        var_46
                    else
                        abs(if var_48 !== 0.0
                                var_48
                            else
                                1.0
                            end)
                    end)
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.eatLeft(c,o,Int(var_42))
            for i::Int8 = 1:div(var_42,16)
            end
            Creature.stepDown(o)
            return var_42
        end
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_6 = var_6[1:if length(var_6) > length(var_6)
                            0
                        else
                            length(var_6) - length(var_6)
                        end]
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_3)
                    Int16(var_3)
                else
                    32767
                end
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
                local var_59::Int16 = 24953
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_17 = Creature.energyUp(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_3 = (Int8)(var_3) | (Int8)(var_3)
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
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            o.mem[var_4] = var_4
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
        Creature.eatUp(c,o,Int(var_2))
        var_54 = Creature.stepLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 0.0276347 < (Float64)(1)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_58::Int8 = -64
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = div(var_23,if var_23 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_23
                    end)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],63.8824,0,65.5326,103366,0x00000070,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[36,303],30402,23,88),RpcApi.SimpleOrganism(0x00000000000bb727,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_51::Int8 = -85
        local var_48::Float64 = 0.7965
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_42 = Creature.energyDown(o)
            var_43 = var_50 > (Float64)(0)
            var_43 = Creature.stepRight(o)
            var_43 = 31727 > (Int16)(0)
            var_43 = Creature.stepRight(o)
            var_42 = Creature.energyRight(o)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_49::Int16 = 2799
            var_38 = (Bool)(var_38) | (Bool)(var_38)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyRight(o)
            var_38 = var_38 * var_38
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepRight(o)
            var_38 = Creature.stepLeft(o)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_49 = (Int16)(var_49) | (Int16)(var_49)
            var_36 = Int(Creature.getEnergy(o,Int(var_49),Int(var_49)))
            var_36 = Int(Creature.idRight(o))
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_49 = Int16(o.pos.x)
            var_47 = if 32767 >= abs(var_36)
                    Int16(var_36)
                else
                    32767
                end
            var_38 = var_38 * var_38
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idLeft(o))
            var_38 = Creature.stepLeft(o)
            var_47 = div(var_47,if var_47 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_47
                    end)
            if var_49 >= var_49
            end
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_36 = Creature.energyLeft(o)
            var_38 = Creature.stepUp(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyUp(o)
            var_49 = Int16(o.pos.y)
            var_47 = Int16(o.pos.y)
            var_36 = Creature.energyLeft(o)
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
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = tan(var_3)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = var_4 - var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_18 = (Int8)(var_3) | (Int8)(var_18)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_48 = csc(if var_48 === (Float64)(0)
                    (Float64)(1)
                else
                    var_48
                end)
        var_48 = cos(28976)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_48 < (Float64)(1)
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        if var_8 <= var_8
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_48 = tan(20580)
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
            var_46 = cot(if -101 === (Int8)(0)
                        (Int8)(1)
                    else
                        -101
                    end)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_52::String = "CIPAgBnT"
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            var_23 = if 127 >= abs(29061)
                    Int8(29061)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],1.88625,0,34.002,102305,0x00000076,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[868,940],14028,38,116),RpcApi.SimpleOrganism(0x00000000000bb7e2,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            if var_20 <= var_20
            end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_41 = Int(Creature.idRight(o))
            Creature.stepDown(o)
            var_6 = var_6 * var_6
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_18 = (Int8)(var_18) $ (Int8)(var_3)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
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
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_18 = (Int8)(var_18) | (Int8)(var_18)
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
        var_8 = Creature.stepUp(o)
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
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(28383)
                    Int8(28383)
                else
                    127
                end
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_38 = var_36[1:if length(var_36) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_36)
                    end]
        return true
    end),[98,38,30,73,83,1,72,0,51],76.7133,0,39.596,101650,0x00000070,Dict(109=>109,0=>0,119=>119,110=>110,127=>127,111=>111,13=>13,120=>120,117=>117,112=>112,94=>94,108=>108),[517,401],12158,81,82)]