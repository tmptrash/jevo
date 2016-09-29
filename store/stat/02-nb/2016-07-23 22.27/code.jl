julia> [RpcApi.SimpleOrganism(0x0000000000069174,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,66059,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,600],169),RpcApi.SimpleOrganism(0x000000
000006922b,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,62052,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[899,599],169),RpcApi.SimpleOrganism(0x000000
0000069227,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,38096,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[899,597],169),RpcApi.SimpleOrganism(0x000000
00000691e1,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,31952,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,595],169),RpcApi.SimpleOrganism(0x000000
0000069210,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,28193,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[899,598],169),RpcApi.SimpleOrganism(0x000000
0000069176,:(function (o::Creature.Organism,)
        local var_271::Int64 = 1621997855229294214
        function func_218(var_217::Bool=true)
            local var_272::Int64 = -45775319424273021
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepRight(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            var_196 = var_196 / var_196
            Creature.eatRight(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = var_228 + var_228
            Creature.stepLeft(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            o.mem[var_196] = var_196
            if var_142 > var_142
                Creature.stepUp(o)
                Creature.stepUp(o)
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_228 = var_228 - var_228
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatLeft(o,Int(var_82))
            var_82 = var_186 + var_246
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            if var_246 < var_82
                Creature.stepLeft(o)
            end
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepUp(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_267::Int64 = -5455124546520737222
            local var_254::Int8 = -93
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatLeft(o,Int(var_74))
        Creature.eatRight(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatDown(o,Int(var_74))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_268::Bool = true
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        if var_172 == var_172
            Creature.stepRight(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_74 = var_74 * var_74
        var_111 = var_111 | var_111
        var_136 = var_136 * var_136
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        var_111 = func_83(var_111,var_74)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_266::Int16 = -10119
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatUp(o,Int(var_74))
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],25,7696,27,17137,0x0000009c,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,1],175),RpcApi.SimpleOrganism(0x0000000
0000690fd,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepDown(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            o.mem[var_265] = var_265
            var_150 = var_150 * var_150
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
                Creature.stepUp(o)
            end
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            o.mem[var_196] = var_196
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            var_228 = var_228 - var_228
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepDown(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            for i::Int8 = 1:div(var_82,_LOOP_STEPS_DIVIDER)
            end
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepRight(o)
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        o.mem[var_136] = var_136
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_74))
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,16403,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,586],173),RpcApi.SimpleOrganism(0x000000
000006921e,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,14040,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,599],169),RpcApi.SimpleOrganism(0x000000
0000069208,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepRight(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_246 = var_246 / var_186
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,12894,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,596],169),RpcApi.SimpleOrganism(0x000000
0000069206,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            Creature.stepDown(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            o.mem[var_265] = var_265
            var_150 = var_150 * var_150
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
                Creature.stepUp(o)
            end
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            o.mem[var_196] = var_196
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            var_228 = var_228 - var_228
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            o.mem[var_196] = var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepDown(o)
            end
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_246))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                local var_263::Int16 = 2395
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            for i::Int8 = 1:div(var_82,_LOOP_STEPS_DIVIDER)
            end
            if var_82 == var_82
                Creature.stepDown(o)
            end
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepRight(o)
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            var_199 = var_199 | var_81
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            local var_256::ASCIIString = "fRaib6Cz"
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepRight(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
        end
        var_136 = var_136 / var_136
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        o.mem[var_136] = var_136
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_74))
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7696,27,12560,0x00000047,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,587],173)]