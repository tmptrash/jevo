julia> RpcApi.SimpleOrganism[RpcApi.SimpleOrganism(0x0000000000097e9d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            var_27 = sin(89)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepUp(o)
            var_17 = (Int8)(var_17) $ (Int8)(var_17)
            var_17 = if 127 >= 0.992323
                    Int8(round(0.992323))
                else
                    127
                end
            var_17 = var_17 - var_17
            Creature.eatRight(c,o,Int(var_17))
            var_24 = (Int16)(var_24) >> (Int16)(var_24)
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            var_24 = Int16(Creature.eatUp(c,o,Int(var_17)))
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
            var_21 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_21
                end
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
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        Creature.eatDown(c,o,Int(var_2))
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
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],34.6703,0,42.8595,188903,0x0000006b,Dict(0=>0,127=>127,1=>1),[503,596],1038,78,77),RpcApi.SimpleOrganism(0x0000000000097e0d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_34::Int64 = 1866298724586900304
            local var_33::Int64 = -3764530521032758703
            Creature.stepRight(o)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_3 = (Int8)(var_3) << (Int8)(var_3)
            Creature.stepLeft(o)
            for i::Int8 = 1:div(var_3,16)
            end
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_20 = string(0.507728)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        if var_2 == var_2
            local var_32::String = "Gb20kP4p"
            local var_31::String = "Oagjn1By"
            local var_28::Int16 = 26527
            var_28 = (Int16)(var_28) >> (Int16)(var_28)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        if var_20 === var_20
        end
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if 127 >= abs(874617539073884084)
                Int8(874617539073884084)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.66943,0,56.1014,185870,0x0000006b,Dict{Int16,Int16}(),[1177,381],2478,50,44),RpcApi.SimpleOrganism(0x0000000000097d04,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
            Creature.stepLeft(o)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            local var_38::Int16 = 9144
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
            var_38 = Int16(o.color)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],20.2749,0,41.2711,165143,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[571,368],5127,35,53),RpcApi.SimpleOrganism(0x000000000009783b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.pos.y)
            Creature.stepLeft(o)
            var_30 = (Int16)(var_30) >> (Int16)(var_30)
            o.mem[var_30] = var_30
            var_29 = string(var_30)
            var_30 = if haskey(o.mem,var_30)
                    o.mem[var_30]
                else
                    var_30
                end
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_42::Int64 = -3314767544703872695
            var_42 = Creature.energyRight(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
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
        var_33 = Int(Creature.idDown(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Creature.energyUp(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = var_33 + var_33
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Int(Creature.idUp(o))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_20 = func_7(var_28)
        var_33 = Creature.energyDown(o)
        var_33 = Creature.energyDown(o)
        var_33 = (Int64)(var_33) << (Int64)(var_33)
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
        for i::Int8 = 1:div(var_2,16)
            Creature.stepUp(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(true)
        var_33 = Creature.energyLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],88.1804,0,67.6991,163493,0x0000006b,Dict{Int16,Int16}(),[698,210],17401,5,66),RpcApi.SimpleOrganism(0x0000000000097e48,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
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
            var_4 = Int16(o.pos.y)
            var_3 = (Int8)(var_3) | (Int8)(var_3)
            var_17 = Int(Creature.idRight(o))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_18)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            if var_18 != var_3
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
        for i::Int8 = 1:div(var_2,16)
        end
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
        var_8 = var_8 & var_8
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
    end),[98,38,30,73,83,1,72,0,51],54.1833,0,27.9171,161830,0x0000006b,Dict(0=>0,127=>127),[1392,258],1887,50,61),RpcApi.SimpleOrganism(0x0000000000097a4d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyDown(o)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = (Int16)(var_30) $ (Int16)(var_30)
            if var_30 <= var_30
                local var_41::Bool = false
                Creature.stepRight(o)
            end
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
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],82.6035,0,99.6013,160614,0x0000006b,Dict{Int16,Int16}(),[953,640],12091,2,55),RpcApi.SimpleOrganism(0x0000000000097e38,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_37::Int64 = 2077137019061984915
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_38::Float64 = 0.41013
            var_30 = Int16(o.color)
            var_38 = tan(var_30)
            Creature.stepRight(o)
            var_30 = Int16(o.pos.x)
            var_30 = Int16(o.pos.y)
            Creature.stepLeft(o)
            var_30 = if haskey(o.mem,var_30)
                    o.mem[var_30]
                else
                    var_30
                end
            var_30 = Int16(o.color)
            var_30 = if haskey(o.mem,var_30)
                    o.mem[var_30]
                else
                    var_30
                end
            Creature.stepDown(o)
            var_29 = string(0.256165)
            Creature.stepRight(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
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
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_20 = func_7(var_20)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idDown(o))
        var_33 = Creature.energyDown(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_28 = string(false)
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_13 = Int16(o.pos.y)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_2 = (Int8)(var_2) << (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_20 = func_7(var_20)
        var_33 = Int(Creature.idUp(o))
        return true
    end),[98,38,30,73,83,1,72,0,51],50.8468,0,84.998,160554,0x0000006b,Dict{Int16,Int16}(),[534,215],2048,65,54),RpcApi.SimpleOrganism(0x0000000000097e2a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::Float64 = 0.50674
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
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
        var_33 = Creature.energyRight(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        var_33 = Int(Creature.idDown(o))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Int(Creature.idRight(o))
        var_20 = func_31(var_20)
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_33 = Int(Creature.idLeft(o))
        var_20 = string(-3373)
        var_33 = Creature.energyRight(o)
        var_36 = cos(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],6.86004,0,34.5494,145730,0x0000006b,Dict{Int16,Int16}(),[536,177],2187,38,37),RpcApi.SimpleOrganism(0x0000000000096e57,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
        end
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
    end),[98,38,30,73,83,1,72,0,51],56.8726,0,49.8456,145265,0x0000006b,Dict(0=>0,127=>127),[810,329],42787,4,64),RpcApi.SimpleOrganism(0x000000000009756c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepUp(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idDown(o))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = string(var_33)
        var_33 = Int(22466)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idUp(o))
        var_33 = Creature.energyUp(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_33 = Int(Creature.idRight(o))
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],5.17134,0,85.0455,139273,0x0000006b,Dict{Int16,Int16}(),[957,168],24604,19,38),RpcApi.SimpleOrganism(0x00000000000974b3,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            Creature.stepUp(o)
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
    end),[98,38,30,73,83,1,72,0,51],3.16157,0,55.98,138188,0x0000006b,Dict(0=>0,127=>127),[361,257],26461,50,60),RpcApi.SimpleOrganism(0x0000000000097199,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_33(var_31::Int8=-54,var_32::Bool=false)
            local var_36::Int64 = -6984250030665055298
            local var_37::Int16 = 2218
            var_32 = Creature.stepDown(o)
            var_36 = Creature.energyRight(o)
            var_31 = var_31 + var_31
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_36 = Int(Creature.idDown(o))
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            for i::Int8 = 1:div(var_31,16)
                Creature.stepLeft(o)
            end
            var_37 = (Int16)(var_37) $ (Int16)(var_37)
            var_36 = var_36 * var_36
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            var_36 = Creature.energyRight(o)
            var_36 = Creature.energyUp(o)
            var_32 = isempty("wAs8Je6Y")
            var_37 = Int16(Creature.eatLeft(c,o,Int(var_31)))
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            return var_31
        end
        local var_30::Int64 = 720224374337809168
        local var_25::Int16 = -27637
        function func_22(var_20::Int16=15694,var_21::Bool=false)
            local var_40::Bool = true
            local var_39::Int8 = 112
            var_39 = (Int8)(var_39) $ (Int8)(var_39)
            var_21 = Creature.stepDown(o)
            o.mem[var_20] = var_20
            if var_39 > var_39
            end
            var_21 = Creature.stepUp(o)
            var_39 = (Int8)(var_39) << (Int8)(var_39)
            o.mem[var_20] = var_20
            var_40 = isempty("s1bBovpd")
            return var_20
        end
        function func_19(var_16::Int64=3658747169151054421,var_17::Int8=-78,var_18::String="zRsjyM9g")
            var_16 = Int(Creature.idDown(o))
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_17,16)
                local var_35::Int16 = 31083
                Creature.stepRight(o)
                var_35 = (Int16)(var_35) $ (Int16)(var_35)
            end
            Creature.stepUp(o)
            var_17 = var_17 + var_17
            for i::Int8 = 1:div(var_17,16)
            end
            var_17 = if 127 >= 0.00734862
                    Int8(round(0.00734862))
                else
                    127
                end
            var_17 = var_17 + var_17
            var_16 = div(var_16,if var_16 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_16
                    end)
            for i::Int8 = 1:div(var_17,16)
            end
            for i::Int8 = 1:div(var_17,16)
            end
            var_16 = Int(Creature.idRight(o))
            return var_16
        end
        local var_13::Int16 = 1446
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            return var_3
        end
        var_8 = Creature.stepDown(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_30 = Creature.energyRight(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_15 = func_5(var_2,var_13)
        var_25 = Int16(o.pos.x)
        var_25 = var_25 + var_25
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_1 = Creature.energyDown(o)
        var_30 = Int(Creature.idUp(o))
        var_25 = Int16(o.color)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_15)))
        Creature.stepRight(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        if var_2 != var_2
            Creature.stepRight(o)
            Creature.stepDown(o)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_25 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        var_1 = Int(var_1)
        var_25 = Int16(o.pos.x)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        var_30 = Int(var_15)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_15 < var_15
            Creature.stepLeft(o)
        end
        var_25 = if haskey(o.mem,var_25)
                o.mem[var_25]
            else
                var_25
            end
        var_2 = (Int8)(var_2) | (Int8)(var_15)
        var_13 = Int16(o.color)
        var_25 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        Creature.stepRight(o)
        var_13 = var_25 + var_13
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_30 = Int(Creature.idRight(o))
        var_25 = var_25 % if var_25 === (Int16)(0)
                    (Int16)(1)
                else
                    var_25
                end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_25 = Int16(o.pos.x)
        var_30 = Creature.energyLeft(o)
        var_30 = Int(Creature.idDown(o))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_25 = Int16(Creature.eatRight(c,o,Int(var_15)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        var_13 = Int16(o.color)
        var_8 = isempty("Vm1XJRRZ")
        return true
    end),[98,38,30,73,83,1,72,0,51],1.81155,0,75.6058,136857,0x00000070,Dict(47=>47,40=>40,0=>0,1446=>1446,119=>119,-27637=>-27637,118=>118,127=>127,90=>90,111=>111,117=>117,41=>41,115=>115),[507,258],34430,50,105),RpcApi.SimpleOrganism(0x0000000000097c54,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::Float64 = 0.50674
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
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
        var_33 = Creature.energyRight(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Int(Creature.idRight(o))
        var_20 = func_31(var_20)
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_33 = Int(Creature.idLeft(o))
        var_20 = string(-3373)
        var_33 = Creature.energyRight(o)
        var_36 = cos(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],40.9997,0,34.5494,135730,0x0000006b,Dict{Int16,Int16}(),[535,176],6889,50,36),RpcApi.SimpleOrganism(0x0000000000097e6d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_42(var_41::Int8=-84)
            Creature.eatLeft(c,o,Int(var_41))
            Creature.stepRight(o)
            var_41 = if 127 >= abs(-4880596659915681820)
                    Int8(-4880596659915681820)
                else
                    127
                end
            return var_41
        end
        local var_40::String = "3M8wIEZn"
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepLeft(o)
            var_30 = Int16(o.color)
            Creature.stepLeft(o)
            var_30 = if isempty(var_29)
                    0
                else
                    1
                end
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyDown(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_33 = Int(Creature.idLeft(o))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Creature.energyLeft(o)
        var_33 = Creature.energyDown(o)
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_20 = var_20 * var_20
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
            local var_36::Int8 = 29
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],47.3862,0,44.0868,131687,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[584,74],1517,34,60),RpcApi.SimpleOrganism(0x0000000000096c7b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepLeft(o)
            var_30 = Int16(o.pos.y)
            Creature.stepRight(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            local var_38::Int16 = 9144
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],5.62803,0,59.8556,128821,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[569,365],47566,85,54),RpcApi.SimpleOrganism(0x0000000000097e79,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_35::String = "BNGJrWiv"
        function func_21(var_20::String="aEhz4rt6")
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            var_6 = var_6 * var_6
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_31::Int8 = -33
            local var_18::Int8 = 72
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_31)))
            var_17 = Creature.energyUp(o)
            var_18 = var_18 % if var_3 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_3
                    end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                local var_33::Float64 = 0.290425
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
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
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        var_13 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_13
            end
        var_8 = var_8 | var_8
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_13 = Int16(o.pos.y)
        var_1 = Creature.energyDown(o)
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
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
        if var_8 == var_8
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
    end),[98,38,30,73,83,1,72,0,51],1.2883,0,99.6231,127713,0x0000006c,Dict(0=>0,127=>127),[785,303],1399,36,68),RpcApi.SimpleOrganism(0x0000000000097d2e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_45(var_42::Int64=-7001084229554550321,var_43::Int64=-6691411462864276443,var_44::String="3dmKbBQ0")
            local var_47::Int8 = 34
            var_43 = Creature.energyLeft(o)
            var_44 = string(-25928)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_42
        end
        local var_41::Int64 = -3755146626635748703
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(3098041310167594645)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        var_41 = Creature.energyDown(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
            var_38 = Int16(o.pos.x)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_41 = div(var_41,if var_41 === (Int64)(0)
                    (Int64)(1)
                else
                    var_41
                end)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],53.5638,0,46.0209,125363,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[582,521],4707,40,58),RpcApi.SimpleOrganism(0x00000000000976b9,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_45(var_42::Int64=-7001084229554550321,var_43::Int64=-6691411462864276443,var_44::String="3dmKbBQ0")
            var_43 = Creature.energyLeft(o)
            var_44 = string(-25928)
            var_42 = Int(true)
            var_42 = Int(Creature.idRight(o))
            return var_42
        end
        local var_41::Int64 = -3755146626635748703
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_40::Int16 = -22082
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        Creature.stepDown(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
            var_38 = Int16(o.pos.x)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_41 = div(var_41,if var_41 === (Int64)(0)
                    (Int64)(1)
                else
                    var_41
                end)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],58.5862,0,68.9499,124747,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[578,583],21265,30,56),RpcApi.SimpleOrganism(0x0000000000097735,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_35::Bool = true
            var_35 = Creature.stepLeft(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = Int16(o.pos.x)
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_18,16)
            end
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
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
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
        end
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
    end),[98,38,30,73,83,1,72,0,51],58.5773,0,51.9397,121031,0x0000006b,Dict(0=>0,127=>127),[811,330],20023,49,66),RpcApi.SimpleOrganism(0x0000000000097edf,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int8 = 79
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            if var_18 < var_3
                local var_32::String = "F3Pys16Z"
            end
            var_4 = var_4 * var_4
            var_17 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_17 = Int(Creature.idUp(o))
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_18,16)
            end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
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
        for i::Int8 = 1:div(var_2,16)
        end
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_8 == var_8
        end
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
    end),[98,38,30,73,83,1,72,0,51],45.5059,0,62.8704,117949,0x0000006b,Dict(0=>0,127=>127),[810,330],378,14,62),RpcApi.SimpleOrganism(0x0000000000097d4f,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            var_27 = sin(89)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepUp(o)
            var_17 = (Int8)(var_17) $ (Int8)(var_17)
            var_17 = if 127 >= 0.992323
                    Int8(round(0.992323))
                else
                    127
                end
            var_17 = var_17 - var_17
            Creature.eatRight(c,o,Int(var_17))
            var_24 = (Int16)(var_24) >> (Int16)(var_24)
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            var_24 = Int16(Creature.eatUp(c,o,Int(var_17)))
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
            var_21 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_21
                end
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
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        Creature.eatDown(c,o,Int(var_2))
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
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],95.6404,0,61.8441,115622,0x0000006b,Dict(0=>0,127=>127,1=>1),[504,596],4377,50,77),RpcApi.SimpleOrganism(0x00000000000976ab,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            Creature.stepDown(o)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            o.mem[var_30] = var_30
            Creature.stepLeft(o)
            var_30 = Int16(o.color)
            if var_30 <= var_30
                Creature.stepRight(o)
            end
            var_30 = Int16(o.pos.y)
            var_30 = Int16(o.pos.x)
            var_30 = Int16(o.pos.y)
            var_29 = string(var_29)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_43::String = "xo8HUCJb"
            Creature.stepRight(o)
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
            var_42 = var_42
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepDown(o)
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],0.484913,0,19.6312,115593,0x0000006b,Dict{Int16,Int16}(),[1858,371],21401,72,64),RpcApi.SimpleOrganism(0x0000000000097c12,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_26::String = "BG9hco6w"
        function func_18(var_17::Int8=-100)
            var_17 = (Int8)(var_17) $ (Int8)(var_17)
            Creature.stepUp(o)
            var_17 = var_17 - var_17
            Creature.eatRight(c,o,Int(var_17))
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            var_24 = Int16(Creature.eatUp(c,o,Int(var_17)))
            return var_17
        end
        local var_13::Int16 = 1446
        local var_8::Bool = true
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_21::Int16 = -16711
            local var_19::Int64 = 8381526388126889670
            var_19 = (Int64)(var_19) & (Int64)(var_19)
            var_19 = Int(var_3)
            var_19 = Int(round(0.293498))
            var_4 = (Int16)(var_21) | (Int16)(var_21)
            var_21 = if 32767 >= 0.545784
                    Int16(round(0.545784))
                else
                    32767
                end
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_21 = (Int16)(var_21) << (Int16)(var_21)
            var_19 = Int(Creature.getEnergy(o,Int(var_21),Int(var_21)))
            var_21 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_21
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_21 = if true
                    1
                else
                    0
                end
            var_19 = Creature.energyLeft(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_19 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_3,16)
                local var_20::String = "vb1omhmc"
            end
            o.mem[var_21] = var_21
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_4 = Int16(o.pos.y)
            for i::Int8 = 1:div(var_3,16)
            end
            return var_3
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        var_26 = var_26[1:if length(var_26) > length(var_26)
                        0
                    else
                        length(var_26) - length(var_26)
                    end]
        if var_26 != var_26
            Creature.stepLeft(o)
        end
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = (Bool)(var_8) $ (Bool)(var_8)
        var_1 = Int(var_1)
        o.mem[var_13] = var_13
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.46892,0,73.3397,115452,0x0000006b,Dict(0=>0,127=>127,1=>1),[516,600],7558,50,68),RpcApi.SimpleOrganism(0x0000000000097e5e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_18::Int8 = 72
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
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
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_18)))
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            var_4 = if 32767 >= abs(-8677747630754013241)
                    Int16(-8677747630754013241)
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
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_13 = Int16(o.color)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
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
        var_8 = var_8 & var_8
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
    end),[98,38,30,73,83,1,72,0,51],47.899,0,17.046,114844,0x0000006b,Dict(0=>0,127=>127),[153,258],1667,35,62),RpcApi.SimpleOrganism(0x0000000000097ac2,:(function (c::Config.ConfigData,o::Creature.Organism)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[15,33,16,98,28,9,94,5,95],75.7525,0,57.7884,113566,0x0000006b,Dict{Int16,Int16}(),[601,389],10920,52,12),RpcApi.SimpleOrganism(0x0000000000097d1e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_31(var_28::Int8=104,var_29::Int16=-5145,var_30::Int16=-31734)
            Creature.stepRight(o)
            return var_28
        end
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            for i::Int8 = 1:div(var_3,16)
            end
            var_14 = Int(Creature.getEnergy(o,Int(var_4),Int(var_4)))
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) << (Int8)(var_3)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            Creature.stepUp(o)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = if 32767 >= abs(var_4)
                    Int16(var_4)
                else
                    32767
                end
            var_4 = Int16(o.pos.y)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(-5453)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = string(0.507728)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_20)
        if var_20 <= var_20
        end
        Creature.stepRight(o)
        for i::Int8 = 1:div(var_2,16)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],7.00634,0,35.6774,110316,0x0000006b,Dict{Int16,Int16}(),[1237,333],4871,50,47),RpcApi.SimpleOrganism(0x0000000000097d56,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_49::String = "18DQyDY3"
        function func_45(var_42::Int64=-7001084229554550321,var_43::Int64=-6691411462864276443,var_44::String="3dmKbBQ0")
            var_42 = Int(Creature.idDown(o))
            var_43 = Creature.energyUp(o)
            var_44 = string(-25928)
            return var_42
        end
        local var_41::Int64 = -3755146626635748703
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_46::String = "yIi6BVhu"
            var_30 = if 32767 >= 0.294366
                    Int16(round(0.294366))
                else
                    32767
                end
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_48::Int16 = -1914
            local var_47::Int64 = -8425710299007782412
            var_47 = Int(Creature.idUp(o))
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_2 = var_2 - var_2
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = var_2 - var_2
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_2 = var_2 - var_2
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
            var_38 = Int16(o.pos.x)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idRight(o))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],34.6718,0,24.2788,104274,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[485,174],4307,5,63),RpcApi.SimpleOrganism(0x0000000000097a98,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_42(var_41::Int8=-84)
            Creature.eatLeft(c,o,Int(var_41))
            var_41 = var_41 * var_41
            return var_41
        end
        local var_40::String = "3M8wIEZn"
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = if haskey(o.mem,var_30)
                    o.mem[var_30]
                else
                    var_30
                end
            Creature.stepLeft(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyDown(o)
        Creature.stepDown(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_33 = Int(Creature.idLeft(o))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Creature.energyLeft(o)
        var_33 = Creature.energyDown(o)
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_20 = var_20 * var_20
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
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.5625,0,3.06808,103977,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[583,436],11340,50,57),RpcApi.SimpleOrganism(0x0000000000097e54,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_30(var_29::Bool=true)
            var_29 = Creature.stepDown(o)
            var_29 = var_29 | var_29
            var_29 = var_29 | var_29
            var_29 = Creature.stepLeft(o)
            var_29 = Creature.stepRight(o)
            return var_29
        end
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            for i::Int8 = 1:div(var_3,16)
            end
            var_3 = if 127 >= 0.609007
                    Int8(round(0.609007))
                else
                    127
                end
            Creature.stepDown(o)
            var_4 = Int16(o.pos.y)
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
            local var_32::Int64 = -23455789614965601
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if 127 >= abs(874617539073884084)
                Int8(874617539073884084)
            else
                127
            end
        return true
    end),[98,38,30,73,83,1,72,0,51],44.1193,0,53.1864,97775,0x0000006b,Dict{Int16,Int16}(),[952,632],1767,50,37),RpcApi.SimpleOrganism(0x0000000000097abc,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::Float64 = 0.50674
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
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
        var_33 = Creature.energyRight(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Int(Creature.idRight(o))
        var_20 = func_31(var_20)
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_33 = Int(Creature.idLeft(o))
        var_20 = string(-3373)
        Creature.eatDown(c,o,Int(var_2))
        var_36 = cos(var_2)
        return true
    end),[98,38,30,73,83,1,72,0,51],28.3679,0,76.6345,97440,0x0000006b,Dict{Int16,Int16}(),[534,175],10982,53,36),RpcApi.SimpleOrganism(0x0000000000096d22,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_35::Int16 = 8715
        function func_30(var_29::String="zYD0Ft5e")
            local var_48::Int64 = -5460046109540745376
            Creature.stepLeft(o)
            return var_29
        end
        function func_27(var_24::Int64=7863110451679854202,var_25::Int16=-9508,var_26::Bool=true)
            local var_37::Int16 = 28133
            var_37 = Int16(o.color)
            var_43 = var_43[1:if length(var_43) > length(var_43)
                            0
                        else
                            length(var_43) - length(var_43)
                        end]
            var_24 = (Int64)(var_24) << (Int64)(var_24)
            o.mem[var_37] = var_25
            var_26 = Creature.stepDown(o)
            o.mem[var_37] = var_37
            var_24 = Int(round(0.635562))
            var_24 = Int(Creature.idUp(o))
            var_25 = Int16(o.color)
            var_26 = Creature.stepDown(o)
            var_24 = Creature.energyUp(o)
            var_25 = if isempty(var_43)
                    0
                else
                    1
                end
            var_26 = isempty(var_43)
            var_24 = Int(Creature.idRight(o))
            var_26 = !var_26
            var_26 = Creature.stepDown(o)
            var_37 = div(var_37,if var_37 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_37
                    end)
            var_24 = Creature.energyUp(o)
            var_26 = var_26 | var_26
            if var_37 <= var_37
                local var_49::Int64 = 4547181573164952934
            end
            var_24 = Int(Creature.idRight(o))
            var_24 = Int(Creature.idLeft(o))
            var_24 = Creature.energyRight(o)
            var_25 = Int16(o.pos.x)
            var_26 = 0.500361 < (Float64)(1)
            var_24 = Creature.energyUp(o)
            var_24 = Int(var_24)
            var_26 = Creature.stepRight(o)
            var_26 = Creature.stepUp(o)
            var_24 = Int(Creature.idRight(o))
            var_26 = isempty("4rfKxqQl")
            return var_24
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        var_35 = if haskey(o.mem,var_35)
                o.mem[var_35]
            else
                var_35
            end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_35 = (Int16)(var_35) << (Int16)(var_35)
        Creature.eatUp(c,o,Int(var_2))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.stepDown(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_35 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_35 = Int16(Creature.eatDown(c,o,Int(var_2)))
        if var_2 != var_2
            local var_40::Int16 = 31478
            Creature.stepRight(o)
            var_40 = if 32767 >= 0.877189
                    Int16(round(0.877189))
                else
                    32767
                end
            var_40 = div(var_40,if var_40 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_40
                    end)
            var_40 = if haskey(o.mem,var_40)
                    o.mem[var_40]
                else
                    var_40
                end
            var_40 = Int16(o.pos.y)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_35 = var_35 * var_35
        var_35 = Int16(Creature.eatDown(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],23.019,0,84.9153,97139,0x0000006b,Dict{Int16,Int16}(),[889,303],45897,43,68),RpcApi.SimpleOrganism(0x0000000000096ebf,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_33(var_32::Bool=true)
            var_32 = Bool(abs(var_32 - var_32))
            var_32 = (Bool)(var_32) & (Bool)(var_32)
            return var_32
        end
        local var_31::Float64 = 0.249085
        function func_30(var_28::String="Q1oxAt0f",var_29::Float64=0.0668105)
            var_29 = sec(-1814984341291389255)
            var_29 = cot(if -6530245824030208528 === (Int64)(0)
                        (Int64)(1)
                    else
                        -6530245824030208528
                    end)
            var_29 = sin(61)
            var_29 = pi
            var_29 = sin(-11168)
            var_29 = Float64(-7482805537088905584)
            return var_28
        end
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_34::Int8 = 87
            Creature.eatUp(c,o,Int(var_34))
            Creature.eatUp(c,o,Int(var_34))
        end
        var_31 = log(if var_31 > (Float64)(0)
                    var_31
                else
                    abs(if var_31 !== 0.0
                            var_31
                        else
                            1.0
                        end)
                end)
        var_20 = string(false)
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_31 = cos(8960200434210869804)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_2)
        var_27 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.stepUp(o)
        var_31 = log(if var_31 > (Float64)(0)
                    var_31
                else
                    abs(if var_31 !== 0.0
                            var_31
                        else
                            1.0
                        end)
                end)
        var_31 = pi
        var_27 = (Int16)(var_27) & (Int16)(var_27)
        Creature.eatRight(c,o,Int(var_2))
        var_31 = Float64(-2091949667359778970)
        var_2 = if 127 >= abs(-31115)
                Int8(-31115)
            else
                127
            end
        var_31 = cot(if var_31 === (Float64)(0)
                    (Float64)(1)
                else
                    var_31
                end)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],91.0316,0,69.9578,96484,0x0000006b,Dict{Int16,Int16}(),[496,719],41745,84,39),RpcApi.SimpleOrganism(0x0000000000097699,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_37::Int64 = 2077137019061984915
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_39::Int8 = -109
            local var_38::Int8 = -53
            var_30 = Int16(Creature.eatDown(c,o,Int(var_38)))
            var_30 = Int16(o.pos.x)
            var_29 = string(0.256165)
            var_30 = Int16(Creature.eatDown(c,o,Int(var_38)))
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_37 = Creature.energyLeft(o)
        var_33 = var_37 * var_33
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_20 = func_7(var_20)
        var_20 = string(var_28)
        var_33 = Creature.energyUp(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idDown(o))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = string(true)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_28 = string(false)
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_13 = Int16(o.pos.y)
        var_37 = Int(Creature.idRight(o))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        var_20 = func_7(var_20)
        Creature.eatUp(c,o,Int(var_2))
        var_2 = (Int8)(var_2) >> (Int8)(var_2)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Creature.energyLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        return true
    end),[98,38,30,73,83,1,72,0,51],5.58152,0,58.3048,94650,0x0000006b,Dict{Int16,Int16}(),[537,214],21581,7,51),RpcApi.SimpleOrganism(0x0000000000097ebe,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_45(var_42::Int64=-7001084229554550321,var_43::Int64=-6691411462864276443,var_44::String="3dmKbBQ0")
            return var_42
        end
        local var_41::Int64 = -3755146626635748703
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_40::Int16 = -22082
            o.mem[var_30] = var_40
            var_40 = Int16(o.pos.x)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = Int(Creature.idRight(o))
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_2 = if 127 >= 0.764437
                Int8(round(0.764437))
            else
                127
            end
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_41 = div(var_33,if var_33 === (Int64)(0)
                    (Int64)(1)
                else
                    var_33
                end)
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_41 = Creature.energyDown(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        var_2 = (Int8)(var_2) << (Int8)(var_2)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
            var_38 = Int16(o.pos.x)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],58.2769,0,80.329,94649,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[578,373],708,13,56),RpcApi.SimpleOrganism(0x0000000000097ec3,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_36::String = "Fl6FxyHI"
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepDown(o)
            var_30 = (Int16)(var_30) >> (Int16)(var_30)
            var_29 = string(5)
            var_30 = Int16(o.pos.y)
            if var_29 <= var_29
                Creature.stepDown(o)
            end
            var_30 = (Int16)(var_30) & (Int16)(var_30)
            if var_30 != var_30
            end
            Creature.stepUp(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_33 = Creature.energyDown(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Int(Creature.idUp(o))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        var_20 = string(var_33)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = if 127 >= abs(18954)
                Int8(18954)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_13 = Int16(o.pos.y)
        Creature.eatRight(c,o,Int(var_2))
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            var_37 = Creature.stepUp(o)
            Creature.stepRight(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = (Int64)(var_33) >> (Int64)(var_33)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],8.66092,0,46.0286,94192,0x0000006b,Dict{Int16,Int16}(),[671,253],658,50,50),RpcApi.SimpleOrganism(0x0000000000096ac0,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            local var_43::Float64 = 0.310709
            local var_40::Int16 = -15129
            var_36 = Int(Creature.idRight(o))
            var_36 = Creature.energyLeft(o)
            var_36 = Creature.energyLeft(o)
            var_36 = (Int64)(var_36) | (Int64)(var_36)
            var_40 = Int16(o.pos.x)
            var_40 = var_40 * var_40
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepRight(o)
            o.mem[var_30] = var_30
            var_29 = string(var_29)
            Creature.stepUp(o)
            var_30 = (Int16)(var_30) $ (Int16)(var_30)
            Creature.stepLeft(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_44::Int8 = -121
            local var_41::Int64 = 3335667178639579401
            var_41 = (Int64)(var_41) << (Int64)(var_41)
            var_41 = Int(Creature.idLeft(o))
            if var_44 === var_44
            end
            var_41 = Creature.energyUp(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        Creature.stepLeft(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyUp(o)
        var_20 = var_20[1:if length(var_20) > length(var_20)
                        0
                    else
                        length(var_20) - length(var_20)
                    end]
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
        Creature.stepUp(o)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_42::Int64 = 5193314475252525035
        end
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
        end
        var_33 = (Int64)(var_33) & (Int64)(var_33)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.34639,0,8.72494,93669,0x0000006b,Dict{Int16,Int16}(),[1498,502],52005,50,75),RpcApi.SimpleOrganism(0x0000000000096920,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_41(var_40::Float64=0.0833645)
            return var_40
        end
        function func_39(var_36::Int16=10927,var_37::Int8=72,var_38::Float64=0.0793908)
            var_36 = Int16(o.pos.y)
            for i::Int8 = 1:div(var_37,16)
                Creature.stepUp(o)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_38 = cos(var_37)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= 0.550907
                Int8(round(0.550907))
            else
                127
            end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyRight(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = var_33 % if var_33 === (Int64)(0)
                    (Int64)(1)
                else
                    var_33
                end
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_33 = (Int64)(var_33) $ (Int64)(var_33)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Int(Creature.idUp(o))
        for i::Int8 = 1:div(var_2,16)
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_33 = Int(Creature.idLeft(o))
        var_20 = string(-3373)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],80.0989,0,40.2533,92804,0x0000006b,Dict{Int16,Int16}(),[504,147],56165,2,49),RpcApi.SimpleOrganism(0x0000000000096e68,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            Creature.stepLeft(o)
            var_37 = var_37[1:if length(var_37) > length(var_37)
                            0
                        else
                            length(var_37) - length(var_37)
                        end]
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            if var_30 > var_30
                Creature.stepLeft(o)
            end
            var_30 = if 32767 >= abs(var_30)
                    Int16(var_30)
                else
                    32767
                end
            var_30 = div(var_30,if var_30 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_30
                    end)
            var_29 = string(var_30)
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = Int(Creature.idUp(o))
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if isempty(var_20)
                0
            else
                1
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
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Int(Creature.idUp(o))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyRight(o)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = Int(false)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
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
        for i::Int8 = 1:div(var_2,16)
            local var_40::Int64 = -8329995451280158179
            local var_36::Int8 = 29
            var_40 = Int(Creature.idLeft(o))
            var_40 = Int(Creature.idDown(o))
            Creature.eatDown(c,o,Int(var_36))
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_2 = if 127 >= abs(-15299)
                Int8(-15299)
            else
                127
            end
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],59.6416,0,69.9477,92501,0x0000006b,Dict{Int16,Int16}(),[1135,940],42617,41,63),RpcApi.SimpleOrganism(0x0000000000097458,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            Creature.stepRight(o)
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_29 = var_29[1:if length(var_29) > length(var_29)
                            0
                        else
                            length(var_29) - length(var_29)
                        end]
            var_30 = Int16(o.color)
            var_30 = if haskey(o.mem,var_30)
                    o.mem[var_30]
                else
                    var_30
                end
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            var_6 = string(54)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
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
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyRight(o)
        var_33 = Int(Creature.idUp(o))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.stepDown(o)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
        for i::Int8 = 1:div(var_2,16)
            local var_36::Int8 = 29
            Creature.stepUp(o)
            Creature.stepRight(o)
            var_36 = if isempty("FTIAikPU")
                    0
                else
                    1
                end
        end
        var_33 = Int(Creature.idUp(o))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],80.735,0,53.0243,91999,0x0000006b,Dict{Int16,Int16}(),[804,177],27371,74,59),RpcApi.SimpleOrganism(0x0000000000097448,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_47(var_46::Bool=true)
            var_46 = (Bool)(var_46) | (Bool)(var_46)
            var_46 = Creature.stepRight(o)
            return var_46
        end
        local var_45::Int8 = 67
        function func_42(var_40::Float64=0.981632,var_41::String="QKIqCsic")
            Creature.eatLeft(c,o,Int(var_43))
            var_40 = pi
            var_40 = sec(-69)
            Creature.stepLeft(o)
            return var_40
        end
        function func_38(var_37::String="Xawd72Hw")
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
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
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_45 = div(var_2,if var_45 === (Int8)(0)
                    (Int8)(1)
                else
                    var_45
                end)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
        for i::Int8 = 1:div(var_2,16)
            local var_48::Int16 = 8391
            Creature.stepRight(o)
        end
        var_33 = Int(var_33)
        Creature.eatRight(c,o,Int(var_2))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],10.6781,0,37.8853,90478,0x0000006b,Dict{Int16,Int16}(),[957,88],27531,50,58),RpcApi.SimpleOrganism(0x0000000000096fab,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_16(var_15::Bool=true)
            return var_15
        end
        function func_14(var_12::Int8=-61,var_13::Int64=-2124507031327971855)
            for i::Int8 = 1:div(var_12,16)
            end
            var_13 = Int(true)
            Creature.stepDown(o)
            var_13 = Int(Creature.idDown(o))
            return var_12
        end
        function func_11(var_10::String="VtXW7KlR")
            return var_10
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_1 = var_1 - var_1
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[45,28,7,39,85,16,98,0,19],1.42295,0,84.5296,90399,0x0000006b,Dict{Int16,Int16}(),[704,447],39385,5,21),RpcApi.SimpleOrganism(0x0000000000097018,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_33(var_31::Int8=-54,var_32::Bool=false)
            local var_36::Int64 = -6984250030665055298
            local var_37::Int16 = 2218
            var_32 = Creature.stepDown(o)
            var_36 = Creature.energyRight(o)
            var_36 = Creature.energyLeft(o)
            var_31 = var_31 % if var_31 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_31
                    end
            var_31 = var_31 + var_31
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_31 = (Int8)(var_31) << (Int8)(var_31)
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idDown(o))
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            for i::Int8 = 1:div(var_31,16)
                Creature.stepLeft(o)
            end
            var_37 = (Int16)(var_37) $ (Int16)(var_37)
            var_36 = Int(var_32)
            var_32 = isempty("VYgfkO2v")
            var_36 = var_36 * var_36
            var_32 = var_31 < (Int8)(1)
            var_36 = Creature.energyRight(o)
            var_36 = Creature.energyUp(o)
            var_32 = isempty("wAs8Je6Y")
            var_37 = Int16(Creature.eatLeft(c,o,Int(var_31)))
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            return var_31
        end
        local var_30::Int64 = 720224374337809168
        local var_25::Int16 = -27637
        function func_22(var_20::Int16=15694,var_21::Bool=false)
            local var_40::Bool = true
            local var_39::Int8 = 112
            var_40 = Creature.stepLeft(o)
            o.mem[var_20] = var_20
            var_40 = var_39 < (Int8)(1)
            var_20 = Int16(o.pos.y)
            var_39 = (Int8)(var_39) << (Int8)(var_39)
            var_40 = Creature.stepDown(o)
            var_20 = Int16(o.pos.x)
            var_20 = Int16(Creature.eatUp(c,o,Int(var_39)))
            var_20 = Int16(o.pos.x)
            o.mem[var_20] = var_20
            return var_20
        end
        function func_19(var_16::Int64=3658747169151054421,var_17::Int8=-78,var_18::String="zRsjyM9g")
            var_16 = Int(Creature.idDown(o))
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_17,16)
                local var_35::Int16 = 31083
                Creature.stepRight(o)
                var_35 = (Int16)(var_35) $ (Int16)(var_35)
            end
            var_17 = var_17 - var_17
            Creature.stepUp(o)
            var_17 = var_17 + var_17
            for i::Int8 = 1:div(var_17,16)
                Creature.stepDown(o)
            end
            var_17 = if 127 >= 0.00734862
                    Int8(round(0.00734862))
                else
                    127
                end
            var_17 = var_17 + var_17
            var_16 = div(var_16,if var_16 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_16
                    end)
            Creature.eatLeft(c,o,Int(var_17))
            for i::Int8 = 1:div(var_17,16)
            end
            var_16 = Int(Creature.idRight(o))
            return var_16
        end
        local var_13::Int16 = 1446
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = if 32767 >= 0.958338
                    Int16(round(0.958338))
                else
                    32767
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = div(var_4,if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end)
            return var_3
        end
        var_8 = Creature.stepDown(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_30 = Creature.energyRight(o)
        var_30 = Creature.energyDown(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_15 = func_5(var_2,var_13)
        var_25 = Int16(o.pos.x)
        var_30 = Creature.energyLeft(o)
        var_30 = Int(Creature.idLeft(o))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_1 = Creature.energyDown(o)
        var_30 = Int(Creature.idUp(o))
        var_25 = Int16(o.color)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_15)))
        Creature.stepRight(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        if var_2 != var_2
            Creature.stepDown(o)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_25 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_1 = Int(var_1)
        var_25 = Int16(o.pos.x)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        var_30 = Int(var_15)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_15 < var_15
            Creature.stepLeft(o)
        end
        var_25 = if haskey(o.mem,var_25)
                o.mem[var_25]
            else
                var_25
            end
        var_2 = (Int8)(var_2) | (Int8)(var_15)
        var_13 = Int16(o.color)
        var_25 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        Creature.stepRight(o)
        var_13 = var_25 + var_13
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_30 = Int(Creature.idRight(o))
        var_25 = var_25 % if var_25 === (Int16)(0)
                    (Int16)(1)
                else
                    var_25
                end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_30 = Creature.energyLeft(o)
        var_30 = Int(Creature.idDown(o))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_25 = Int16(Creature.eatRight(c,o,Int(var_15)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        var_13 = Int16(o.color)
        var_8 = isempty("Vm1XJRRZ")
        var_25 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],1.11192,0,18.8699,89928,0x00000072,Dict(47=>47,40=>40,0=>0,1446=>1446,119=>119,-27637=>-27637,118=>118,127=>127,90=>90,111=>111,117=>117,41=>41,115=>115),[608,276],38295,50,114),RpcApi.SimpleOrganism(0x0000000000097cc7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepDown(o)
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
            var_4 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_3,16)
                var_25 = Creature.energyRight(o)
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
            var_4 = (Int16)(var_4) << (Int16)(var_4)
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
        var_8 = isempty("I33YlJlI")
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        var_8 = var_8
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
            Creature.eatLeft(c,o,Int(var_23))
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],71.6547,0,7.33933,88888,0x0000006b,Dict(0=>0,127=>127),[780,309],5737,49,68),RpcApi.SimpleOrganism(0x00000000000973c8,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_29 = string(true)
            Creature.stepUp(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_20 = var_20 * var_20
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
            local var_38::Int16 = 9144
            local var_36::Int8 = 29
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.stepDown(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],79.9326,0,31.5138,86857,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[562,806],28810,50,51),RpcApi.SimpleOrganism(0x0000000000096a0d,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_29::Int8 = 74
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_30::Int64 = -7438313207217366808
            var_4 = Int16(o.pos.y)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) & (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_3 = if false
                    1
                else
                    0
                end
            Creature.stepUp(o)
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_29))
        Creature.eatRight(c,o,Int(var_2))
        var_20 = string(0.507728)
        Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if 127 >= abs(874617539073884084)
                Int8(874617539073884084)
            else
                127
            end
        return true
    end),[98,38,30,73,83,1,72,0,51],94.0184,0,88.2385,86045,0x0000006b,Dict{Int16,Int16}(),[667,584],53795,64,34),RpcApi.SimpleOrganism(0x0000000000097308,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            var_36 = Int(Creature.idDown(o))
            var_36 = Creature.energyLeft(o)
            Creature.stepRight(o)
            var_36 = var_36 * var_36
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.color)
            if var_30 <= var_30
            end
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        Creature.stepUp(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idLeft(o))
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
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
        end
        var_33 = Creature.energyDown(o)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],8.14626,0,30.6072,85852,0x0000006b,Dict{Int16,Int16}(),[645,934],30741,25,59),RpcApi.SimpleOrganism(0x00000000000972f1,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_40::Int8 = 23
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepUp(o)
            var_30 = if haskey(o.mem,var_30)
                    o.mem[var_30]
                else
                    var_30
                end
            var_30 = (Int16)(var_30) & (Int16)(var_30)
            if var_30 < var_30
                Creature.stepDown(o)
            end
            Creature.stepLeft(o)
            var_30 = Int16(o.color)
            o.mem[var_30] = var_30
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = if 127 >= 0.25508
                Int8(round(0.25508))
            else
                127
            end
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
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
        var_33 = Int(Creature.idRight(o))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        var_20 = string(var_28)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_33 = Creature.energyLeft(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.stepUp(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        var_33 = Int(Creature.idRight(o))
        if var_2 <= var_2
        end
        var_20 = var_20 * var_20
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        var_33 = Int(Creature.idDown(o))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        for i::Int8 = 1:div(var_2,16)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],61.6982,0,43.2789,84535,0x0000006b,Dict{Int16,Int16}(),[591,880],30972,50,51),RpcApi.SimpleOrganism(0x00000000000972c4,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            var_36 = if isempty(var_38)
                    0
                else
                    1
                end
            var_36 = Creature.energyLeft(o)
            var_36 = var_36 * var_36
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.color)
            if var_30 <= var_30
            end
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        Creature.stepUp(o)
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
        var_33 = func_39(var_33,var_20)
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.stepUp(o)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
        end
        var_33 = Creature.energyDown(o)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],6.02455,0,76.8105,83966,0x0000006b,Dict{Int16,Int16}(),[722,247],31430,35,59),RpcApi.SimpleOrganism(0x0000000000096d59,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_30::Bool = false
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_30 = var_30 * var_30
            var_30 = 0.873546 > (Float64)(0)
            var_3 = if 127 >= abs(5132788713313690703)
                    Int8(5132788713313690703)
                else
                    127
                end
            var_3 = var_3 + var_3
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_20 = string(0.507728)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        if var_2 == var_2
            local var_28::Int16 = 26527
            var_28 = (Int16)(var_28) >> (Int16)(var_28)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        if var_2 != var_2
        end
        if var_20 === var_20
        end
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if 127 >= abs(874617539073884084)
                Int8(874617539073884084)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],49.7063,0,99.2141,83092,0x0000006b,Dict{Int16,Int16}(),[469,369],45347,9,42),RpcApi.SimpleOrganism(0x0000000000097005,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            Creature.stepRight(o)
            Creature.stepDown(o)
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            if var_30 > var_30
                Creature.stepLeft(o)
            end
            Creature.stepRight(o)
            var_30 = if 32767 >= abs(var_30)
                    Int16(var_30)
                else
                    32767
                end
            var_30 = if isempty(var_29)
                    0
                else
                    1
                end
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = Int(Creature.idUp(o))
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
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
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_20 = func_7(var_20)
        var_33 = Int(Creature.idUp(o))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = Int(false)
        var_33 = (Int64)(var_33) & (Int64)(var_33)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
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
        for i::Int8 = 1:div(var_2,16)
            local var_40::Int64 = -8329995451280158179
            local var_36::Int8 = 29
            var_40 = Creature.energyDown(o)
            var_40 = Creature.energyLeft(o)
            var_40 = if isempty("pHaXH9cU")
                    0
                else
                    1
                end
            var_40 = Int(Creature.idDown(o))
            Creature.eatDown(c,o,Int(var_36))
            Creature.stepRight(o)
        end
        var_33 = Int(Creature.idUp(o))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],51.4436,0,2.3875,82552,0x0000006b,Dict{Int16,Int16}(),[1133,940],38485,9,65),RpcApi.SimpleOrganism(0x0000000000097c3b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_39::Float64 = 0.37096
            Creature.stepUp(o)
            var_30 = if 32767 >= abs(-7312175150797000091)
                    Int16(-7312175150797000091)
                else
                    32767
                end
            var_30 = Int16(o.color)
            var_30 = Int16(o.pos.x)
            var_30 = Int16(o.color)
            var_39 = cos(var_39)
            var_39 = sin(var_39)
            Creature.stepDown(o)
            var_30 = var_30 % if var_30 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_30
                    end
            var_39 = sec(-2848665316436309808)
            var_29 = string(89)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int8 = 0
            var_6 = string(false)
            Creature.stepRight(o)
            for i::Int8 = 1:div(var_41,16)
            end
            Creature.eatDown(c,o,Int(var_41))
            return var_6
        end
        var_33 = Int(Creature.idDown(o))
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_20 = var_20 * var_20
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
            local var_38::Int16 = 9144
            local var_36::Int8 = 29
            var_38 = Int16(Creature.eatLeft(c,o,Int(var_36)))
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.stepUp(o)
            var_36 = (Int8)(var_36) $ (Int8)(var_36)
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],4.88301,0,51.0399,81813,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[1034,267],7137,35,69),RpcApi.SimpleOrganism(0x0000000000097745,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_18(var_17::Int8=-100)
            local var_24::Int16 = 11924
            var_24 = Int16(Creature.eatDown(c,o,Int(var_17)))
            var_17 = if 127 >= 0.992323
                    Int8(round(0.992323))
                else
                    127
                end
            Creature.eatRight(c,o,Int(var_17))
            var_24 = (Int16)(var_24) >> (Int16)(var_24)
            Creature.stepDown(o)
            var_17 = (Int8)(var_17) << (Int8)(var_17)
            if var_24 <= var_24
            end
            return var_17
        end
        local var_13::Int16 = 1446
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_6 = var_6 * var_6
            Creature.stepUp(o)
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_21::Int16 = -16711
            local var_19::Int64 = 8381526388126889670
            local var_26::Int8 = -95
            var_19 = Int(round(0.293498))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_19 = Int(Creature.getEnergy(o,Int(var_21),Int(var_21)))
            var_19 = (Int64)(var_19) $ (Int64)(var_19)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_21 = if true
                    1
                else
                    0
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = Int16(o.pos.x)
            var_19 = Int(Creature.idRight(o))
            var_4 = (Int16)(var_4) $ (Int16)(var_4)
            var_4 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_4
                end
            return var_3
        end
        var_13 = Int16(o.pos.y)
        var_13 = Int16(o.color)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_8 = var_8 | var_8
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        Creature.eatDown(c,o,Int(var_2))
        var_2 = func_5(var_2,var_13)
        var_1 = Int(var_1)
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
        for i::Int8 = 1:div(var_2,16)
            local var_25::Int8 = -64
            Creature.eatUp(c,o,Int(var_25))
            var_25 = div(var_25,if var_25 === (Int8)(0)
                        (Int8)(1)
                    else
                        var_25
                    end)
            Creature.eatDown(c,o,Int(var_25))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],52.4043,0,51.0042,81297,0x0000006b,Dict{Int16,Int16}(),[498,586],19863,50,62),RpcApi.SimpleOrganism(0x0000000000097d58,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_41::Int64 = 1385728949079335142
            local var_39::Float64 = 0.37096
            var_39 = csc(if var_39 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_39
                    end)
            var_30 = Int16(o.pos.x)
            var_39 = cos(var_39)
            Creature.stepUp(o)
            var_39 = cos(var_30)
            var_30 = Int16(o.color)
            var_39 = sin(var_39)
            var_41 = Int(Creature.idLeft(o))
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepRight(o)
            return var_6
        end
        var_33 = Int(Creature.idDown(o))
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
            Creature.stepRight(o)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = (Int64)(var_33) & (Int64)(var_33)
        var_20 = var_20 * var_20
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
            local var_38::Int16 = 9144
            local var_36::Int8 = 29
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],7.42772,0,64.0595,81294,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[72,103],4288,66,63),RpcApi.SimpleOrganism(0x0000000000097ddc,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_33(var_31::Int8=-54,var_32::Bool=false)
            local var_36::Int64 = -6984250030665055298
            local var_37::Int16 = 2218
            var_32 = Creature.stepDown(o)
            var_36 = Creature.energyRight(o)
            var_37 = Int16(o.pos.x)
            var_31 = var_31 + var_31
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            for i::Int8 = 1:div(var_31,16)
                Creature.stepLeft(o)
                Creature.stepLeft(o)
            end
            var_37 = (Int16)(var_37) $ (Int16)(var_37)
            var_36 = var_36 * var_36
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            var_36 = Creature.energyRight(o)
            var_36 = Creature.energyUp(o)
            var_32 = isempty("wAs8Je6Y")
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            return var_31
        end
        local var_30::Int64 = 720224374337809168
        local var_25::Int16 = -27637
        function func_22(var_20::Int16=15694,var_21::Bool=false)
            local var_40::Bool = true
            local var_39::Int8 = 112
            var_39 = (Int8)(var_39) $ (Int8)(var_39)
            var_21 = Creature.stepDown(o)
            o.mem[var_20] = var_20
            var_21 = Creature.stepUp(o)
            var_39 = (Int8)(var_39) << (Int8)(var_39)
            var_21 = Creature.stepUp(o)
            var_21 = Creature.stepLeft(o)
            return var_20
        end
        function func_19(var_16::Int64=3658747169151054421,var_17::Int8=-78,var_18::String="zRsjyM9g")
            var_16 = Int(Creature.idDown(o))
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_17,16)
                local var_35::Int16 = 31083
                Creature.stepRight(o)
                var_35 = if haskey(o.mem,var_35)
                        o.mem[var_35]
                    else
                        var_35
                    end
                var_35 = (Int16)(var_35) $ (Int16)(var_35)
            end
            Creature.stepUp(o)
            var_17 = var_17 + var_17
            for i::Int8 = 1:div(var_17,16)
            end
            Creature.eatLeft(c,o,Int(var_17))
            var_17 = if 127 >= 0.00734862
                    Int8(round(0.00734862))
                else
                    127
                end
            var_17 = var_17 + var_17
            var_16 = div(var_16,if var_16 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_16
                    end)
            for i::Int8 = 1:div(var_17,16)
            end
            for i::Int8 = 1:div(var_17,16)
            end
            var_16 = Int(Creature.idRight(o))
            return var_16
        end
        local var_13::Int16 = 1446
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            return var_3
        end
        var_8 = Creature.stepDown(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_30 = Creature.energyRight(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_15 = func_5(var_2,var_13)
        var_25 = Int16(o.pos.x)
        var_25 = var_25 + var_25
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_1 = Creature.energyDown(o)
        var_30 = Int(Creature.idUp(o))
        var_25 = Int16(o.color)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_15)))
        Creature.stepRight(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        if var_2 != var_2
            Creature.stepDown(o)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_25 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        var_1 = Int(var_1)
        var_25 = Int16(o.pos.x)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        var_30 = Int(var_15)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_15 < var_15
            Creature.stepLeft(o)
        end
        var_25 = if haskey(o.mem,var_25)
                o.mem[var_25]
            else
                var_25
            end
        var_2 = (Int8)(var_2) | (Int8)(var_15)
        var_13 = Int16(o.color)
        var_25 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        Creature.stepRight(o)
        var_13 = var_25 + var_13
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_30 = Int(Creature.idRight(o))
        var_25 = var_25 % if var_25 === (Int16)(0)
                    (Int16)(1)
                else
                    var_25
                end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_30 = Creature.energyLeft(o)
        var_25 = (Int16)(var_25) >> (Int16)(var_25)
        var_30 = Int(Creature.idDown(o))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_25 = Int16(Creature.eatRight(c,o,Int(var_15)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        var_13 = Int16(o.color)
        var_8 = isempty("Vm1XJRRZ")
        return true
    end),[98,38,30,73,83,1,72,0,51],1.62031,0,36.2903,81136,0x00000070,Dict(47=>47,40=>40,0=>0,1446=>1446,119=>119,-27637=>-27637,118=>118,127=>127,90=>90,111=>111,117=>117,41=>41,115=>115),[527,217],2968,50,104),RpcApi.SimpleOrganism(0x00000000000978b1,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_25::Int16 = -27637
        function func_19(var_16::Int64=3658747169151054421,var_17::Int8=-78,var_18::String="zRsjyM9g")
            local var_36::String = "mmKEWmht"
            var_17 = if false
                    1
                else
                    0
                end
            var_17 = (Int8)(var_17) & (Int8)(var_17)
            var_16 = Int(Creature.idLeft(o))
            Creature.eatRight(c,o,Int(var_17))
            if var_17 !== var_17
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            var_16 = Creature.energyUp(o)
            var_16 = Creature.energyRight(o)
            Creature.stepDown(o)
            var_16 = Int(var_16)
            var_17 = var_17 - var_17
            var_16 = Int(Creature.idUp(o))
            var_17 = (Int8)(var_17) >> (Int8)(var_17)
            Creature.eatLeft(c,o,Int(var_17))
            var_16 = Creature.energyDown(o)
            var_16 = Creature.energyRight(o)
            var_18 = string(var_18)
            var_16 = var_16 * var_16
            return var_16
        end
        local var_15::Int8 = -55
        local var_13::Int16 = 1446
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_33::Int64 = -7494506474457657834
            var_4 = if 32767 >= 0.0770305
                    Int16(round(0.0770305))
                else
                    32767
                end
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_33 = Creature.energyUp(o)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = if haskey(o.mem,var_4)
                    o.mem[var_4]
                else
                    var_4
                end
            o.mem[var_4] = var_4
            for i::Int8 = 1:div(var_3,16)
            end
            for i::Int8 = 1:div(var_3,16)
                local var_34::Int8 = 84
            end
            var_33 = Creature.energyUp(o)
            return var_3
        end
        var_2 = var_15 % if var_15 === (Int8)(0)
                    (Int8)(1)
                else
                    var_15
                end
        var_8 = Creature.stepDown(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_25 = (Int16)(var_13) >> (Int16)(var_13)
        var_15 = func_5(var_2,var_13)
        for i::Int8 = 1:div(var_15,16)
            local var_35::Int64 = -1603660663130084590
        end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_1 = Creature.energyDown(o)
        var_25 = if haskey(o.mem,var_25)
                o.mem[var_25]
            else
                var_25
            end
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        var_13 = if 32767 >= 0.913241
                Int16(round(0.913241))
            else
                32767
            end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_15 < var_15
            Creature.stepLeft(o)
        end
        var_2 = (Int8)(var_2) | (Int8)(var_15)
        var_13 = Int16(o.color)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.stepRight(o)
        o.mem[var_13] = var_25
        var_15 = func_5(var_15)
        var_13 = Int16(o.color)
        var_8 = isempty("Vm1XJRRZ")
        var_25 = if haskey(o.mem,var_13)
                o.mem[var_13]
            else
                var_25
            end
        return true
    end),[98,38,30,73,83,1,72,0,51],47.4946,0,31.6621,80804,0x0000006b,Dict(1760=>1760,306=>306,1316=>1316,1333=>1333,1671=>1671,1131=>1131,74=>74,1662=>1662,1265=>1265,1469=>1469,1461=>1461,285=>285,1881=>1881,1481=>1481,318=>318,1124=>1124,1337=>1337,1273=>1273,873=>873,975=>975,610=>610,354=>354,1082=>1082,1791=>1791,117=>117,1400=>1400,1327=>1327,1714=>1714,1588=>1588,1374=>1374,474=>474,1616=>1616,621=>621,1446=>1446,353=>353,430=>430,1166=>1166,1329=>1329,79=>79,1640=>1640,1479=>1479,1331=>1331,154=>154,1683=>1683,845=>845,107=>107,1648=>1648,416=>416,682=>682,10=>10,642=>642,162=>162,240=>240,974=>974,5=>5,1146=>1146,1230=>1230,1097=>1097,1817=>1817,776=>776,1324=>1324,573=>573,1460=>1460,512=>512,1503=>1503,90=>90,1527=>1527,396=>396,1201=>1201,1017=>1017,1141=>1141,592=>592,973=>973,1052=>1052,1418=>1418,655=>655,1873=>1873,620=>620,1148=>1148,146=>146,130=>130,965=>965,545=>545,1475=>1475,660=>660,1062=>1062,110=>110,1813=>1813,981=>981,1150=>1150,525=>525,1029=>1029,899=>899,366=>366,556=>556,128=>128,1722=>1722,1417=>1417,831=>831,522=>522,183=>183,345=>345,152=>152,742=>742,1043=>1043,723=>723,843=>843,1643=>1643,982=>982,732=>732,1703=>1703,941=>941,1008=>1008,1274=>1274,454=>454,1599=>1599,312=>312,663=>663,446=>446,751=>751,659=>659,602=>602,1465=>1465,1853=>1853,241=>241,370=>370,197=>197,1887=>1887,142=>142,848=>848,1786=>1786,614=>614,1694=>1694,612=>612,433=>433,1107=>1107,677=>677,1652=>1652,1381=>1381,1563=>1563,1540=>1540,890=>890,958=>958,916=>916,672=>672,94=>94,115=>115,418=>418,373=>373,455=>455,641=>641,1496=>1496,426=>426,1710=>1710,1211=>1211,503=>503,551=>551,914=>914,859=>859,1209=>1209,1288=>1288,471=>471,707=>707,1655=>1655,393=>393,497=>497,1167=>1167,1759=>1759,1802=>1802,1602=>1602,1115=>1115,1782=>1782,1252=>1252,1522=>1522,1858=>1858,1430=>1430,377=>377,1245=>1245,1382=>1382,1751=>1751,1560=>1560,1740=>1740,1437=>1437,1018=>1018,1044=>1044,867=>867,1506=>1506,1114=>1114,1607=>1607,254=>254,628=>628,1702=>1702,635=>635,20=>20,1644=>1644,1134=>1134,451=>451,166=>166,397=>397,1126=>1126,35=>35,1157=>1157,1109=>1109,1054=>1054,1571=>1571,816=>816,286=>286,1900=>1900,1831=>1831,392=>392,554=>554,346=>346,126=>126,303=>303,567=>567,872=>872,883=>883,237=>237,594=>594,386=>386,613=>613,1530=>1530,1213=>1213,517=>517,1691=>1691,1698=>1698,949=>949,1551=>1551,523=>523,1309=>1309,1580=>1580,504=>504,98=>98,666=>666,1713=>1713,540=>540,1875=>1875,1896=>1896,952=>952,161=>161,22=>22,73=>73,119=>119,222=>222,646=>646,1514=>1514,580=>580,687=>687,640=>640,502=>502,498=>498,603=>603,1423=>1423,1271=>1271,1826=>1826,1629=>1629,1807=>1807,131=>131,391=>391,1532=>1532,249=>249,207=>207,173=>173,1565=>1565,1891=>1891,1261=>1261,1735=>1735,1151=>1151,1015=>1015,70=>70,625=>625,1129=>1129,886=>886,1385=>1385,1513=>1513,1326=>1326,1060=>1060,327=>327,511=>511,1797=>1797,780=>780,951=>951,1545=>1545,773=>773,720=>720,1879=>1879,326=>326,248=>248,1420=>1420,1520=>1520,447=>447,555=>555,217=>217,855=>855,1830=>1830,506=>506,1517=>1517,120=>120,1487=>1487,681=>681,1558=>1558,1767=>1767,143=>143,1447=>1447,62=>62,996=>996,1459=>1459,548=>548,1355=>1355,961=>961,251=>251,1250=>1250,649=>649,1825=>1825,1854=>1854,656=>656,1820=>1820,766=>766,909=>909,1579=>1579,569=>569,155=>155,1625=>1625,344=>344,787=>787,747=>747,1471=>1471,1576=>1576,1079=>1079,1498=>1498,1610=>1610,253=>253,1120=>1120,815=>815,1542=>1542,324=>324,1322=>1322,858=>858,1800=>1800,1806=>1806,1080=>1080,13=>13,647=>647,137=>137,1547=>1547,105=>105,765=>765,307=>307,1448=>1448,273=>273,1143=>1143,1032=>1032,1323=>1323,1182=>1182,100=>100,904=>904,1555=>1555,790=>790,1159=>1159,1346=>1346,268=>268,243=>243,535=>535,1612=>1612,317=>317,1732=>1732,676=>676,1661=>1661,1425=>1425,108=>108,1105=>1105,329=>329,1262=>1262,755=>755,1312=>1312,144=>144,735=>735,400=>400,1849=>1849,788=>788,1285=>1285,375=>375,494=>494,893=>893,1024=>1024,112=>112,544=>544,1310=>1310,106=>106,1811=>1811,1153=>1153,350=>350,823=>823,1823=>1823,585=>585,834=>834,1679=>1679,54=>54,337=>337,60=>60,481=>481,1277=>1277,1051=>1051,1893=>1893,1320=>1320,1785=>1785,936=>936,1781=>1781,189=>189,398=>398,913=>913,875=>875,896=>896,1676=>1676,1762=>1762,695=>695,1838=>1838,1554=>1554,380=>380,1041=>1041,1649=>1649,1697=>1697,1384=>1384,68=>68,275=>275,382=>382,724=>724,1380=>1380,1111=>1111,547=>547,1439=>1439,199=>199,323=>323,1005=>1005,669=>669,406=>406,652=>652,683=>683,232=>232,1243=>1243,83=>83,1480=>1480,45=>45,1402=>1402,954=>954,1334=>1334,1192=>1192,662=>662,1039=>1039,808=>808,442=>442,976=>976,595=>595,1023=>1023,972=>972,1075=>1075,376=>376,684=>684,61=>61,1489=>1489,1761=>1761,431=>431,862=>862,870=>870,1160=>1160,1733=>1733,304=>304,476=>476,629=>629,361=>361,772=>772,1030=>1030,706=>706,1104=>1104,1106=>1106,1152=>1152,841=>841,1215=>1215,288=>288,1805=>1805,1050=>1050,1889=>1889,1000=>1000,1570=>1570,1899=>1899,57=>57,1617=>1617,799=>799,445=>445,252=>252,835=>835,1376=>1376,727=>727,1556=>1556,1819=>1819,49=>49,552=>552,1827=>1827,716=>716,1723=>1723,1466=>1466,1587=>1587,1155=>1155,1549=>1549,264=>264,984=>984,221=>221,153=>153,579=>579,590=>590,1370=>1370,390=>390,619=>619,484=>484,1089=>1089,1393=>1393,129=>129,88=>88,429=>429,1743=>1743,1458=>1458,937=>937,149=>149,439=>439,1456=>1456,1729=>1729,210=>210,1635=>1635,1822=>1822,1726=>1726,789=>789,1890=>1890,1405=>1405,1787=>1787,1596=>1596,175=>175,1278=>1278,543=>543,1411=>1411,1264=>1264,987=>987,970=>970,419=>419,596=>596,436=>436,793=>793,967=>967,942=>942,1574=>1574,216=>216,47=>47,147=>147,1123=>1123,1108=>1108,1186=>1186,829=>829,488=>488,1504=>1504,1568=>1568,1777=>1777,863=>863,1742=>1742,560=>560,688=>688,1673=>1673,950=>950,51=>51,123=>123,1256=>1256,358=>358,1696=>1696,1766=>1766,661=>661,1497=>1497,740=>740,581=>581,713=>713,1716=>1716,1026=>1026,532=>532,658=>658,1350=>1350,1132=>1132,365=>365,771=>771,1443=>1443,509=>509,521=>521,407=>407,1464=>1464,1181=>1181,1058=>1058,874=>874,817=>817,1083=>1083,1307=>1307,1363=>1363,138=>138,703=>703,292=>292,235=>235,692=>692,971=>971,1112=>1112,1229=>1229,1647=>1647,1855=>1855,1770=>1770,1065=>1065,1764=>1764,0=>0,838=>838,1518=>1518,1156=>1156,1200=>1200,1546=>1546,1016=>1016,1147=>1147,12=>12,1601=>1601,1736=>1736,410=>410,626=>626,528=>528,364=>364,1246=>1246,1810=>1810,1180=>1180,889=>889,837=>837,623=>623,1388=>1388,979=>979,678=>678,1203=>1203,262=>262,92=>92,1592=>1592,1205=>1205,1843=>1843,1651=>1651,1828=>1828,124=>124,791=>791,360=>360,85=>85,1377=>1377,181=>181,1028=>1028,894=>894,1773=>1773,1071=>1071,1483=>1483,1422=>1422,458=>458,1675=>1675,1163=>1163,1476=>1476,1646=>1646,52=>52,1709=>1709,233=>233,367=>367,278=>278,1222=>1222,959=>959,336=>336,1737=>1737,64=>64,568=>568,1397=>1397,444=>444,257=>257,220=>220,943=>943,524=>524,932=>932,588=>588,854=>854,67=>67,864=>864,1428=>1428,7=>7,1424=>1424,395=>395,537=>537,325=>325,437=>437,1848=>1848,536=>536,878=>878,340=>340,526=>526,399=>399,1202=>1202,174=>174,371=>371,1221=>1221,1336=>1336,24=>24,116=>116,1046=>1046,1391=>1391,1260=>1260,496=>496,1774=>1774,1630=>1630,1600=>1600,520=>520,895=>895,11=>11,491=>491,1557=>1557,478=>478,1103=>1103,1534=>1534,1495=>1495,1047=>1047,490=>490,946=>946,335=>335,828=>828,165=>165,1859=>1859,133=>133,1678=>1678,1880=>1880,328=>328,748=>748,977=>977,752=>752,425=>425,1569=>1569,1373=>1373,1175=>1175,77=>77,311=>311,1727=>1727,1750=>1750,605=>605,1302=>1302,441=>441,132=>132,1631=>1631,1681=>1681,1389=>1389,550=>550,725=>725,231=>231,1550=>1550,302=>302,1178=>1178,1882=>1882,1087=>1087,225=>225,1593=>1593,204=>204,122=>122,1509=>1509,180=>180,1844=>1844,413=>413,601=>601,806=>806,731=>731,877=>877,331=>331,1433=>1433,1700=>1700,948=>948,1237=>1237,679=>679,1872=>1872,1357=>1357,1892=>1892,1626=>1626,969=>969,1133=>1133,1184=>1184,296=>296,1470=>1470,1621=>1621,1833=>1833,1210=>1210,1145=>1145,1686=>1686,717=>717,705=>705,212=>212,310=>310,1415=>1415,760=>760,265=>265,853=>853,1573=>1573,17=>17,466=>466,1885=>1885,1013=>1013,475=>475,851=>851,637=>637,1804=>1804,744=>744,1022=>1022,226=>226,1421=>1421,43=>43,1033=>1033,1137=>1137,104=>104,1268=>1268,999=>999,919=>919,465=>465,857=>857,1318=>1318,711=>711,737=>737,1086=>1086,1765=>1765,1660=>1660,291=>291,422=>422,196=>196,1394=>1394,576=>576,968=>968,281=>281,1667=>1667,578=>578,1275=>1275,1721=>1721,1282=>1282,405=>405,1321=>1321,1641=>1641,1190=>1190,2=>2,1269=>1269,1416=>1416,1776=>1776,1006=>1006,1674=>1674,925=>925,151=>151,1562=>1562,1874=>1874,1793=>1793,1057=>1057,1701=>1701,1220=>1220,1284=>1284,611=>611,1313=>1313,741=>741,283=>283,1850=>1850,448=>448,459=>459,109=>109,1847=>1847,833=>833,298=>298,1001=>1001,1623=>1623,722=>722,1706=>1706,1238=>1238,644=>644,1477=>1477,1493=>1493,906=>906,784=>784,1162=>1162,636=>636,359=>359,1687=>1687,332=>332,1622=>1622,1528=>1528,1207=>1207,198=>198,1758=>1758,272=>272,1206=>1206,1037=>1037,1586=>1586,1749=>1749,482=>482,469=>469,1335=>1335,1752=>1752,443=>443,689=>689,1526=>1526,1747=>1747,1308=>1308,1314=>1314,1501=>1501,369=>369,1021=>1021,1728=>1728,850=>850,990=>990,698=>698,486=>486,1040=>1040,170=>170,1270=>1270,42=>42,1300=>1300,796=>796,1352=>1352,1553=>1553,811=>811,1139=>1139,865=>865,388=>388,69=>69,991=>991,351=>351,1294=>1294,572=>572,1886=>1886,1398=>1398,434=>434,1244=>1244,1383=>1383,460=>460,357=>357,1406=>1406,263=>263,915=>915,206=>206,927=>927,385=>385,1340=>1340,809=>809,670=>670,1659=>1659,923=>923,1427=>1427,1125=>1125,1259=>1259,1081=>1081,910=>910,404=>404,804=>804,691=>691,812=>812,1025=>1025,1012=>1012,618=>618,1390=>1390,186=>186,420=>420,1035=>1035,6=>6,856=>856,1717=>1717,1038=>1038,218=>218,1473=>1473,1704=>1704,1090=>1090,29=>29,905=>905,176=>176,892=>892,1693=>1693,1845=>1845,1442=>1442,563=>563,1451=>1451,1194=>1194,880=>880,671=>671,721=>721,930=>930,1195=>1195,1386=>1386,284=>284,1144=>1144,1116=>1116,1581=>1581,188=>188,685=>685,782=>782,1835=>1835,589=>589,1871=>1871,797=>797,617=>617,71=>71,1127=>1127,1664=>1664,1780=>1780,184=>184,1821=>1821,794=>794,1301=>1301,908=>908,733=>733,1705=>1705,1795=>1795,294=>294,1426=>1426,606=>606,881=>881,1510=>1510,917=>917,966=>966,980=>980,261=>261,1102=>1102,514=>514,1512=>1512,840=>840,1358=>1358,41=>41,15=>15,461=>461,148=>148,1135=>1135,957=>957,586=>586,66=>66,1488=>1488,1410=>1410,1158=>1158,95=>95,236=>236,111=>111,844=>844,14=>14,1598=>1598,1505=>1505,256=>256,1136=>1136,1712=>1712,1876=>1876,565=>565,1199=>1199,763=>763,1240=>1240,549=>549,135=>135,125=>125,1387=>1387,453=>453,1100=>1100,1247=>1247,1445=>1445,309=>309,99=>99,1349=>1349,1286=>1286,1779=>1779,9=>9,1634=>1634,348=>348,860=>860,591=>591,736=>736,1179=>1179,103=>103,1348=>1348,1276=>1276,1484=>1484,1719=>1719,730=>730,667=>667,1618=>1618,911=>911,795=>795,1003=>1003,1536=>1536,832=>832,846=>846,191=>191,1677=>1677,1672=>1672,918=>918,276=>276,1368=>1368,1074=>1074,508=>508,1798=>1798,1763=>1763,1444=>1444,1608=>1608,1072=>1072,654=>654,593=>593,624=>624,1369=>1369,1049=>1049,1375=>1375,956=>956,1055=>1055,1638=>1638,718=>718,818=>818,372=>372,1457=>1457,664=>664,1739=>1739,279=>279,700=>700,368=>368,609=>609,1191=>1191,885=>885,1227=>1227,922=>922,1604=>1604,1228=>1228,963=>963,1796=>1796,1794=>1794,650=>650,290=>290,607=>607,824=>824,171=>171,1829=>1829,1572=>1572,334=>334,750=>750,1645=>1645,1091=>1091,178=>178,313=>313,1463=>1463,1098=>1098,1884=>1884,493=>493,1801=>1801,577=>577,113=>113,293=>293,1538=>1538,1637=>1637,297=>297,507=>507,1548=>1548,1177=>1177,1748=>1748,1559=>1559,1073=>1073,274=>274,1118=>1118,1624=>1624,28=>28,634=>634,1255=>1255,1449=>1449,97=>97,584=>584,1715=>1715,1757=>1757,39=>39,58=>58,8=>8,333=>333,739=>739,428=>428,1330=>1330,185=>185,1594=>1594,868=>868,1738=>1738,849=>849,774=>774,266=>266,421=>421,1898=>1898,1440=>1440,145=>145,1441=>1441,1494=>1494,1064=>1064,86=>86,1233=>1233,587=>587,1708=>1708,1656=>1656,1682=>1682,82=>82,75=>75,1492=>1492,701=>701,87=>87,1730=>1730,668=>668,510=>510,1502=>1502,947=>947,347=>347,1639=>1639,1603=>1603,1059=>1059,1543=>1543,792=>792,1101=>1101,389=>389,1725=>1725,598=>598,1392=>1392,562=>562,53=>53,869=>869,745=>745,305=>305,1325=>1325,1690=>1690,27=>27,1564=>1564,134=>134,215=>215,1248=>1248,882=>882,542=>542,499=>499,477=>477,201=>201,1818=>1818,876=>876,31=>31,1401=>1401,1636=>1636,597=>597,1454=>1454,33=>33,1218=>1218,1338=>1338,1189=>1189,1117=>1117,1031=>1031,1689=>1689,473=>473,1490=>1490,1170=>1170,1164=>1164,978=>978,230=>230,1756=>1756,1412=>1412,50=>50,80=>80,513=>513,1699=>1699,1216=>1216,412=>412,1188=>1188,401=>401,1613=>1613,847=>847,786=>786,1814=>1814,822=>822,1354=>1354,1668=>1668,167=>167,903=>903,1076=>1076,21=>21,1094=>1094,1611=>1611,260=>260,280=>280,761=>761,1174=>1174,1293=>1293,1684=>1684,463=>463,1614=>1614,438=>438,1870=>1870,1508=>1508,1670=>1670,757=>757,699=>699,1372=>1372,55=>55,1034=>1034,1589=>1589,694=>694,709=>709,728=>728,1745=>1745,1654=>1654,483=>483,258=>258,205=>205,1161=>1161,1584=>1584,-55=>-55,269=>269,452=>452,492=>492,65=>65,202=>202,44=>44,1056=>1056,192=>192,729=>729,901=>901,270=>270,1894=>1894,1367=>1367,1619=>1619,1840=>1840,339=>339,800=>800,1027=>1027,1467=>1467,1485=>1485,379=>379,352=>352,1606=>1606,118=>118,38=>38,1223=>1223,553=>553,570=>570,648=>648,821=>821,826=>826,902=>902,715=>715,1771=>1771,411=>411,81=>81,1343=>1343,19=>19,1851=>1851,424=>424,1842=>1842,1084=>1084,686=>686,163=>163,861=>861,1053=>1053,1242=>1242,89=>89,924=>924,1128=>1128,1239=>1239,1253=>1253,1067=>1067,1832=>1832,1583=>1583,1304=>1304,1841=>1841,1650=>1650,1657=>1657,1014=>1014,1808=>1808,1413=>1413,26=>26,387=>387,4=>4,1888=>1888,1281=>1281,440=>440,622=>622,101=>101,897=>897,1356=>1356,34=>34,467=>467,762=>762,1431=>1431,238=>238,674=>674,627=>627,1585=>1585,1877=>1877,295=>295,1092=>1092,1226=>1226,912=>912,242=>242,1204=>1204,1577=>1577,810=>810,775=>775,1815=>1815,16=>16,575=>575,805=>805,208=>208,1019=>1019,1254=>1254,1812=>1812,72=>72,1168=>1168,653=>653,988=>988,1339=>1339,362=>362,643=>643,1666=>1666,1861=>1861,1521=>1521,46=>46,1595=>1595,938=>938,995=>995,247=>247,631=>631,1852=>1852,18=>18,1121=>1121,403=>403,852=>852,355=>355,994=>994,749=>749,187=>187,1149=>1149,1198=>1198,539=>539,1371=>1371,487=>487,814=>814,541=>541,753=>753,1809=>1809,1482=>1482,1414=>1414,1295=>1295,1342=>1342,1529=>1529,1078=>1078,743=>743,1219=>1219,546=>546,945=>945,754=>754,1048=>1048,500=>500,383=>383,710=>710,330=>330,409=>409,36=>36,1711=>1711,680=>680,415=>415,1305=>1305,1615=>1615,423=>423,271=>271,714=>714,1478=>1478,23=>23,315=>315,1409=>1409,1753=>1753,1279=>1279,1862=>1862,712=>712,300=>300,1895=>1895,1289=>1289,289=>289,435=>435,1395=>1395,1169=>1169,1232=>1232,704=>704,690=>690,779=>779,921=>921,96=>96,1718=>1718,803=>803,1533=>1533,819=>819,1744=>1744,1816=>1816,489=>489,1544=>1544,898=>898,534=>534,559=>559,227=>227,515=>515,195=>195,157=>157,697=>697,1085=>1085,1347=>1347,1746=>1746,169=>169,1154=>1154,783=>783,1362=>1362,529=>529,1004=>1004,630=>630,472=>472,63=>63,557=>557,501=>501,245=>245,574=>574,1119=>1119,1591=>1591,495=>495,1468=>1468,734=>734,566=>566,1251=>1251,1007=>1007,962=>962,150=>150,209=>209,888=>888,1257=>1257,1680=>1680,200=>200,308=>308,1317=>1317,1292=>1292,778=>778,1857=>1857,172=>172,314=>314,583=>583,394=>394,1628=>1628,37=>37,450=>450,953=>953,1769=>1769,141=>141,30=>30,1=>1,1511=>1511,214=>214,1868=>1868,944=>944,91=>91,470=>470,639=>639,244=>244,693=>693,1173=>1173,1836=>1836,1897=>1897,1499=>1499,1224=>1224,140=>140,785=>785,1077=>1077,378=>378,1695=>1695,759=>759,177=>177,657=>657,427=>427,1435=>1435,1525=>1525,1365=>1365,1341=>1341,756=>756,1775=>1775,1539=>1539,1561=>1561,1541=>1541,825=>825,907=>907,78=>78,1403=>1403,986=>986,1297=>1297,1864=>1864,616=>616,1688=>1688,820=>820,182=>182,1755=>1755,1093=>1093,964=>964,518=>518,1789=>1789,866=>866,1283=>1283,673=>673,1865=>1865,1754=>1754,40=>40,1359=>1359,599=>599,417=>417,891=>891,1784=>1784,1332=>1332,1212=>1212,1452=>1452,842=>842,1434=>1434,884=>884,1778=>1778,1724=>1724,1450=>1450,1344=>1344,343=>343,1231=>1231,770=>770,246=>246,764=>764,456=>456,1734=>1734,338=>338,1436=>1436,1068=>1068,1633=>1633,1856=>1856,767=>767,1507=>1507,1783=>1783,267=>267,940=>940,1462=>1462,25=>25,798=>798,1404=>1404,768=>768,1217=>1217,1665=>1665,1185=>1185,356=>356,194=>194,1002=>1002,234=>234,758=>758,1669=>1669,1291=>1291,1142=>1142,1605=>1605,533=>533,1620=>1620,408=>408,651=>651,1867=>1867,993=>993,1663=>1663,1578=>1578,229=>229,1351=>1351,190=>190,228=>228,1165=>1165,1824=>1824,1803=>1803,179=>179,1500=>1500,615=>615,1658=>1658,402=>402,989=>989,1319=>1319,1685=>1685,519=>519,1263=>1263,807=>807,1364=>1364,319=>319,1138=>1138,156=>156,1036=>1036,1438=>1438,1311=>1311,1516=>1516,1453=>1453,1176=>1176,349=>349,983=>983,1196=>1196,56=>56,839=>839,633=>633,1113=>1113,1772=>1772,1249=>1249,708=>708,158=>158,160=>160,464=>464,582=>582,1741=>1741,1869=>1869,992=>992,384=>384,1566=>1566,1429=>1429,479=>479,1396=>1396,1280=>1280,114=>114,1846=>1846,1122=>1122,84=>84,738=>738,645=>645,93=>93,1790=>1790,1303=>1303,564=>564,1208=>1208,608=>608,1061=>1061,1720=>1720,1590=>1590,516=>516,1609=>1609,1642=>1642,1552=>1552,76=>76,224=>224,1360=>1360,1863=>1863,213=>213,769=>769,414=>414,287=>287,939=>939,102=>102,1523=>1523,1130=>1130,561=>561,1258=>1258,1353=>1353,985=>985,1328=>1328,638=>638,1234=>1234,462=>462,239=>239,1299=>1299,1455=>1455,139=>139,1272=>1272,871=>871,1408=>1408,1531=>1531,282=>282,1860=>1860,1290=>1290,1214=>1214,250=>250,801=>801,1575=>1575,127=>0,1834=>1834,934=>934,1193=>1193,1063=>1063,1172=>1172,1419=>1419,203=>203,960=>960,604=>604,320=>320,468=>468,1236=>1236,1768=>1768,998=>998,48=>48,1045=>1045,702=>702,1225=>1225,1632=>1632,277=>277,1519=>1519,255=>255,485=>485,1491=>1491,746=>746,301=>301,164=>164,1315=>1315,1792=>1792,830=>830,1432=>1432,136=>136,342=>342,1878=>1878,900=>900,1197=>1197,159=>159,926=>926,1839=>1839,1011=>1011,696=>696,538=>538,121=>121,457=>457,1171=>1171,836=>836,168=>168,1537=>1537,1524=>1524,1399=>1399,211=>211,1567=>1567,777=>777,1515=>1515,1582=>1582,1298=>1298,299=>299,363=>363,1267=>1267,1799=>1799,887=>887,1627=>1627,1088=>1088,1266=>1266,1707=>1707,1653=>1653,571=>571,955=>955,1010=>1010,1345=>1345,374=>374,1379=>1379,505=>505,600=>600,1361=>1361,1187=>1187,827=>827,920=>920,449=>449,879=>879,480=>480,1020=>1020,1597=>1597,1486=>1486,1069=>1069,1306=>1306,1235=>1235,1095=>1095,1070=>1070,1407=>1407,530=>530,1066=>1066,1788=>1788,193=>193,59=>59,1472=>1472,675=>675,1183=>1183,527=>527,726=>726,1692=>1692,219=>219,223=>223,802=>802,1883=>1883,1378=>1378,259=>259,997=>997,1099=>1099,558=>558,1837=>1837,1096=>1096,531=>531,665=>665,1731=>1731,32=>32,316=>316,432=>432,381=>381,719=>719,1009=>1009,781=>781,813=>813,3=>3,1287=>1287,1474=>1474,1866=>1866,928=>928,632=>632,1296=>1296,1140=>1140,1366=>1366,341=>341,321=>321,1110=>1110,1042=>1042,1535=>1535,1241=>1241,322=>322),[446,484],16212,76,70),RpcApi.SimpleOrganism(0x0000000000096e9e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            var_36 = if isempty(var_38)
                    0
                else
                    1
                end
            var_36 = Creature.energyLeft(o)
            var_36 = var_36 * var_36
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.color)
            if var_30 <= var_30
            end
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        Creature.stepUp(o)
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
        var_33 = func_39(var_33,var_20)
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.stepUp(o)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
        end
        var_33 = Creature.energyDown(o)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],37.0683,0,54.9175,79885,0x0000006b,Dict{Int16,Int16}(),[726,308],42076,75,59),RpcApi.SimpleOrganism(0x0000000000097ded,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_39::String = "uK17R8Lt"
        local var_33::Int64 = 3761244718335218341
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_40::Bool = false
            return var_6
        end
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepUp(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = string(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyDown(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= abs(var_2)
                Int8(var_2)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(-3373)
        Creature.eatDown(c,o,Int(var_2))
        var_28 = func_7(var_39)
        return true
    end),[98,38,30,73,83,1,72,0,51],22.3364,0,69.2028,79434,0x0000006b,Dict{Int16,Int16}(),[974,163],2798,40,37),RpcApi.SimpleOrganism(0x0000000000097e6e,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_28(var_26::String="8ug2WOht",var_27::Float64=0.501466)
            var_27 = sin(89)
            return var_26
        end
        function func_18(var_17::Int8=-100)
            Creature.stepUp(o)
            var_17 = (Int8)(var_17) $ (Int8)(var_17)
            var_17 = if 127 >= 0.992323
                    Int8(round(0.992323))
                else
                    127
                end
            var_17 = var_17 - var_17
            Creature.eatRight(c,o,Int(var_17))
            var_24 = (Int16)(var_24) >> (Int16)(var_24)
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            for i::Int8 = 1:div(var_17,16)
                Creature.stepUp(o)
            end
            var_24 = Int16(Creature.eatUp(c,o,Int(var_17)))
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
            var_21 = if haskey(o.mem,var_21)
                    o.mem[var_21]
                else
                    var_21
                end
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
        var_13 = Int16(o.color)
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.pos.y)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        var_1 = Creature.energyDown(o)
        var_2 = func_5(var_2,var_13)
        Creature.eatRight(c,o,Int(var_2))
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = func_5(var_2,var_13)
        Creature.eatDown(c,o,Int(var_2))
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
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        return true
    end),[98,38,30,73,83,1,72,0,51],36.481,0,63.4551,79365,0x0000006b,Dict(0=>0,127=>127,1=>1),[505,595],1507,50,77),RpcApi.SimpleOrganism(0x0000000000097bf5,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            Creature.stepUp(o)
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepLeft(o)
            var_30 = var_30 - var_30
            Creature.stepDown(o)
            o.mem[var_30] = var_30
            var_30 = Int16(o.pos.y)
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
        var_33 = Int(Creature.idLeft(o))
        var_2 = var_2 - var_2
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_33 = Int(var_2)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
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
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
        end
        var_20 = string(0.0185362)
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],69.5053,0,7.75295,78809,0x0000006b,Dict{Int16,Int16}(),[922,228],7848,50,54),RpcApi.SimpleOrganism(0x0000000000096af0,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_25::Int16 = -27637
        function func_22(var_20::Int16=15694,var_21::Bool=false)
            var_20 = (Int16)(var_20) $ (Int16)(var_20)
            var_20 = if 32767 >= 0.153382
                    Int16(round(0.153382))
                else
                    32767
                end
            var_20 = (Int16)(var_20) << (Int16)(var_20)
            var_21 = -6465276825981143595 > (Int64)(0)
            var_20 = (Int16)(var_20) >> (Int16)(var_20)
            var_21 = Bool(abs(var_21 - var_21))
            var_20 = Int16(o.pos.x)
            var_20 = Int16(o.pos.x)
            var_20 = if haskey(o.mem,var_20)
                    o.mem[var_20]
                else
                    var_20
                end
            var_20 = Int16(o.pos.x)
            var_21 = Creature.stepUp(o)
            return var_20
        end
        function func_19(var_16::Int64=3658747169151054421,var_17::Int8=-78,var_18::String="zRsjyM9g")
            var_29 = var_29 * var_18
            var_16 = Int(Creature.idUp(o))
            Creature.eatUp(c,o,Int(var_17))
            var_18 = var_18[1:if length(var_18) > length(var_18)
                            0
                        else
                            length(var_18) - length(var_18)
                        end]
            Creature.eatLeft(c,o,Int(var_17))
            if var_18 < var_18
            end
            var_16 = Creature.energyRight(o)
            var_17 = (Int8)(var_17) << (Int8)(var_17)
            return var_16
        end
        local var_15::Int8 = -55
        local var_13::Int16 = 1446
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            Creature.stepDown(o)
            var_4 = Int16(o.pos.x)
            var_3 = (Int8)(var_3) >> (Int8)(var_3)
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            return var_3
        end
        var_8 = Creature.stepDown(o)
        var_25 = Int16(o.color)
        var_25 = if 32767 >= abs(-9111824689554671105)
                Int16(-9111824689554671105)
            else
                32767
            end
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_15 = func_5(var_2,var_13)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_1 = Creature.energyDown(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        Creature.eatUp(c,o,Int(var_2))
        var_15 = (Int8)(var_2) $ (Int8)(var_15)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        var_1 = Int(var_1)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        var_25 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = if 32767 >= 0.913241
                Int16(round(0.913241))
            else
                32767
            end
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_15 < var_15
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_27 = csc(if 8 === (Int8)(0)
                        (Int8)(1)
                    else
                        8
                    end)
        end
        var_2 = (Int8)(var_2) | (Int8)(var_15)
        var_25 = Int16(Creature.eatDown(c,o,Int(var_15)))
        Creature.stepUp(o)
        var_13 = Int16(o.color)
        var_25 = var_25 % if var_25 === (Int16)(0)
                    (Int16)(1)
                else
                    var_25
                end
        var_25 = Int16(o.color)
        Creature.stepRight(o)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        var_8 = isempty("Vm1XJRRZ")
        return true
    end),[98,38,30,73,83,1,72,0,51],45.7274,0,22.8043,78301,0x0000006b,Dict(0=>0,119=>119,47=>47,1446=>1446,117=>117,107=>107,41=>41,127=>127,118=>118),[44,492],51525,2,68),RpcApi.SimpleOrganism(0x0000000000096f42,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_37::Int64=-8943040828786202330,var_38::Int16=-25678)
            return var_37
        end
        function func_21(var_20::String="aEhz4rt6")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_20
        end
        local var_8::Bool = true
        function func_7(var_6::String="ZKRF9L8v")
            local var_36::Int64 = -1695001546049427380
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
        var_8 = var_8
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_13 = Int16(o.pos.x)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(o.color)
        Creature.eatUp(c,o,Int(var_2))
        var_8 = var_8 | var_8
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_8 = var_8 & var_8
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
    end),[98,38,30,73,83,1,72,0,51],88.9807,0,54.3672,78209,0x0000006b,Dict(0=>0,127=>127),[1458,258],40436,84,62),RpcApi.SimpleOrganism(0x00000000000972ed,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            var_37 = string(-6537)
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepLeft(o)
            var_30 = Int16(o.pos.y)
            Creature.stepLeft(o)
            var_30 = Int16(o.pos.x)
            o.mem[var_30] = var_30
            var_29 = string(var_30)
            var_30 = Int16(o.pos.y)
            var_29 = var_29 * var_29
            var_29 = var_29 * var_29
            var_30 = Int16(o.pos.y)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Bool = true
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        Creature.eatDown(c,o,Int(var_2))
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
        var_33 = Int(Creature.idUp(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idDown(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Creature.energyUp(o)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = var_33 + var_33
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Int(Creature.idUp(o))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_20 = func_7(var_28)
        var_33 = Creature.energyDown(o)
        var_33 = Creature.energyDown(o)
        var_33 = (Int64)(var_33) << (Int64)(var_33)
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
        for i::Int8 = 1:div(var_2,16)
            Creature.stepUp(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Creature.energyLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],99.3299,0,44.2506,77585,0x0000006b,Dict{Int16,Int16}(),[694,208],31011,42,71),RpcApi.SimpleOrganism(0x0000000000097ce1,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_36(var_35::Int16=10897)
            return var_35
        end
        function func_33(var_32::Int64=-150004353503157796)
            var_32 = Creature.energyLeft(o)
            return var_32
        end
        function func_31(var_28::Int8=104,var_29::Int16=-5145,var_30::Int16=-31734)
            var_30 = Int16(o.color)
            o.mem[var_29] = var_29
            o.mem[var_29] = var_29
            return var_28
        end
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            var_3 = (Int8)(var_3) >> (Int8)(var_3)
            var_4 = var_4 % if var_4 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_4
                    end
            Creature.stepLeft(o)
            var_3 = (Int8)(var_3) << (Int8)(var_3)
            var_4 = (Int16)(var_4) | (Int16)(var_4)
            var_4 = if isempty("ITOn0UN1")
                    0
                else
                    1
                end
            var_3 = (Int8)(var_3) << (Int8)(var_3)
            Creature.stepLeft(o)
            var_4 = Int16(Creature.eatLeft(c,o,Int(var_3)))
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_4 = var_4 + var_4
            for i::Int8 = 1:div(var_3,16)
            end
            var_3 = (Int8)(var_3) >> (Int8)(var_3)
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = string(0.507728)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_20 = func_7(var_20)
        for i::Int8 = 1:div(var_2,16)
        end
        return true
    end),[98,38,30,73,83,1,72,0,51],5.77864,0,8.49677,77399,0x0000006b,Dict{Int16,Int16}(),[1133,349],5478,50,49),RpcApi.SimpleOrganism(0x0000000000097d61,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_44::String = "zuZPWmCf"
        function func_41(var_40::Int64=-6098033716135128073)
            var_40 = Int(Creature.idDown(o))
            Creature.stepLeft(o)
            var_40 = Int(Creature.idLeft(o))
            return var_40
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepDown(o)
            var_30 = (Int16)(var_30) >> (Int16)(var_30)
            var_30 = var_30 + var_30
            var_30 = Int16(o.pos.x)
            var_30 = Int16(o.color)
            Creature.stepDown(o)
            Creature.stepUp(o)
            var_29 = var_29[1:if length(var_29) > length(var_29)
                            0
                        else
                            length(var_29) - length(var_29)
                        end]
            Creature.stepDown(o)
            return var_29
        end
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepDown(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idRight(o))
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_33 = Int(Creature.idRight(o))
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
        var_33 = Creature.energyDown(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_33 = Int(Creature.idDown(o))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_20 = var_20 * var_20
        var_33 = Int(Creature.idDown(o))
        var_33 = Creature.energyRight(o)
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepUp(o)
        end
        var_33 = Int(Creature.idUp(o))
        var_33 = Int(Creature.idLeft(o))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],24.0375,0,98.0511,77055,0x0000006b,Dict{Int16,Int16}(),[901,412],4199,48,61),RpcApi.SimpleOrganism(0x0000000000097589,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_43::Int16 = -16323
        local var_41::Int16 = 6607
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            local var_40::Int16 = -15129
            var_40 = Int16(o.pos.x)
            var_36 = Int(Creature.idRight(o))
            var_36 = Int(Creature.idDown(o))
            var_40 = Int16(o.pos.y)
            var_40 = Int16(o.color)
            var_36 = Int(Creature.idUp(o))
            var_36 = Int(Creature.idDown(o))
            var_36 = Int(Creature.idRight(o))
            Creature.stepUp(o)
            o.mem[var_40] = var_40
            var_36 = Int(Creature.getEnergy(o,Int(var_40),Int(var_40)))
            var_36 = Creature.energyLeft(o)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_44::String = "SDcEvuYl"
            var_29 = var_44 * var_29
            Creature.stepLeft(o)
            var_30 = Int16(o.color)
            if var_30 <= var_30
                local var_45::Int8 = 8
                Creature.stepUp(o)
            end
            var_30 = Int16(o.pos.y)
            Creature.stepLeft(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        Creature.stepUp(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Int(Creature.idUp(o))
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
        var_33 = Int(Creature.idLeft(o))
        var_20 = string(var_41)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        Creature.stepUp(o)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
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
        var_20 = func_7(var_28)
        var_41 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_33 = Int(true)
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
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],7.85603,0,4.75406,76576,0x0000006b,Dict{Int16,Int16}(),[692,96],24310,9,76),RpcApi.SimpleOrganism(0x0000000000097e1c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_30 = Int16(o.color)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyLeft(o)
        var_33 = Creature.energyDown(o)
        var_33 = Creature.energyUp(o)
        Creature.stepDown(o)
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
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        var_33 = Creature.energyLeft(o)
        var_20 = string(var_33)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(true)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = var_33 + var_33
        var_20 = func_7(var_28)
        var_33 = Creature.energyRight(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_20 = var_20 * var_20
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
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        var_33 = Int(round(0.157195))
        var_33 = (Int64)(var_33) $ (Int64)(var_33)
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],7.72668,0,12.1301,76364,0x0000006b,Dict{Int16,Int16}(),[1818,479],2328,50,53),RpcApi.SimpleOrganism(0x0000000000097c57,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.pos.y)
            Creature.stepRight(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
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
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            local var_38::Int16 = 9144
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],70.0921,0,37.3077,76135,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[569,578],6858,50,53),RpcApi.SimpleOrganism(0x0000000000097a74,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(false)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Int(Creature.idUp(o))
        var_20 = string(var_33)
        var_33 = Creature.energyUp(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_33 = Int(Creature.idRight(o))
        for i::Int8 = 1:div(var_2,16)
            local var_37::Bool = true
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],7.52023,0,29.1073,76026,0x0000006b,Dict{Int16,Int16}(),[760,165],11701,50,38),RpcApi.SimpleOrganism(0x0000000000097eaf,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_45(var_42::Int64=-7001084229554550321,var_43::Int64=-6691411462864276443,var_44::String="3dmKbBQ0")
            var_43 = Int(Creature.idDown(o))
            var_44 = string(-25928)
            var_42 = Int(Creature.idRight(o))
            return var_42
        end
        local var_41::Int64 = -3755146626635748703
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            local var_46::String = "yIi6BVhu"
            local var_40::Int16 = -22082
            o.mem[var_30] = var_40
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            Creature.stepLeft(o)
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.stepDown(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_33 = Int(var_33)
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
            var_36 = if 127 >= abs(1571)
                    Int8(1571)
                else
                    127
                end
            Creature.eatDown(c,o,Int(var_36))
            var_38 = Int16(o.pos.x)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],5.08902,0,43.1555,75281,0x0000006b,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[579,762],858,50,57),RpcApi.SimpleOrganism(0x00000000000977e9,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_10(var_9::Int64=-7432512811444760568)
            return var_9
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[15,30,18,83,28,2,37,14,89],28.2185,0,99.303,74375,0x0000006b,Dict{Int16,Int16}(),[616,383],18221,50,14),RpcApi.SimpleOrganism(0x0000000000097b18,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_51(var_48::Bool=false,var_49::Float64=0.729327,var_50::Float64=0.386019)
            var_50 = tan(-7808)
            var_48 = Creature.stepRight(o)
            var_53 = Creature.stepUp(o)
            var_48 = Creature.stepLeft(o)
            var_50 = var_54 % if var_50 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_50
                    end
            var_49 = tan(-53)
            var_48 = (Bool)(var_48) & (Bool)(var_48)
            var_54 = csc(if -14435 === (Int16)(0)
                        (Int16)(1)
                    else
                        -14435
                    end)
            var_50 = sin(2474514479372266450)
            return var_48
        end
        function func_47(var_44::Int16=-11715,var_45::Bool=true,var_46::Int16=15889)
            local var_55::String = "MsYSo8Y7"
            var_45 = Creature.stepLeft(o)
            var_46 = if haskey(o.mem,var_46)
                    o.mem[var_46]
                else
                    var_46
                end
            var_45 = Creature.stepUp(o)
            var_44 = div(var_46,if var_46 === (Int16)(0)
                        (Int16)(1)
                    else
                        var_46
                    end)
            var_45 = Bool(abs(var_45 - var_45))
            return var_44
        end
        function func_43(var_40::Int64=-4903720001648357165,var_41::Float64=0.853496,var_42::Float64=0.158122)
            var_41 = pi
            Creature.stepLeft(o)
            var_41 = pi
            var_40 = (Int64)(var_40) & (Int64)(var_40)
            var_42 = csc(if 14754 === (Int16)(0)
                        (Int16)(1)
                    else
                        14754
                    end)
            var_40 = Creature.energyDown(o)
            var_40 = Creature.energyDown(o)
            var_40 = Creature.energyUp(o)
            var_40 = Int(Creature.idRight(o))
            var_42 = csc(if -68 === (Int8)(0)
                        (Int8)(1)
                    else
                        -68
                    end)
            var_41 = var_42 * var_42
            var_40 = Creature.energyDown(o)
            var_41 = sin(-8887)
            Creature.stepUp(o)
            var_42 = tan(27657)
            var_40 = Creature.energyRight(o)
            var_41 = sin(var_40)
            Creature.stepDown(o)
            var_40 = Creature.energyLeft(o)
            var_42 = cot(if var_40 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_40
                    end)
            var_41 = csc(if -91 === (Int8)(0)
                        (Int8)(1)
                    else
                        -91
                    end)
            var_42 = csc(if var_41 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_41
                    end)
            var_41 = sin(var_42)
            var_42 = csc(if -50 === (Int8)(0)
                        (Int8)(1)
                    else
                        -50
                    end)
            var_40 = Int(Creature.idLeft(o))
            var_42 = Float64(-94)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            return var_40
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = var_30 * var_30
            var_29 = string(var_30)
            Creature.stepDown(o)
            var_30 = Int16(o.pos.y)
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_30 = Int16(o.pos.x)
            var_30 = Int16(o.pos.y)
            var_30 = if 32767 >= abs(var_30)
                    Int16(var_30)
                else
                    32767
                end
            Creature.stepRight(o)
            var_30 = Int16(o.pos.x)
            var_30 = Int16(o.pos.y)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = Creature.energyUp(o)
        var_33 = Int(Creature.idRight(o))
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        for i::Int8 = 1:div(var_2,16)
            local var_52::Int64 = -4626945972537756373
            var_52 = Int(true)
            Creature.stepDown(o)
        end
        Creature.stepRight(o)
        var_2 = if 127 >= 0.388149
                Int8(round(0.388149))
            else
                127
            end
        var_33 = Int(round(0.846535))
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Int(Creature.idRight(o))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        Creature.stepUp(o)
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = div(var_33,if var_33 === (Int64)(0)
                    (Int64)(1)
                else
                    var_33
                end)
        Creature.stepUp(o)
        var_33 = Int(Creature.idUp(o))
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_20 = string(0.836474)
        var_33 = Creature.energyUp(o)
        var_20 = var_20 * var_20
        var_20 = func_7(var_28)
        Creature.stepDown(o)
        var_33 = Creature.energyUp(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        var_33 = Creature.energyDown(o)
        Creature.eatDown(c,o,Int(var_2))
        var_2 = if 127 >= abs(var_33)
                Int8(var_33)
            else
                127
            end
        var_20 = string(-3373)
        var_33 = Int(Creature.idLeft(o))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],79.1398,478,1.41842,74019,0x0000008c,Dict(542=>542,540=>540,546=>546,545=>545,544=>544,6327=>6327,541=>541,543=>543),[1744,394],10057,38,108),RpcApi.SimpleOrganism(0x000000000009708f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_42::Bool = true
        function func_39(var_36::Int16=10927,var_37::Int8=72,var_38::Float64=0.0793908)
            var_36 = var_36 + var_36
            var_38 = sin(var_38)
            Creature.stepLeft(o)
            for i::Int8 = 1:div(var_37,16)
            end
            var_36 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_37,16)
                Creature.stepDown(o)
            end
            var_36 = Int16(Creature.eatLeft(c,o,Int(var_37)))
            var_36 = Int16(Creature.eatUp(c,o,Int(var_37)))
            var_36 = Int16(Creature.eatLeft(c,o,Int(var_37)))
            var_38 = Float64(true)
            var_36 = Int16(Creature.eatRight(c,o,Int(var_37)))
            var_38 = cos(-3532856809525415926)
            var_38 = csc(if var_38 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_38
                    end)
            var_36 = var_36 + var_36
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Float64 = 0.933864
            var_41 = sin(var_41)
            Creature.stepRight(o)
            var_41 = csc(if 8538720851136919390 === (Int64)(0)
                        (Int64)(1)
                    else
                        8538720851136919390
                    end)
            return var_6
        end
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
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_42 = (Bool)(var_42) $ (Bool)(var_42)
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        for i::Int8 = 1:div(var_2,16)
            local var_44::Int16 = -22017
            local var_43::Float64 = 0.100042
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(-3373)
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],28.1524,0,94.6365,73935,0x0000006b,Dict{Int16,Int16}(),[526,170],37101,50,58),RpcApi.SimpleOrganism(0x0000000000097e64,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::Int64=-2454615464662086274,var_37::String="INdbHFpq",var_38::String="uGaXkVNk")
            var_38 = string(var_43)
            o.mem[var_40] = var_40
            var_43 = pi
            var_36 = Int(Creature.idLeft(o))
            Creature.stepDown(o)
            return var_36
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_29 = string(0.868872)
            Creature.stepUp(o)
            Creature.stepRight(o)
            var_30 = if 32767 >= abs(37)
                    Int16(37)
                else
                    32767
                end
            var_30 = Int16(o.color)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            local var_41::Int64 = 3335667178639579401
            var_41 = Creature.energyUp(o)
            var_41 = (Int64)(var_41) | (Int64)(var_41)
            var_6 = var_6 * var_6
            var_41 = (Int64)(var_41) << (Int64)(var_41)
            var_41 = Int(Creature.idLeft(o))
            var_41 = Creature.energyLeft(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        Creature.stepLeft(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyUp(o)
        var_20 = var_20[1:if length(var_20) > length(var_20)
                        0
                    else
                        length(var_20) - length(var_20)
                    end]
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
        Creature.stepUp(o)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            var_42 = Creature.energyRight(o)
        end
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Int(round(0.468325))
        var_20 = var_20 * var_20
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
        var_33 = Creature.energyUp(o)
        var_33 = (Int64)(var_33) & (Int64)(var_33)
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],29.9832,0,45.1452,73878,0x0000006b,Dict{Int16,Int16}(),[1372,385],1607,23,69),RpcApi.SimpleOrganism(0x0000000000097efc,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_29::Int8 = 74
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            local var_30::Int16 = 8024
            var_4 = (Int16)(var_4) >> (Int16)(var_4)
            if var_30 === var_4
            end
            var_3 = if 127 >= abs(var_3)
                    Int8(var_3)
                else
                    127
                end
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            var_3 = if false
                    1
                else
                    0
                end
            var_30 = Int16(Creature.eatDown(c,o,Int(var_3)))
            var_3 = (Int8)(var_3) & (Int8)(var_3)
            return var_3
        end
        var_20 = func_7(var_20)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_29))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        Creature.eatUp(c,o,Int(var_2))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        for i::Int8 = 1:div(var_2,16)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        var_2 = if 127 >= abs(874617539073884084)
                Int8(874617539073884084)
            else
                127
            end
        return true
    end),[98,38,30,73,83,1,72,0,51],97.2824,0,23.9593,73735,0x0000006b,Dict{Int16,Int16}(),[1399,587],88,50,32),RpcApi.SimpleOrganism(0x00000000000973c6,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_33(var_31::Int8=-54,var_32::Bool=false)
            local var_36::Int64 = -6984250030665055298
            local var_37::Int16 = 2218
            var_32 = Creature.stepDown(o)
            var_36 = Creature.energyRight(o)
            var_31 = var_31 + var_31
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_36 = Int(Creature.idDown(o))
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            for i::Int8 = 1:div(var_31,16)
                Creature.stepLeft(o)
            end
            var_37 = (Int16)(var_37) $ (Int16)(var_37)
            var_36 = var_36 * var_36
            var_37 = if haskey(o.mem,var_37)
                    o.mem[var_37]
                else
                    var_37
                end
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            var_36 = Creature.energyRight(o)
            var_36 = Creature.energyUp(o)
            var_32 = isempty("wAs8Je6Y")
            var_37 = Int16(Creature.eatLeft(c,o,Int(var_31)))
            var_31 = if 127 >= abs(var_36)
                    Int8(var_36)
                else
                    127
                end
            return var_31
        end
        local var_30::Int64 = 720224374337809168
        local var_25::Int16 = -27637
        function func_22(var_20::Int16=15694,var_21::Bool=false)
            local var_40::Bool = true
            local var_39::Int8 = 112
            var_39 = (Int8)(var_39) $ (Int8)(var_39)
            var_21 = Creature.stepDown(o)
            o.mem[var_20] = var_20
            if var_39 > var_39
            end
            var_21 = Creature.stepUp(o)
            var_39 = (Int8)(var_39) << (Int8)(var_39)
            o.mem[var_20] = var_20
            var_40 = isempty("s1bBovpd")
            return var_20
        end
        function func_19(var_16::Int64=3658747169151054421,var_17::Int8=-78,var_18::String="zRsjyM9g")
            var_16 = Int(Creature.idDown(o))
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_17,16)
                local var_35::Int16 = 31083
                Creature.stepRight(o)
                var_35 = (Int16)(var_35) $ (Int16)(var_35)
            end
            Creature.stepUp(o)
            var_17 = var_17 + var_17
            for i::Int8 = 1:div(var_17,16)
            end
            var_17 = if 127 >= 0.00734862
                    Int8(round(0.00734862))
                else
                    127
                end
            var_17 = var_17 + var_17
            var_16 = div(var_16,if var_16 === (Int64)(0)
                        (Int64)(1)
                    else
                        var_16
                    end)
            for i::Int8 = 1:div(var_17,16)
            end
            for i::Int8 = 1:div(var_17,16)
            end
            var_16 = Int(Creature.idRight(o))
            return var_16
        end
        local var_13::Int16 = 1446
        function func_5(var_3::Int8=119,var_4::Int16=1001)
            for i::Int8 = 1:div(var_3,16)
            end
            var_4 = Int16(o.color)
            var_4 = Int16(Creature.eatRight(c,o,Int(var_3)))
            var_4 = Int16(Creature.eatUp(c,o,Int(var_3)))
            return var_3
        end
        var_8 = Creature.stepDown(o)
        var_8 = (Bool)(var_8) | (Bool)(var_8)
        var_30 = Creature.energyRight(o)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        var_15 = func_5(var_2,var_13)
        var_25 = Int16(o.pos.x)
        var_25 = var_25 + var_25
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        var_1 = Creature.energyDown(o)
        var_30 = Int(Creature.idUp(o))
        var_25 = Int16(o.color)
        var_13 = Int16(Creature.eatLeft(c,o,Int(var_15)))
        Creature.stepRight(o)
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        if var_2 != var_2
            Creature.stepDown(o)
        end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_25 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_8 = Creature.stepRight(o)
        var_1 = Int(var_1)
        var_25 = Int16(o.pos.x)
        var_8 = Creature.stepUp(o)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        Creature.eatUp(c,o,Int(var_2))
        var_30 = Int(var_15)
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        if var_15 < var_15
            Creature.stepLeft(o)
        end
        var_25 = if haskey(o.mem,var_25)
                o.mem[var_25]
            else
                var_25
            end
        var_2 = (Int8)(var_2) | (Int8)(var_15)
        var_13 = Int16(o.color)
        var_25 = Int16(Creature.eatLeft(c,o,Int(var_2)))
        Creature.stepRight(o)
        var_13 = var_25 + var_13
        var_13 = Int16(Creature.eatRight(c,o,Int(var_2)))
        var_30 = Int(Creature.idRight(o))
        var_25 = var_25 % if var_25 === (Int16)(0)
                    (Int16)(1)
                else
                    var_25
                end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_25 = Int16(o.pos.x)
        var_30 = Creature.energyLeft(o)
        var_30 = Int(Creature.idDown(o))
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_25 = Int16(Creature.eatRight(c,o,Int(var_15)))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_15)))
        var_13 = Int16(o.color)
        var_8 = isempty("Vm1XJRRZ")
        return true
    end),[98,38,30,73,83,1,72,0,51],86.9754,0,75.6058,73516,0x00000070,Dict(47=>47,40=>40,0=>0,1446=>1446,119=>119,-27637=>-27637,118=>118,127=>127,90=>90,111=>111,117=>117,41=>41,115=>115),[451,259],28831,50,104),RpcApi.SimpleOrganism(0x0000000000097e5a,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_38(var_37::String="Xawd72Hw")
            var_40 = (Bool)(var_40) & (Bool)(var_40)
            return var_37
        end
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
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
        var_2 = (Int8)(var_2) & (Int8)(var_2)
        var_2 = var_2 - var_2
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = func_7(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_20 = var_20 * var_20
        var_33 = Creature.energyLeft(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        var_2 = if isempty(var_20)
                0
            else
                1
            end
        var_20 = func_7(var_28)
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
        Creature.eatDown(c,o,Int(var_2))
        var_20 = string(0.0185362)
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyDown(o)
        return true
    end),[98,38,30,73,83,1,72,0,51],95.9336,0,28.3822,73102,0x0000006b,Dict{Int16,Int16}(),[175,940],1708,64,44),RpcApi.SimpleOrganism(0x00000000000978c7,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            var_30 = Int16(o.color)
            Creature.stepUp(o)
            Creature.stepDown(o)
            var_30 = Int16(o.color)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        var_33 = Creature.energyLeft(o)
        var_33 = Creature.energyUp(o)
        Creature.stepDown(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        var_33 = Int(Creature.idLeft(o))
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
        var_33 = if isempty(var_20)
                0
            else
                1
            end
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_33 = Creature.energyRight(o)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyUp(o)
        var_20 = string(24637)
        var_20 = string(var_33)
        Creature.eatUp(c,o,Int(var_2))
        Creature.stepRight(o)
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyLeft(o)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_33 = var_33 + var_33
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyDown(o)
        var_20 = var_20 * var_20
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
            Creature.stepUp(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_33 = (Int64)(var_33) $ (Int64)(var_33)
        var_20 = string(-3373)
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],81.2007,0,59.0485,73010,0x0000006b,Dict{Int16,Int16}(),[452,232],15990,1,54),RpcApi.SimpleOrganism(0x0000000000097859,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_39(var_36::String="Xt1D7B7I",var_37::Int64=-4778923146127486868,var_38::Int16=1455)
            local var_40::Int64 = 6896796221358307396
            var_37 = Int(Creature.idUp(o))
            Creature.stepLeft(o)
            var_37 = Creature.energyLeft(o)
            return var_36
        end
        function func_34(var_31::Int8=-79,var_32::Int16=-26814,var_33::Int8=54)
            var_32 = Int16(Creature.eatUp(c,o,Int(var_33)))
            Creature.stepRight(o)
            var_32 = Int16(o.pos.x)
            var_32 = if haskey(o.mem,var_32)
                    o.mem[var_32]
                else
                    var_32
                end
            var_32 = if isempty("WMB8st6k")
                    0
                else
                    1
                end
            return var_31
        end
        local var_28::Float64 = 0.227099
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepLeft(o)
            return var_6
        end
        function func_27(var_24::Float64=0.467264,var_25::Bool=false,var_26::Bool=true)
            var_26 = Creature.stepLeft(o)
            var_26 = var_24 < (Float64)(1)
            var_25 = var_25 | var_26
            var_25 = isempty("yQQUIZqC")
            var_24 = pi
            var_25 = Creature.stepDown(o)
            var_24 = Float64(-102)
            var_24 = cot(if var_24 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_24
                    end)
            var_24 = tan(35)
            var_24 = cot(if var_24 === (Float64)(0)
                        (Float64)(1)
                    else
                        var_24
                    end)
            var_24 = pi
            var_26 = Creature.stepRight(o)
            return var_24
        end
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        var_13 = Int16(Creature.eatUp(c,o,Int(var_2)))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_28 = log(if var_2 > (Int8)(0)
                    var_2
                else
                    abs(if var_28 !== 0.0
                            var_28
                        else
                            1.0
                        end)
                end)
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        var_28 = tan(var_2)
        Creature.eatDown(c,o,Int(var_2))
        var_13 = Int16(o.pos.y)
        var_28 = log(if var_28 > (Float64)(0)
                    var_28
                else
                    abs(if var_28 !== 0.0
                            var_28
                        else
                            1.0
                        end)
                end)
        var_28 = tan(var_2)
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        var_28 = cot(if var_2 === (Int8)(0)
                    (Int8)(1)
                else
                    var_2
                end)
        for i::Int8 = 1:div(var_2,16)
        end
        var_2 = if 127 >= abs(9871)
                Int8(9871)
            else
                127
            end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
            local var_35::Int8 = 74
        end
        Creature.eatUp(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],4.06146,0,41.3583,72804,0x0000006b,Dict{Int16,Int16}(),[403,757],17101,12,54),RpcApi.SimpleOrganism(0x0000000000097e28,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_33::Int64 = 3761244718335218341
        function func_31(var_29::String="kxAJlYap",var_30::Int16=6327)
            Creature.stepDown(o)
            var_29 = var_29[1:if length(var_29) > length(var_29)
                            0
                        else
                            length(var_29) - length(var_29)
                        end]
            var_29 = string(0.970466)
            return var_29
        end
        local var_28::String = "BI2aHdRl"
        local var_20::String = "ozWRZlps"
        function func_7(var_6::String="ZKRF9L8v")
            Creature.stepUp(o)
            return var_6
        end
        var_33 = (Int64)(var_33) | (Int64)(var_33)
        Creature.stepUp(o)
        var_33 = Int(Creature.idRight(o))
        var_33 = Creature.energyUp(o)
        var_2 = if 127 >= 0.385419
                Int8(round(0.385419))
            else
                127
            end
        Creature.eatUp(c,o,Int(var_2))
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
        Creature.stepUp(o)
        var_33 = (Int64)(var_33) & (Int64)(var_33)
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_33 = Creature.energyUp(o)
        Creature.eatUp(c,o,Int(var_2))
        var_20 = string(var_20)
        var_20 = var_20 * var_20
        Creature.eatLeft(c,o,Int(var_2))
        for i::Int8 = 1:div(var_2,16)
        end
        var_33 = Creature.energyLeft(o)
        var_2 = (Int8)(var_2) | (Int8)(var_2)
        Creature.eatRight(c,o,Int(var_2))
        var_33 = Int(var_2)
        Creature.eatLeft(c,o,Int(var_2))
        var_33 = Int(Creature.idLeft(o))
        var_33 = Creature.energyRight(o)
        var_33 = Creature.energyUp(o)
        var_33 = Creature.energyLeft(o)
        var_20 = func_7(var_28)
        var_33 = Int(Creature.idRight(o))
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
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        var_13 = Int16(Creature.eatDown(c,o,Int(var_2)))
        var_20 = string(-3373)
        var_33 = Int(Creature.idDown(o))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[98,38,30,73,83,1,72,0,51],34.9421,0,99.2029,72705,0x0000006b,Dict{Int16,Int16}(),[397,338],2208,20,57),RpcApi.SimpleOrganism(0x0000000000097c85,:(function (c::Config.ConfigData,o::Creature.Organism)
        var_2 = if 127 >= abs(30028)
                Int8(30028)
            else
                127
            end
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatUp(c,o,Int(var_2))
        Creature.eatRight(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatLeft(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        Creature.eatDown(c,o,Int(var_2))
        return true
    end),[15,6,18,77,28,19,37,5,95],35.6203,0,39.7504,72578,0x0000006b,Dict{Int16,Int16}(),[624,390],6397,35,13)]