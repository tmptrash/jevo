RpcApi.SimpleOrganism[RpcApi.SimpleOrganism(0x00000000000b21da,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            var_43 = Creature.stepLeft(o)
            var_43 = !var_43
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        var_38 = string(var_2)
        o.mem[var_49] = var_49
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        if var_38 != var_38
            local var_53::Int16 = -12628
            var_53 = var_53 + var_53
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],27.8565,0,98.2147,303026,0x0000006d,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[575,359],2743,26,80),RpcApi.SimpleOrganism(0x00000000000b2187,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],73.3846,0,78.5619,285028,0x0000006b,Dict(47=>47,107=>107,39=>39,46=>46,0=>0,102=>102,1001=>1001,119=>119,103=>103,72=>72,127=>127,111=>111,13=>13,120=>120,48=>48,56=>56),[511,930],3573,50,67),RpcApi.SimpleOrganism(0x00000000000b207e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = Creature.stepDown(o)
            var_38 = 0.922211 > (Float64)(0)
            var_38 = var_36 > (Int64)(0)
            var_37 = string(5228)
            var_36 = Creature.energyDown(o)
            var_38 = (Bool)(var_38) & (Bool)(var_38)
            var_37 = var_37 * var_37
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::Float64 = 0.350038
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_41 = cot(if var_41 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_41
                    end)
            var_4 = var_4 * var_4
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = var_2 < (Int8)(1)
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        var_8 = -7594 > (Int16)(0)
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
        for i::Int8 = 1:div(var_2,16)
            local var_40::Float64 = 0.775569
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_8 = Bool(abs(var_8 - var_8))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],60.8776,0,73.4827,276199,0x0000006b,Dict(830=>830,848=>848,811=>811,825=>825,844=>844,818=>818,253=>253,849=>849,828=>828,252=>252,852=>852,815=>815,835=>835,820=>820,817=>817,853=>853,833=>833,814=>814,816=>816,819=>819,823=>823,127=>127,836=>836,854=>854,858=>858,834=>834,851=>851,824=>824,0=>0,838=>838,831=>831,860=>860,813=>813,855=>855,847=>847,829=>829,842=>842,822=>822,812=>812,821=>821,857=>857,826=>826,843=>843,859=>859,845=>845,837=>837,832=>832,827=>827,846=>846,856=>856,840=>840,841=>841,861=>861,850=>850,839=>839),[861,256],6226,4,73),RpcApi.SimpleOrganism(0x00000000000b224b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            o.mem[var_4] = var_4
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],81.8533,0,78.2306,270633,0x0000006b,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,111=>111,127=>127,13=>13,120=>120,48=>48,56=>56),[510,282],1612,88,65),RpcApi.SimpleOrganism(0x00000000000b18fc,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_35::Float64 = 0.681884
            Creature.stepUp(o)
            var_35 = pi
            var_35 = cos(-21139)
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
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
            end
            var_4 = Int16(o.pos.x)
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
    end),[98,38,30,73,83,1,72,0,51],14.8464,0,14.8393,268938,0x0000006b,Dict(0=>0,127=>127),[787,329],25446,74,74),RpcApi.SimpleOrganism(0x00000000000b1ecd,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_36 = (Int64)(var_36) & (Int64)(var_36)
            var_36 = div(var_36,if var_36 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_36
                    end)
            var_38 = Creature.stepDown(o)
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
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_18,16)
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
        Creature.eatDown(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
            local var_40::Float64 = 0.775569
            var_40 = sin(-6454017630186476401)
        end
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
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],87.1467,0,96.4736,246473,0x0000006b,Dict(830=>830,848=>848,811=>811,825=>825,844=>844,818=>818,849=>849,828=>828,852=>852,815=>815,835=>835,820=>820,817=>817,853=>853,833=>833,814=>814,816=>816,819=>819,823=>823,127=>127,836=>836,854=>854,858=>858,834=>834,851=>851,824=>824,0=>0,838=>838,831=>831,860=>860,813=>813,855=>855,847=>847,829=>829,842=>842,822=>822,812=>812,857=>857,862=>862,821=>821,826=>826,843=>843,859=>859,863=>863,845=>845,837=>837,832=>832,827=>827,846=>846,856=>856,840=>840,841=>841,861=>861,850=>850,839=>839),[864,368],10557,2,63),RpcApi.SimpleOrganism(0x00000000000b2208,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_37::Int8 = 86
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_35::Bool = false
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
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            o.mem[var_4] = var_4
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
        var_8 = Bool(abs(var_8 - var_8))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            Creature.eatLeft(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
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
            var_28 = tan(-4871)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
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
    end),[98,38,30,73,83,1,72,0,51],56.5803,0,7.43531,231131,0x0000006d,Dict(0=>0,127=>127),[802,327],2283,24,71),RpcApi.SimpleOrganism(0x00000000000b1a24,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            var_27 = sec(-19782)
            var_27 = sin(var_27)
            var_27 = Float64(11915)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_17 = (Int8)(var_33) & (Int8)(var_33)
            return var_17
        end
        local var_13::Int16 = 1446
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = var_19 + var_19
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Creature.energyLeft(o)
            var_19 = Int(Creature.idDown(o))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
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
        Creature.eatDown(c,o,Int(var_2))
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
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_34::String = "47tLtNeg"
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
            local var_31::Bool = true
            var_31 = (Bool)(var_31) | (Bool)(var_31)
            var_31 = isempty("XvKJkURW")
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],5.3352,0,62.0066,226239,0x0000006c,Dict(0=>0,119=>119,127=>127,1=>1),[533,612],22485,4,90),RpcApi.SimpleOrganism(0x00000000000b195e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_48(var_47::Int8=13)
            return var_47
        end
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_43 = 96 < (Int8)(1)
            var_42 = Int(Creature.idDown(o))
            var_43 = Creature.stepLeft(o)
            var_42 = Creature.energyDown(o)
            var_43 = var_43 & var_43
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_46::Int64 = -4083510734040916059
            var_36 = Int(-20505)
            var_38 = 0.78135 < (Float64)(1)
            var_36 = Creature.energyUp(o)
            var_37 = string(var_36)
            var_38 = Creature.stepRight(o)
            var_36 = Creature.energyUp(o)
            var_38 = Bool(abs(var_38 - var_38))
            var_38 = 111 > (Int8)(0)
            var_38 = 8202 < (Int16)(1)
            var_37 = string(var_46)
            var_36 = var_36 + var_36
            var_36 = Int(Creature.idLeft(o))
            var_38 = var_38 & var_38
            var_36 = Int(Creature.idRight(o))
            var_38 = var_38 | var_38
            var_36 = (Int64)(var_36) $ (Int64)(var_46)
            var_38 = Creature.stepRight(o)
            var_37 = string(-17852)
            var_46 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idDown(o))
            var_38 = Creature.stepRight(o)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "Cs4Qutm0"
            local var_40::Float64 = 0.48812
            local var_18::Int8 = 72
            var_40 = var_40 + var_40
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_18 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            var_40 = tan(var_4)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_40 = pi
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
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
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("yIKz2fKL")
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_45::Int8 = -38
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],49.8641,0,57.9199,198922,0x0000006e,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[867,938],24464,26,95),RpcApi.SimpleOrganism(0x00000000000b1d93,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_35::Float64 = 0.681884
            Creature.stepUp(o)
            var_35 = pi
            var_35 = cos(-21139)
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
            end
            var_4 = Int16(o.pos.x)
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
        var_8 = 0.978408 < (Float64)(1)
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
            Creature.eatUp(c,o,Int(var_23))
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],9.09265,0,95.0697,198880,0x0000006b,Dict(0=>0,127=>127),[792,331],13697,50,76),RpcApi.SimpleOrganism(0x00000000000b21f8,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_42 = var_42 * var_42
            var_43 = Creature.stepUp(o)
            var_43 = Creature.stepRight(o)
            var_42 = Creature.energyLeft(o)
            var_42 = (Int64)(var_42) >> (Int64)(var_42)
            var_43 = Creature.stepUp(o)
            var_42 = Creature.energyLeft(o)
            var_43 = isempty("mYnB3oBZ")
            var_42 = Creature.energyRight(o)
            var_42 = Int(Creature.idUp(o))
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = var_38 * var_38
            if var_37 !== var_37
            end
            var_36 = if isempty(var_37)
                    0
                else
                    1
                end
            var_38 = Creature.stepRight(o)
            var_36 = Int(Creature.idLeft(o))
            var_36 = Creature.energyDown(o)
            var_36 = Int(Creature.idRight(o))
            var_36 = Creature.energyRight(o)
            var_36 = Creature.energyUp(o)
            var_36 = Creature.energyUp(o)
            var_36 = Int(-6906)
            var_36 = Int(Creature.idLeft(o))
            var_36 = Int(Creature.idDown(o))
            var_38 = Creature.stepLeft(o)
            if var_38 == var_38
            end
            var_38 = (Bool)(var_38) & (Bool)(var_38)
            var_38 = Creature.stepRight(o)
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idDown(o))
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "Cs4Qutm0"
            local var_40::Float64 = 0.48812
            local var_18::Int8 = 72
            var_40 = csc(if var_40 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_40
                    end)
            var_4 = if 32767 >= abs(271711493358891396)
                    Int16(271711493358891396)
                else
                    32767
                end
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_18 = if 127 >= var_40
                    Int8(round(var_40))
                else
                    127
                end
            var_40 = tan(var_4)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
                Creature.stepRight(o)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = var_4 - var_4
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_40 = pi
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
        var_8 = var_8 | var_8
        var_2 = func_5(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        for i::Int8 = 1:div(var_33,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],45.2739,0,91.7186,194156,0x0000006e,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,63=>63,834=>834),[878,935],2444,25,87),RpcApi.SimpleOrganism(0x00000000000b1ce9,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            Creature.stepUp(o)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.eatUp(c,o,Int(var_17))
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_19 = (Int64)(var_19) $ (Int64)(var_19)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = var_19 + var_19
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idDown(o))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
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
        Creature.eatDown(c,o,Int(var_2))
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
            local var_31::Bool = true
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],42.1943,0,98.6219,185034,0x0000006c,Dict(0=>0,119=>119,127=>127,1=>1),[538,616],15395,10,84),RpcApi.SimpleOrganism(0x00000000000b229d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            local var_47::Int64 = 4833552125977631635
            local var_46::Float64 = 0.782741
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_45::Int64 = 2303430859572806723
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_41 = Creature.energyUp(o)
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
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
                Creature.stepDown(o)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_3,16)
            end
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
        if var_38 != var_38
        end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_38 = func_21(var_38)
        var_38 = string(var_2)
        var_8 = 0.247579 < (Float64)(1)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        if var_8 >= var_8
            Creature.stepUp(o)
        end
        Creature.eatLeft(c,o,Int(var_2))
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],9.18539,0,41.4743,182393,0x0000006c,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,48=>48,108=>108,127=>127),[515,835],793,1,68),RpcApi.SimpleOrganism(0x00000000000b213a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_36 = Creature.energyUp(o)
            var_36 = Int(Creature.idLeft(o))
            var_36 = Int(var_38)
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
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
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
        Creature.eatDown(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
            local var_40::Float64 = 0.775569
            var_40 = sin(-6454017630186476401)
        end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
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
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],61.5628,0,63.4143,177195,0x0000006b,Dict(830=>830,848=>848,811=>811,825=>825,844=>844,818=>818,849=>849,828=>828,852=>852,815=>815,835=>835,820=>820,817=>817,853=>853,833=>833,814=>814,816=>816,819=>819,823=>823,127=>127,836=>836,854=>854,858=>858,834=>834,851=>851,824=>824,0=>0,838=>838,831=>831,860=>860,813=>813,855=>855,847=>847,829=>829,842=>842,822=>822,812=>812,857=>857,862=>862,821=>821,826=>826,843=>843,859=>859,863=>863,845=>845,837=>837,832=>832,827=>827,846=>846,856=>856,840=>840,841=>841,861=>861,850=>850,839=>839),[867,370],4346,20,62),RpcApi.SimpleOrganism(0x00000000000b1607,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = Creature.stepDown(o)
            var_38 = 0.922211 > (Float64)(0)
            var_38 = var_36 > (Int64)(0)
            var_37 = string(5228)
            var_38 = 0.48056 < (Float64)(1)
            var_37 = var_37 * var_37
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::Float64 = 0.350038
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = var_8 | var_8
        var_8 = var_2 < (Int8)(1)
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_2 = func_5(var_2)
        var_8 = -7594 > (Int16)(0)
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
        for i::Int8 = 1:div(var_2,16)
            local var_40::Float64 = 0.775569
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
        end
        var_8 = Bool(abs(var_8 - var_8))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],71.0738,0,71.4399,169353,0x0000006b,Dict(830=>830,848=>848,811=>811,825=>825,844=>844,818=>818,253=>253,849=>849,828=>828,252=>252,852=>852,815=>815,835=>835,820=>820,817=>817,853=>853,833=>833,814=>814,816=>816,819=>819,823=>823,127=>127,836=>836,854=>854,858=>858,834=>834,851=>851,824=>824,0=>0,838=>838,831=>831,860=>860,813=>813,855=>855,847=>847,829=>829,842=>842,822=>822,812=>812,821=>821,857=>857,826=>826,843=>843,859=>859,845=>845,837=>837,832=>832,827=>827,846=>846,856=>856,840=>840,841=>841,850=>850,839=>839),[860,255],33018,50,71),RpcApi.SimpleOrganism(0x00000000000b1d32,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_39::Int16 = -32524
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_39 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_8 = Creature.stepDown(o)
        Creature.eatLeft(c,o,Int(var_2))
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
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        Creature.eatDown(c,o,Int(var_2))
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
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_41::Bool = true
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.15496,0,0.140182,159306,0x0000006b,Dict(0=>0,119=>119,120=>120,127=>127),[268,170],14665,50,56),RpcApi.SimpleOrganism(0x00000000000b1606,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_41::Int16 = 9098
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_43::Int8 = -47
            var_20 = string(-3726940117944461571)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_44::Int64 = 5347957284956355733
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_39 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_3 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            if var_4 === var_4
                Creature.stepLeft(o)
            end
            if var_4 > var_4
                local var_42::Int8 = -41
            end
            var_4 = if 32767 >= 0.884133
                    Int16(round(0.884133))
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
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
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_38 = string(var_2)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_41 = Int16(Creature.eatDown(c,o,Int(var_2)))
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
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        var_8 = var_8 | var_8
        return true
    end),[98,38,30,73,83,1,72,0,51],63.62,0,37.8288,156762,0x0000006b,Dict(2=>2,89=>89,11=>11,29=>29,74=>74,57=>57,31=>31,78=>78,112=>112,70=>70,106=>106,33=>33,121=>121,114=>114,109=>109,96=>96,26=>26,49=>49,84=>84,4=>4,117=>117,93=>93,94=>94,115=>115,54=>54,50=>50,77=>77,80=>80,40=>40,101=>101,0=>0,60=>60,34=>34,79=>79,71=>71,120=>120,113=>113,76=>76,12=>12,122=>122,16=>16,107=>107,62=>62,21=>21,10=>10,102=>102,88=>88,92=>92,72=>72,28=>28,5=>5,63=>63,97=>97,41=>41,15=>15,68=>68,124=>124,39=>39,46=>46,85=>85,25=>25,55=>55,42=>42,66=>66,58=>58,59=>59,8=>8,95=>95,111=>111,20=>20,90=>90,14=>14,52=>52,18=>18,69=>69,35=>35,125=>125,83=>83,17=>17,64=>64,65=>65,44=>44,37=>37,110=>110,127=>127,45=>45,13=>13,86=>86,126=>126,67=>67,99=>99,105=>105,1=>1,30=>30,47=>47,32=>32,82=>82,91=>91,7=>7,9=>9,43=>43,75=>75,104=>104,87=>87,103=>103,3=>3,61=>61,118=>118,38=>38,36=>36,48=>48,100=>100,81=>81,98=>98,19=>19,51=>51,22=>22,6=>6,24=>24,119=>119,73=>73,116=>116,123=>123,53=>53,23=>23,27=>27,56=>56,108=>108),[538,257],33024,4,71),RpcApi.SimpleOrganism(0x00000000000b17be,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            var_44 = (Bool)(var_44) $ (Bool)(var_44)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                local var_52::Bool = false
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        if var_38 != var_38
            Creature.stepUp(o)
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],10.0957,0,20.3631,151040,0x0000006e,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[568,730],28625,2,75),RpcApi.SimpleOrganism(0x00000000000b1ae5,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(0.764389)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            if var_39 === var_39
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        if var_2 > var_2
        end
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
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
    end),[98,38,30,73,83,1,72,0,51],35.9873,0,22.0656,149487,0x0000006b,Dict(47=>47,39=>39,0=>0,102=>102,119=>119,103=>103,127=>127,111=>111,57=>57,13=>13,120=>120,48=>48,56=>56),[502,422],20555,2,66),RpcApi.SimpleOrganism(0x00000000000b1af3,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_41::String = "rqY8HY53"
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_39 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            if var_4 === var_4
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) >> (Int8)(var_18)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
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
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        var_8 = 0.633697 > (Float64)(0)
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
        var_38 = string(var_2)
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(21804)
                    Int8(21804)
                else
                    127
                end
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
            var_23 = (Int8)(var_23) | (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],44.1558,0,73.248,148155,0x0000006b,Dict(124=>124,0=>0,118=>118,111=>111,120=>120,112=>112,113=>113,106=>106,121=>121,122=>122,114=>114,109=>109,107=>107,125=>125,51=>51,119=>119,116=>116,123=>123,110=>110,127=>127,117=>117,126=>126,108=>108,105=>105,115=>115),[1427,163],20415,10,64),RpcApi.SimpleOrganism(0x00000000000b1d3e,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_52 = Creature.stepLeft(o)
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            var_46 = (Int8)(var_47) >> (Int8)(var_47)
            Creature.eatRight(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            var_43 = string(340895692648676348)
            for i::Int8 = 1:div(var_42,16)
            end
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepLeft(o)
            if var_39 >= var_39
                Creature.stepUp(o)
            end
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_56::Int8 = -37
            var_51 = Int16(o.pos.y)
            Creature.stepRight(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            Creature.stepDown(o)
            var_6 = string(6324860041714508526)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        var_54 = Creature.stepDown(o)
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
    end),[98,38,30,73,83,1,72,0,51],88.6585,0,67.1649,147299,0x0000006e,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,32767=>32767,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[877,244],14545,66,91),RpcApi.SimpleOrganism(0x00000000000b1c96,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            Creature.stepRight(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_8 = Creature.stepDown(o)
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = if isempty("D3MBrMcZ")
                    0
                else
                    1
                end
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],2.5693,0,28.9542,146685,0x0000006b,Dict(47=>47,21=>21,39=>39,0=>0,49=>49,22=>22,119=>119,72=>72,118=>118,127=>127,31=>31,56=>56,30=>30),[634,522],16225,50,58),RpcApi.SimpleOrganism(0x00000000000b20cb,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_45(var_43::Int64=-6084886977200465285,var_44::String="i81ZSrII")
            if var_44 === var_44
            end
            Creature.stepDown(o)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_46::Float64 = 0.291589
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            if var_3 > var_18
                local var_39::String = "uZbeNeMB"
            end
            var_18 = if 127 >= abs(-2650212812801487755)
                    Int8(-2650212812801487755)
                else
                    127
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = if 32767 >= abs(var_18)
                    Int16(var_18)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.color)
            if var_3 == var_3
                local var_42::Bool = false
                var_42 = 0.00134034 > (Float64)(0)
            end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = -20529 < (Int16)(1)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_36 = var_36[1:if length(var_38) > length(var_36)
                        0
                    else
                        length(var_36) - length(var_38)
                    end]
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_8 = Creature.stepRight(o)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        for i::Int8 = 1:div(var_2,16)
            local var_41::Int8 = -54
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],43.1433,0,38.798,141417,0x0000006b,Dict(0=>0,119=>119,31=>31,120=>120,103=>103,121=>121,56=>56,127=>127,57=>57),[1872,279],5457,63,75),RpcApi.SimpleOrganism(0x00000000000b13d6,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],2.39343,0,77.8958,137927,0x0000006b,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,111=>111,127=>127,13=>13,120=>120,48=>48,56=>56),[504,260],38636,50,66),RpcApi.SimpleOrganism(0x00000000000b213e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_48(var_47::Int8=13)
            Creature.stepLeft(o)
            return var_47
        end
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_42 = Int(Creature.idRight(o))
            var_43 = 96 < (Int8)(1)
            var_42 = (Int64)(var_42) >> (Int64)(var_42)
            var_42 = Int(Creature.idDown(o))
            var_43 = Creature.stepLeft(o)
            var_42 = Creature.energyDown(o)
            var_43 = var_43 & var_43
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            local var_46::Int64 = -4083510734040916059
            var_36 = Int(-20505)
            var_38 = 0.78135 < (Float64)(1)
            var_36 = Creature.energyUp(o)
            var_37 = string(var_36)
            var_38 = Creature.stepRight(o)
            var_36 = Creature.energyUp(o)
            var_38 = Bool(abs(var_38 - var_38))
            var_38 = 111 > (Int8)(0)
            var_38 = 8202 < (Int16)(1)
            var_37 = string(var_46)
            var_36 = var_36 + var_36
            var_36 = Int(Creature.idLeft(o))
            var_38 = var_38 & var_38
            var_36 = Int(Creature.idRight(o))
            var_38 = var_38 | var_38
            var_36 = (Int64)(var_36) $ (Int64)(var_46)
            var_38 = Creature.stepRight(o)
            var_37 = string(-17852)
            var_38 = var_38 & var_38
            var_46 = Creature.energyLeft(o)
            var_46 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idDown(o))
            var_38 = Creature.stepRight(o)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "Cs4Qutm0"
            local var_40::Float64 = 0.48812
            local var_18::Int8 = 72
            var_40 = var_40 + var_40
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            if var_41 > var_41
                Creature.stepRight(o)
            end
            var_18 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_3 = (Int8)(var_18) & (Int8)(var_3)
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            var_40 = tan(var_4)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_40 = pi
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
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
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("yIKz2fKL")
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_33,16)
        end
        for i::Int8 = 1:div(var_2,16)
            local var_45::Int8 = -38
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 8971 < (Int16)(1)
        return true
    end),[98,38,30,73,83,1,72,0,51],0.890588,0,31.3507,137878,0x0000006e,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[868,939],4305,52,100),RpcApi.SimpleOrganism(0x00000000000b2231,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_41::Int16 = 27634
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_39::Int8 = -98
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
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
        var_8 = var_8 | var_8
        Creature.eatUp(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepDown(o)
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
        for i::Int8 = 1:div(var_2,16)
        end
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],21.075,0,56.1161,137725,0x0000006b,Dict(119=>119,47=>47,121=>121,103=>103,40=>40,39=>39,127=>127,85=>85,0=>0,31=>31,120=>120,117=>117,112=>112,64=>64,48=>48,56=>56,30=>30),[1754,202],1874,50,59),RpcApi.SimpleOrganism(0x00000000000b1fa4,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(0.764389)
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
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
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
    end),[98,38,30,73,83,1,72,0,51],0.00638677,0,2.10573,135177,0x0000006b,Dict(47=>47,39=>39,0=>0,102=>102,119=>119,103=>103,127=>127,111=>111,13=>13,120=>120,48=>48,56=>56),[498,280],8405,50,67),RpcApi.SimpleOrganism(0x00000000000b2267,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_45::Int16 = 20926
        function func_38(var_37::String="Xawd72Hw")
            var_47 = (Int64)(var_47) >> (Int64)(var_47)
            Creature.stepDown(o)
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.pos.y)
            o.mem[var_30] = var_30
            var_30 = if false
                    1
                else
                    0
                end
            var_30 = var_30 * var_30
            var_30 = (Int16)(var_30) | (Int16)(var_30)
            var_30 = if 32767 >= abs(78)
                    Int16(78)
                else
                    32767
                end
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        o.mem[var_45] = var_45
        var_33 = Creature.energyRight(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idDown(o))
        var_45 = Int16(o.pos.y)
        var_33 = Int(Creature.idLeft(o))
        var_45 = Int16(o.pos.x)
        var_33 = Int(Creature.idUp(o))
        Creature.eatRight(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_46::Int16 = 28831
            Creature.stepRight(o)
        end
        var_45 = var_45 + var_45
        var_33 = (Int64)(var_33) << (Int64)(var_33)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_45 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = string(var_20)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyLeft(o)
        var_33 = Creature.energyDown(o)
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
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_2,16)
            var_44 = sec(-12)
            Creature.stepUp(o)
            var_44 = cos(2362944516762334265)
        end
        var_33 = Int(Creature.idUp(o))
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        var_45 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],17.7566,467,26.1789,133894,0x0000006f,Dict(20926=>20926),[1536,516],1332,11,73),RpcApi.SimpleOrganism(0x00000000000b1971,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            local var_34::Float64 = 0.738158
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
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
            var_4 = Int16(o.pos.x)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
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
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_35 = pi
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
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],59.5468,0,92.7748,130806,0x0000006b,Dict(0=>0,127=>127),[781,326],24275,3,65),RpcApi.SimpleOrganism(0x00000000000b2165,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_36 = (Int64)(var_36) & (Int64)(var_36)
            var_36 = div(var_36,if var_36 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_36
                    end)
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            var_38 = Creature.stepDown(o)
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
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_18,16)
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
        Creature.eatDown(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
            local var_40::Float64 = 0.775569
            var_40 = sin(-6454017630186476401)
            var_40 = sec(var_40)
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
    end),[98,38,30,73,83,1,72,0,51],3.41618,0,39.4659,129575,0x0000006b,Dict(830=>830,848=>848,811=>811,825=>825,844=>844,818=>818,849=>849,828=>828,852=>852,815=>815,835=>835,820=>820,817=>817,853=>853,833=>833,814=>814,816=>816,819=>819,823=>823,127=>127,836=>836,854=>854,858=>858,834=>834,851=>851,824=>824,0=>0,838=>838,831=>831,860=>860,813=>813,855=>855,847=>847,829=>829,842=>842,822=>822,812=>812,857=>857,862=>862,821=>821,826=>826,843=>843,859=>859,845=>845,837=>837,832=>832,827=>827,846=>846,856=>856,840=>840,841=>841,861=>861,850=>850,839=>839),[862,364],3915,50,68),RpcApi.SimpleOrganism(0x00000000000b1f33,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            var_35 = cos(-21139)
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
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
            end
            var_4 = Int16(o.pos.x)
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
    end),[98,38,30,73,83,1,72,0,51],94.45,0,12.1185,129536,0x0000006b,Dict(0=>0,127=>127),[789,330],9537,71,71),RpcApi.SimpleOrganism(0x00000000000b1e3b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_59::Int8 = -127
        function func_58(var_56::Int16=-30744,var_57::Int16=-15156)
            local var_61::Float64 = 0.696507
            return var_56
        end
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_60::Int16 = -12355
            var_52 = 17034 > (Int16)(0)
            var_48 = csc(if -8892 === (Int16)(0)
                        (Int16)(1)
                    else
                        -8892
                    end)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatUp(c,o,Int(var_47))
            var_48 = cos(var_48)
            var_48 = cot(if 20325 === (Int16)(0)
                        (Int16)(1)
                    else
                        20325
                    end)
            var_48 = cos(var_47)
            Creature.eatRight(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            var_48 = csc(if -8504940629796499838 === (Int64)(0)
                        (Int64)(1)
                    else
                        -8504940629796499838
                    end)
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.stepRight(o)
            Creature.eatUp(c,o,Int(var_42))
            return var_42
        end
        function func_40(var_39::Bool=false)
            var_39 = -3571886503072079673 < (Int64)(1)
            var_39 = Creature.stepLeft(o)
            if var_39 >= var_39
                Creature.stepRight(o)
            end
            return var_39
        end
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = var_20 * var_20
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_51 = Int16(o.pos.y)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_6 = string(82)
            var_51 = (Int16)(var_51) | (Int16)(var_51)
            var_51 = Int16(o.pos.y)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_62::Int64 = -1367641367059900576
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
            if var_4 != var_4
            end
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
        var_36 = string(var_36)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
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
    end),[98,38,30,73,83,1,72,0,51],15.2005,0,73.6791,129161,0x00000070,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1820,260],12016,2,101),RpcApi.SimpleOrganism(0x00000000000b212f,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_8 = 0.747761 < (Float64)(1)
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepDown(o)
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
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
    end),[98,38,30,73,83,1,72,0,51],60.8561,0,81.9107,127721,0x0000006b,Dict(47=>47,39=>39,0=>0,102=>102,119=>119,103=>103,127=>127,111=>111,57=>57,13=>13,120=>120,48=>48,56=>56),[495,1],4456,83,68),RpcApi.SimpleOrganism(0x00000000000b127c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_52::Bool = true
            var_48 = sec(var_48)
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cot(if var_46 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_46
                    end)
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cos(1417325699522058963)
            var_48 = if isempty("FPzXcVBa")
                    0.0
                else
                    1.0
                end
            var_46 = (Int8)(var_47) & (Int8)(var_46)
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_47))
            var_52 = Bool(abs(var_52 - var_52))
            var_48 = tan(var_48)
            return var_46
        end
        function func_44(var_42::Int8=100,var_43::String="XqnLG1PV")
            Creature.stepDown(o)
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
        var_8 = 15726 > (Int16)(0)
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
        Creature.eatUp(c,o,Int(var_2))
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
    end),[98,38,30,73,83,1,72,0,51],88.0762,0,35.7563,123092,0x0000006e,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1710,296],42101,2,88),RpcApi.SimpleOrganism(0x00000000000b22d5,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_1 = Creature.energyDown(o)
        var_8 = var_8 | var_8
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_36 = func_21(var_36)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        var_8 = 0.655719 < (Float64)(1)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
            var_23 = (Int8)(var_23) >> (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],7.17725,99,15.3555,122480,0x0000006c,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,111=>111,127=>127,13=>13,120=>120,48=>48,56=>56),[526,395],232,85,66),RpcApi.SimpleOrganism(0x00000000000b1dc4,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
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
            var_6 = var_6 * var_6
            var_6 = string(11962)
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_49 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],99.2099,0,26.5388,122353,0x0000006d,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[563,277],13205,50,79),RpcApi.SimpleOrganism(0x00000000000b20c2,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(false)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 - var_4
            if var_4 != var_4
                Creature.stepLeft(o)
            end
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idRight(o))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
                    end
            return var_3
        end
        var_2 = if isempty(var_36)
                0
            else
                1
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
        var_36 = string(var_8)
        var_1 = Creature.energyDown(o)
        var_8 = isempty(var_36)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(var_23)
                    Int8(var_23)
                else
                    127
                end
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],13.8199,0,52.0282,121406,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,120=>120,112=>112,56=>56,127=>127,111=>111),[947,210],5544,21,57),RpcApi.SimpleOrganism(0x00000000000b0c11,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            var_52 = var_52
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_52 = Creature.stepRight(o)
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_46))
            return var_46
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepDown(o)
            var_39 = Creature.stepLeft(o)
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
            var_51 = Int16(o.color)
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
    end),[98,38,30,73,83,1,72,0,51],1.29586,0,88.0364,121263,0x0000006d,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1256,455],58535,50,91),RpcApi.SimpleOrganism(0x00000000000b218f,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            local var_34::Float64 = 0.738158
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
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
    end),[98,38,30,73,83,1,72,0,51],28.1353,0,43.6729,120459,0x0000006b,Dict(0=>0,127=>127),[785,321],3493,24,71),RpcApi.SimpleOrganism(0x00000000000b0d18,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            var_48 = csc(if 31918 === (Int16)(0)
                        (Int16)(1)
                    else
                        31918
                    end)
            var_52 = var_52 | var_52
            var_48 = div(var_48,if var_48 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_48
                    end)
            var_52 = Creature.stepRight(o)
            var_52 = var_52
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatUp(c,o,Int(var_46))
            var_52 = Creature.stepRight(o)
            var_52 = var_46 < (Int8)(1)
            Creature.eatRight(c,o,Int(var_46))
            return var_46
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepDown(o)
            var_39 = -20234 < (Int16)(1)
            var_39 = -25 < (Int8)(1)
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
            var_51 = Int16(o.color)
            Creature.stepDown(o)
            var_51 = Int16(o.color)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_51 = div(var_51,if var_51 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_51
                    end)
            Creature.stepLeft(o)
            if var_6 == var_6
                Creature.stepLeft(o)
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
                local var_56::Int8 = 56
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
    end),[98,38,30,73,83,1,72,0,51],31.6238,0,98.0133,120199,0x0000006d,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1484,710],55903,1,96),RpcApi.SimpleOrganism(0x00000000000b21d4,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            if var_44 === var_44
            end
            var_44 = Creature.stepRight(o)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_39 = var_41 > (Int64)(0)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_48)))
            var_41 = Creature.energyLeft(o)
            var_4 = var_4 * var_4
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_49 = Int16(o.pos.x)
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],47.3938,0,32.7448,119673,0x0000006d,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[572,248],2802,62,74),RpcApi.SimpleOrganism(0x00000000000b1e52,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_34 = cos(-31208)
            var_34 = tan(var_34)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_35::Bool = false
            local var_36::Int16 = 6066
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
            var_4 = Int16(o.pos.x)
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
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
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
        var_8 = Bool(abs(var_8 - var_8))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
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
            var_28 = tan(-4871)
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
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            var_23 = var_23 - var_23
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],7.20297,0,88.3959,119276,0x0000006d,Dict(0=>0,127=>127),[796,329],11785,50,75),RpcApi.SimpleOrganism(0x00000000000b22e5,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            for i::Int8 = 1:div(var_17,16)
            end
            if var_17 > var_17
            end
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.eatDown(c,o,Int(var_17))
            return var_17
        end
        local var_13::Int16 = 1446
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_34::Int8 = -84
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_33::Bool = true
            local var_21::Int16 = -16711
            local var_19::Int64 = 8381526388126889670
            var_19 = (Int64)(var_19) & (Int64)(var_19)
            var_19 = Int(var_3)
            var_19 = Int(round(0.293498))
            var_19 = Creature.energyRight(o)
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = var_19 + var_19
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_33 = var_4 > (Int16)(0)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idDown(o))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
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
        Creature.eatDown(c,o,Int(var_2))
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
        var_8 = var_8 * var_8
        var_1 = Int(var_1)
        var_13 = if isempty("Bnm5Bc6T")
                0
            else
                1
            end
        var_2 = div(var_2,if var_2 === (Int8)(0)
                    (Int8)(1)
                else
                    var_2
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
            local var_31::Bool = true
            var_31 = isempty("ra9NLREN")
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],2.72588,0,72.1697,119246,0x0000006d,Dict(0=>0,119=>119,1=>1,10537=>10537,8316=>8316,8443=>8443,10410=>10410,127=>127),[532,619],72,50,90),RpcApi.SimpleOrganism(0x00000000000b1872,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_39::Bool=false)
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
            local var_41::Int16 = 21298
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
            var_3 = (Int8)(var_18) | (Int8)(var_3)
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],16.5514,0,55.1029,119180,0x0000006b,Dict(47=>47,32=>32,46=>46,0=>0,42=>42,118=>118,57=>57,111=>111,31=>31,120=>120,48=>48,26=>26,102=>102,65=>65,119=>119,116=>116,72=>72,28=>28,127=>127,13=>13,56=>56,94=>94,30=>30),[229,71],26826,42,66),RpcApi.SimpleOrganism(0x00000000000b2047,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_40::Float64 = 0.582119
            var_6 = var_6 * var_6
            var_6 = string(false)
            var_40 = cos(10574)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 - var_4
            if var_4 != var_4
                Creature.stepLeft(o)
            end
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idRight(o))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) $ (Int8)(var_18)
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
                    end
            return var_3
        end
        var_2 = if isempty(var_36)
                0
            else
                1
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
        var_36 = string(var_8)
        var_1 = Creature.energyDown(o)
        var_8 = isempty(var_36)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = if 127 >= abs(var_23)
                    Int8(var_23)
                else
                    127
                end
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],21.0979,0,88.7698,118486,0x0000006b,Dict(0=>0,119=>119,47=>47,102=>102,120=>120,112=>112,56=>56,127=>127,111=>111),[763,211],6775,22,61),RpcApi.SimpleOrganism(0x00000000000b1cc6,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_18 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_17 = Int(Creature.idRight(o))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        var_38 = func_21(var_36)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],2.30679,0,79.1635,118121,0x0000006b,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,57=>57,127=>127,111=>111,13=>13,120=>120,48=>48,56=>56),[504,414],15745,18,70),RpcApi.SimpleOrganism(0x00000000000b146e,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
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
            var_6 = string(11962)
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        if var_38 != var_38
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatRight(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],34.2617,0,30.2673,117227,0x0000006d,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[562,280],37105,65,77),RpcApi.SimpleOrganism(0x00000000000b0d7f,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            local var_52::Bool = true
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
            Creature.eatRight(c,o,Int(var_46))
            var_48 = pi
            Creature.eatRight(c,o,Int(var_46))
            var_46 = (Int8)(var_46) >> (Int8)(var_46)
            return var_46
        end
        function func_40(var_39::Bool=false)
            var_39 = Creature.stepLeft(o)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_51::Int16 = -15162
            Creature.stepLeft(o)
            var_51 = (Int16)(var_51) >> (Int16)(var_51)
            var_6 = string(0.569339)
            var_51 = Int16(o.color)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            var_51 = Int16(o.pos.x)
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
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
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
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepUp(o)
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
    end),[98,38,30,73,83,1,72,0,51],35.7429,0,78.2469,113277,0x0000006e,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[43,590],54871,9,85),RpcApi.SimpleOrganism(0x00000000000b2141,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            var_44 = (Bool)(var_44) $ (Bool)(var_44)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(-7252504478012219109)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                local var_52::Bool = false
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        o.mem[var_49] = var_49
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        if var_38 != var_38
            Creature.stepUp(o)
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],64.8232,0,91.6409,113231,0x0000006e,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[568,733],4274,82,77),RpcApi.SimpleOrganism(0x00000000000b13b1,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                local var_33::Int8 = -12
                var_25 = Creature.energyRight(o)
                var_25 = Creature.energyDown(o)
                var_34 = Int(Creature.idUp(o))
            end
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_31)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            o.mem[var_4] = var_4
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_18 = var_3 % if var_18 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_18
                    end
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
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
        var_2 = if 127 >= abs(8649)
                Int8(8649)
            else
                127
            end
        var_13 = Int16(o.pos.y)
        Creature.eatDown(c,o,Int(var_2))
        var_8 = Creature.stepRight(o)
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
            Creature.eatDown(c,o,Int(var_32))
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = -7393575444053843030 > (Int64)(0)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
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
    end),[98,38,30,73,83,1,72,0,51],71.9686,0,14.4794,113039,0x0000006b,Dict(0=>0,127=>127),[1290,318],39004,25,73),RpcApi.SimpleOrganism(0x00000000000b1c73,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_44(var_42::Int64=4656810529037705707,var_43::Bool=true)
            var_43 = Creature.stepDown(o)
            var_42 = Int(Creature.idUp(o))
            var_42 = Int(-7)
            var_43 = var_43
            var_43 = -26431 < (Int16)(1)
            var_43 = Creature.stepUp(o)
            var_43 = Creature.stepRight(o)
            var_43 = Creature.stepRight(o)
            var_42 = Int(var_42)
            return var_42
        end
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = Bool(abs(var_38 - var_38))
            var_36 = var_36 % if var_36 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_36
                    end
            var_38 = -124 > (Int8)(0)
            var_38 = 111 > (Int8)(0)
            var_36 = (Int64)(var_36) >> (Int64)(var_36)
            var_36 = Int(Creature.idRight(o))
            var_38 = Creature.stepLeft(o)
            var_38 = Creature.stepRight(o)
            var_37 = string(var_36)
            var_36 = Creature.energyDown(o)
            var_38 = -31694 > (Int16)(0)
            var_38 = var_38
            var_38 = 0.899822 > (Float64)(0)
            var_38 = Creature.stepDown(o)
            var_38 = isempty(var_37)
            var_36 = Creature.energyLeft(o)
            return var_36
        end
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_45::Float64 = 0.388045
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_40 = tan(var_4)
            var_4 = Int16(o.color)
            var_4 = Int16(o.color)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_45 = div(var_45,if var_45 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_45
                    end)
            var_40 = pi
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = 0.514747 > (Float64)(0)
        Creature.eatDown(c,o,Int(var_33))
        var_2 = var_2 - var_33
        var_13 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = 0.873522 > (Float64)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],17.774,0,74.5151,112176,0x00000070,Dict(830=>830,824=>824,0=>0,831=>831,813=>813,811=>811,825=>825,829=>829,822=>822,812=>812,821=>821,826=>826,818=>818,828=>828,815=>815,835=>835,107=>107,820=>820,817=>817,837=>837,833=>833,832=>832,814=>814,827=>827,816=>816,819=>819,823=>823,127=>127,836=>836,834=>834),[66,940],16576,50,74),RpcApi.SimpleOrganism(0x00000000000b20eb,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_41(var_39::String="AxYirhts",var_40::Int16=-30523)
            local var_45::Int64 = -6771056484717702791
            local var_43::Float64 = 0.0162352
            o.mem[var_40] = var_40
            var_40 = if 32767 >= abs(98)
                    Int16(98)
                else
                    32767
                end
            var_40 = div(var_40,if var_40 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_40
                    end)
            var_40 = if 32767 >= abs(6358559603174975192)
                    Int16(6358559603174975192)
                else
                    32767
                end
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepLeft(o)
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
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = if 127 >= 0.00313491
                    Int8(round(0.00313491))
                else
                    127
                end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
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
        var_8 = var_8 | var_8
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatRight(c,o,Int(var_23))
            var_23 = (Int8)(var_23) $ (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],41.7967,0,50.8035,111818,0x0000006b,Dict(0=>0,119=>119,31=>31,47=>47,48=>48,127=>127,111=>111),[857,731],5136,83,64),RpcApi.SimpleOrganism(0x00000000000b226d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_35::Float64 = 0.714364
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_36::Bool = false
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            if var_3 > var_3
                Creature.stepDown(o)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_2 = func_5(var_2,var_13)
        var_8 = 1245572765719810997 < (Int64)(1)
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
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
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
            var_23 = var_23 - var_23
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],86.1784,0,39.3562,110821,0x0000006c,Dict(0=>0,127=>127),[784,324],1272,22,69),RpcApi.SimpleOrganism(0x00000000000b1a56,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            if var_20 === var_20
            end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_42::Bool = true
            Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::Int16 = -2996
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_39 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_18 = if 127 >= abs(7541931816014445445)
                    Int8(7541931816014445445)
                else
                    127
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = Creature.stepDown(o)
        var_36 = func_21(var_36)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.19067,0,95.2963,110438,0x0000006b,Dict(0=>0,119=>119,120=>120,72=>72,127=>127),[1066,405],21984,50,61),RpcApi.SimpleOrganism(0x00000000000b1806,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_39::Int16 = -32524
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_39 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
        var_8 = Creature.stepDown(o)
        Creature.eatLeft(c,o,Int(var_2))
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
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        Creature.eatDown(c,o,Int(var_2))
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
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_41::Bool = true
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.15496,0,70.6874,109517,0x0000006b,Dict(0=>0,119=>119,120=>120,127=>127),[272,161],27905,50,56),RpcApi.SimpleOrganism(0x00000000000b20dd,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_40(var_39::Bool=false)
            return var_39
        end
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
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
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],1.83359,0,59.8965,108156,0x0000006b,Dict(47=>47,32=>32,39=>39,46=>46,0=>0,42=>42,29=>29,58=>58,118=>118,57=>57,31=>31,120=>120,48=>48,26=>26,65=>65,119=>119,72=>72,28=>28,127=>127,13=>13,56=>56,94=>94,30=>30),[635,386],5275,50,64),RpcApi.SimpleOrganism(0x00000000000b21b3,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(28)
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
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.y)
            var_39 = 641683063600442560 < (Int64)(1)
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_18 = if 127 >= abs(var_4)
                    Int8(var_4)
                else
                    127
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_18 = (Int8)(var_3) << (Int8)(var_18)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_17 = Int(Creature.idRight(o))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_38 = func_21(var_36)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Bool(abs(var_8 - var_8))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = (Int8)(var_23) << (Int8)(var_23)
            Creature.eatDown(c,o,Int(var_23))
            var_23 = func_5(var_23)
            Creature.stepRight(o)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],39.2412,0,34.6546,106879,0x0000006b,Dict(47=>47,107=>107,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,57=>57,127=>127,111=>111,13=>13,120=>120,48=>48,56=>56),[1781,330],3133,50,75),RpcApi.SimpleOrganism(0x00000000000b1f75,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_42::String = "yyGdm7bI"
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int8 = -22
            var_41 = var_41 * var_41
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 === var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
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
        var_13 = Int16(o.color)
        var_36 = string(var_8)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = string(23103)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],68.8871,0,66.4982,106627,0x0000006b,Dict(0=>0,119=>119,120=>120,86=>86,127=>127),[1681,219],8875,88,60),RpcApi.SimpleOrganism(0x00000000000b1fcb,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            if var_20 !== var_20
            end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(-19884)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
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
            var_4 = Int16(o.pos.x)
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
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
    end),[98,38,30,73,83,1,72,0,51],3.12489,0,71.8642,104789,0x0000006b,Dict(47=>47,32=>32,11=>11,46=>46,0=>0,55=>55,42=>42,104=>104,118=>118,57=>57,111=>111,31=>31,120=>120,112=>112,48=>48,26=>26,102=>102,65=>65,64=>64,49=>49,119=>119,72=>72,28=>28,127=>127,13=>13,56=>56,94=>94,41=>41,30=>30),[351,808],8015,71,67),RpcApi.SimpleOrganism(0x00000000000b16b9,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_40::Int16 = -14943
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_40 = Int16(Creature.eatRight(c,o,Int(var_3)))
            if var_4 != var_4
                Creature.stepRight(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            var_40 = Int16(o.color)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idRight(o))
            var_40 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_40 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_18)
                    Int16(var_18)
                else
                    32767
                end
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepRight(o)
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
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        var_8 = var_8 * var_8
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = Creature.stepDown(o)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(31230)
                    Int8(31230)
                else
                    127
                end
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],55.141,0,51.3729,103651,0x0000006c,Dict(119=>119,47=>47,103=>103,40=>40,39=>39,118=>118,57=>57,0=>0,127=>127,31=>31,102=>102,112=>112,48=>48,1001=>1001,49=>49,108=>108,94=>94),[5,136],31235,84,63),RpcApi.SimpleOrganism(0x00000000000b164b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int16 = -19282
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Int16 = -32524
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_39 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_39 = Int16(Creature.eatRight(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
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
        var_8 = Creature.stepDown(o)
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
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = Creature.stepUp(o)
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
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],69.5992,0,57.3574,102621,0x0000006b,Dict(0=>0,119=>119,120=>120,127=>127),[1567,381],32334,5,60),RpcApi.SimpleOrganism(0x00000000000b20a8,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        function func_45(var_43::Bool=false,var_44::Bool=true)
            local var_56::Float64 = 0.309612
            var_43 = 15477 < (Int16)(1)
            var_44 = (Bool)(var_43) $ (Bool)(var_43)
            return var_43
        end
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            local var_55::Int8 = 55
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_54::Int8 = 4
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_41 = Int(Creature.idRight(o))
            var_41 = Int(Creature.idDown(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Int(Creature.idLeft(o))
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_41 = Int(Creature.idDown(o))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if var_39
                    1
                else
                    0
                end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_18 = (Int8)(var_18) << (Int8)(var_48)
            var_39 = var_3 > (Int8)(0)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepRight(o)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_41 = Int(Creature.idLeft(o))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = 0.0335768 > (Float64)(0)
        o.mem[var_49] = var_49
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_8 = isempty("I33YlJlI")
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_49 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        var_8 = Creature.stepUp(o)
        var_38 = string(0.975298)
        var_49 = Int16(o.pos.x)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],73.7177,0,54.7333,101853,0x0000006d,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[565,839],5805,58,75),RpcApi.SimpleOrganism(0x00000000000b220e,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(0.764389)
            Creature.stepDown(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
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
            var_39 = var_3 > (Int8)(0)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
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
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
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
    end),[98,38,30,73,83,1,72,0,51],60.8088,0,22.6847,101414,0x0000006b,Dict(47=>47,39=>39,0=>0,102=>102,119=>119,103=>103,127=>127,111=>111,13=>13,120=>120,48=>48,56=>56),[497,114],2223,16,68),RpcApi.SimpleOrganism(0x00000000000b207b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],93.4842,0,51.7521,101151,0x0000006b,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,111=>111,127=>127,13=>13,120=>120,48=>48,56=>56),[507,709],6255,50,65),RpcApi.SimpleOrganism(0x00000000000b21a5,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_34 = cos(-31208)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            var_35 = 0.77782 < (Float64)(1)
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
            var_4 = Int16(o.pos.x)
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
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
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
        var_8 = Bool(abs(var_8 - var_8))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = var_32 - var_32
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
            var_28 = tan(-4871)
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
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],88.5292,0,42.4064,100605,0x0000006d,Dict(0=>0,127=>127),[793,328],3273,82,72),RpcApi.SimpleOrganism(0x00000000000b1bb4,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=7800146605039388059,var_37::String="UfQ4Jupf",var_38::Bool=true)
            var_38 = Creature.stepDown(o)
            var_36 = (Int64)(var_36) $ (Int64)(var_36)
            var_36 = Int(var_36)
            var_36 = Int(Creature.idLeft(o))
            var_38 = Creature.stepUp(o)
            var_36 = Creature.energyDown(o)
            var_36 = var_36 * var_36
            var_38 = Creature.stepDown(o)
            var_38 = 77 > (Int8)(0)
            var_38 = Creature.stepDown(o)
            var_38 = 0.922211 > (Float64)(0)
            var_38 = var_36 > (Int64)(0)
            var_37 = string(5228)
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
            var_18 = (Int8)(var_3) & (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.x)
            var_4 = Int16(o.pos.y)
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_17 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            o.mem[var_4] = var_4
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            o.mem[var_4] = var_4
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
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_33 = (Int8)(var_2) << (Int8)(var_33)
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_2,16)
            var_28 = string(-10094)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
            local var_40::Float64 = 0.775569
            var_40 = cos(-6892007436254835556)
            var_40 = if isempty("svRcI4HD")
                    0.0
                else
                    1.0
                end
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_33))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            Creature.eatDown(c,o,Int(var_23))
            Creature.eatUp(c,o,Int(var_23))
            var_23 = if false
                    1
                else
                    0
                end
        end
        var_8 = Bool(abs(var_8 - var_8))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = 16010 > (Int16)(0)
        return true
    end),[98,38,30,73,83,1,72,0,51],0.304222,0,2.51352,100503,0x0000006b,Dict(830=>830,867=>867,848=>848,811=>811,825=>825,844=>844,868=>868,818=>818,253=>253,865=>865,849=>849,828=>828,252=>252,852=>852,815=>815,835=>835,820=>820,817=>817,853=>853,833=>833,814=>814,816=>816,819=>819,823=>823,866=>866,127=>127,836=>836,854=>854,858=>858,834=>834,851=>851,864=>864,824=>824,0=>0,838=>838,831=>831,860=>860,813=>813,855=>855,847=>847,829=>829,842=>842,822=>822,826=>826,843=>843,812=>812,857=>857,821=>821,862=>862,859=>859,863=>863,845=>845,837=>837,832=>832,827=>827,846=>846,856=>856,840=>840,841=>841,861=>861,850=>850,839=>839),[868,255],18485,50,81),RpcApi.SimpleOrganism(0x00000000000b222d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_8
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],90.6145,0,0.500174,100498,0x0000006b,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,111=>111,127=>127,13=>13,120=>120,48=>48,56=>56),[510,203],1913,50,67),RpcApi.SimpleOrganism(0x00000000000b215a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int8 = -22
            var_41 = if 127 >= abs(-3922)
                    Int8(-3922)
                else
                    127
                end
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_39 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 === var_4
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
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
        var_13 = Int16(o.color)
        var_36 = string(var_8)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_36 = var_36 * var_36
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_36 = string(23103)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],81.268,0,94.1464,99896,0x0000006b,Dict(0=>0,119=>119,120=>120,86=>86,127=>127),[1649,225],4025,26,61),RpcApi.SimpleOrganism(0x00000000000b135c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::Int16 = -4430
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            local var_53::Int8 = 90
            var_53 = (Int8)(var_53) >> (Int8)(var_53)
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_48::Int8 = 108
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_17 = Creature.energyUp(o)
            var_41 = Creature.energyUp(o)
            var_41 = div(var_41,if var_41 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_41
                    end)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_48 = (Int8)(var_48) << (Int8)(var_18)
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_41 = Creature.energyRight(o)
            var_41 = Creature.energyLeft(o)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_39 = var_3 > (Int8)(0)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_41 = Int(Creature.idLeft(o))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_39 = 0.304769 < (Float64)(1)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepDown(o)
            end
            var_41 = Creature.energyRight(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_41 = Creature.energyDown(o)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
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
        var_8 = 0.0335768 > (Float64)(0)
        var_8 = Creature.stepUp(o)
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        var_49 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_49 = Int16(o.color)
        var_49 = Int16(o.color)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) & (Bool)(var_8)
        if var_38 != var_38
            Creature.stepDown(o)
        end
        var_49 = Int16(o.pos.x)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],85.756,0,27.7581,99865,0x0000006e,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,-4430=>-4430,48=>48,108=>108,127=>127),[560,136],39861,8,74),RpcApi.SimpleOrganism(0x00000000000b20b0,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_40::Int16 = -14943
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            if var_4 != var_4
                Creature.stepRight(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_40 = if 32767 >= 0.55066
                    Int16(round(0.55066))
                else
                    32767
                end
            var_3 = if 127 >= abs(5675591385623338975)
                    Int8(5675591385623338975)
                else
                    127
                end
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_18)
                    Int16(var_18)
                else
                    32767
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
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_8 = var_8 * var_8
        var_8 = var_8 | var_8
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(31230)
                    Int8(31230)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],2.21213,0,42.0531,99599,0x0000006c,Dict(119=>119,47=>47,40=>40,39=>39,118=>118,57=>57,0=>0,127=>127,31=>31,102=>102,120=>120,112=>112,48=>48,1001=>1001,49=>49,108=>108,94=>94),[966,132],5725,96,55),RpcApi.SimpleOrganism(0x00000000000b1d17,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            local var_41::Int8 = -97
            Creature.stepDown(o)
            var_41 = if 127 >= abs(2095474988884030438)
                    Int8(2095474988884030438)
                else
                    127
                end
            Creature.eatLeft(c,o,Int(var_41))
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            var_6 = string(-4530155442798906958)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            if var_3 === var_3
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_39 = var_39 | var_39
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_18 = (Int8)(var_3) >> (Int8)(var_3)
            var_17 = Creature.energyUp(o)
            var_4 = if 32767 >= abs(-5594369334762691959)
                    Int16(-5594369334762691959)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(-6338901960376032265)
                    Int16(-6338901960376032265)
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            return var_3
        end
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = if 127 >= abs(1432878896388479497)
                    Int8(1432878896388479497)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatUp(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],7.42148,0,67.0874,99191,0x0000006b,Dict(47=>47,39=>39,46=>46,0=>0,102=>102,119=>119,103=>103,111=>111,127=>127,13=>13,120=>120,48=>48,56=>56),[511,92],14935,48,71),RpcApi.SimpleOrganism(0x00000000000b10be,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            var_34 = cos(-31208)
            var_34 = tan(var_34)
            Creature.stepLeft(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_35::Bool = false
            local var_36::Int16 = 6066
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
            var_4 = Int16(o.pos.x)
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
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
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
        var_8 = Bool(abs(var_8 - var_8))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
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
            var_28 = tan(-4871)
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
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],8.42117,0,70.7517,98708,0x0000006d,Dict(0=>0,127=>127),[794,327],46561,50,74),RpcApi.SimpleOrganism(0x00000000000b1015,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            return var_26
        end
        function func_18(var_17::Int8=-100)
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            o.mem[var_4] = var_4
            var_19 = (Int64)(var_19) $ (Int64)(var_19)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = var_19 + var_19
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idDown(o))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
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
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
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
            local var_33::Bool = true
            local var_31::Bool = true
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],23.2696,0,66.0182,97444,0x0000006c,Dict(0=>0,119=>119,127=>127,1=>1),[533,614],48255,19,81),RpcApi.SimpleOrganism(0x00000000000b1d6f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_42::Float64 = 0.861571
            local var_41::Int64 = 8079688643533571310
            Creature.stepUp(o)
            var_42 = sec(var_41)
            var_41 = Int(Creature.idRight(o))
            var_41 = Int(Creature.idDown(o))
            var_42 = tan(var_41)
            var_42 = Float64(-50)
            var_41 = Creature.energyLeft(o)
            var_41 = var_41 + var_41
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
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
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
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = var_4 * var_4
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.pos.y)
            var_4 = Int16(o.pos.x)
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
    end),[98,38,30,73,83,1,72,0,51],6.59339,0,67.8614,97246,0x0000006c,Dict(0=>0,119=>119,13=>13,120=>120,117=>117,94=>94,108=>108,127=>127),[517,143],14054,82,87),RpcApi.SimpleOrganism(0x00000000000b16a6,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
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
            local var_28::Float64 = 0.0387023
            var_28 = cos(-92)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = (Int16)(var_13) >> (Int16)(var_13)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(-23238)
                    Int8(-23238)
                else
                    127
                end
            var_23 = func_5(var_23)
            Creature.eatLeft(c,o,Int(var_23))
            var_23 = var_23 - var_23
            var_23 = if 127 >= 0.0165966
                    Int8(round(0.0165966))
                else
                    127
                end
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],77.9363,0,82.8752,96975,0x0000006b,Dict(0=>0,127=>127),[786,322],31425,40,69),RpcApi.SimpleOrganism(0x00000000000b211b,:(function (c::Config.ConfigData,o::Creature.Organism)
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
            local var_39::Int16 = -32524
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_39 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_39
                end
            var_39 = Int16(o.pos.x)
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
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        if var_8 != var_8
        end
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        Creature.eatDown(c,o,Int(var_2))
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
        var_38 = func_7(var_36)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            Creature.eatLeft(c,o,Int(var_23))
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],0.0948247,0,84.7238,96830,0x0000006b,Dict(0=>0,119=>119,120=>120,127=>127),[981,170],4655,30,58),RpcApi.SimpleOrganism(0x00000000000b1728,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        function func_21(var_20::String="aEhz4rt6")
            local var_42::String = "NajEJLEp"
            var_40 = tan(-94)
            if var_20 !== var_20
            end
            var_20 = string(-2742303946964993509)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::Int64 = -8227194525802183402
            local var_39::Bool = true
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.x)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_41 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = Int16(o.pos.x)
            var_41 = var_41 - var_41
            var_17 = Int(Creature.idRight(o))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 !== var_4
                Creature.stepUp(o)
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = (Int16)(var_4) << (Int16)(var_4)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_18)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        Creature.eatUp(c,o,Int(var_2))
        var_38 = func_21(var_38)
        var_38 = string(var_2)
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        Creature.eatRight(c,o,Int(var_2))
        if var_8 >= var_8
            Creature.stepUp(o)
        end
        Creature.eatLeft(c,o,Int(var_2))
        var_8 = Creature.stepLeft(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_8 = var_2 > (Int8)(0)
        o.mem[var_13] = var_13
        for i::Int8 = 1:div(var_2,16)
            local var_23::Int8 = 63
            var_23 = func_5(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],2.21474,0,91.2401,96763,0x0000006c,Dict(0=>0,119=>119,47=>47,102=>102,121=>121,103=>103,48=>48,108=>108,127=>127),[3,702],30124,2,75),RpcApi.SimpleOrganism(0x00000000000b0f87,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_54::Bool = true
        function func_49(var_46::Int8=38,var_47::Int8=-104,var_48::Float64=0.888427)
            local var_55::String = "SzA3uLC0"
            local var_52::Bool = true
            Creature.eatRight(c,o,Int(var_46))
            Creature.eatRight(c,o,Int(var_46))
            var_48 = cos(1417325699522058963)
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
    end),[98,38,30,73,83,1,72,0,51],1.91359,0,69.6252,96482,0x0000006e,Dict(306=>306,29=>29,74=>74,905=>905,176=>176,892=>892,285=>285,318=>318,873=>873,354=>354,610=>610,563=>563,880=>880,671=>671,721=>721,930=>930,117=>117,284=>284,474=>474,188=>188,782=>782,685=>685,589=>589,621=>621,797=>797,353=>353,617=>617,430=>430,79=>79,71=>71,154=>154,184=>184,794=>794,908=>908,845=>845,733=>733,107=>107,682=>682,416=>416,10=>10,294=>294,642=>642,606=>606,162=>162,881=>881,240=>240,917=>917,261=>261,514=>514,5=>5,840=>840,41=>41,15=>15,461=>461,148=>148,776=>776,586=>586,66=>66,573=>573,512=>512,95=>95,236=>236,111=>111,90=>90,844=>844,14=>14,933=>933,396=>396,256=>256,592=>592,655=>655,565=>565,763=>763,620=>620,549=>549,135=>135,125=>125,146=>146,130=>130,545=>545,660=>660,453=>453,110=>110,309=>309,99=>99,525=>525,899=>899,366=>366,556=>556,128=>128,9=>9,348=>348,831=>831,860=>860,183=>183,736=>736,591=>591,522=>522,103=>103,931=>931,345=>345,152=>152,742=>742,723=>723,843=>843,730=>730,732=>732,667=>667,911=>911,795=>795,832=>832,846=>846,454=>454,191=>191,312=>312,663=>663,446=>446,751=>751,918=>918,276=>276,659=>659,508=>508,602=>602,241=>241,370=>370,197=>197,654=>654,593=>593,624=>624,142=>142,935=>935,848=>848,614=>614,718=>718,818=>818,372=>372,612=>612,433=>433,664=>664,677=>677,279=>279,700=>700,368=>368,609=>609,922=>922,885=>885,890=>890,916=>916,672=>672,94=>94,290=>290,650=>650,115=>115,607=>607,418=>418,455=>455,171=>171,824=>824,373=>373,750=>750,334=>334,641=>641,178=>178,426=>426,313=>313,551=>551,503=>503,493=>493,577=>577,113=>113,293=>293,914=>914,859=>859,297=>297,507=>507,471=>471,707=>707,393=>393,497=>497,274=>274,28=>28,634=>634,97=>97,584=>584,377=>377,39=>39,58=>58,867=>867,8=>8,333=>333,739=>739,428=>428,254=>254,635=>635,185=>185,628=>628,20=>20,868=>868,849=>849,774=>774,266=>266,421=>421,451=>451,166=>166,397=>397,35=>35,816=>816,286=>286,145=>145,392=>392,554=>554,346=>346,86=>86,126=>126,587=>587,303=>303,82=>82,567=>567,75=>75,883=>883,872=>872,701=>701,237=>237,87=>87,668=>668,613=>613,594=>594,510=>510,386=>386,347=>347,517=>517,523=>523,504=>504,98=>98,666=>666,792=>792,540=>540,161=>161,389=>389,22=>22,73=>73,119=>119,598=>598,222=>222,646=>646,53=>53,562=>562,580=>580,687=>687,869=>869,640=>640,502=>502,745=>745,305=>305,498=>498,603=>603,27=>27,134=>134,215=>215,131=>131,882=>882,249=>249,391=>391,207=>207,173=>173,542=>542,499=>499,201=>201,477=>477,876=>876,31=>31,70=>70,625=>625,597=>597,33=>33,886=>886,473=>473,327=>327,511=>511,230=>230,780=>780,773=>773,720=>720,50=>50,80=>80,326=>326,248=>248,513=>513,412=>412,447=>447,555=>555,401=>401,217=>217,855=>855,847=>847,786=>786,506=>506,120=>120,822=>822,681=>681,167=>167,903=>903,143=>143,62=>62,21=>21,548=>548,280=>280,260=>260,761=>761,251=>251,463=>463,649=>649,438=>438,656=>656,766=>766,757=>757,699=>699,55=>55,909=>909,155=>155,694=>694,569=>569,728=>728,709=>709,344=>344,787=>787,747=>747,929=>929,258=>258,253=>253,205=>205,483=>483,815=>815,269=>269,452=>452,492=>492,65=>65,202=>202,324=>324,44=>44,192=>192,729=>729,858=>858,13=>13,901=>901,270=>270,647=>647,137=>137,339=>339,105=>105,765=>765,800=>800,307=>307,379=>379,352=>352,273=>273,118=>118,38=>38,648=>648,553=>553,570=>570,826=>826,821=>821,902=>902,715=>715,100=>100,411=>411,904=>904,81=>81,790=>790,268=>268,19=>19,243=>243,535=>535,424=>424,317=>317,686=>686,676=>676,163=>163,861=>861,108=>108,329=>329,89=>89,924=>924,755=>755,144=>144,735=>735,400=>400,788=>788,375=>375,494=>494,893=>893,112=>112,544=>544,106=>106,26=>26,387=>387,350=>350,4=>4,823=>823,440=>440,622=>622,585=>585,834=>834,54=>54,101=>101,897=>897,337=>337,60=>60,34=>34,481=>481,467=>467,762=>762,238=>238,674=>674,627=>627,936=>936,295=>295,912=>912,242=>242,810=>810,189=>189,775=>775,16=>16,575=>575,913=>913,398=>398,875=>875,805=>805,208=>208,896=>896,695=>695,380=>380,72=>72,653=>653,362=>362,68=>68,643=>643,275=>275,46=>46,724=>724,382=>382,938=>938,547=>547,199=>199,323=>323,247=>247,631=>631,669=>669,18=>18,406=>406,403=>403,683=>683,652=>652,852=>852,232=>232,355=>355,749=>749,187=>187,83=>83,814=>814,539=>539,487=>487,541=>541,45=>45,753=>753,662=>662,808=>808,442=>442,743=>743,595=>595,546=>546,754=>754,376=>376,684=>684,61=>61,500=>500,710=>710,383=>383,330=>330,431=>431,409=>409,862=>862,36=>36,870=>870,680=>680,304=>304,629=>629,476=>476,361=>361,772=>772,415=>415,706=>706,423=>423,271=>271,714=>714,23=>23,315=>315,841=>841,288=>288,712=>712,300=>300,289=>289,435=>435,57=>57,799=>799,704=>704,690=>690,779=>779,445=>445,252=>252,921=>921,835=>835,96=>96,727=>727,803=>803,49=>49,819=>819,552=>552,489=>489,898=>898,534=>534,559=>559,716=>716,227=>227,515=>515,195=>195,157=>157,264=>264,221=>221,153=>153,697=>697,579=>579,590=>590,390=>390,619=>619,484=>484,169=>169,129=>129,88=>88,429=>429,937=>937,149=>149,783=>783,439=>439,529=>529,63=>63,630=>630,472=>472,557=>557,501=>501,245=>245,574=>574,210=>210,734=>734,495=>495,566=>566,150=>150,209=>209,789=>789,888=>888,175=>175,308=>308,200=>200,778=>778,543=>543,172=>172,314=>314,583=>583,37=>37,394=>394,596=>596,419=>419,436=>436,793=>793,450=>450,216=>216,141=>141,30=>30,1=>1,47=>47,214=>214,91=>91,470=>470,147=>147,639=>639,244=>244,693=>693,829=>829,488=>488,140=>140,863=>863,785=>785,560=>560,688=>688,378=>378,51=>51,177=>177,759=>759,123=>123,657=>657,427=>427,358=>358,661=>661,740=>740,581=>581,713=>713,658=>658,532=>532,756=>756,365=>365,771=>771,825=>825,907=>907,509=>509,78=>78,521=>521,407=>407,616=>616,874=>874,820=>820,817=>817,182=>182,138=>138,703=>703,518=>518,292=>292,866=>866,235=>235,692=>692,673=>673,40=>40,0=>0,838=>838,599=>599,417=>417,891=>891,842=>842,884=>884,12=>12,343=>343,528=>528,770=>770,626=>626,246=>246,764=>764,410=>410,364=>364,889=>889,837=>837,623=>623,456=>456,678=>678,262=>262,92=>92,338=>338,767=>767,124=>124,267=>267,791=>791,360=>360,85=>85,940=>940,25=>25,798=>798,181=>181,894=>894,768=>768,356=>356,458=>458,194=>194,233=>233,52=>52,234=>234,367=>367,758=>758,278=>278,336=>336,533=>533,64=>64,568=>568,444=>444,257=>257,220=>220,651=>651,408=>408,524=>524,932=>932,854=>854,588=>588,67=>67,864=>864,229=>229,190=>190,7=>7,228=>228,179=>179,395=>395,537=>537,325=>325,437=>437,536=>536,615=>615,878=>878,340=>340,526=>526,402=>402,519=>519,399=>399,807=>807,174=>174,319=>319,371=>371,24=>24,156=>156,116=>116,349=>349,496=>496,56=>56,839=>839,633=>633,520=>520,895=>895,11=>11,708=>708,158=>158,491=>491,160=>160,464=>464,582=>582,478=>478,384=>384,490=>490,335=>335,479=>479,828=>828,165=>165,114=>114,133=>133,328=>328,748=>748,84=>84,738=>738,752=>752,645=>645,93=>93,425=>425,564=>564,608=>608,77=>77,311=>311,605=>605,441=>441,132=>132,516=>516,231=>231,725=>725,550=>550,302=>302,225=>225,224=>224,76=>76,213=>213,204=>204,122=>122,769=>769,414=>414,287=>287,939=>939,180=>180,102=>102,601=>601,413=>413,561=>561,806=>806,731=>731,877=>877,331=>331,638=>638,679=>679,462=>462,239=>239,296=>296,139=>139,717=>717,705=>705,212=>212,310=>310,871=>871,760=>760,265=>265,282=>282,853=>853,17=>17,250=>250,801=>801,466=>466,127=>127,934=>934,475=>475,851=>851,637=>637,744=>744,226=>226,203=>203,43=>43,104=>104,604=>604,320=>320,468=>468,919=>919,465=>465,857=>857,48=>48,702=>702,711=>711,737=>737,291=>291,422=>422,196=>196,576=>576,281=>281,578=>578,277=>277,255=>255,485=>485,405=>405,746=>746,301=>301,164=>164,830=>830,2=>2,925=>925,136=>136,151=>151,342=>342,900=>900,611=>611,741=>741,283=>283,159=>159,448=>448,926=>926,459=>459,696=>696,538=>538,121=>121,109=>109,833=>833,298=>298,1001=>1001,457=>457,722=>722,836=>836,168=>168,644=>644,906=>906,784=>784,636=>636,211=>211,359=>359,777=>777,332=>332,299=>299,363=>363,198=>198,272=>272,482=>482,469=>469,887=>887,571=>571,374=>374,505=>505,443=>443,600=>600,827=>827,689=>689,920=>920,449=>449,879=>879,480=>480,369=>369,850=>850,698=>698,486=>486,530=>530,170=>170,42=>42,193=>193,59=>59,675=>675,796=>796,527=>527,811=>811,726=>726,865=>865,388=>388,69=>69,219=>219,223=>223,802=>802,351=>351,572=>572,434=>434,259=>259,558=>558,460=>460,263=>263,357=>357,915=>915,665=>665,531=>531,206=>206,927=>927,32=>32,316=>316,385=>385,809=>809,670=>670,923=>923,432=>432,381=>381,719=>719,781=>781,813=>813,3=>3,910=>910,804=>804,404=>404,691=>691,928=>928,812=>812,632=>632,618=>618,341=>341,321=>321,186=>186,420=>420,6=>6,856=>856,322=>322,218=>218),[1165,757],49670,27,87),RpcApi.SimpleOrganism(0x00000000000b1cb7,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_38::String = "Vm2emDuU"
        local var_36::String = "lLH70sn1"
        function func_21(var_20::String="aEhz4rt6")
            if var_20 != var_20
            end
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_41::String = "rqY8HY53"
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            var_39 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            if var_4 === var_4
            end
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) >> (Int8)(var_18)
            var_3 = if 127 >= abs(var_4)
                    Int8(var_4)
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
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_8 = Creature.stepDown(o)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_8 = isempty("I33YlJlI")
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_8 = var_2 < (Int8)(1)
        var_8 = 0.633697 > (Float64)(0)
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
        var_36 = func_21(var_36)
        for i::Int8 = 1:div(var_2,16)
            var_23 = if 127 >= abs(21804)
                    Int8(21804)
                else
                    127
                end
            var_23 = func_5(var_23)
            var_23 = (Int8)(var_23) << (Int8)(var_23)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],3.68644,0,99.8746,96473,0x0000006b,Dict(30=>30,124=>124,0=>0,118=>118,111=>111,31=>31,120=>120,112=>112,113=>113,106=>106,121=>121,122=>122,114=>114,109=>109,107=>107,125=>125,51=>51,119=>119,116=>116,123=>123,110=>110,127=>127,117=>117,126=>126,108=>108,115=>115,105=>105),[1491,178],15895,50,60),RpcApi.SimpleOrganism(0x00000000000b1f91,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_36::String="C3nPAoUB",var_37::Int64=-2142640206469623076)
            var_37 = Creature.energyRight(o)
            return var_36
        end
        function func_21(var_20::String="aEhz4rt6")
            var_20 = string(true)
            var_34 = tan(var_34)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
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
                Creature.stepDown(o)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.pos.x)
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
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_17 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
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
        var_8 = Bool(abs(var_8 - var_8))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int8 = 79
            var_32 = if 127 >= abs(4127335446745630773)
                    Int8(4127335446745630773)
                else
                    127
                end
            var_32 = if isempty("eeFPSeMb")
                    0
                else
                    1
                end
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
            local var_28::Float64 = 0.0387023
            var_28 = sec(var_28)
            var_28 = cos(3425595340202968578)
            var_28 = sqrt(abs(var_28))
            var_28 = Float64(6746598103934035732)
            var_28 = cos(-92)
            var_28 = tan(-4871)
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
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],30.5197,0,86.1293,95679,0x0000006e,Dict(0=>0,127=>127),[793,323],8594,87,80)]