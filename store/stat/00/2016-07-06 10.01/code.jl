[RpcApi.SimpleOrganism(0x0000000000041fab,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_195))
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            Creature.stepRight(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_222::Int16 = 32305
            Creature.stepLeft(o)
            var_222 = if haskey(o.mem,var_222)
                    o.mem[var_222]
                else
                    var_222
                end
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            var_24 = var_24 - var_24
            return var_24
        end
        function func_9(var_8::Int8=-18)
            local var_208::Int16 = -26568
            local var_123::Int64 = 2850089338817388517
            local var_85::Int16 = -29091
            local var_76::Int64 = -8364194871863581978
            local var_57::Bool = true
            local var_28::Int64 = -5547387289894786475
            local var_26::ASCIIString = "zSGt1MST"
            local var_16::Bool = true
            local var_14::Int8 = 115
            local var_13::Int16 = 31438
            Creature.stepLeft(o)
            o.mem[var_208] = var_13
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatRight(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            var_8 = var_14 - var_14
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_14))
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            var_76 = Int(Creature.getEnergy(o,Int(var_13),Int(var_85)))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_14))
            Creature.eatLeft(o,Int(var_8))
            if var_8 !== var_14
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            if var_123 === var_123
                Creature.stepRight(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            if var_16 === var_16
                Creature.stepDown(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_26 = var_26 * var_26
            var_57 = var_57 | var_16
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            Creature.stepDown(o)
            return var_134
        end
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = var_12 + var_12
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_12))
        Creature.eatUp(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        var_12 = var_1 * var_15
        var_125 = var_125 | var_125
        Creature.stepRight(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_1))
        o.mem[var_131] = var_82
        var_125 = var_125 & var_125
        Creature.stepUp(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepLeft(o)
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
   end),[100,300,95,0,1,1,1],7,9210,51,2205868,0x000000f1,Dict(20703=>-28253,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703
,-29091=>31438,1=>1),[400,216],143),RpcApi.SimpleOrganism(0x0000000000041dea,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            Creature.stepDown(o)
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            local var_223::Int8 = 17
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            var_43 = var_43 * var_43
            var_43 = var_43[1:if length(var_44) > length(var_43) > 0
                            0
                        else
                            div(length(var_43),length(var_44))
                        end]
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            return var_24
        end
        function func_9(var_8::Int8=-18)
            local var_208::Int16 = -26568
            local var_123::Int64 = 2850089338817388517
            local var_85::Int16 = -29091
            local var_76::Int64 = -8364194871863581978
            local var_57::Bool = true
            local var_28::Int64 = -5547387289894786475
            local var_26::ASCIIString = "zSGt1MST"
            local var_16::Bool = true
            local var_14::Int8 = 115
            local var_13::Int16 = 31438
            Creature.stepLeft(o)
            o.mem[var_208] = var_13
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatRight(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            var_8 = var_14 - var_14
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_14))
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                local var_222::Bool = false
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            var_76 = Int(Creature.getEnergy(o,Int(var_13),Int(var_85)))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_13 = var_85 * var_13
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_14))
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            if var_123 === var_123
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            if var_16 === var_16
                Creature.stepDown(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_26 = var_26 * var_26
            var_57 = var_57 | var_16
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            return var_134
        end
        Creature.eatDown(o,Int(var_1))
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        var_55 = var_34 * var_34
        var_125 = var_125 | var_125
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        var_12 = var_1 * var_15
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        o.mem[var_131] = var_131
        Creature.eatLeft(o,Int(var_1))
        Creature.eatUp(o,Int(var_12))
        var_34 = func_25(var_34)
        var_131 = var_131 + var_82
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_55 = func_63(var_34)
        Creature.eatUp(o,Int(var_197))
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        var_131 = var_131 / var_131
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],7,9210,6,1965481,0x000000e8,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[51,276],140),RpcApi.SimpleOrganism(0x0000000000041d18,:(function (o::Creature.Organism,)
        local var_223::Int16 = 6530
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            Creature.stepUp(o)
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepRight(o)
            var_43 = var_43[1:if length(var_44) > length(var_43) > 0
                            0
                        else
                            div(length(var_43),length(var_44))
                        end]
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            if var_24 < var_24
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            return var_24
        end
        function func_9(var_8::Int8=-18)
            local var_208::Int16 = -26568
            local var_123::Int64 = 2850089338817388517
            local var_85::Int16 = -29091
            local var_76::Int64 = -8364194871863581978
            local var_57::Bool = true
            local var_28::Int64 = -5547387289894786475
            local var_26::ASCIIString = "zSGt1MST"
            local var_16::Bool = true
            local var_14::Int8 = 115
            local var_13::Int16 = 31438
            Creature.stepLeft(o)
            o.mem[var_208] = var_13
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatRight(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            var_8 = var_14 - var_14
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_14))
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            Creature.eatLeft(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            var_76 = Int(Creature.getEnergy(o,Int(var_13),Int(var_85)))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_13 = var_85 * var_13
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_14))
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            if var_123 === var_123
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            if var_16 === var_16
                Creature.stepDown(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_26 = var_26 * var_26
            var_57 = var_57 | var_16
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            Creature.stepDown(o)
            return var_134
        end
        Creature.eatDown(o,Int(var_1))
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        o.mem[var_82] = var_82
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        var_55 = var_34 * var_34
        var_125 = var_125 | var_125
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        var_12 = var_1 * var_15
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        o.mem[var_131] = var_131
        Creature.eatLeft(o,Int(var_1))
        Creature.eatUp(o,Int(var_12))
        var_34 = func_25(var_34)
        var_131 = var_131 + var_82
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_55 = func_63(var_34)
        var_55 = var_34 / var_34
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],7,9210,7,1804946,0x000000df,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[174,276],136),RpcApi.SimpleOrganism(0x0000000000042018,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_195))
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            Creature.stepDown(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_222::Int16 = 32305
            Creature.stepLeft(o)
            var_222 = if haskey(o.mem,var_222)
                    o.mem[var_222]
                else
                    var_222
                end
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            var_24 = var_24 * var_24
            Creature.stepRight(o)
            Creature.stepUp(o)
            var_24 = var_24 - var_24
            return var_24
        end
        function func_9(var_8::Int8=-18)
            local var_208::Int16 = -26568
            local var_123::Int64 = 2850089338817388517
            local var_85::Int16 = -29091
            local var_76::Int64 = -8364194871863581978
            local var_57::Bool = true
            local var_28::Int64 = -5547387289894786475
            local var_26::ASCIIString = "zSGt1MST"
            local var_16::Bool = true
            local var_14::Int8 = 115
            local var_13::Int16 = 31438
            Creature.stepLeft(o)
            o.mem[var_208] = var_13
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatRight(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            var_8 = var_14 - var_14
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_14))
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            var_76 = Int(Creature.getEnergy(o,Int(var_13),Int(var_85)))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_14))
            Creature.eatLeft(o,Int(var_8))
            if var_8 !== var_14
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            if var_123 === var_123
                Creature.stepRight(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            if var_16 === var_16
                Creature.stepDown(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_26 = var_26 * var_26
            var_57 = var_57 | var_16
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            Creature.stepDown(o)
            return var_134
        end
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = var_12 + var_12
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_12))
        Creature.eatUp(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        var_12 = var_1 * var_15
        var_125 = var_125 | var_125
        Creature.stepRight(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_1))
        o.mem[var_131] = var_82
        var_125 = var_125 & var_125
        Creature.stepUp(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepLeft(o)
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],7,9210,51,1796082,0x000000f3,Dict(20703=>-28253,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703,-29091=>31438,1=>1),[399,216],144),RpcApi.SimpleOrganism(0x0000000000041f05,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_195))
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_222::Int16 = 32305
            var_222 = if haskey(o.mem,var_222)
                    o.mem[var_222]
                else
                    var_222
                end
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
            var_24 = var_24 - var_24
            return var_24
        end
        function func_9(var_8::Int8=-18)
            local var_208::Int16 = -26568
            local var_123::Int64 = 2850089338817388517
            local var_85::Int16 = -29091
            local var_76::Int64 = -8364194871863581978
            local var_57::Bool = true
            local var_28::Int64 = -5547387289894786475
            local var_26::ASCIIString = "zSGt1MST"
            local var_16::Bool = true
            local var_14::Int8 = 115
            local var_13::Int16 = 31438
            Creature.stepLeft(o)
            o.mem[var_208] = var_13
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatRight(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            var_8 = var_14 - var_14
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_14))
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            var_76 = Int(Creature.getEnergy(o,Int(var_13),Int(var_85)))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_14))
            Creature.eatLeft(o,Int(var_8))
            if var_8 !== var_14
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_8))
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            if var_123 === var_123
                Creature.stepRight(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            Creature.eatLeft(o,Int(var_14))
            if var_16 === var_16
                Creature.stepDown(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_26 = var_26 * var_26
            var_57 = var_57 | var_16
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            return var_134
        end
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = var_12 + var_12
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_12))
        Creature.eatUp(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        var_12 = var_1 * var_15
        var_125 = var_125 | var_125
        Creature.stepRight(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_1))
        o.mem[var_131] = var_82
        var_125 = var_125 & var_125
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepLeft(o)
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],7,9210,51,1767314,0x000000f1,Dict(20703=>-28253,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703,-29091=>31438,1=>1),[400,249],143)]