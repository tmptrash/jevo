julia> [RpcApi.SimpleOrganism(0x0000000000056a65,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_223::Bool = false
            Creature.eatRight(o,Int(var_176))
            Creature.eatUp(o,Int(var_176))
            Creature.eatRight(o,Int(var_176))
            Creature.eatRight(o,Int(var_176))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepUp(o)
            var_149 = var_149 / var_149
            Creature.eatUp(o,Int(var_149))
            var_149 = var_149 + var_149
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 * var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
                Creature.stepDown(o)
                Creature.stepLeft(o)
            end
            Creature.stepLeft(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            if var_81 > var_199
                Creature.stepLeft(o)
            end
            Creature.eatDown(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.eatLeft(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],45,4390,57,145064,0x000001a6,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[886,587],137),RpcApi.SimpleOrganism(0x0000000000056cd6,:(function (o::
Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            Creature.stepDown(o)
            Creature.stepDown(o)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_177))
            Creature.eatRight(o,Int(var_176))
            for i::Int8 = 1:div(var_176,_LOOP_STEPS_DIVIDER)
            end
            Creature.eatLeft(o,Int(var_177))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepDown(o)
            var_150 = var_150 | var_150
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepLeft(o)
            var_196 = var_196 + var_196
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_142))
            var_210 = var_210 | var_210
            var_196 = var_196 + var_196
            Creature.stepDown(o)
            var_196 = var_196 / var_196
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 - var_196
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatRight(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            var_199 = var_199 & var_81
            Creature.eatRight(o,Int(var_82))
            var_199 = var_81 * var_81
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_82))
            var_82 = var_82 - var_82
            Creature.eatRight(o,Int(var_186))
            Creature.eatLeft(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            var_199 = var_81 | var_81
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepRight(o)
        o.mem[var_136] = var_136
        Creature.eatLeft(o,Int(var_74))
        Creature.eatRight(o,Int(var_172))
        Creature.eatRight(o,Int(var_172))
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.eatRight(o,Int(var_74))
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepLeft(o)
        if var_172 == var_172
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        if var_136 > var_136
            Creature.stepLeft(o)
        end
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        var_172 = var_172 - var_172
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_175 = var_175 - var_175
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],45,8450,44,93311,0x000001fe,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989),[885,5],117),RpcApi.SimpleOrganism(0x0000000000056e1a,:(function (o::Creature
.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_225::Int16 = 29552
            local var_224::ASCIIString = "l2WbeZM3"
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.eatDown(o,Int(var_149))
            Creature.eatUp(o,Int(var_149))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            var_149 = var_149 + var_149
            Creature.stepRight(o)
            Creature.stepRight(o)
            var_149 = var_149 - var_149
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            for i::Int8 = 1:div(var_142,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 * var_196
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 + var_196
            Creature.eatUp(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            o.mem[var_196] = var_196
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepUp(o)
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            if var_81 > var_199
            end
            Creature.eatDown(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.eatUp(o,Int(var_172))
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        o.mem[var_136] = var_136
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            var_175 = var_175 / var_175
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],45,8971,57,87385,0x000001d6,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[899,598],127),RpcApi.SimpleOrganism(0x0000000000056d4e,:(function (o::C
reature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_223::Bool = false
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_224::Int64 = -6352013782831067679
            Creature.stepRight(o)
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
                Creature.stepLeft(o)
            end
            var_150 = Bool(abs(var_150 - var_150))
            Creature.stepUp(o)
            var_149 = var_149 + var_149
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
                Creature.stepDown(o)
                Creature.stepLeft(o)
            end
            Creature.stepLeft(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            if var_81 > var_199
            end
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.eatLeft(o,Int(var_74))
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        o.mem[var_136] = var_136
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],64,4390,57,82582,0x000001b7,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[887,587],136),RpcApi.SimpleOrganism(0x0000000000056d34,:(function (o::C
reature.Organism,)
        function func_218(var_217::Bool=true)
            var_217 = var_217 * var_217
            return var_217
        end
        function func_185(var_184::Bool=true)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.eatUp(o,Int(var_176))
            var_176 = var_176 + var_177
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            var_149 = var_149 + var_149
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepUp(o)
            Creature.stepLeft(o)
            var_150 = var_150 * var_150
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            Creature.eatLeft(o,Int(var_149))
            Creature.eatRight(o,Int(var_149))
            Creature.stepLeft(o)
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = var_196 * var_196
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
                Creature.stepLeft(o)
            end
            Creature.stepLeft(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_225::ASCIIString = "I9li3VK0"
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            if var_81 > var_199
            end
            Creature.eatDown(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        o.mem[var_136] = var_136
        var_111 = func_83(var_111)
        var_111 = func_83(var_111)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.eatRight(o,Int(var_74))
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],64,4390,57,81769,0x000001d0,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[885,2],125),RpcApi.SimpleOrganism(0x0000000000056e27,:(function (o::Cre
ature.Organism,)
        function func_218(var_217::Bool=true)
            local var_227::Int64 = 5422348654384393845
            return var_217
        end
        function func_185(var_184::Bool=true)
            local var_226::Int16 = -23944
            Creature.stepDown(o)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.eatRight(o,Int(var_176))
            Creature.eatUp(o,Int(var_176))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_149))
            var_150 = Bool(abs(var_150 - var_150))
            var_149 = var_149 + var_149
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            var_202 = var_210 | var_210
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 * var_196
            Creature.eatDown(o,Int(var_142))
            var_196 = var_196 - var_196
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
                Creature.stepDown(o)
                Creature.stepLeft(o)
            end
            Creature.stepLeft(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            if var_82 <= var_82
                Creature.stepRight(o)
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 & var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            var_186 = var_82 / var_82
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.stepLeft(o)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        if var_111 != var_111
        end
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],45,3606,57,70024,0x000001c7,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[900,283],132),RpcApi.SimpleOrganism(0x0000000000056e23,:(function (o::C
reature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            var_184 = var_184 & var_184
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_224::Int64 = -6352013782831067679
            var_150 = Bool(abs(var_150 - var_150))
            var_150 = Bool(abs(var_150 - var_150))
            var_149 = var_149 + var_149
            Creature.stepDown(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            var_224 = var_224 * var_224
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            var_142 = var_142 - var_142
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            o.mem[var_196] = var_196
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
                Creature.stepLeft(o)
            end
            Creature.stepLeft(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepLeft(o)
                Creature.stepDown(o)
            end
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_82))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_199 = var_199 | var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            var_82 = var_186 / var_82
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatLeft(o,Int(var_74))
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        o.mem[var_136] = var_136
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.eatRight(o,Int(var_172))
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],64,4390,57,66748,0x000001d9,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[673,317],135),RpcApi.SimpleOrganism(0x0000000000056d20,:(function (o::C
reature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_223::Bool = false
            Creature.eatRight(o,Int(var_176))
            for i::Int8 = 1:div(var_177,_LOOP_STEPS_DIVIDER)
            end
            Creature.eatLeft(o,Int(var_176))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
                local var_224::ASCIIString = "DduwGGM7"
            end
            Creature.stepUp(o)
            var_149 = var_149 / var_149
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            var_149 = var_149 + var_149
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 * var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
                Creature.stepDown(o)
                Creature.stepLeft(o)
            end
            Creature.stepLeft(o)
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            var_186 = var_82 / var_82
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            if var_81 > var_199
                local var_225::Int8 = 3
            end
            Creature.eatDown(o,Int(var_82))
            var_82 = var_186 + var_186
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.eatLeft(o,Int(var_74))
        Creature.stepDown(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepUp(o)
        o.mem[var_136] = var_136
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],45,3606,57,61593,0x000001a4,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[882,569],137),RpcApi.SimpleOrganism(0x0000000000056dc4,:(function (o::C
reature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            local var_226::ASCIIString = "jnBnwFdy"
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_177))
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_177))
            Creature.stepRight(o)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepUp(o)
            var_150 = var_150 | var_150
            Creature.eatUp(o,Int(var_149))
            Creature.eatRight(o,Int(var_149))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 * var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            if var_142 !== var_142
                Creature.stepLeft(o)
            end
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepDown(o)
                Creature.stepLeft(o)
                Creature.stepDown(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            if var_81 > var_199
                Creature.stepLeft(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_82))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepLeft(o)
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepRight(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.eatLeft(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.stepUp(o)
        var_111 = func_83(var_124)
        Creature.eatDown(o,Int(var_172))
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_172 == var_172
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        var_111 = func_83(var_111)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_175::Int64 = 5596248123125959202
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_175 = var_175 + var_175
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],45,1465,27,61489,0x000001dc,Dict(0=>0,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[261,588],129),RpcApi.SimpleOrganism(0x0000000000056d3b,:(function (o::C
reature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_185(var_184::Bool=true)
            local var_228::Int16 = 30021
            Creature.stepDown(o)
            Creature.stepLeft(o)
            o.mem[var_228] = var_228
            return var_184
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.stepRight(o)
            Creature.stepUp(o)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            var_150 = var_150 * var_150
            Creature.eatUp(o,Int(var_149))
            Creature.stepUp(o)
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_202::Bool = false
            local var_196::Int16 = -19989
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.eatLeft(o,Int(var_142))
            var_196 = var_196 * var_196
            if var_210 === var_210
                Creature.stepRight(o)
                Creature.stepLeft(o)
            end
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 * var_196
            Creature.eatLeft(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_196 = var_196 / var_196
            Creature.eatLeft(o,Int(var_142))
            var_142 = var_142 - var_142
            var_202 = var_202 | var_202
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_199::Bool = true
            local var_186::Int8 = 123
            Creature.eatLeft(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            var_81 = var_199 | var_199
            Creature.stepLeft(o)
            Creature.stepUp(o)
            var_81 = var_199 | var_199
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.eatLeft(o,Int(var_82))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            for i::Int8 = 1:div(var_82,_LOOP_STEPS_DIVIDER)
            end
            var_82 = var_186 + var_82
            var_81 = Bool(abs(var_81 - var_199))
            return var_81
        end
        local var_74::Int8 = 43
        Creature.stepDown(o)
        Creature.eatUp(o,Int(var_74))
        Creature.eatLeft(o,Int(var_74))
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_74))
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.eatDown(o,Int(var_172))
        var_136 = var_136 + var_136
        Creature.eatLeft(o,Int(var_74))
        Creature.stepRight(o)
        o.mem[var_136] = var_136
        Creature.eatUp(o,Int(var_172))
        var_74 = var_172 / var_74
        for i::Int8 = 1:div(var_172,_LOOP_STEPS_DIVIDER)
        end
        Creature.stepLeft(o)
        var_74 = var_74 - var_172
        var_124 = var_124 | var_111
        o.mem[var_136] = var_136
        var_111 = func_83(var_111)
        var_136 = var_136 + var_136
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepLeft(o)
        Creature.eatRight(o,Int(var_172))
        var_74 = func_143(var_74)
        var_136 = var_136 - var_136
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepUp(o)
        return true
    end),[110,300,95,0,1,1,1],45,8450,62,51458,0x000001ec,Dict(0=>0,15944=>15944,-4363=>-4363,-24796=>-24796,-19989=>-19989),[899,1],107)]