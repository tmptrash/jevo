[RpcApi.SimpleOrganism(0x000000000006c932,:(function (o::Creature.Organism,)
        local var_281::Int16 = -12545
        function func_218(var_217::Bool=true)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            var_150 = Bool(abs(var_150 - var_150))
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.eatDown(o,Int(var_142))
            if var_210 != var_210
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            if var_142 < var_142
                Creature.stepDown(o)
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_142))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            Creature.eatDown(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            var_267 = if haskey(o.mem,var_267)
                    o.mem[var_267]
                else
                    var_267
                end
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            var_142 = var_142 * var_142
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_210 = var_210 * var_210
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 + var_267
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_267] = var_267
            o.mem[var_196] = var_267
            Creature.stepRight(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_276::Int64 = 1619280238554731823
            local var_274::Int16 = 7616
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatDown(o,Int(var_270))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_186))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            var_81 = var_81 | var_81
            var_274 = var_274 * var_274
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_270))
            Creature.eatRight(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_276 = var_276 - var_276
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepUp(o)
            end
            var_276 = var_276 * var_276
            Creature.stepRight(o)
            var_81 = var_81 & var_81
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 * var_136
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        var_136 = var_136 * var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        var_74 = var_74 + var_74
        if var_111 == var_124
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepDown(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            o.mem[var_234] = var_234
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_74))
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepDown(o)
        return true
    end),[110,300,95,0,1,1,1],11,5362,15,262537,0x000001aa,Dict(-6942=>-6942,2=>2,29298=>29297,0=>0,-18381=>-18381,25558=>25558,29297=>29297,9308=>29297,-24796=>-24796,-19989=>-19989,-4363=>-4363,-21566=>-21566,1=>29297),[866,8],180),RpcApi.SimpleOrganism(0x000000000006c8f8,:(function (o::Creature.Organism,)
        local var_281::Int16 = -12545
        function func_218(var_217::Bool=true)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            var_150 = Bool(abs(var_150 - var_150))
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.eatDown(o,Int(var_142))
            if var_210 != var_210
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            if var_142 < var_142
                Creature.stepDown(o)
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_142))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            Creature.eatDown(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            var_267 = if haskey(o.mem,var_267)
                    o.mem[var_267]
                else
                    var_267
                end
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            var_142 = var_142 * var_142
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_210 = var_210 * var_210
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 + var_267
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_267] = var_267
            o.mem[var_196] = var_267
            Creature.stepRight(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_276::Int64 = 1619280238554731823
            local var_274::Int16 = 7616
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatDown(o,Int(var_270))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_186))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            var_81 = var_81 | var_81
            var_274 = var_274 * var_274
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_270))
            Creature.eatRight(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_276 = var_276 - var_276
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepUp(o)
            end
            var_276 = var_276 * var_276
            Creature.stepRight(o)
            var_81 = var_81 & var_81
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 * var_136
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        var_136 = var_136 * var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        var_74 = var_74 + var_74
        if var_111 == var_124
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepDown(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            o.mem[var_234] = var_234
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepDown(o)
        return true
    end),[110,300,95,0,1,1,1],11,5362,15,203195,0x000001a9,Dict(-6942=>-6942,2=>2,29298=>29297,0=>0,-18381=>-18381,25558=>25558,29297=>29297,9308=>29297,-24796=>-24796,-19989=>-19989,-4363=>-4363,-21566=>-21566,1=>29297),[839,7],180),RpcApi.SimpleOrganism(0x000000000006c916,:(function (o::Creature.Organism,)
        local var_281::Int16 = -12545
        function func_218(var_217::Bool=true)
            Creature.stepRight(o)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.eatUp(o,Int(var_149))
            Creature.stepLeft(o)
            var_150 = var_150 * var_150
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.eatDown(o,Int(var_142))
            if var_210 != var_210
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            if var_142 < var_142
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_142))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
            Creature.eatDown(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            var_267 = if haskey(o.mem,var_267)
                    o.mem[var_267]
                else
                    var_267
                end
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_210 = var_210 * var_210
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 + var_267
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_267] = var_267
            o.mem[var_196] = var_267
            Creature.stepRight(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_276::Int64 = 1619280238554731823
            local var_274::Int16 = 7616
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatDown(o,Int(var_270))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_186))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.stepUp(o)
            var_81 = var_199 | var_199
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            var_81 = var_81 | var_81
            var_274 = var_274 * var_274
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_270))
            Creature.eatRight(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_276 = var_276 - var_276
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.stepUp(o)
            if var_81 >= var_81
                Creature.stepUp(o)
            end
            var_276 = var_276 * var_276
            Creature.stepRight(o)
            var_81 = var_81 & var_81
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 * var_136
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        var_136 = var_136 * var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        var_74 = var_74 + var_74
        if var_111 == var_124
            Creature.stepDown(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepDown(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            o.mem[var_234] = var_234
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepDown(o)
        return true
    end),[110,300,95,0,1,1,1],11,5362,15,186194,0x000001ab,Dict(-6942=>-6942,2=>2,29298=>29297,0=>0,-18381=>-18381,25558=>25558,29297=>29297,9308=>29297,-24796=>-24796,-19989=>-19989,-4363=>-4363,-21566=>-21566,1=>29297),[879,11],180),RpcApi.SimpleOrganism(0x000000000006c8e9,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            var_149 = var_149 * var_149
            Creature.eatRight(o,Int(var_149))
            var_149 = var_149 / var_149
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            if var_210 != var_210
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            Creature.stepUp(o)
            var_210 = var_210 | var_210
            var_210 = Bool(abs(var_210 - var_210))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_210 = var_210 * var_210
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            if var_142 > var_142
                Creature.stepRight(o)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            var_196 = var_196 / var_196
            var_196 = var_196 * var_196
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            var_81 = var_81 * var_81
            Creature.eatDown(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            if var_81 >= var_199
                var_263 = if haskey(o.mem,var_263)
                        o.mem[var_263]
                    else
                        var_263
                    end
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.stepLeft(o)
            var_81 = var_81 | var_81
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            local var_254::Int8 = -93
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        if var_111 == var_124
            Creature.stepDown(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            var_234 = var_234 / var_234
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        if var_111 === var_111
        end
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        return true
    end),[110,300,95,0,1,1,1],14,9128,11,180640,0x0000012a,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,2=>2,29297=>-19989,-24796=>-24796,-19989=>-19989,1=>1),[659,580],178),RpcApi.SimpleOrganism(0x000000000006c86b,:(function (o::Creature.Organism,)
        local var_281::Int16 = -12545
        function func_218(var_217::Bool=true)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_284::Int64 = -7195826133599082744
            Creature.eatRight(o,Int(var_149))
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.eatDown(o,Int(var_142))
            if var_210 != var_210
                Creature.stepUp(o)
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            if var_142 < var_142
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_142))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            var_267 = if haskey(o.mem,var_267)
                    o.mem[var_267]
                else
                    var_267
                end
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_210 = var_210 * var_210
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 + var_267
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_267] = var_267
            o.mem[var_196] = var_267
            Creature.stepRight(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_276::Int64 = 1619280238554731823
            local var_274::Int16 = 7616
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatDown(o,Int(var_270))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_186))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            if var_274 <= var_274
            end
            var_81 = var_199 | var_199
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            var_81 = var_81 | var_81
            var_274 = var_274 * var_274
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_270))
            Creature.eatRight(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_276 = var_276 - var_276
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepUp(o)
            end
            var_276 = var_276 * var_276
            Creature.stepRight(o)
            var_81 = var_81 & var_81
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 * var_136
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        var_136 = var_136 * var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        var_74 = var_74 + var_74
        if var_111 == var_124
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        Creature.stepDown(o)
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepDown(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            o.mem[var_234] = var_234
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepDown(o)
        return true
    end),[110,300,95,0,1,1,1],11,5362,15,160429,0x000001ad,Dict(-6942=>-6942,2=>2,29298=>29297,0=>0,-18381=>-18381,25558=>25558,29297=>29297,9308=>29297,-24796=>-24796,-19989=>-19989,-4363=>-4363,-21566=>-21566,1=>29297),[890,600],174),RpcApi.SimpleOrganism(0x000000000006c768,:(function (o::Creature.Organism,)
        local var_273::Int8 = -76
        function func_218(var_217::Bool=true)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            if var_210 != var_210
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            var_210 = Bool(abs(var_210 - var_210))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            if var_142 > var_142
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            var_196 = var_196 / var_196
            var_196 = var_196 * var_196
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
                local var_275::Int16 = -25918
                Creature.stepLeft(o)
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            if var_81 >= var_199
                var_263 = if haskey(o.mem,var_263)
                        o.mem[var_263]
                    else
                        var_263
                    end
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.stepLeft(o)
            var_81 = var_81 | var_81
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            local var_272::Bool = true
            local var_254::Int8 = -93
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        if var_111 == var_124
            Creature.stepDown(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepDown(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7074,96,152292,0x00000116,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,2=>2,29297=>-19989,-24796=>-24796,-19989=>-19989,1=>1),[873,569],174),RpcApi.SimpleOrganism(0x000000000006c75c,:(function (o::Creature.Organism,)
        local var_281::Int16 = -12545
        function func_218(var_217::Bool=true)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.eatDown(o,Int(var_142))
            if var_210 != var_210
                Creature.stepLeft(o)
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            if var_142 < var_142
                Creature.stepRight(o)
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_142))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            Creature.eatDown(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            var_267 = if haskey(o.mem,var_267)
                    o.mem[var_267]
                else
                    var_267
                end
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_210 = var_210 * var_210
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 + var_267
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_267] = var_267
            o.mem[var_196] = var_267
            Creature.stepRight(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_276::Int64 = 1619280238554731823
            local var_274::Int16 = 7616
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatDown(o,Int(var_270))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_186))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            var_81 = var_81 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_270))
            Creature.eatRight(o,Int(var_186))
            var_81 = var_199 * var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_276 = var_276 - var_276
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_199
            Creature.eatLeft(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepUp(o)
            end
            var_276 = var_276 * var_276
            Creature.stepRight(o)
            var_81 = var_81 & var_81
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 * var_136
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        var_136 = var_136 * var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        var_74 = var_74 + var_74
        if var_111 == var_124
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepDown(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            o.mem[var_234] = var_234
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepDown(o)
        return true
    end),[110,300,95,0,1,1,1],11,7313,15,150903,0x000001a5,Dict(-6942=>-6942,2=>2,29298=>29297,0=>0,-18381=>-18381,25558=>25558,29297=>29297,9308=>29297,-24796=>-24796,-19989=>-19989,-4363=>-4363,-21566=>-21566,1=>29297),[888,17],173),RpcApi.SimpleOrganism(0x000000000006c8a4,:(function (o::Creature.Organism,)
        local var_273::Int8 = -76
        function func_218(var_217::Bool=true)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            if var_210 != var_210
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            var_210 = Bool(abs(var_210 - var_210))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            if var_142 > var_142
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            var_196 = var_196 / var_196
            var_196 = var_196 * var_196
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
                local var_275::Int16 = -25918
                Creature.stepLeft(o)
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            if var_81 >= var_199
                var_263 = if haskey(o.mem,var_263)
                        o.mem[var_263]
                    else
                        var_263
                    end
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.stepLeft(o)
            var_81 = var_81 | var_81
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            local var_272::Bool = true
            local var_254::Int8 = -93
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        if var_111 == var_124
            Creature.stepDown(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepDown(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7074,96,142143,0x00000116,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,2=>2,29297=>-19989,-24796=>-24796,-19989=>-19989,1=>1),[842,575],174),RpcApi.SimpleOrganism(0x000000000006c84c,:(function (o::Creature.Organism,)
        local var_273::Int8 = -76
        function func_218(var_217::Bool=true)
            return var_217
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            if var_210 != var_210
                Creature.stepLeft(o)
                Creature.stepRight(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            var_210 = Bool(abs(var_210 - var_210))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            o.mem[var_196] = var_196
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            if var_142 > var_142
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            var_196 = var_196 / var_196
            var_196 = var_196 * var_196
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
                local var_275::Int16 = -25918
                Creature.stepLeft(o)
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_82))
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_246))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            if var_81 >= var_199
                var_263 = if haskey(o.mem,var_263)
                        o.mem[var_263]
                    else
                        var_263
                    end
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.stepLeft(o)
            var_81 = var_81 | var_81
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
            end
            Creature.stepRight(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            local var_272::Bool = true
            local var_254::Int8 = -93
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        Creature.stepDown(o)
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        if var_111 == var_124
            Creature.stepDown(o)
        end
        if var_172 == var_172
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        if var_172 !== var_172
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_74))
        var_74 = func_143(var_172)
        Creature.stepDown(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        var_136 = var_136 / var_136
        return true
    end),[110,300,95,0,1,1,1],0,7074,96,138475,0x00000116,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,2=>2,29297=>-19989,-24796=>-24796,-19989=>-19989,1=>1),[889,547],174),RpcApi.SimpleOrganism(0x000000000006c755,:(function (o::Creature.Organism,)
        local var_281::Int16 = -12545
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            if var_150 < var_150
            end
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_267::Int16 = 29297
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.eatDown(o,Int(var_142))
            if var_210 != var_210
                local var_284::Int64 = 5959506518671419156
                Creature.stepUp(o)
            end
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepUp(o)
            Creature.stepUp(o)
            if var_142 < var_142
                local var_285::Int64 = 2814396310619894602
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_142))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            o.mem[var_196] = var_267
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatRight(o,Int(var_142))
            Creature.eatDown(o,Int(var_142))
            o.mem[var_267] = var_267
            Creature.eatLeft(o,Int(var_142))
            var_267 = if haskey(o.mem,var_267)
                    o.mem[var_267]
                else
                    var_267
                end
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_210 = var_210 * var_210
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_267] = var_267
            o.mem[var_196] = var_267
            Creature.stepRight(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_276::Int64 = 1619280238554731823
            local var_274::Int16 = 7616
            local var_270::Int8 = 116
            local var_246::Int8 = 121
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_270))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatDown(o,Int(var_186))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            if var_276 >= var_276
            end
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_246))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_270))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_276 = var_276 - var_276
            Creature.eatDown(o,Int(var_186))
            var_199 = var_81 | var_199
            Creature.eatLeft(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            var_274 = var_274 / var_274
            var_276 = Int(Creature.getEnergy(o,Int(var_274),Int(var_274)))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            var_81 = var_81 | var_81
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_186))
            if var_81 >= var_81
                Creature.stepUp(o)
            end
            var_276 = var_276 * var_276
            Creature.stepRight(o)
            var_81 = var_81 & var_81
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_136 = var_136 * var_136
        Creature.stepRight(o)
        Creature.stepLeft(o)
        if var_136 === var_136
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
        end
        var_136 = if haskey(o.mem,var_281)
                o.mem[var_281]
            else
                var_136
            end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatRight(o,Int(var_74))
        Creature.eatDown(o,Int(var_172))
        var_111 = var_111 | var_111
        var_136 = var_136 * var_136
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        Creature.eatDown(o,Int(var_172))
        var_74 = var_74 + var_74
        var_281 = if haskey(o.mem,var_281)
                o.mem[var_281]
            else
                var_281
            end
        if var_111 == var_124
            Creature.stepUp(o)
        end
        if var_172 == var_172
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        var_136 = var_136 + var_136
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        o.mem[var_136] = var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            var_234 = var_234 / var_234
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
            var_234 = var_234 - var_234
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepDown(o)
        return true
    end),[110,300,95,0,1,1,1],11,5362,15,135713,0x000001af,Dict(-6942=>29297,2=>2,29298=>29297,0=>0,-18381=>-18381,25558=>25558,29297=>29297,9308=>29297,-24796=>-24796,-19989=>29297,-4363=>-4363,-21566=>-21566,1=>1),[890,16],174)]