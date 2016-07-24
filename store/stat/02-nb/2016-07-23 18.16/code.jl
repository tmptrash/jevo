julia> [RpcApi.SimpleOrganism(0x000000000006140f,:(function (o::Creature.Organism,)
        function func_252(var_250::Int16=-26108,var_251::ASCIIString="uVpETpQD")
            return var_250
        end
        function func_218(var_217::Bool=true)
            local var_269::Int8 = 55
            Creature.eatLeft(o,Int(var_269))
            for i::Int8 = 1:div(var_269,_LOOP_STEPS_DIVIDER)
            end
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_267::Int8 = 64
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_267))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_270::Bool = false
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_196] = var_196
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.eatUp(o,Int(var_142))
            var_202 = var_202 * var_210
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            if var_196 < var_196
                local var_255::ASCIIString = "Y6fAZ5uE"
                local var_249::Int64 = -6396038557622834951
                var_255 = var_255 * var_255
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            o.mem[var_196] = var_196
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_228 = var_228 * var_228
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatRight(o,Int(var_142))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_264::ASCIIString = "IIlqsNk2"
            local var_248::Int16 = 25167
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatLeft(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            var_248 = var_248 + var_248
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatLeft(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_81 | var_199
            Creature.stepDown(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        function func_259(var_257::Int8=73,var_258::Int16=11866)
            o.mem[var_258] = var_258
            Creature.stepRight(o)
            for i::Int8 = 1:div(var_257,_LOOP_STEPS_DIVIDER)
            end
            return var_257
        end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_74))
        Creature.stepRight(o)
        var_111 = func_83(var_124)
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.eatLeft(o,Int(var_74))
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        o.mem[var_136] = var_136
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            o.mem[var_234] = var_234
            var_234 = var_234 * var_234
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_74))
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_111 = var_111 * var_124
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        if var_172 < var_172
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        return true
    end),[110,300,95,0,1,1,1],14,7927,80,285646,0x00000422,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,23081=>23081,-24796=>-24796,-19989=>-19989,1=>1),[1,563],171),RpcApi.SimpleOrga
