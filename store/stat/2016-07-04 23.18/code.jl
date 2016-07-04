[RpcApi.SimpleOrganism(0x000000000002f4ae,:(function (o::Creature.Organism,)
        function func_143(var_141::Int8=28,var_142::Bool=false)
            return var_141
        end
        function func_137(var_136::Int16=-19242)
            return var_136
        end
        local var_125::Bool = true
        function func_96(var_95::ASCIIString="CMsQ6J5t")
            return var_95
        end
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            local var_145::Int64 = -8952951314449519862
            Creature.stepDown(o)
            Creature.stepDown(o)
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
            Creature.eatLeft(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
            end
            o.mem[var_13] = var_13
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_8))
            Creature.eatUp(o,Int(var_14))
            var_26 = var_26 * var_26
            Creature.eatLeft(o,Int(var_14))
            Creature.stepRight(o)
            o.mem[var_13] = var_85
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.stepDown(o)
            if var_26 !== var_26
                Creature.stepRight(o)
            end
            o.mem[var_13] = var_85
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            var_13 = var_13 - var_13
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepRight(o)
                Creature.stepUp(o)
            end
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_76 = var_76 * var_76
            Creature.eatDown(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.stepDown(o)
            if var_8 !== var_14
                local var_144::Int16 = 1587
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            if var_26 === var_26
                Creature.stepDown(o)
            end
            Creature.eatRight(o,Int(var_14))
            var_85 = var_85 * var_13
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatUp(o,Int(var_8))
            if var_14 !== var_14
                Creature.stepRight(o)
                Creature.stepUp(o)
            end
            if var_16 === var_16
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            var_28 = Int(Creature.getEnergy(o,Int(var_13),Int(var_13)))
            Creature.eatDown(o,Int(var_14))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        Creature.stepLeft(o)
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_1 = var_1 + var_12
        if var_12 > var_1
        end
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_12 = var_12 * var_1
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatDown(o,Int(var_1))
        o.mem[var_82] = var_82
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        Creature.stepUp(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        Creature.stepRight(o)
        Creature.stepUp(o)
        if var_82 !== var_82
            Creature.stepRight(o)
            Creature.stepLeft(o)
        end
        Creature.stepRight(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_82 = var_82 / var_82
        Creature.stepUp(o)
        o.mem[var_82] = var_82
        Creature.stepRight(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        Creature.eatLeft(o,Int(var_1))
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.eatDown(o,Int(var_12))
        if var_12 <= var_12
            local var_138::Int8 = 14
            Creature.stepLeft(o)
        end
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        var_12 = var_12 / var_1
        Creature.eatUp(o,Int(var_12))
        return true
    end),[100,300,95,0,1,1,1],21,5086,41,941580,0x00000250,Dict(0=>0,31438=>-29091,-28253=>-28253,-29091=>31438,-2660=>-29091,1670=>1670,-5320=>-5320,-572=>-572,1=>1),[399,272],141),RpcApi.SimpleOrganism(0x000000000002f4e1,:(function (o::Creature.Organism,)
        local var_131::Int16 = 20703
        local var_125::Bool = true
        function func_96(var_95::ASCIIString="CMsQ6J5t")
            Creature.stepDown(o)
            Creature.stepRight(o)
            return var_95
        end
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            local var_139::Int16 = 7557
            if var_24 >= var_24
            end
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
            Creature.eatLeft(o,Int(var_14))
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
            end
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            var_26 = var_26 * var_26
            Creature.eatLeft(o,Int(var_14))
            Creature.stepLeft(o)
            var_26 = var_26[1:if length(var_26) > length(var_26)
                            0
                        else
                            length(var_26) - length(var_26)
                        end]
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            o.mem[var_13] = var_85
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            var_13 = var_13 - var_13
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_76 = var_76 * var_76
            Creature.eatDown(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            if var_26 === var_26
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.eatRight(o,Int(var_14))
            if var_123 === var_123
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            var_123 = var_123 + var_76
            Creature.eatUp(o,Int(var_8))
            if var_14 !== var_14
                Creature.stepUp(o)
            end
            if var_16 === var_16
                local var_124::Int16 = 1670
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            o.mem[var_85] = var_13
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            local var_140::Int8 = 121
            var_134 = var_134 / var_134
            return var_134
        end
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        var_1 = var_1 + var_12
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        if var_55 == var_34
            Creature.stepRight(o)
        end
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        o.mem[var_82] = var_82
        Creature.eatUp(o,Int(var_1))
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.stepUp(o)
        if var_82 !== var_82
            Creature.stepUp(o)
        end
        Creature.stepRight(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        o.mem[var_82] = var_131
        if var_1 != var_1
            Creature.stepUp(o)
        end
        Creature.eatRight(o,Int(var_1))
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatLeft(o,Int(var_12))
        if var_12 <= var_12
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepDown(o)
        end
        Creature.stepRight(o)
        Creature.stepRight(o)
        return true
    end),[100,300,95,0,1,1,1],0,6685,22,612180,0x0000022d,Dict(0=>0,31438=>-29091,-28253=>20703,-29091=>0,-2660=>-29091,20703=>20703,-5320=>-5320,-572=>-572,1=>1),[7,292],146),RpcApi.SimpleOrganism(0x000000000002f3f9,:(function (o::Creature.Organism,)
        local var_131::Int16 = 20703
        local var_125::Bool = true
        function func_96(var_95::ASCIIString="CMsQ6J5t")
            Creature.stepLeft(o)
            return var_95
        end
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            local var_139::Bool = true
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepRight(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
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
            Creature.eatLeft(o,Int(var_14))
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
            end
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            var_26 = var_26 * var_26
            Creature.eatLeft(o,Int(var_14))
            Creature.stepLeft(o)
            var_26 = var_26[1:if length(var_26) > length(var_26)
                            0
                        else
                            length(var_26) - length(var_26)
                        end]
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            o.mem[var_13] = var_85
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            var_13 = var_13 - var_13
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_76 = var_76 * var_76
            Creature.eatDown(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            if var_26 === var_26
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            if var_123 === var_123
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            var_123 = var_123 + var_76
            Creature.eatUp(o,Int(var_8))
            if var_14 !== var_14
                Creature.stepUp(o)
            end
            if var_16 === var_16
                local var_124::Int16 = 1670
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            o.mem[var_85] = var_13
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
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        var_1 = var_1 + var_12
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        if var_55 == var_34
            Creature.stepRight(o)
        end
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        o.mem[var_82] = var_82
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.eatUp(o,Int(var_1))
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.stepUp(o)
        if var_82 !== var_82
            Creature.stepUp(o)
        end
        Creature.stepRight(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        if var_1 != var_1
            Creature.stepUp(o)
        end
        Creature.eatRight(o,Int(var_1))
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatLeft(o,Int(var_12))
        if var_12 <= var_12
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepDown(o)
        end
        Creature.stepRight(o)
        Creature.stepRight(o)
        return true
    end),[100,300,95,0,1,1,1],45,4627,22,594923,0x0000021e,Dict(0=>0,31438=>-29091,-28253=>-28253,-29091=>0,-2660=>-29091,-5320=>-5320,-572=>-572,1=>1),[25,293],140),RpcApi.SimpleOrganism(0x000000000002f49b,:(function (o::Creature.Organism,)
        local var_131::Int16 = 20703
        local var_125::Bool = true
        function func_96(var_95::ASCIIString="CMsQ6J5t")
            Creature.stepDown(o)
            Creature.stepRight(o)
            return var_95
        end
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
            local var_139::Int16 = 7557
            if var_24 >= var_24
            end
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
            Creature.eatLeft(o,Int(var_14))
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
            end
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            var_26 = var_26 * var_26
            Creature.eatLeft(o,Int(var_14))
            Creature.stepLeft(o)
            var_26 = var_26[1:if length(var_26) > length(var_26)
                            0
                        else
                            length(var_26) - length(var_26)
                        end]
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            o.mem[var_13] = var_85
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            var_13 = var_13 - var_13
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_76 = var_76 * var_76
            Creature.eatDown(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            if var_26 === var_26
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.eatRight(o,Int(var_14))
            if var_123 === var_123
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            var_123 = var_123 + var_76
            Creature.eatUp(o,Int(var_8))
            if var_14 !== var_14
                Creature.stepUp(o)
            end
            if var_16 === var_16
                local var_124::Int16 = 1670
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            o.mem[var_85] = var_13
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_8))
            return var_8
        end
        local var_1::Int8 = 59
        function func_135(var_134::Int64=6349986163145892178)
            local var_140::Int8 = 121
            var_134 = var_134 / var_134
            return var_134
        end
        var_12 = func_9(var_1)
        var_12 = func_9(var_12)
        var_15 = func_9(var_12)
        var_1 = func_9(var_1)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        var_1 = var_1 + var_12
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        if var_55 == var_34
            Creature.stepRight(o)
        end
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        o.mem[var_82] = var_82
        Creature.eatUp(o,Int(var_1))
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.stepUp(o)
        if var_82 !== var_82
            Creature.stepUp(o)
        end
        Creature.stepRight(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        o.mem[var_82] = var_131
        if var_1 != var_1
            Creature.stepUp(o)
        end
        Creature.eatRight(o,Int(var_1))
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatLeft(o,Int(var_12))
        if var_12 <= var_12
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepDown(o)
        end
        Creature.stepRight(o)
        Creature.stepRight(o)
        return true
    end),[100,300,95,0,1,1,1],0,6685,22,588206,0x0000022d,Dict(0=>0,31438=>-29091,-28253=>20703,-29091=>0,-2660=>-29091,20703=>20703,-5320=>-5320,-572=>-572,1=>1),[11,275],146),RpcApi.SimpleOrganism(0x000000000002f463,:(function (o::Creature.Organism,)
        local var_131::Int16 = 20703
        local var_125::Bool = true
        function func_96(var_95::ASCIIString="CMsQ6J5t")
            return var_95
        end
        local var_82::Int16 = -28253
        function func_63(var_62::Int64=-5487471262987408691)
            var_62 = var_62 / var_62
            var_62 = var_62 / var_62
            return var_62
        end
        local var_55::Int64 = 8062249648076403993
        function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
            return var_43
        end
        local var_34::Int64 = -6982312523886405890
        function func_25(var_24::Int64=5926471544133193903)
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
            Creature.eatLeft(o,Int(var_14))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_28 = var_28 + var_76
            o.mem[var_85] = var_13
            if var_28 > var_76
                Creature.stepUp(o)
            end
            o.mem[var_13] = var_13
            Creature.eatUp(o,Int(var_8))
            var_26 = var_26 * var_26
            Creature.eatLeft(o,Int(var_14))
            Creature.stepLeft(o)
            var_26 = var_26[1:if length(var_26) > length(var_26)
                            0
                        else
                            length(var_26) - length(var_26)
                        end]
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_8))
            o.mem[var_13] = var_85
            Creature.eatDown(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_8))
            var_13 = var_13 - var_13
            Creature.eatDown(o,Int(var_14))
            if var_28 !== var_28
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.eatDown(o,Int(var_14))
            Creature.stepLeft(o)
            var_76 = var_76 * var_76
            Creature.eatDown(o,Int(var_14))
            o.mem[var_13] = var_13
            Creature.stepDown(o)
            if var_8 !== var_14
                Creature.stepUp(o)
            end
            Creature.eatRight(o,Int(var_8))
            if var_26 === var_26
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            if var_123 === var_123
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            var_123 = var_123 + var_76
            Creature.eatUp(o,Int(var_8))
            if var_14 !== var_14
                Creature.stepUp(o)
            end
            if var_16 === var_16
                local var_124::Int16 = 1670
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_8))
            Creature.eatDown(o,Int(var_14))
            o.mem[var_85] = var_13
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
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        var_1 = var_1 + var_12
        var_34 = var_55 / var_55
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        if var_55 == var_34
            Creature.stepRight(o)
        end
        var_12 = func_9(var_12)
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_12))
        o.mem[var_82] = var_82
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.stepUp(o)
        if var_82 !== var_82
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        Creature.stepRight(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_82 = if haskey(o.mem,var_82)
                o.mem[var_82]
            else
                var_82
            end
        Creature.stepRight(o)
        var_55 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
        if var_1 != var_1
            local var_140::ASCIIString = "dc9F5RW7"
            Creature.stepUp(o)
        end
        var_55 = Int(Creature.getEnergy(o,Int(var_131),Int(var_131)))
        Creature.eatDown(o,Int(var_12))
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_12))
        Creature.eatUp(o,Int(var_12))
        if var_12 <= var_12
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepDown(o)
        end
        Creature.stepRight(o)
        Creature.stepRight(o)
        return true
    end),[100,300,95,0,1,1,1],21,4627,22,572055,0x0000022c,Dict(0=>0,31438=>-29091,-28253=>-28253,-29091=>0,-2660=>-29091,-5320=>-5320,-572=>-572,1=>1),[25,292],142)]