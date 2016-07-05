[RpcApi.SimpleOrganism(0x000000000003d4f6,:(function (o::Creature.Organism,)
        local var_214::ASCIIString = "PMlqXKm5"
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            local var_213::Int8 = 91
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            local var_210::Int16 = -9958
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
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
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
                Creature.stepUp(o)
            end
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
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            var_85 = var_13 - var_85
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                local var_204::Int8 = 123
                Creature.stepUp(o)
                Creature.stepUp(o)
                Creature.eatRight(o,Int(var_204))
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
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            var_85 = if haskey(o.mem,var_85)
                    o.mem[var_85]
                else
                    var_85
                end
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
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_131 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_131
            end
        Creature.eatRight(o,Int(var_1))
        var_1 = var_1 * var_1
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepRight(o)
        var_55 = var_34 / var_55
        Creature.eatLeft(o,Int(var_15))
        var_34 = func_25(var_34)
        var_131 = var_131 + var_82
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_1 = var_12 / var_1
        o.mem[var_82] = var_131
        if var_12 <= var_12
            local var_211::Int16 = -31340
            local var_200::Int64 = -7611052359104577480
            Creature.stepDown(o)
            var_200 = var_200 / var_200
        end
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],4,9210,70,211744,0x00000048,Dict(20703=>-26047,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703,-29091=>31438,1=>1),[58,294],143),RpcApi.SimpleOrganism(0x000000000003d403,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            local var_213::Int8 = 91
            Creature.eatUp(o,Int(var_213))
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            local var_210::Int16 = -9958
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_209::ASCIIString = "X0MOyZ5c"
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
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
            if var_28 > var_76
                Creature.stepUp(o)
                Creature.stepUp(o)
            end
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
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            var_85 = var_13 - var_85
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepUp(o)
                Creature.stepUp(o)
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
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            var_85 = if haskey(o.mem,var_85)
                    o.mem[var_85]
                else
                    var_85
                end
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
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_1 = var_1 * var_1
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_15))
        Creature.eatLeft(o,Int(var_15))
        var_34 = func_25(var_34)
        var_131 = var_131 + var_82
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_1 = var_12 / var_1
        o.mem[var_82] = var_131
        if var_12 <= var_12
            local var_211::Int16 = -31340
            local var_200::Int64 = -7611052359104577480
            Creature.stepDown(o)
            var_200 = var_200 / var_200
        end
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],4,9210,70,202523,0x00000042,Dict(20703=>-26047,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703,-29091=>31438,1=>1),[184,274],143),RpcApi.SimpleOrganism(0x000000000003d524,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            Creature.eatUp(o,Int(var_213))
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
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
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
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_14))
            Creature.eatLeft(o,Int(var_8))
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
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            var_85 = var_13 - var_85
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                local var_204::Int8 = 123
                Creature.stepUp(o)
                Creature.stepUp(o)
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
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            var_85 = if haskey(o.mem,var_85)
                    o.mem[var_85]
                else
                    var_85
                end
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
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_1 = var_1 * var_1
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_15))
        Creature.eatLeft(o,Int(var_15))
        var_34 = func_25(var_34)
        var_131 = var_131 + var_82
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_1 = var_12 / var_1
        o.mem[var_82] = var_131
        if var_12 <= var_12
            local var_211::Int16 = -31340
            local var_200::Int64 = -7611052359104577480
            Creature.stepDown(o)
            var_200 = var_200 / var_200
        end
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],4,9210,70,197284,0x00000047,Dict(20703=>-26047,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703,-29091=>31438,1=>1),[34,286],140),RpcApi.SimpleOrganism(0x000000000003d518,:(function (o::Creature.Organism,)
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        function func_96(var_95::ASCIIString="CMsQ6J5t")
            return var_95
        end
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            Creature.stepUp(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            if var_44 > var_43
            end
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            return var_24
        end
        function func_9(var_8::Int8=-18)
            local var_123::Int64 = 2850089338817388517
            local var_85::Int16 = -29091
            local var_76::Int64 = -8364194871863581978
            local var_57::Bool = true
            local var_28::Int64 = -5547387289894786475
            local var_26::ASCIIString = "zSGt1MST"
            local var_16::Bool = true
            local var_14::Int8 = 115
            local var_13::Int16 = 31438
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_8))
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepRight(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_123 = Int(Creature.getEnergy(o,Int(var_85),Int(var_85)))
            Creature.eatUp(o,Int(var_8))
            var_26 = var_26 * var_26
            Creature.eatLeft(o,Int(var_14))
            var_26 = var_26[1:if length(var_26) > length(var_26)
                            0
                        else
                            length(var_26) - length(var_26)
                        end]
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            o.mem[var_85] = var_13
            Creature.stepDown(o)
            Creature.stepDown(o)
            var_8 = var_14 - var_14
            Creature.eatDown(o,Int(var_14))
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatLeft(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            var_57 = var_57 * var_57
            Creature.eatDown(o,Int(var_14))
            var_13 = var_13 - var_13
            var_85 = var_13 - var_85
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                local var_194::Int16 = 19012
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            var_28 = Int(Creature.getEnergy(o,Int(var_13),Int(var_85)))
            Creature.stepLeft(o)
            Creature.eatDown(o,Int(var_14))
            if var_57 == var_57
                local var_202::Bool = false
            end
            var_76 = var_28 * var_123
            Creature.stepRight(o)
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            if var_123 === var_123
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            var_123 = var_123 + var_76
            Creature.eatLeft(o,Int(var_14))
            if var_16 === var_16
                local var_199::Bool = false
                local var_201::ASCIIString = "MgdsYESD"
                Creature.stepUp(o)
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            var_57 = var_16 | var_57
            Creature.eatDown(o,Int(var_14))
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            return var_134
        end
        var_131 = var_131 / var_131
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        var_131 = if haskey(o.mem,var_131)
                o.mem[var_131]
            else
                var_131
            end
        var_1 = var_1 * var_1
        if var_55 == var_34
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
        end
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        var_34 = var_34 - var_34
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.stepLeft(o)
        var_55 = var_55 / var_55
        Creature.stepUp(o)
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepDown(o)
        var_82 = if haskey(o.mem,var_131)
                o.mem[var_131]
            else
                var_82
            end
        Creature.stepUp(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        Creature.stepUp(o)
        var_125 = var_125 * var_125
        if var_1 != var_1
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepUp(o)
        var_131 = var_131 * var_82
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.stepDown(o)
        o.mem[var_131] = var_82
        if var_12 <= var_12
            local var_188::Int16 = -12668
            Creature.stepUp(o)
        end
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            var_173 = var_173[if length(var_173) > length(var_173)
                            1
                        else
                            length(var_173)
                        end:if length(var_173) > length(var_173) > 0
                            0
                        else
                            end
                        end]
            Creature.stepDown(o)
        end
        o.mem[var_82] = var_131
        Creature.eatRight(o,Int(var_12))
        return true
    end),[100,300,95,0,1,1,1],4,6782,26,182829,0x000004a6,Dict(20703=>-26047,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26047=>17537,-572=>-572,17537=>-319,-28253=>20703,-29091=>31438,1=>1),[400,295],149),RpcApi.SimpleOrganism(0x000000000003d4a8,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            local var_210::Int16 = -9958
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_209::ASCIIString = "X0MOyZ5c"
            Creature.stepLeft(o)
            var_209 = var_209[1:if length(var_43) > length(var_209) > 0
                            0
                        else
                            div(length(var_209),length(var_43))
                        end]
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            local var_214::Int16 = -31133
            Creature.stepUp(o)
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
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
                Creature.stepUp(o)
            end
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
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepDown(o)
            var_85 = var_13 - var_85
            var_85 = if haskey(o.mem,var_13)
                    o.mem[var_13]
                else
                    var_85
                end
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                local var_204::Int8 = 123
                Creature.stepUp(o)
                Creature.stepUp(o)
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
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            var_85 = if haskey(o.mem,var_85)
                    o.mem[var_85]
                else
                    var_85
                end
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
            local var_215::Int8 = -115
            return var_134
        end
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        Creature.eatRight(o,Int(var_1))
        var_1 = var_1 * var_1
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_1))
        Creature.eatRight(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_15))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        Creature.stepUp(o)
        o.mem[var_82] = var_131
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_15))
        Creature.eatLeft(o,Int(var_15))
        var_34 = func_25(var_34)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_1 = var_12 / var_1
        o.mem[var_82] = var_131
        if var_12 <= var_12
            local var_211::Int16 = -31340
            local var_200::Int64 = -7611052359104577480
            Creature.stepDown(o)
            var_200 = var_200 / var_200
        end
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_12))
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],4,9210,70,165515,0x00000044,Dict(20703=>-26047,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26047=>13442,-572=>-572,17537=>-14079,-28253=>20703,-29091=>31438,1=>1),[65,293],141)]