nism(0x0000000000061301,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_176,_LOOP_STEPS_DIVIDER)
                Creature.stepDown(o)
                Creature.stepUp(o)
            end
            Creature.stepRight(o)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.stepUp(o)
            var_150 = var_150 | var_150
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            if var_210 !== var_202
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_175 = Int(Creature.getEnergy(o,Int(var_234),Int(var_234)))
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],14,3989,78,237437,0x0000040c,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[828,551],157),RpcApi.SimpleOrganism(0x0000
000000061501,:(function (o::Creature.Organism,)
        function func_254(var_253::Int16=1168)
            return var_253
        end
        function func_218(var_217::Bool=true)
            Creature.stepDown(o)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_255::Int16 = 16468
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_250::ASCIIString = "1L3FevPp"
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
            end
            o.mem[var_196] = var_196
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        var_111 = func_83(var_111,var_74)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            local var_224::ASCIIString = "LodVS4RL"
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_74 = var_74 - var_74
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],14,7696,78,234931,0x00000404,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[875,576],157),RpcApi.SimpleOrganism(0x0000
000000061274,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            local var_253::ASCIIString = "qjAHzKT0"
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_254::ASCIIString = "QXeY5H4W"
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_149))
            Creature.stepDown(o)
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
                Creature.stepUp(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_172))
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],11,7696,78,233782,0x0000040b,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[815,542],154),RpcApi.SimpleOrganism(0x0000
00000006152a,:(function (o::Creature.Organism,)
        function func_273(var_272::ASCIIString="M0sIg1Tu")
            Creature.stepDown(o)
            return var_272
        end
        function func_252(var_250::Int16=-26108,var_251::ASCIIString="uVpETpQD")
            var_251 = var_251[1:if length(var_251) > length(var_251)
                            0
                        else
                            length(var_251) - length(var_251)
                        end]
            return var_250
        end
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            local var_267::Int8 = 64
            local var_274::Int64 = 7555246081134316456
            Creature.eatLeft(o,Int(var_177))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_270::Int64 = 2423730536341254631
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepUp(o)
            Creature.stepUp(o)
            o.mem[var_196] = var_196
            Creature.stepUp(o)
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            if var_196 < var_196
                local var_255::ASCIIString = "Y6fAZ5uE"
                local var_249::Int64 = -6396038557622834951
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            o.mem[var_196] = var_196
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            var_228 = var_228 * var_228
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatLeft(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            var_196 = var_196 / var_196
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatRight(o,Int(var_142))
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            return var_142
        end
        local var_136::Int16 = -24796
        local var_124::Bool = false
        function func_83(var_81::Bool=true,var_82::Int8=114)
            local var_264::ASCIIString = "IIlqsNk2"
            local var_248::Int16 = 25167
            local var_199::Bool = true
            local var_186::Int8 = 123
            if var_82 <= var_82
                Creature.stepDown(o)
            end
            Creature.eatLeft(o,Int(var_82))
            Creature.eatUp(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            var_248 = var_248 + var_248
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatLeft(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_199 & var_81
            Creature.stepRight(o)
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            var_199 = var_81 | var_199
            Creature.stepDown(o)
            Creature.stepRight(o)
            return var_81
        end
        local var_74::Int8 = 43
        function func_259(var_257::Int8=73,var_258::Int16=11866)
            local var_271::Bool = false
            return var_257
        end
        o.mem[var_136] = var_136
        Creature.stepRight(o)
        Creature.eatUp(o,Int(var_74))
        Creature.stepRight(o)
        var_111 = func_83(var_124)
        Creature.stepDown(o)
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        if var_111 == var_124
            Creature.stepDown(o)
            Creature.stepLeft(o)
        end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.eatLeft(o,Int(var_74))
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            Creature.stepUp(o)
            var_234 = var_234 * var_234
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.eatLeft(o,Int(var_74))
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        var_111 = var_111 * var_124
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        if var_172 < var_172
            local var_263::Bool = false
            Creature.stepUp(o)
            Creature.stepDown(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
        end
        return true
    end),[110,300,95,0,1,1,1],14,7927,80,215988,0x00000431,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,23081=>23081,-24796=>-24796,-19989=>-19989,1=>1),[1,575],166),RpcApi.SimpleOrga
nism(0x0000000000061468,:(function (o::Creature.Organism,)
        local var_255::Bool = true
        function func_254(var_253::Int16=1168)
            return var_253
        end
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            var_177 = var_176 - var_177
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_250::ASCIIString = "1L3FevPp"
            Creature.stepRight(o)
            Creature.stepRight(o)
            var_250 = var_250 * var_250
            Creature.stepUp(o)
            Creature.eatDown(o,Int(var_149))
            Creature.eatRight(o,Int(var_149))
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
            end
            o.mem[var_196] = var_196
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        var_111 = func_83(var_111,var_74)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            local var_224::ASCIIString = "LodVS4RL"
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_74 = var_74 - var_74
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],14,7696,78,203902,0x00000404,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[850,548],159),RpcApi.SimpleOrganism(0x0000
0000000614be,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepRight(o)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            if var_210 !== var_202
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_175 = Int(Creature.getEnergy(o,Int(var_234),Int(var_234)))
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],14,3989,78,200870,0x00000408,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[821,574],155),RpcApi.SimpleOrganism(0x0000
000000060fa5,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.stepLeft(o)
            for i::Int8 = 1:div(var_176,_LOOP_STEPS_DIVIDER)
                Creature.stepDown(o)
                Creature.stepUp(o)
            end
            Creature.stepRight(o)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            if var_210 !== var_202
            end
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_82))
            Creature.eatUp(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_246))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_175 = Int(Creature.getEnergy(o,Int(var_234),Int(var_234)))
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],14,3989,78,190747,0x00000407,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[819,512],157),RpcApi.SimpleOrganism(0x0000
000000061419,:(function (o::Creature.Organism,)
        function func_218(var_217::Bool=true)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            if var_176 !== var_177
            end
            Creature.eatUp(o,Int(var_177))
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_250::ASCIIString = "1L3FevPp"
            Creature.eatRight(o,Int(var_149))
            Creature.stepRight(o)
            Creature.stepUp(o)
            for i::Int8 = 1:div(var_149,_LOOP_STEPS_DIVIDER)
            end
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
                Creature.stepLeft(o)
            end
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            var_196 = var_196 * var_196
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
            var_228 = Int(Creature.getEnergy(o,Int(var_196),Int(var_196)))
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            Creature.eatRight(o,Int(var_246))
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatLeft(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatUp(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepLeft(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        Creature.stepDown(o)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        var_136 = if haskey(o.mem,var_136)
                o.mem[var_136]
            else
                var_136
            end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_74 = var_74 - var_74
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        Creature.eatUp(o,Int(var_74))
        return true
    end),[110,300,95,0,1,1,1],14,7696,9,188331,0x0000040f,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[1,1],152),RpcApi.SimpleOrganism(0x000000000
00614a0,:(function (o::Creature.Organism,)
        function func_254(var_253::Int16=1168)
            local var_255::Int64 = 2444956016187290455
            return var_253
        end
        function func_218(var_217::Bool=true)
            Creature.stepDown(o)
            return var_217
        end
        function func_178(var_176::Int8=-98,var_177::Int8=99)
            Creature.eatDown(o,Int(var_177))
            Creature.eatLeft(o,Int(var_177))
            for i::Int8 = 1:div(var_177,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepUp(o)
            return var_176
        end
        local var_172::Int8 = 120
        function func_151(var_149::Int8=-11,var_150::Bool=true)
            local var_250::ASCIIString = "1L3FevPp"
            Creature.stepRight(o)
            var_250 = var_250 * var_250
            Creature.stepUp(o)
            var_150 = Bool(abs(var_150 - var_150))
            Creature.eatLeft(o,Int(var_149))
            return var_149
        end
        function func_143(var_142::Int8=72)
            local var_228::Int64 = -8205116022117027944
            local var_210::Bool = false
            local var_202::Bool = false
            local var_196::Int16 = -19989
            if var_210 > var_202
            end
            o.mem[var_196] = var_196
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            var_196 = var_196 / var_196
            var_202 = var_202 & var_202
            Creature.eatLeft(o,Int(var_142))
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_142))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_142))
            o.mem[var_196] = var_196
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
            if var_82 <= var_82
                Creature.stepRight(o)
            end
            Creature.eatUp(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_82))
            var_81 = var_199 * var_81
            Creature.eatRight(o,Int(var_246))
            Creature.stepLeft(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatUp(o,Int(var_82))
            Creature.eatUp(o,Int(var_246))
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.stepRight(o)
            var_199 = var_199 | var_81
            Creature.eatUp(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_82))
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepDown(o)
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_81 >= var_199
                Creature.stepRight(o)
            end
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.eatDown(o,Int(var_82))
            Creature.eatDown(o,Int(var_186))
            Creature.eatDown(o,Int(var_186))
            Creature.eatLeft(o,Int(var_186))
            Creature.stepDown(o)
            Creature.eatDown(o,Int(var_186))
            Creature.eatRight(o,Int(var_82))
            Creature.stepDown(o)
            if var_82 == var_82
                Creature.stepDown(o)
                Creature.stepDown(o)
            end
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_186))
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_186))
            Creature.stepRight(o)
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_246))
            Creature.stepRight(o)
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
        Creature.eatUp(o,Int(var_172))
        var_111 = func_83(var_124)
        var_136 = var_136 / var_136
        Creature.stepRight(o)
        var_111 = Bool(abs(var_111 - var_124))
        var_111 = func_83(var_111,var_74)
        Creature.eatRight(o,Int(var_172))
        Creature.stepRight(o)
        if var_111 == var_124
            Creature.stepLeft(o)
        end
        if var_172 == var_172
            local var_224::ASCIIString = "LodVS4RL"
            Creature.stepUp(o)
            Creature.stepDown(o)
        end
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepLeft(o)
        var_111 = func_83(var_111)
        if var_136 >= var_136
        end
        var_136 = var_136 / var_136
        var_111 = func_83(var_111)
        Creature.stepLeft(o)
        var_74 = var_74 - var_74
        Creature.stepUp(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        if var_136 === var_136
            local var_234::Int16 = -18381
            local var_175::Int64 = 5596248123125959202
            o.mem[var_234] = var_234
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            Creature.stepLeft(o)
            var_234 = if haskey(o.mem,var_234)
                    o.mem[var_234]
                else
                    var_234
                end
            Creature.stepLeft(o)
            o.mem[var_234] = var_234
        end
        Creature.stepUp(o)
        Creature.stepLeft(o)
        Creature.stepUp(o)
        Creature.stepUp(o)
        var_74 = func_143(var_74)
        Creature.stepLeft(o)
        var_172 = func_143(var_172)
        Creature.stepLeft(o)
        return true
    end),[110,300,95,0,1,1,1],14,7696,78,187340,0x00000409,Dict(0=>0,-18381=>-18381,25558=>25558,-4363=>-4363,-24796=>-24796,-19989=>-19989,1=>1),[877,576],160)]