[RpcApi.SimpleOrganism(0x0000000000045100,:(function (o::Creature.Organism,)
        function func_226(var_225::Int8=-52)
            return var_225
        end
        local var_224::Bool = false
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            if var_195 == var_195
            end
            Creature.stepRight(o)
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            var_62 = var_62 * var_62
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_227::Bool = true
            Creature.stepDown(o)
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
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
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatLeft(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            var_57 = var_16 * var_16
            if var_16 === var_16
                Creature.stepUp(o)
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
            Creature.stepRight(o)
            return var_134
        end
        Creature.eatDown(o,Int(var_1))
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
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
        var_34 = func_25(var_34)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_55 = func_63(var_34)
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        var_131 = var_131 / var_131
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],7,9210,7,2749709,0x00000104,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[10,2],132),RpcApi.SimpleOrganism(0x0000000000044f3e,:(function (o::Creature.Organism,)
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
            local var_223::Int8 = 17
            Creature.stepUp(o)
            Creature.stepUp(o)
            if var_223 >= var_223
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepUp(o)
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
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
                local var_224::Int16 = -25190
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
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
        Creature.stepUp(o)
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        var_12 = func_9(var_1)
        var_34 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        var_55 = var_34 * var_34
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        var_12 = var_1 * var_15
        var_12 = var_12 / var_197
        Creature.stepRight(o)
        o.mem[var_131] = var_131
        Creature.eatLeft(o,Int(var_1))
        Creature.eatUp(o,Int(var_12))
        var_34 = func_25(var_34)
        Creature.stepUp(o)
        var_55 = func_63(var_55)
        var_55 = func_63(var_34)
        Creature.eatUp(o,Int(var_197))
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        var_131 = var_131 / var_131
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        Creature.stepUp(o)
        return true
    end),[100,300,95,0,1,1,1],0,9210,6,2460327,0x00000102,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[1,254],137),RpcApi.SimpleOrganism(0x0000000000044a69,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            for i::Int8 = 1:div(var_195,_LOOP_STEPS_DIVIDER)
            end
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            local var_223::Int8 = 17
            Creature.stepDown(o)
            Creature.stepUp(o)
            if var_223 >= var_223
                Creature.stepUp(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_223 = var_223 / var_223
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            if var_24 === var_24
            end
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
                local var_224::Int16 = -25190
                var_224 = if haskey(o.mem,var_224)
                        o.mem[var_224]
                    else
                        var_224
                    end
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
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
        Creature.stepUp(o)
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        var_12 = func_9(var_1)
        var_34 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        var_55 = var_34 * var_34
        var_125 = var_125 | var_125
        Creature.stepUp(o)
        if var_12 < var_15
        end
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        var_12 = var_1 * var_15
        Creature.eatDown(o,Int(var_1))
        Creature.stepRight(o)
        o.mem[var_131] = var_131
        Creature.stepLeft(o)
        if var_125 == var_125
        end
        Creature.eatUp(o,Int(var_12))
        var_34 = func_25(var_34)
        var_131 = var_131 + var_82
        var_55 = func_63(var_55)
        Creature.stepUp(o)
        var_55 = func_63(var_34)
        Creature.eatUp(o,Int(var_197))
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        var_131 = var_131 / var_131
        Creature.eatLeft(o,Int(var_12))
        return true
    end),[100,300,95,0,1,1,1],7,9210,6,2255201,0x00000105,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[400,286],144),RpcApi.SimpleOrganism(0x0000000000044f74,:(function (o::Creature.Organism,)
        function func_226(var_225::Int8=-52)
            return var_225
        end
        local var_224::Bool = false
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
            if var_195 == var_195
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            return var_195
        end
        local var_161::Int8 = 81
        local var_131::Int16 = 20703
        local var_125::Bool = true
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            Creature.stepUp(o)
            var_62 = var_62 - var_62
            Creature.stepLeft(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            local var_227::Bool = true
            var_43 = var_43 * var_43
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
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
                local var_228::Int64 = -5512671203779523335
                Creature.stepUp(o)
            end
            Creature.eatDown(o,Int(var_8))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatLeft(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            var_57 = var_16 * var_16
            if var_16 === var_16
                Creature.stepUp(o)
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
            Creature.stepRight(o)
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
        Creature.eatLeft(o,Int(var_1))
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
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_55 = func_63(var_34)
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        var_131 = var_131 / var_131
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        return true
    end),[100,300,95,0,1,1,1],7,9210,7,2195853,0x00000100,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[8,1],139),RpcApi.SimpleOrganism(0x0000000000044a11,:(function (o::Creature.Organism,)
        local var_197::Int8 = 93
        function func_196(var_195::Int8=-12)
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
            if var_223 >= var_223
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepUp(o)
            return var_43
        end
        function func_25(var_24::Int64=5926471544133193903)
            local var_226::Int8 = -101
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
            if var_28 !== var_28
                local var_222::Bool = false
                Creature.stepDown(o)
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
                local var_224::Int16 = -25190
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
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
            Creature.stepUp(o)
            return var_134
        end
        Creature.stepUp(o)
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_15 = func_9(var_1)
        var_125 = var_125 * var_125
        var_12 = func_9(var_1)
        var_34 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        var_34 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.stepRight(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        var_12 = var_1 * var_15
        var_12 = var_12 / var_197
        Creature.stepRight(o)
        o.mem[var_131] = var_131
        Creature.eatLeft(o,Int(var_1))
        Creature.eatUp(o,Int(var_12))
        var_34 = func_25(var_34)
        Creature.stepUp(o)
        var_55 = func_63(var_55)
        var_55 = func_63(var_34)
        Creature.eatUp(o,Int(var_197))
        var_55 = var_34 / var_34
        Creature.stepRight(o)
        var_131 = var_131 / var_131
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_131)))
        Creature.stepUp(o)
        return true
    end),[100,300,95,0,1,1,1],0,9210,6,2152171,0x00000104,Dict(20703=>20703,-2660=>-29091,0=>0,31438=>31438,-5320=>-5320,-26568=>31438,-26047=>13442,-572=>-572,17537=>-14079,-28253=>-28253,-29091=>31438,1=>1),[3,249],138)]