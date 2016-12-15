RpcApi.SimpleOrganism(0x0000000000046e7f,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_161(var_160::Int8=-7)
            var_160 = var_160 * var_160
            var_160 = Int8(Creature.eatUp(c,o,Int(var_160)))
            var_160 = var_160 / var_160
            var_160 = if 127 >= var_160
                    Int8(var_160)
                else
                    127
                end
            return var_160
        end
        function func_153(var_151::Int16=31235,var_152::Int64=2848040511005267933)
            local var_198::Int16 = 29103
            local var_172::Int64 = -8229536530392119378
            local var_171::Int16 = -772
            var_152 = Int(Creature.getEnergy(o,Int(var_178),Int(var_171)))
            var_178 = Int16(o.pos.y)
            var_172 = Int(Creature.idRight(o))
            var_151 = Int16(o.pos.x)
            var_152 = Creature.energyDown(o)
            o.mem[var_178] = var_178
            var_152 = Creature.energyLeft(o)
            var_175 = log(if var_152 > 0
                        var_152
                    else
                        var_175
                    end)
            var_172 = Int(Creature.idRight(o))
            var_172 = Creature.energyLeft(o)
            var_172 = Creature.energyRight(o)
            if var_172 <= var_152
            end
            var_152 = Int(Creature.idUp(o))
            var_152 = Int(0.823213)
            var_152 = var_152 % var_152
            var_172 = Int(Creature.getEnergy(o,Int(var_171),Int(var_171)))
            var_170 = Creature.stepRight(o)
            var_170 = Creature.stepUp(o)
            var_170 = Creature.stepRight(o)
            var_152 = Creature.energyUp(o)
            var_171 = if haskey(o.mem,var_171)
                    o.mem[var_171]
                else
                    var_171
                end
            var_171 = (Int16)(var_171) >> (Int16)(var_178)
            var_151 = Int16(o.pos.x)
            var_152 = Int(Creature.idUp(o))
            var_170 = var_170 & var_170
            var_172 = Int(Creature.getEnergy(o,Int(var_178),Int(var_151)))
            var_178 = Int16(o.color)
            var_152 = Int(Creature.getEnergy(o,Int(var_178),Int(var_178)))
            var_151 = Int16(o.pos.y)
            var_152 = Int(Creature.idRight(o))
            var_172 = Int(var_152)
            var_178 = if haskey(o.mem,var_151)
                    o.mem[var_151]
                else
                    var_178
                end
            o.mem[var_178] = var_151
            var_170 = (Bool)(var_170) & (Bool)(var_170)
            var_152 = Creature.energyDown(o)
            var_152 = Creature.energyLeft(o)
            var_152 = Creature.energyRight(o)
            var_152 = var_152 / var_152
            var_170 = Creature.stepUp(o)
            var_171 = Int16(o.pos.x)
            var_170 = Creature.stepDown(o)
            var_178 = if var_170
                    1
                else
                    0
                end
            var_171 = (Int16)(var_171) >> (Int16)(var_178)
            var_172 = Int(Creature.idLeft(o))
            var_171 = Int16(o.pos.x)
            var_172 = (Int64)(var_172) & (Int64)(var_172)
            var_152 = Int(Creature.idLeft(o))
            var_178 = Int16(o.pos.x)
            var_151 = if haskey(o.mem,var_178)
                    o.mem[var_178]
                else
                    var_151
                end
            if var_170 === var_170
                local var_193::String = "izlmlDfo"
            end
            var_172 = Int(Creature.idUp(o))
            var_151 = if haskey(o.mem,var_171)
                    o.mem[var_171]
                else
                    var_151
                end
            var_171 = Int16(o.pos.x)
            var_172 = Creature.energyUp(o)
            var_152 = Int(Creature.idRight(o))
            var_152 = var_152 % var_152
            if var_151 > var_178
            end
            var_152 = Int(Creature.idUp(o))
            if var_151 <= var_171
            end
            return var_151
        end
        local var_119::Int8 = 44
        function func_106(var_105::String="45fGduMG")
            local var_174::Int64 = -1691351852122081113
            local var_169::Int16 = -16711
            local var_164::Int16 = 20313
            local var_154::Int64 = 6292035638353222091
            local var_134::Float64 = 0.646809
            var_134 = var_134 * var_134
            var_174 = (Int64)(var_174) << (Int64)(var_154)
            var_154 = (Int64)(var_174) >> (Int64)(var_154)
            o.mem[var_164] = var_164
            var_174 = Creature.energyUp(o)
            var_154 = Int(Creature.idDown(o))
            var_164 = Int16(o.pos.y)
            var_134 = cot(var_174)
            var_134 = sec(var_134)
            var_174 = Int(Creature.idRight(o))
            var_154 = Int(Creature.idRight(o))
            var_134 = var_134 + var_134
            var_134 = cos(var_154)
            var_174 = Int(Creature.idRight(o))
            var_134 = pi
            var_164 = (Int16)(var_169) >> (Int16)(var_169)
            var_134 = cot(var_134)
            var_164 = Int16(o.color)
            var_134 = cos(var_169)
            var_134 = csc(120)
            var_154 = Creature.energyLeft(o)
            var_134 = cos(var_164)
            var_174 = var_174 + var_174
            var_134 = Float64(var_174)
            var_134 = cot(var_164)
            var_134 = var_134 + var_134
            var_134 = log(if var_134 > 0
                        var_134
                    else
                        var_134
                    end)
            var_164 = if haskey(o.mem,var_164)
                    o.mem[var_164]
                else
                    var_164
                end
            var_174 = Int(Creature.idUp(o))
            var_105 = string(true)
            var_134 = sqrt(if var_154 > 0
                        var_154
                    else
                        var_134
                    end)
            var_154 = var_154 / var_154
            var_105 = string(-120)
            var_174 = Creature.energyDown(o)
            var_154 = Creature.energyUp(o)
            o.mem[var_169] = var_164
            var_174 = Creature.energyLeft(o)
            var_164 = Int16(o.color)
            o.mem[var_164] = var_164
            var_154 = (Int64)(var_174) $ (Int64)(var_154)
            var_154 = Int(Creature.idLeft(o))
            var_134 = sqrt(if var_134 > 0
                        var_134
                    else
                        var_134
                    end)
            var_134 = sec(var_134)
            var_169 = (Int16)(var_169) >> (Int16)(var_164)
            var_154 = Int(Creature.idRight(o))
            var_154 = Creature.energyLeft(o)
            var_164 = Int16(o.pos.x)
            var_134 = csc(var_164)
            var_174 = (Int64)(var_174) | (Int64)(var_174)
            if var_169 === var_169
                local var_196::Int8 = 95
                o.mem[var_181] = var_181
            end
            var_134 = csc(var_154)
            var_169 = Int16(o.pos.x)
            var_169 = if haskey(o.mem,var_169)
                    o.mem[var_169]
                else
                    var_169
                end
            var_169 = var_164 % var_169
            var_134 = sqrt(if var_169 > 0
                        var_169
                    else
                        var_134
                    end)
            var_164 = (Int16)(var_164) | (Int16)(var_169)
            var_154 = var_154 % var_174
            var_134 = cot(var_174)
            var_134 = tan(var_134)
            var_164 = Int16(o.pos.x)
            var_169 = Int16(o.pos.y)
            var_134 = Float64(var_134)
            var_134 = sin(-43)
            var_174 = Int(Creature.idRight(o))
            return var_105
        end
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        function func_88(var_86::String="HMocC0cA",var_87::Bool=false)
            local var_199::Int64 = -5950140947923355867
            local var_194::String = "Klt1DlBC"
            local var_187::Int16 = 28871
            var_187 = Int16(o.pos.y)
            var_199 = Int(Creature.idLeft(o))
            o.mem[var_187] = var_187
            var_194 = var_194[1:if length(var_194) > length(var_194) > 0
                            0
                        else
                            div(length(var_194),length(var_194))
                        end]
            if var_187 <= var_187
            end
            o.mem[var_187] = var_187
            var_87 = var_87
            var_87 = var_87 | var_87
            var_87 = Creature.stepUp(o)
            var_187 = if isempty(var_86)
                    0
                else
                    1
                end
            var_199 = Int(var_87)
            var_87 = 0.986638 < (Float64)(1)
            var_87 = var_87 * var_87
            o.mem[var_187] = var_187
            var_187 = Int16(o.color)
            var_87 = !var_87
            var_87 = Creature.stepDown(o)
            var_187 = Int16(o.color)
            var_187 = Int16(o.color)
            if var_87 < var_87
            end
            o.mem[var_187] = var_187
            if var_187 != var_187
            end
            var_187 = (Int16)(var_187) $ (Int16)(var_187)
            var_87 = Creature.stepUp(o)
            var_187 = var_187 / var_187
            var_187 = Int16(o.pos.y)
            var_187 = if haskey(o.mem,var_187)
                    o.mem[var_187]
                else
                    var_187
                end
            var_87 = Creature.stepDown(o)
            var_187 = var_187 + var_187
            var_187 = Int16(o.pos.y)
            return var_86
        end
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_183::Int16 = 14041
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(-126)
            var_70 = sec(var_183)
            var_70 = pi
            var_136 = var_136 + var_136
            var_183 = (Int16)(var_183) >> (Int16)(var_183)
            var_102 = var_102[if length(var_102) > length(var_102)
                            1
                        else
                            length(var_102)
                        end:if length(var_102) > length(var_102) > 0
                            0
                        else
                            end
                        end]
            var_183 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Creature.energyUp(o)
            var_70 = Float64(18136)
            var_70 = sin(var_70)
            var_183 = Int16(o.pos.x)
            var_70 = cos(var_183)
            var_70 = cot(var_121)
            o.mem[var_183] = var_183
            var_136 = Int8(Creature.eatLeft(c,o,Int(var_136)))
            var_183 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_70 = cot(var_70)
            var_183 = Int16(o.color)
            var_121 = Int(Creature.idUp(o))
            var_121 = Int(true)
            var_70 = sin(var_70)
            var_121 = Creature.energyLeft(o)
            var_70 = Float64(false)
            var_121 = Int(Creature.getEnergy(o,Int(var_183),Int(var_183)))
            var_121 = Creature.energyUp(o)
            var_121 = Int(Creature.idRight(o))
            var_121 = Int(Creature.idDown(o))
            var_183 = Int16(o.color)
            var_70 = csc(var_70)
            var_121 = Creature.energyRight(o)
            var_70 = tan(var_183)
            var_70 = csc(var_70)
            var_183 = Int16(o.pos.y)
            var_121 = Int(Creature.idRight(o))
            var_121 = var_121 % var_121
            var_183 = (Int16)(var_183) << (Int16)(var_183)
            var_121 = Int(true)
            var_183 = Int16(o.pos.y)
            var_121 = Creature.energyLeft(o)
            var_70 = sqrt(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_121 = Creature.energyRight(o)
            var_70 = tan(var_121)
            var_121 = Int(Creature.idDown(o))
            var_70 = csc(var_121)
            var_121 = Int(Creature.getEnergy(o,Int(var_183),Int(var_183)))
            var_102 = string(-89)
            var_121 = Int(Creature.idRight(o))
            var_183 = var_183 / var_183
            var_121 = Creature.energyRight(o)
            var_70 = csc(-60)
            var_121 = Creature.energyLeft(o)
            for i::Int8 = 1:div(var_136,_LOOP_STEPS_DIVIDER)
                local var_185::Int16 = -27142
                local var_179::Int16 = 4715
                local var_192::String = "wr59b8AC"
                var_192 = string(-121)
                var_179 = Int16(o.pos.y)
            end
            var_121 = Creature.energyUp(o)
            var_183 = Int16(o.pos.y)
            var_70 = pi
            var_183 = Int16(o.pos.x)
            var_70 = tan(var_183)
            var_183 = Int16(o.color)
            var_121 = Int(Creature.getEnergy(o,Int(var_183),Int(var_183)))
            var_183 = if haskey(o.mem,var_183)
                    o.mem[var_183]
                else
                    var_183
                end
            var_121 = Creature.energyLeft(o)
            for i::Int8 = 1:div(var_136,_LOOP_STEPS_DIVIDER)
                var_166 = Int8(Creature.eatUp(c,o,Int(var_166)))
            end
            var_121 = var_121 * var_121
            var_121 = Int(Creature.getEnergy(o,Int(var_183),Int(var_183)))
            var_70 = csc(103)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_183 = (Int16)(var_183) >> (Int16)(var_183)
            var_70 = sin(var_121)
            var_121 = Int(Creature.idUp(o))
            var_108 = if haskey(o.mem,var_108)
                    o.mem[var_108]
                else
                    var_108
                end
            var_136 = Int8(Creature.eatDown(c,o,Int(var_136)))
            var_70 = sqrt(if var_183 > 0
                        var_183
                    else
                        var_70
                    end)
            var_121 = Creature.energyRight(o)
            var_70 = var_70 / var_70
            var_183 = Int16(o.pos.y)
            var_121 = Creature.energyDown(o)
            var_121 = Int(Creature.idUp(o))
            o.mem[var_108] = var_108
            var_108 = Int16(o.color)
            var_121 = (Int64)(var_121) >> (Int64)(var_121)
            var_70 = pi
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Int(var_121)
            var_70 = sqrt(if var_183 > 0
                        var_183
                    else
                        var_70
                    end)
            var_70 = cot(var_121)
            var_70 = csc(var_183)
            var_121 = Int(Creature.idLeft(o))
            var_70 = if isempty(var_102)
                    0.0
                else
                    1.0
                end
            var_183 = var_183 - var_183
            var_121 = Creature.energyRight(o)
            var_70 = cos(var_183)
            var_70 = csc(var_121)
            var_183 = (Int16)(var_183) << (Int16)(var_183)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyRight(o)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_200::Int8 = 12
            return var_50
        end
        function func_48(var_46::String="FR5W3RfT",var_47::String="LWvlurB1")
            local var_191::Int16 = -19266
            local var_135::String = "vshPSVVW"
            local var_114::Int64 = -3602926542828129870
            local var_58::Int8 = 3
            local var_57::Int8 = -47
            local var_54::Int16 = 30799
            local var_72::Int8 = 63
            var_54 = (Int16)(var_54) & (Int16)(var_54)
            o.mem[var_54] = var_54
            var_114 = var_114 + var_114
            var_49 = (Int64)(var_49) >> (Int64)(var_49)
            var_54 = Int16(o.color)
            if var_54 != var_54
            end
            var_58 = (Int8)(var_57) << (Int8)(var_57)
            var_114 = Int(Creature.idUp(o))
            var_46 = var_47 * var_135
            var_49 = Int(Creature.idRight(o))
            var_57 = Int8(Creature.eatRight(c,o,Int(var_58)))
            var_114 = Creature.energyDown(o)
            var_49 = Int(Creature.idLeft(o))
            var_58 = (Int8)(var_58) << (Int8)(var_57)
            var_114 = Creature.energyRight(o)
            var_57 = Int8(Creature.eatUp(c,o,Int(var_72)))
            var_72 = Int8(Creature.eatRight(c,o,Int(var_58)))
            var_54 = if haskey(o.mem,var_54)
                    o.mem[var_54]
                else
                    var_54
                end
            var_72 = Int8(Creature.eatUp(c,o,Int(var_58)))
            var_54 = Int16(o.color)
            var_57 = Int8(Creature.eatDown(c,o,Int(var_57)))
            var_58 = (Int8)(var_72) | (Int8)(var_58)
            var_72 = Int8(Creature.eatUp(c,o,Int(var_57)))
            var_72 = var_57 % var_72
            for i::Int8 = 1:div(var_57,_LOOP_STEPS_DIVIDER)
                var_129 = Creature.energyUp(o)
                var_129 = Creature.energyDown(o)
                var_129 = var_129 / var_129
                var_129 = Creature.energyUp(o)
            end
            var_114 = Creature.energyRight(o)
            var_54 = (Int16)(var_54) | (Int16)(var_54)
            var_58 = (Int8)(var_58) << (Int8)(var_57)
            o.mem[var_54] = var_54
            var_114 = Int(Creature.idRight(o))
            var_57 = var_72 + var_57
            var_54 = Int16(o.color)
            var_57 = Int8(Creature.eatRight(c,o,Int(var_57)))
            var_114 = (Int64)(var_114) & (Int64)(var_114)
            if var_46 >= var_46
            end
            var_114 = Int(Creature.idDown(o))
            var_114 = Creature.energyUp(o)
            var_72 = Int8(Creature.eatDown(c,o,Int(var_72)))
            var_49 = Int(false)
            var_114 = Int(Creature.idLeft(o))
            var_54 = var_54 - var_54
            var_114 = Creature.energyRight(o)
            var_54 = if haskey(o.mem,var_54)
                    o.mem[var_54]
                else
                    var_54
                end
            var_114 = Int(Creature.idLeft(o))
            var_57 = Int8(Creature.eatDown(c,o,Int(var_72)))
            var_49 = Int(Creature.idDown(o))
            var_114 = Int(Creature.idDown(o))
            var_54 = var_54 % var_54
            var_54 = (Int16)(var_54) & (Int16)(var_54)
            var_54 = if 32767 >= 0.400404
                    Int16(round(0.400404))
                else
                    32767
                end
            var_46 = string(var_72)
            var_46 = string(0.428206)
            var_54 = if 32767 >= var_54
                    Int16(var_54)
                else
                    32767
                end
            var_54 = Int16(o.pos.y)
            var_57 = var_57 + var_72
            for i::Int8 = 1:div(var_58,_LOOP_STEPS_DIVIDER)
                local var_182::String = "KTNV4q4q"
            end
            var_114 = Int(Creature.idLeft(o))
            var_58 = var_57 - var_57
            var_47 = string(var_46)
            var_54 = if isempty(var_46)
                    0
                else
                    1
                end
            var_54 = Int16(o.color)
            var_54 = Int16(o.color)
            var_114 = Creature.energyUp(o)
            var_114 = var_114 / var_114
            var_54 = Int16(o.pos.x)
            var_57 = (Int8)(var_72) >> (Int8)(var_57)
            var_191 = (Int16)(var_54) >> (Int16)(var_191)
            var_54 = Int16(o.color)
            var_114 = Int(Creature.idUp(o))
            if var_54 > var_54
            end
            var_114 = (Int64)(var_114) | (Int64)(var_114)
            o.mem[var_54] = var_54
            var_114 = Int(Creature.idUp(o))
            var_114 = Int(Creature.getEnergy(o,Int(var_54),Int(var_54)))
            var_114 = Creature.energyRight(o)
            var_114 = Int(Creature.idUp(o))
            var_72 = Int8(Creature.eatRight(c,o,Int(var_57)))
            var_114 = Int(Creature.idDown(o))
            var_114 = Int(false)
            var_114 = var_114 * var_114
            var_57 = Int8(Creature.eatLeft(c,o,Int(var_72)))
            var_72 = Int8(Creature.eatDown(c,o,Int(var_72)))
            var_114 = Int(Creature.idUp(o))
            var_54 = Int16(o.color)
            var_191 = if 32767 >= var_191
                    Int16(var_191)
                else
                    32767
                end
            var_49 = Int(Creature.idDown(o))
            o.mem[var_54] = var_54
            for i::Int8 = 1:div(var_58,_LOOP_STEPS_DIVIDER)
                local var_133::String = "hhg5nbvc"
            end
            var_54 = (Int16)(var_54) & (Int16)(var_54)
            o.mem[var_191] = var_54
            var_58 = (Int8)(var_58) $ (Int8)(var_58)
            var_114 = Int(Creature.getEnergy(o,Int(var_54),Int(var_54)))
            for i::Int8 = 1:div(var_57,_LOOP_STEPS_DIVIDER)
            end
            var_54 = if true
                    1
                else
                    0
                end
            for i::Int8 = 1:div(var_72,_LOOP_STEPS_DIVIDER)
            end
            var_54 = Int16(o.pos.x)
            var_114 = Int(Creature.getEnergy(o,Int(var_191),Int(var_191)))
            var_46 = string(false)
            var_54 = if 32767 >= var_57
                    Int16(var_57)
                else
                    32767
                end
            var_54 = var_191 + var_54
            var_54 = Int16(o.color)
            var_114 = (Int64)(var_114) | (Int64)(var_114)
            return var_46
        end
        local var_12::Int64 = -2313843942701862767
        local var_2::Int8 = 110
        var_119 = (Int8)(var_119) >> (Int8)(var_90)
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_12 = (Int64)(var_12) >> (Int64)(var_12)
        var_24 = Creature.stepDown(o)
        var_78 = Int16(o.pos.y)
        var_24 = Creature.stepDown(o)
        var_24 = var_12 < (Int64)(1)
        var_24 = Creature.stepDown(o)
        var_2 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_2 > (Int8)(0)
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_24 = Creature.stepDown(o)
        var_90 = var_93 * var_93
        var_24 = Creature.stepDown(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        var_24 = isempty("5DYJZqc4")
        var_78 = Int16(o.pos.y)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_12 = Int(Creature.idLeft(o))
        var_78 = var_78 * var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        var_12 = var_12 - var_12
        var_24 = isempty("hZwpjLRh")
        var_12 = Int(var_24)
        var_78 = Int16(o.pos.x)
        var_12 = var_12 / var_12
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_24 = (Bool)(var_24) & (Bool)(var_24)
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = Creature.stepRight(o)
        var_12 = Int(Creature.idUp(o))
        var_24 = Creature.stepDown(o)
        var_119 = (Int8)(var_90) | (Int8)(var_119)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_90 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_93 = (Int8)(var_119) << (Int8)(var_93)
        var_24 = 0.0625898 > (Float64)(0)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_24 = var_12 > (Int64)(0)
        var_32 = if isempty("CzMXU725")
                0
            else
                1
            end
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_93 = Int8(Creature.eatUp(c,o,Int(var_90)))
        var_24 = Creature.stepUp(o)
        var_78 = Int16(o.color)
        var_90 = (Int8)(var_2) << (Int8)(var_2)
        var_78 = if 32767 >= var_2
                Int16(var_2)
            else
                32767
            end
        var_24 = 0.523591 > (Float64)(0)
        var_12 = if isempty("xwCXVPXV")
                0
            else
                1
            end
        var_12 = var_12 * var_12
        var_12 = Int(0.602117)
        var_93 = Int8(Creature.eatUp(c,o,Int(var_93)))
        var_24 = Creature.stepUp(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_93 = (Int8)(var_90) $ (Int8)(var_119)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_78 = (Int16)(var_78) | (Int16)(var_78)
        var_93 = Int8(Creature.eatUp(c,o,Int(var_90)))
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_12 = Creature.energyUp(o)
        var_24 = Creature.stepLeft(o)
        var_90 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_12 = (Int64)(var_12) >> (Int64)(var_12)
        var_119 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = isempty("nwIMilB8")
        var_12 = Creature.energyUp(o)
        var_24 = isempty("bjQI3wgH")
        var_90 = (Int8)(var_119) >> (Int8)(var_2)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_12 = Int(Creature.idDown(o))
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_156::String = "BXjWWqaP"
        end
        var_24 = Creature.stepUp(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = var_24 & var_24
        var_24 = isempty("E2PWbuDj")
        var_24 = var_12 < (Int64)(1)
        var_78 = func_153(var_78)
        var_12 = Int(Creature.idDown(o))
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = Int(Creature.idDown(o))
        var_24 = isempty("zTJQrDX1")
        var_24 = isempty("7sLaCsBE")
        if var_24 <= var_24
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idUp(o))
        var_78 = Int16(o.color)
        o.mem[var_78] = var_78
        var_24 = var_12 > (Int64)(0)
        var_12 = Int(Creature.idRight(o))
        var_78 = Int16(o.pos.x)
        var_78 = Int16(o.pos.y)
        var_12 = Int(Creature.idLeft(o))
        var_24 = Creature.stepUp(o)
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Creature.energyLeft(o)
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_12 = Creature.energyUp(o)
        var_93 = var_2 - var_90
        if var_24 != var_24
        end
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_93 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_78 = Int16(o.color)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = var_78 - var_78
        return true
    end),[300,500,50,0,1,1,1],26,270,0,58549,0x0000000f,Dict{Int16,Int16}(),[744,538],54498,50,542),RpcApi.SimpleOrganism(0x0000000000046eb5,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_166(var_165::Float64=0.543507)
            local var_192::Int64 = 6913464341823033563
            var_165 = cos(28020)
            var_192 = Int(Creature.idLeft(o))
            var_165 = csc(119)
            var_165 = sin(var_192)
            var_165 = var_165 / var_165
            var_192 = Creature.energyDown(o)
            var_192 = Int(Creature.idUp(o))
            var_192 = (Int64)(var_192) >> (Int64)(var_192)
            var_192 = Int(Creature.idDown(o))
            var_165 = cos(var_192)
            var_165 = tan(var_165)
            var_165 = tan(var_192)
            var_192 = (Int64)(var_192) $ (Int64)(var_192)
            var_165 = cos(3900)
            var_165 = sqrt(if var_192 > 0
                        var_192
                    else
                        var_165
                    end)
            var_192 = Int(Creature.idLeft(o))
            var_192 = Creature.energyDown(o)
            var_192 = Creature.energyUp(o)
            var_192 = (Int64)(var_192) | (Int64)(var_192)
            var_165 = tan(var_165)
            var_192 = Int(Creature.idLeft(o))
            if var_192 > var_192
                local var_204::Float64 = 0.738297
            end
            var_192 = Int(Creature.idDown(o))
            var_192 = Int(Creature.idRight(o))
            var_192 = Creature.energyLeft(o)
            var_165 = sec(-13609)
            var_165 = var_165 / var_165
            var_165 = var_165 * var_165
            var_192 = Creature.energyDown(o)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_200::Bool = true
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_163 = if var_128
                    1
                else
                    0
                end
            var_152 = Int16(o.pos.y)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_121 = Int(Creature.idRight(o))
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            if var_128 == var_200
            end
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = cot(var_152)
            var_121 = Int(Creature.idRight(o))
            var_121 = Creature.energyLeft(o)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_128 = var_70 < (Float64)(1)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_163 < (Int8)(1)
            o.mem[var_108] = var_152
            o.mem[var_152] = var_152
            var_200 = Creature.stepDown(o)
            var_163 = if 127 >= var_163
                    Int8(var_163)
                else
                    127
                end
            o.mem[var_152] = var_152
            var_152 = var_108 % var_152
            var_161 = Creature.energyRight(o)
            var_200 = Creature.stepRight(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_152 = Int16(o.color)
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Creature.energyLeft(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = csc(var_163)
            var_137 = sin(var_161)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_121 = var_161 / var_121
            var_70 = tan(-41)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = (Bool)(var_128) $ (Bool)(var_200)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_161 = var_121 % var_161
            var_161 = Int(Creature.idRight(o))
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepDown(o)
            var_137 = var_137 * var_70
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Int(var_135)
                var_135 = Int(Creature.idRight(o))
                var_135 = Int(var_135)
                var_127 = sin(var_135)
                var_191 = !var_191
                var_135 = Creature.energyDown(o)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idDown(o))
                var_118 = var_118 * var_118
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_118 = string(var_118)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_191 = Creature.stepLeft(o)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_118 = var_134[1:if length(var_118) > length(var_134) > 0
                                0
                            else
                                div(length(var_134),length(var_118))
                            end]
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_70 = sin(var_163)
            var_70 = var_137 % var_70
            var_152 = var_152 - var_152
            var_70 = sin(var_70)
            if var_128 >= var_128
            end
            var_121 = Int(Creature.idLeft(o))
            var_121 = Creature.energyDown(o)
            var_70 = var_137 / var_137
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            if var_121 <= var_161
            end
            var_70 = var_137 - var_137
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) | (Bool)(var_128)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_128 = Creature.stepRight(o)
            var_121 = (Int64)(var_161) | (Int64)(var_161)
            var_152 = (Int16)(var_152) << (Int16)(var_152)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_102 = string(var_102)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = Creature.stepUp(o)
            var_121 = Int(Creature.idDown(o))
            var_200 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_137 = Float64(var_152)
            var_121 = Creature.energyUp(o)
            if var_70 < var_137
                local var_183::String = "RYYi6iTt"
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepDown(o)
            var_161 = Int(var_163)
            var_70 = cot(var_121)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_152 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                var_193 = var_193 / var_193
            end
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.color)
            var_70 = cot(var_152)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_203::Int8 = 22
            local var_197::Int16 = 12072
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_197 = Int16(o.pos.y)
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_197 = (Int16)(var_197) | (Int16)(var_197)
            for i::Int8 = 1:div(var_203,_LOOP_STEPS_DIVIDER)
            end
            var_197 = if haskey(o.mem,var_197)
                    o.mem[var_197]
                else
                    var_197
                end
            var_197 = Int16(o.pos.x)
            var_197 = Int16(o.pos.y)
            var_197 = (Int16)(var_197) << (Int16)(var_197)
            var_203 = if isempty(var_50)
                    0
                else
                    1
                end
            var_197 = (Int16)(var_197) << (Int16)(var_197)
            var_197 = (Int16)(var_197) & (Int16)(var_197)
            var_203 = Int8(Creature.eatDown(c,o,Int(var_203)))
            var_203 = if 127 >= 0.240899
                    Int8(round(0.240899))
                else
                    127
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_24 = isempty("TksqxH1y")
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_202::Float64 = 0.0731271
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        var_78 = Int16(o.pos.y)
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_78 < (Int16)(1)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_78 = Int16(o.color)
        var_24 = Creature.stepRight(o)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_199::Float64 = 0.217299
            var_199 = cos(var_199)
            var_199 = tan(4909025479825310100)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_187::Float64 = 0.778312
            var_187 = pi
            var_187 = var_187 + var_187
            var_187 = cot(7405634173161602863)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepLeft(o)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        var_24 = Creature.stepLeft(o)
        var_78 = Int16(o.pos.y)
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_93 = var_93 * var_93
        var_78 = Int16(o.pos.y)
        var_78 = Int16(o.pos.y)
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_78 < (Int16)(1)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = Creature.stepRight(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],13,654,0,56174,0x0000000f,Dict{Int16,Int16}(),[819,19],50308,50,351),RpcApi.SimpleOrganism(0x0000000000046f77,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_191::Bool = false
        function func_182(var_180::String="GBmFCDNF",var_181::Int16=22381)
            local var_202::Float64 = 0.518494
            local var_200::Int8 = 12
            local var_198::Int8 = 42
            local var_185::Float64 = 0.192684
            var_181 = (Int16)(var_181) << (Int16)(var_181)
            var_185 = sqrt(if var_185 > 0
                        var_185
                    else
                        var_185
                    end)
            var_181 = if haskey(o.mem,var_181)
                    o.mem[var_181]
                else
                    var_181
                end
            var_200 = Int8(Creature.eatLeft(c,o,Int(var_200)))
            var_181 = Int16(o.color)
            var_185 = Float64(-5168303336188996766)
            var_181 = var_181 + var_181
            var_181 = (Int16)(var_181) & (Int16)(var_181)
            var_180 = var_180[if length(var_180) > length(var_180)
                            1
                        else
                            length(var_180)
                        end:if length(var_180) > length(var_180) > 0
                            0
                        else
                            end
                        end]
            var_185 = Float64(var_185)
            o.mem[var_181] = var_181
            var_185 = sin(-84)
            var_202 = Float64(var_181)
            var_181 = Int16(o.pos.x)
            var_185 = log(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_181 = if 32767 >= 40
                    Int16(40)
                else
                    32767
                end
            var_185 = Float64(true)
            if var_198 > var_198
            end
            var_185 = csc(var_202)
            var_185 = pi
            var_181 = Int16(o.pos.y)
            var_198 = Int8(Creature.eatLeft(c,o,Int(var_200)))
            var_180 = string(-5993045367083389905)
            var_181 = var_181 / var_181
            var_180 = var_180 * var_180
            var_185 = var_185 - var_185
            var_185 = cot(var_198)
            var_185 = csc(531358632619388800)
            var_185 = Float64(var_198)
            var_181 = var_181 / var_181
            var_180 = string(var_180)
            var_181 = var_181 - var_181
            var_185 = cot(var_185)
            var_185 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_181 = (Int16)(var_181) >> (Int16)(var_181)
            var_181 = Int16(o.pos.x)
            var_185 = var_185 * var_185
            var_185 = cos(-4346608255505395844)
            var_185 = sec(-122)
            var_185 = csc(-1662775750734902055)
            var_185 = var_185 - var_185
            o.mem[var_181] = var_181
            var_181 = Int16(o.pos.y)
            var_185 = var_185 / var_185
            var_202 = sin(var_202)
            var_185 = Float64(-27)
            var_185 = sin(112)
            var_185 = cos(var_185)
            var_198 = Int8(Creature.eatLeft(c,o,Int(var_198)))
            var_181 = (Int16)(var_181) $ (Int16)(var_181)
            var_202 = sec(var_200)
            var_200 = if isempty(var_180)
                    0
                else
                    1
                end
            var_200 = if 127 >= var_181
                    Int8(var_181)
                else
                    127
                end
            return var_180
        end
        function func_166(var_165::Float64=0.543507)
            local var_203::Float64 = 0.936306
            var_165 = Float64(1754027675842823115)
            var_165 = sin(-21659)
            var_165 = var_165 - var_165
            var_165 = Float64(var_165)
            var_165 = sin(var_195)
            var_165 = Float64(7155300762224791852)
            var_203 = sin(-15968)
            var_195 = if isempty("ZPTqjZao")
                    0
                else
                    1
                end
            var_165 = tan(447771028202033882)
            var_165 = sec(-3025)
            var_165 = sqrt(if var_203 > 0
                        var_203
                    else
                        var_165
                    end)
            var_165 = csc(-1)
            for i::Int8 = 1:div(var_195,_LOOP_STEPS_DIVIDER)
                local var_199::Float64 = 0.108458
                var_199 = cos(2881310621409796078)
                var_199 = Float64(-98)
            end
            var_165 = sqrt(if var_165 > 0
                        var_165
                    else
                        var_165
                    end)
            var_165 = sin(-42)
            var_165 = csc(4422428005668964714)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_163::Int8 = -46
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_102::String = "XvKhhYqE"
            var_128 = isempty(var_102)
            var_163 = if var_128
                    1
                else
                    0
                end
            var_70 = sec(var_152)
            var_128 = var_128 | var_128
            var_128 = var_161 < (Int64)(1)
            var_128 = var_152 > (Int16)(0)
            var_102 = string(var_102)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_152 = Int16(o.pos.y)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_137 = tan(var_163)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_152 = (Int16)(var_152) & (Int16)(var_152)
            if var_102 >= var_102
            end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_163 = var_163 % var_163
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_128 = var_70 < (Float64)(1)
            var_128 = var_163 < (Int8)(1)
            var_128 = Creature.stepRight(o)
            o.mem[var_108] = var_152
            var_161 = Creature.energyUp(o)
            var_161 = Creature.energyDown(o)
            var_163 = var_163 - var_163
            var_128 = var_161 > (Int64)(0)
            var_70 = csc(var_152)
            var_152 = var_108 % var_152
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_70 = sin(var_161)
            var_161 = Int(Creature.idDown(o))
            var_163 = var_163 % var_163
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Int(Creature.idUp(o))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_152 = var_152 + var_152
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_128 = var_137 > (Float64)(0)
            var_152 = var_152 + var_152
            var_128 = isempty(var_102)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_102 = string(var_137)
            var_137 = log(if var_163 > 0
                        var_163
                    else
                        var_137
                    end)
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_137 = csc(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_121 = Creature.energyLeft(o)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_70 = pi
            var_163 = if 127 >= var_161
                    Int8(var_161)
                else
                    127
                end
            var_152 = Int16(o.pos.y)
            var_128 = var_128 & var_128
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_121 = Creature.energyLeft(o)
            var_152 = (Int16)(var_152) $ (Int16)(var_152)
            var_152 = Int16(o.pos.x)
            var_161 = Int(Creature.idDown(o))
            var_128 = Creature.stepDown(o)
            var_128 = !var_128
            var_137 = csc(var_121)
            var_70 = sin(var_70)
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = var_137 / var_137
            if var_121 <= var_161
                local var_193::Int8 = 79
            end
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_70 = var_137 - var_137
            var_161 = Creature.energyDown(o)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_137 = sec(var_121)
            var_128 = Creature.stepUp(o)
            var_70 = cot(var_152)
            var_137 = log(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            var_128 = var_161 < (Int64)(1)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_161 = Int(var_161)
            var_163 = (Int8)(var_163) $ (Int8)(var_163)
            var_121 = Creature.energyDown(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = cot(var_108)
            var_137 = cot(var_163)
            var_161 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepUp(o)
            var_161 = Int(Creature.idUp(o))
            var_121 = Creature.energyRight(o)
            var_137 = sec(var_70)
            var_152 = Int16(o.pos.x)
            var_121 = Int(Creature.idRight(o))
            if var_70 < var_137
                var_183 = string(false)
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) & (Bool)(var_128)
            var_161 = Int(var_163)
            var_161 = Creature.energyLeft(o)
            var_70 = Float64(var_70)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            if var_128 != var_128
            end
            var_128 = Creature.stepRight(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_161 = Creature.energyDown(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_70 = Float64(var_161)
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_70 = cos(var_121)
            var_70 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_152 = Int16(o.pos.y)
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_102 = string(var_163)
            var_121 = Creature.energyLeft(o)
            var_161 = Int(var_137)
            var_102 = string(var_163)
            var_121 = (Int64)(var_121) | (Int64)(var_121)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        if var_24 > var_24
            local var_176::Bool = true
            var_176 = 0.120252 < (Float64)(1)
        end
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_78 = Int16(o.pos.x)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = Creature.stepDown(o)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_90 = Int8(Creature.eatUp(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_78 = Int16(o.pos.x)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_90 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_78 = Int16(o.pos.y)
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_90 = Int8(Creature.eatDown(c,o,Int(var_93)))
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = var_78 % var_78
        if var_158 > var_24
            local var_197::Float64 = 0.550085
            var_197 = sin(58)
        end
        var_158 = isempty("TNPVfOZ0")
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_78 = Int16(o.color)
        var_78 = if var_24
                1
            else
                0
            end
        var_93 = (Int8)(var_2) >> (Int8)(var_2)
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        var_78 = Int16(o.color)
        var_24 = isempty("ODobJIvF")
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_90 = Int8(Creature.eatUp(c,o,Int(var_93)))
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_187 = var_187 + var_187
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        var_78 = Int16(o.color)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        o.mem[var_78] = var_78
        var_78 = if isempty("olbuDv7w")
                0
            else
                1
            end
        o.mem[var_78] = var_78
        var_24 = Creature.stepDown(o)
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_12 = Int(Creature.idDown(o))
        o.mem[var_78] = var_78
        if var_24 <= var_24
            local var_150::String = "qfkghmc3"
        end
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_24 = (Bool)(var_24) & (Bool)(var_158)
        var_24 = isempty("x8uDypUZ")
        var_78 = if 32767 >= -8179538222314297200
                Int16(-8179538222314297200)
            else
                32767
            end
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],35,45,0,53474,0x0000000f,Dict{Int16,Int16}(),[980,72],35518,50,343),RpcApi.SimpleOrganism(0x0000000000046f11,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_197::Float64 = 0.598677
        function func_166(var_165::Float64=0.543507)
            local var_209::Int64 = -6630886952951718279
            local var_196::Int16 = -10508
            var_165 = pi
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_165 = sec(-616132451460830176)
            var_165 = sin(var_165)
            var_165 = log(if var_196 > 0
                        var_196
                    else
                        var_165
                    end)
            var_165 = tan(60)
            var_196 = if 32767 >= var_165
                    Int16(round(var_165))
                else
                    32767
                end
            var_196 = Int16(o.pos.y)
            var_165 = csc(var_165)
            var_165 = sec(-2011358945997982919)
            var_165 = sqrt(if var_165 > 0
                        var_165
                    else
                        var_165
                    end)
            var_165 = sin(-674282641026955207)
            o.mem[var_196] = var_196
            var_192 = Creature.energyLeft(o)
            var_209 = Int(Creature.idLeft(o))
            var_165 = cot(var_196)
            var_196 = var_196 - var_196
            var_165 = log(if var_196 > 0
                        var_196
                    else
                        var_165
                    end)
            var_165 = pi
            var_165 = sin(var_165)
            var_196 = Int16(o.pos.x)
            var_165 = log(if var_165 > 0
                        var_165
                    else
                        var_165
                    end)
            var_165 = cot(-578614296118196450)
            var_196 = Int16(o.pos.x)
            var_165 = cos(var_196)
            var_165 = sec(119)
            var_196 = (Int16)(var_196) | (Int16)(var_196)
            if var_196 !== var_196
            end
            var_165 = Float64(var_196)
            var_165 = pi
            var_165 = Float64(-6002517953159822715)
            var_196 = if 32767 >= 11
                    Int16(11)
                else
                    32767
                end
            var_165 = tan(-5128951027237979276)
            var_165 = sin(var_165)
            var_165 = csc(9)
            var_165 = sin(-27)
            var_165 = cot(-7442775157276079299)
            var_196 = Int16(o.pos.y)
            var_165 = cos(var_165)
            var_196 = if 32767 >= var_196
                    Int16(var_196)
                else
                    32767
                end
            var_165 = cot(var_196)
            o.mem[var_196] = var_196
            var_165 = var_165 - var_165
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_196 = if haskey(o.mem,var_196)
                    o.mem[var_196]
                else
                    var_196
                end
            var_165 = cos(var_165)
            var_196 = (Int16)(var_196) << (Int16)(var_196)
            var_196 = Int16(o.color)
            var_165 = pi
            o.mem[var_196] = var_196
            var_196 = Int16(o.pos.x)
            var_196 = var_196 + var_196
            var_165 = csc(45)
            var_196 = Int16(o.color)
            var_165 = sqrt(if var_196 > 0
                        var_196
                    else
                        var_165
                    end)
            var_165 = sqrt(if var_165 > 0
                        var_165
                    else
                        var_165
                    end)
            var_196 = if 32767 >= 616357721120452770
                    Int16(616357721120452770)
                else
                    32767
                end
            var_165 = sec(176908822021688572)
            var_165 = sqrt(if var_196 > 0
                        var_196
                    else
                        var_165
                    end)
            var_165 = cot(var_165)
            var_196 = if 32767 >= var_165
                    Int16(round(var_165))
                else
                    32767
                end
            var_165 = cos(var_165)
            var_192 = Creature.energyUp(o)
            var_165 = tan(var_165)
            var_165 = csc(1539555438557939595)
            o.mem[var_196] = var_196
            return var_165
        end
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_121 = Int(Creature.idDown(o))
            var_70 = sec(var_152)
            var_70 = tan(var_70)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            if var_152 >= var_152
            end
            var_121 = Int(Creature.idLeft(o))
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_70 = Float64(var_163)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_121 = Creature.energyLeft(o)
            var_128 = var_70 < (Float64)(1)
            var_163 = (Int8)(var_163) | (Int8)(var_163)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_70 = sin(var_137)
            o.mem[var_108] = var_152
            if var_128 < var_128
            end
            var_102 = var_102 * var_102
            o.mem[var_152] = var_152
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_137 = csc(var_163)
            var_152 = var_108 % var_152
            var_128 = Creature.stepLeft(o)
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_137 = tan(var_137)
            var_152 = Int16(o.color)
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_70 = log(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_70 = tan(-41)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = isempty(var_102)
            var_137 = pi
            var_70 = sec(var_70)
            var_128 = Creature.stepRight(o)
            var_152 = Int16(o.color)
            var_137 = var_70 % var_137
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyRight(o)
            var_128 = var_161 > (Int64)(0)
            var_70 = pi
            var_152 = Int16(o.pos.x)
            var_70 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_128 = Creature.stepLeft(o)
            var_121 = (Int64)(var_121) & (Int64)(var_161)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) << (Int8)(var_163)
            var_70 = sin(var_163)
            var_121 = Creature.energyUp(o)
            var_137 = cos(var_163)
            var_137 = cot(var_152)
            var_128 = !var_128
            var_137 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            if var_163 == var_163
            end
            if var_128 >= var_128
            end
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
                local var_202::Int8 = -67
            end
            var_70 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = var_137 / var_137
            var_70 = cos(var_161)
            var_128 = var_152 > (Int16)(0)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_128 = Creature.stepRight(o)
            var_70 = var_137 - var_137
            var_121 = Int(Creature.idDown(o))
            var_121 = Int(Creature.idUp(o))
            var_152 = Int16(o.pos.y)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_137 = cos(var_152)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_128 = Creature.stepDown(o)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_152 = var_152 * var_152
            var_102 = string(var_102)
            var_163 = if isempty(var_102)
                    0
                else
                    1
                end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_128 = var_128 * var_128
            var_137 = Float64(var_128)
            var_121 = Creature.energyRight(o)
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_70 > 0
                        var_70
                    else
                        var_70
                    end)
            var_121 = var_121 * var_161
            var_137 = Float64(var_152)
            var_121 = Creature.energyUp(o)
            var_163 = (Int8)(var_163) & (Int8)(var_163)
            var_161 = Int(Creature.idLeft(o))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_128 = Creature.stepDown(o)
            var_137 = pi
            var_128 = isempty(var_102)
            var_161 = Int(var_163)
            var_102 = var_102 * var_102
            var_70 = sin(var_70)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_137 = cot(var_152)
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_121 = var_121 - var_121
            var_121 = Int(Creature.idRight(o))
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_102 = string(var_161)
            var_161 = Creature.energyDown(o)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                local var_208::Bool = false
                local var_179::String = "bjVyalHF"
            end
            var_128 = var_128 & var_128
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_152 = Int16(o.color)
            var_161 = Int(Creature.idRight(o))
            var_102 = string(var_128)
            var_137 = cos(var_152)
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_163 = var_163 * var_163
            var_163 = (Int8)(var_163) $ (Int8)(var_163)
            var_121 = Int(Creature.idDown(o))
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_102 = string(var_163)
            var_70 = cot(var_152)
            var_161 = Creature.energyDown(o)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            var_50 = string(true)
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_197 = var_197 - var_197
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_78 = Int16(o.pos.x)
        var_197 = tan(-2188442880784324502)
        var_24 = Creature.stepDown(o)
        var_197 = sqrt(if var_119 > 0
                    var_119
                else
                    var_197
                end)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_90 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_24 = var_24 * var_24
        var_119 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_197 = cos(3844414651287285692)
        var_197 = sqrt(if var_78 > 0
                    var_78
                else
                    var_197
                end)
        var_24 = Creature.stepLeft(o)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = Creature.stepUp(o)
        var_24 = var_158 | var_24
        if var_93 != var_119
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_78 = Int16(o.color)
        var_24 = var_78 > (Int16)(0)
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_197 = pi
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_178 = Int8(Creature.eatLeft(c,o,Int(var_178)))
        end
        var_197 = csc(var_90)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        o.mem[var_78] = var_78
        var_197 = cot(var_90)
        if var_158 > var_24
            local var_210::Int8 = -127
        end
        var_158 = isempty("TNPVfOZ0")
        var_24 = -5110350930543546251 < (Int64)(1)
        var_24 = var_78 < (Int16)(1)
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_119 = Int8(Creature.eatDown(c,o,Int(var_2)))
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_24 = var_78 > (Int16)(0)
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_24 = var_158 | var_24
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        var_78 = Int16(o.pos.y)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_197 = pi
        var_78 = (Int16)(var_78) | (Int16)(var_78)
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_197 = log(if var_119 > 0
                    var_119
                else
                    var_197
                end)
        var_78 = var_78 + var_78
        var_78 = Int16(o.color)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        if var_24 <= var_24
            local var_206::Int8 = 89
            var_206 = Int8(Creature.eatDown(c,o,Int(var_206)))
        end
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_197 = sin(-6795234477523383961)
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],18,519,0,52082,0x0000000f,Dict{Int16,Int16}(),[719,873],43698,50,348),RpcApi.SimpleOrganism(0x0000000000046f5b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_210(var_208::Bool=false,var_209::Int8=126)
            local var_213::String = "gRvrbQ2g"
            var_209 = Int8(Creature.eatUp(c,o,Int(var_209)))
            for i::Int8 = 1:div(var_209,_LOOP_STEPS_DIVIDER)
            end
            for i::Int8 = 1:div(var_209,_LOOP_STEPS_DIVIDER)
            end
            var_209 = Int8(Creature.eatDown(c,o,Int(var_209)))
            var_208 = Creature.stepRight(o)
            var_208 = Creature.stepUp(o)
            var_208 = var_208 | var_208
            var_208 = Creature.stepLeft(o)
            var_213 = var_213[if length(var_213) > length(var_213)
                            1
                        else
                            length(var_213)
                        end:if length(var_213) > length(var_213) > 0
                            0
                        else
                            end
                        end]
            var_208 = Creature.stepRight(o)
            var_213 = string(var_213)
            if var_208 > var_208
                local var_220::Int64 = 1980875767577083948
                var_220 = var_220 / var_220
                var_220 = Int(Creature.idUp(o))
            end
            var_209 = Int8(Creature.eatDown(c,o,Int(var_209)))
            var_209 = var_209 / var_209
            var_209 = Int8(Creature.eatUp(c,o,Int(var_209)))
            var_208 = isempty(var_213)
            var_208 = 0.0656867 > (Float64)(0)
            var_208 = Creature.stepUp(o)
            var_208 = (Bool)(var_208) & (Bool)(var_208)
            var_208 = Creature.stepDown(o)
            var_209 = Int8(Creature.eatUp(c,o,Int(var_209)))
            var_208 = Creature.stepRight(o)
            var_208 = var_208 | var_208
            var_208 = Creature.stepLeft(o)
            var_209 = Int8(Creature.eatRight(c,o,Int(var_209)))
            return var_208
        end
        function func_204(var_202::Bool=true,var_203::Float64=0.705098)
            local var_219::Int8 = 50
            local var_205::Int64 = 2339843718911407410
            var_205 = Int(Creature.idRight(o))
            var_205 = Int(Creature.idUp(o))
            var_203 = sec(18463)
            var_219 = Int8(Creature.eatDown(c,o,Int(var_219)))
            var_219 = Int8(Creature.eatRight(c,o,Int(var_219)))
            var_205 = Int(var_202)
            var_205 = Int(Creature.idUp(o))
            var_202 = var_202 & var_202
            var_205 = Creature.energyUp(o)
            var_205 = Int(var_202)
            var_202 = var_219 > (Int8)(0)
            var_205 = Creature.energyRight(o)
            var_219 = Int8(Creature.eatRight(c,o,Int(var_219)))
            var_205 = var_205 - var_205
            var_203 = tan(var_203)
            var_205 = var_205 - var_205
            var_202 = Creature.stepUp(o)
            var_203 = Float64(-88)
            var_205 = Int(Creature.idUp(o))
            var_203 = cot(var_203)
            var_203 = sec(var_205)
            var_203 = tan(var_205)
            var_202 = (Bool)(var_202) & (Bool)(var_202)
            var_219 = Int8(Creature.eatRight(c,o,Int(var_219)))
            var_219 = if isempty("0CllNzhF")
                    0
                else
                    1
                end
            var_202 = Creature.stepDown(o)
            var_203 = Float64(var_203)
            var_202 = var_202 | var_202
            var_202 = Creature.stepDown(o)
            var_203 = pi
            var_203 = pi
            var_205 = (Int64)(var_205) | (Int64)(var_205)
            var_203 = sqrt(if var_203 > 0
                        var_203
                    else
                        var_203
                    end)
            var_205 = Creature.energyUp(o)
            var_203 = log(if var_203 > 0
                        var_203
                    else
                        var_203
                    end)
            var_205 = Int(Creature.idUp(o))
            var_203 = cos(var_219)
            var_219 = (Int8)(var_219) & (Int8)(var_219)
            var_202 = var_202
            var_202 = Bool(abs(var_202 - var_202))
            var_205 = Creature.energyRight(o)
            var_205 = Creature.energyUp(o)
            var_203 = tan(var_203)
            var_205 = Creature.energyRight(o)
            var_203 = Float64(6842)
            var_203 = sin(var_205)
            var_202 = Creature.stepUp(o)
            var_202 = Creature.stepDown(o)
            return var_202
        end
        local var_199::String = "lUMCK2jV"
        function func_166(var_165::Float64=0.543507)
            local var_215::String = "zrajWf4Q"
            local var_211::Int8 = -121
            local var_200::Int8 = -6
            var_165 = csc(7585)
            var_200 = Int8(Creature.eatUp(c,o,Int(var_200)))
            var_200 = Int8(Creature.eatDown(c,o,Int(var_200)))
            var_200 = Int8(Creature.eatLeft(c,o,Int(var_200)))
            var_165 = sec(-20170)
            for i::Int8 = 1:div(var_211,_LOOP_STEPS_DIVIDER)
                local var_218::Int16 = 8797
                o.mem[var_218] = var_218
            end
            var_211 = Int8(Creature.eatLeft(c,o,Int(var_211)))
            var_211 = var_195 * var_195
            var_200 = Int8(Creature.eatDown(c,o,Int(var_200)))
            var_200 = Int8(Creature.eatRight(c,o,Int(var_200)))
            var_215 = var_215[1:if length(var_215) > length(var_215)
                            0
                        else
                            length(var_215) - length(var_215)
                        end]
            var_215 = var_215 * var_215
            var_165 = sin(-625843004014913556)
            var_200 = var_200 + var_200
            var_200 = if 127 >= 7879953769714421707
                    Int8(7879953769714421707)
                else
                    127
                end
            var_165 = tan(var_211)
            var_165 = tan(14240)
            var_211 = Int8(Creature.eatUp(c,o,Int(var_200)))
            var_165 = tan(var_165)
            var_165 = tan(5071)
            var_200 = Int8(Creature.eatRight(c,o,Int(var_200)))
            var_200 = Int8(Creature.eatRight(c,o,Int(var_211)))
            var_195 = (Int8)(var_195) $ (Int8)(var_195)
            return var_165
        end
        local var_158::Bool = true
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_137 = Float64(var_137)
            var_161 = Creature.energyLeft(o)
            var_163 = if var_128
                    1
                else
                    0
                end
            var_121 = Int(Creature.idLeft(o))
            var_102 = string(var_137)
            var_161 = Creature.energyRight(o)
            var_128 = var_128 & var_128
            var_163 = if isempty(var_102)
                    0
                else
                    1
                end
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_121 = (Int64)(var_161) $ (Int64)(var_121)
            var_128 = !var_128
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_108 = var_108 + var_108
            var_128 = var_152 > (Int16)(0)
            var_137 = log(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            var_70 = sec(var_70)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = if isempty(var_102)
                    0.0
                else
                    1.0
                end
            var_128 = var_70 < (Float64)(1)
            if var_163 < var_163
            end
            var_152 = if 32767 >= var_137
                    Int16(round(var_137))
                else
                    32767
                end
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_163 = var_163 - var_163
            var_70 = tan(var_161)
            var_70 = cos(var_137)
            var_152 = var_108 % var_152
            var_137 = var_70 / var_70
            var_163 = (Int8)(var_163) & (Int8)(var_163)
            var_121 = Creature.energyDown(o)
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_128 = (Bool)(var_128) $ (Bool)(var_128)
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
                local var_193::Int64 = -1272953298240665717
                var_193 = Creature.energyDown(o)
            end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_70 = tan(-41)
            var_161 = Creature.energyLeft(o)
            var_161 = if isempty(var_102)
                    0
                else
                    1
                end
            if var_102 !== var_102
            end
            var_70 = sin(var_163)
            var_152 = Int16(o.color)
            var_70 = sec(var_70)
            var_152 = (Int16)(var_152) $ (Int16)(var_152)
            var_128 = Creature.stepRight(o)
            var_128 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_137 = Float64(var_128)
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_152 = (Int16)(var_152) & (Int16)(var_152)
            var_137 = var_137 * var_70
            var_137 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 < (Int16)(1)
            var_121 = Creature.energyLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = log(if var_121 > 0
                        var_121
                    else
                        var_137
                    end)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_128 = Creature.stepRight(o)
            var_128 = var_128 | var_128
            var_161 = var_161 % var_161
            if var_128 != var_128
            end
            o.mem[var_152] = var_152
            var_152 = Int16(o.pos.x)
            var_137 = csc(var_121)
            if var_128 !== var_128
                local var_201::Int16 = 15107
            end
            if var_128 >= var_128
                var_179 = -8563744238373476167 > (Int64)(0)
                var_179 = var_179 * var_179
            end
            var_70 = log(if var_161 > 0
                        var_161
                    else
                        var_70
                    end)
            var_161 = var_161 - var_121
            var_70 = var_137 / var_137
            if var_121 <= var_161
                local var_216::Float64 = 0.33355
                var_216 = sin(107)
            end
            var_128 = var_128 | var_128
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_137 = sec(var_121)
            var_152 = Int16(o.color)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_70 = pi
            var_121 = Creature.energyRight(o)
            var_161 = var_121 / var_161
            var_70 = cot(var_108)
            var_121 = Creature.energyLeft(o)
            var_70 = sqrt(if var_137 > 0
                        var_137
                    else
                        var_70
                    end)
            var_137 = Float64(var_128)
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_102 = string(var_161)
            var_70 = tan(-11)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.pos.x)
            if var_70 < var_137
                local var_192::String = "gW5OBxmU"
            end
            var_152 = if 32767 >= var_163
                    Int16(var_163)
                else
                    32767
                end
            var_128 = Creature.stepDown(o)
            var_152 = Int16(o.pos.y)
            var_102 = string(var_152)
            var_161 = var_161 * var_121
            var_152 = if 32767 >= var_163
                    Int16(var_163)
                else
                    32767
                end
            var_102 = var_102 * var_102
            var_137 = log(if var_137 > 0
                        var_137
                    else
                        var_137
                    end)
            var_163 = (Int8)(var_163) | (Int8)(var_163)
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = sec(var_137)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepUp(o)
            var_121 = var_121 - var_121
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
                local var_190::String = "NZL5nC86"
            end
            var_161 = Int(var_128)
            var_152 = Int16(o.pos.y)
            var_128 = Creature.stepLeft(o)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            if var_152 >= var_152
            end
            var_70 = pi
            var_161 = Int(Creature.idUp(o))
            var_70 = Float64(var_121)
            if var_128 == var_128
            end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = var_163 > (Int8)(0)
            var_102 = var_102 * var_102
            var_161 = Int(Creature.idRight(o))
            var_128 = Creature.stepDown(o)
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            o.mem[var_152] = var_152
            var_108 = var_108 + var_108
            var_70 = csc(var_163)
            var_108 = Int16(o.color)
            var_121 = (Int64)(var_121) | (Int64)(var_121)
            var_161 = Int(Creature.idLeft(o))
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_217::Int16 = -23894
            local var_197::Int64 = 5084363983683503342
            local var_189::Float64 = 0.650781
            var_189 = tan(17110)
            var_189 = cot(24504)
            var_197 = var_197 - var_197
            var_197 = Creature.energyUp(o)
            var_197 = Int(Creature.idLeft(o))
            var_197 = var_197 + var_197
            var_189 = pi
            var_189 = cos(var_197)
            var_50 = string(var_50)
            var_189 = cot(var_197)
            var_189 = if isempty(var_50)
                    0.0
                else
                    1.0
                end
            var_189 = sqrt(if var_189 > 0
                        var_189
                    else
                        var_189
                    end)
            var_189 = cot(-25592)
            var_197 = if isempty(var_50)
                    0
                else
                    1
                end
            var_197 = Creature.energyLeft(o)
            var_197 = Int(Creature.idLeft(o))
            var_197 = Int(Creature.idDown(o))
            var_197 = Int(-79)
            var_189 = Float64(-26830)
            var_217 = Int16(o.pos.x)
            var_189 = sec(var_197)
            var_197 = Int(Creature.idUp(o))
            var_189 = csc(var_217)
            var_189 = cos(var_189)
            var_197 = Int(Creature.idDown(o))
            var_50 = var_50 * var_50
            var_189 = tan(16245)
            var_197 = Int(Creature.idRight(o))
            var_197 = Creature.energyDown(o)
            var_197 = Creature.energyUp(o)
            var_189 = cos(26)
            var_197 = Creature.energyLeft(o)
            var_197 = Creature.energyDown(o)
            var_50 = var_50[1:if length(var_50) > length(var_50) > 0
                            0
                        else
                            div(length(var_50),length(var_50))
                        end]
            if var_197 !== var_197
            end
            var_189 = tan(var_189)
            var_217 = (Int16)(var_217) << (Int16)(var_217)
            var_50 = var_50[if length(var_50) > length(var_50)
                            1
                        else
                            length(var_50)
                        end:if length(var_50) > length(var_50) > 0
                            0
                        else
                            end
                        end]
            var_197 = Creature.energyRight(o)
            var_189 = sin(50)
            var_197 = Int(Creature.idLeft(o))
            var_189 = csc(-14401)
            var_189 = cos(var_197)
            var_197 = Int(Creature.idUp(o))
            var_189 = pi
            var_197 = Creature.energyUp(o)
            var_197 = Int(Creature.idUp(o))
            var_50 = var_50 * var_50
            var_217 = if 32767 >= var_217
                    Int16(var_217)
                else
                    32767
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_78 = Int16(o.color)
        if var_24 > var_24
            var_130 = (Int8)(var_130) $ (Int8)(var_130)
        end
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_119 = (Int8)(var_93) & (Int8)(var_93)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_158 = 0.578109 < (Float64)(1)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_24 = Creature.stepLeft(o)
        o.mem[var_78] = var_78
        var_90 = if 127 >= var_90
                Int8(var_90)
            else
                127
            end
        var_78 = Int16(o.pos.x)
        var_24 = var_24 * var_24
        var_158 = var_24 * var_24
        var_158 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_158 = func_210(var_24)
        var_158 = 0.533799 > (Float64)(0)
        var_78 = var_78 + var_78
        var_119 = (Int8)(var_90) << (Int8)(var_119)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = if 32767 >= 0.617892
                Int16(round(0.617892))
            else
                32767
            end
        var_24 = Creature.stepUp(o)
        var_2 = (Int8)(var_2) >> (Int8)(var_90)
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_199 = string(4411750765541950159)
        var_78 = Int16(o.color)
        var_12 = Int(Creature.idUp(o))
        var_158 = Creature.stepRight(o)
        var_24 = isempty("RvVCJ6tu")
        var_2 = Int8(Creature.eatUp(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_90 < (Int8)(1)
        var_24 = 5925128973212918442 < (Int64)(1)
        var_158 = var_24 | var_24
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_158 = Creature.stepLeft(o)
        var_158 = Creature.stepLeft(o)
        var_24 = Creature.stepRight(o)
        var_78 = var_78 % var_78
        if var_158 > var_24
            local var_207::Int16 = 30364
            var_207 = Int16(o.pos.y)
            var_207 = Int16(o.pos.y)
            var_207 = if isempty("yZQkESab")
                    0
                else
                    1
                end
        end
        var_93 = var_90 - var_2
        var_78 = Int16(o.pos.x)
        var_2 = var_2 / var_2
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = Creature.stepLeft(o)
        var_78 = var_78 % var_78
        var_119 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = Creature.stepRight(o)
        o.mem[var_78] = var_78
        var_12 = Int(var_12)
        var_2 = var_119 - var_119
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        o.mem[var_78] = var_78
        var_93 = (Int8)(var_2) >> (Int8)(var_2)
        var_24 = (Bool)(var_24) | (Bool)(var_158)
        if var_199 > var_199
        end
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_93 = (Int8)(var_90) & (Int8)(var_93)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_119 = Int8(Creature.eatDown(c,o,Int(var_2)))
        var_24 = var_12 < (Int64)(1)
        var_199 = string(var_199)
        var_12 = Int(Creature.idRight(o))
        var_24 = (Bool)(var_24) & (Bool)(var_24)
        var_158 = Creature.stepLeft(o)
        o.mem[var_78] = var_78
        var_78 = var_78 / var_78
        var_24 = var_24 & var_24
        var_93 = Int8(Creature.eatRight(c,o,Int(var_90)))
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_212::Int64 = -3294003863908373737
            local var_183::Float64 = 0.626242
            var_212 = Int(Creature.idLeft(o))
            var_183 = cot(7954763884919579899)
            var_183 = pi
            var_183 = tan(-13665)
            var_183 = cot(72)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_158 = var_158 | var_158
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_93 = if var_24
                1
            else
                0
            end
        var_2 = Int8(Creature.eatUp(c,o,Int(var_90)))
        var_93 = (Int8)(var_2) << (Int8)(var_93)
        if var_93 != var_90
        end
        var_12 = Int(var_2)
        var_78 = var_78 + var_78
        if var_93 < var_119
        end
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = Int(Creature.idDown(o))
        o.mem[var_78] = var_78
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = (Int8)(var_90) & (Int8)(var_90)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = -5013654185972680651 > (Int64)(0)
        var_119 = (Int8)(var_119) $ (Int8)(var_93)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_2 = Int8(Creature.eatRight(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_199 = var_199 * var_199
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = 0.785306 > (Float64)(0)
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_24 = isempty("Ec5xgpwA")
        return true
    end),[300,500,50,0,1,1,1],41,169,0,51475,0x0000000f,Dict{Int16,Int16}(),[1489,422],37708,50,454),RpcApi.SimpleOrganism(0x0000000000046ecf,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_161(var_160::Int8=-7)
            local var_202::String = "LtQ7qs29"
            local var_199::Int64 = 611638177344284784
            var_199 = Creature.energyDown(o)
            var_160 = Int8(Creature.eatDown(c,o,Int(var_160)))
            var_160 = Int8(Creature.eatDown(c,o,Int(var_160)))
            var_160 = (Int8)(var_160) << (Int8)(var_160)
            for i::Int8 = 1:div(var_160,_LOOP_STEPS_DIVIDER)
            end
            var_160 = var_160 - var_160
            var_199 = Creature.energyDown(o)
            var_199 = Int(Creature.idDown(o))
            var_199 = Creature.energyLeft(o)
            var_160 = if isempty(var_202)
                    0
                else
                    1
                end
            var_199 = Creature.energyUp(o)
            return var_160
        end
        function func_153(var_151::Int16=31235,var_152::Int64=2848040511005267933)
            local var_178::Int16 = 19670
            local var_172::Int64 = -8229536530392119378
            local var_171::Int16 = -772
            local var_201::Int8 = 65
            var_201 = Int8(Creature.eatUp(c,o,Int(var_201)))
            var_201 = (Int8)(var_201) >> (Int8)(var_201)
            var_152 = Creature.energyDown(o)
            o.mem[var_178] = var_178
            var_151 = var_178 + var_171
            var_175 = log(if var_152 > 0
                        var_152
                    else
                        var_175
                    end)
            var_171 = Int16(o.color)
            var_172 = Creature.energyLeft(o)
            var_171 = (Int16)(var_178) >> (Int16)(var_171)
            var_201 = var_201 + var_201
            if var_172 <= var_152
                local var_205::Float64 = 0.907327
            end
            var_172 = Int(var_152)
            var_151 = Int16(o.pos.x)
            var_152 = var_152 % var_152
            var_178 = if haskey(o.mem,var_178)
                    o.mem[var_178]
                else
                    var_178
                end
            var_172 = Int(Creature.getEnergy(o,Int(var_171),Int(var_171)))
            var_201 = (Int8)(var_201) | (Int8)(var_201)
            var_201 = var_201 - var_201
            var_170 = Creature.stepRight(o)
            var_178 = (Int16)(var_171) & (Int16)(var_171)
            var_152 = Creature.energyUp(o)
            var_172 = Int(Creature.idRight(o))
            var_171 = if haskey(o.mem,var_171)
                    o.mem[var_171]
                else
                    var_171
                end
            var_171 = (Int16)(var_171) >> (Int16)(var_178)
            var_151 = Int16(o.pos.x)
            var_172 = Int(Creature.idLeft(o))
            for i::Int8 = 1:div(var_201,_LOOP_STEPS_DIVIDER)
            end
            var_172 = Int(Creature.idUp(o))
            var_152 = Int(Creature.idUp(o))
            var_170 = var_170 & var_170
            var_201 = Int8(Creature.eatRight(c,o,Int(var_201)))
            var_178 = Int16(o.color)
            var_152 = Int(Creature.getEnergy(o,Int(var_178),Int(var_178)))
            var_151 = Int16(o.pos.y)
            var_201 = (Int8)(var_201) << (Int8)(var_201)
            var_152 = Int(Creature.idRight(o))
            var_171 = Int16(o.pos.y)
            var_178 = if haskey(o.mem,var_151)
                    o.mem[var_151]
                else
                    var_178
                end
            var_172 = Int(Creature.idLeft(o))
            var_152 = Int(Creature.idUp(o))
            var_152 = Creature.energyLeft(o)
            var_152 = Creature.energyRight(o)
            var_152 = Int(Creature.idRight(o))
            var_170 = Creature.stepUp(o)
            var_171 = Int16(o.pos.x)
            var_170 = Creature.stepDown(o)
            var_178 = if var_170
                    1
                else
                    0
                end
            var_171 = (Int16)(var_171) >> (Int16)(var_178)
            var_178 = Int16(o.pos.y)
            var_152 = Int(Creature.getEnergy(o,Int(var_178),Int(var_171)))
            var_172 = Int(Creature.idLeft(o))
            o.mem[var_151] = var_171
            var_172 = (Int64)(var_172) & (Int64)(var_172)
            var_172 = Int(Creature.idRight(o))
            var_178 = Int16(o.pos.x)
            var_152 = Creature.energyUp(o)
            var_151 = Int16(o.pos.x)
            var_172 = Int(Creature.idUp(o))
            var_151 = if haskey(o.mem,var_171)
                    o.mem[var_171]
                else
                    var_151
                end
            var_171 = Int16(o.pos.x)
            var_172 = Creature.energyUp(o)
            var_172 = Int(Creature.idUp(o))
            var_152 = Int(Creature.idRight(o))
            if var_151 > var_178
                local var_204::String = "phFhAriG"
            end
            var_171 = Int16(o.pos.x)
            var_170 = var_170
            return var_151
        end
        local var_119::Int8 = 44
        function func_106(var_105::String="45fGduMG")
            local var_200::Int64 = -4962895325774541062
            local var_174::Int64 = -1691351852122081113
            local var_169::Int16 = -16711
            local var_164::Int16 = 20313
            local var_154::Int64 = 6292035638353222091
            local var_134::Float64 = 0.646809
            var_134 = cos(var_134)
            var_134 = pi
            var_134 = var_134 % var_134
            var_134 = sin(var_134)
            var_154 = Int(Creature.idDown(o))
            var_169 = Int16(o.pos.y)
            var_164 = Int16(o.pos.y)
            if var_105 !== var_105
            end
            var_154 = Int(Creature.idLeft(o))
            var_134 = sec(-99)
            var_200 = Creature.energyDown(o)
            var_154 = Int(Creature.idRight(o))
            var_134 = cos(var_154)
            var_134 = cos(var_154)
            var_174 = Int(Creature.idRight(o))
            var_174 = Int(Creature.getEnergy(o,Int(var_164),Int(var_169)))
            var_105 = string(var_169)
            var_134 = cot(var_134)
            var_134 = cos(var_169)
            var_174 = Int(Creature.idUp(o))
            var_154 = Creature.energyLeft(o)
            var_134 = sec(var_174)
            var_169 = var_169 + var_164
            var_134 = sin(var_134)
            var_174 = Int(Creature.idDown(o))
            var_134 = Float64(var_174)
            o.mem[var_169] = var_169
            var_169 = (Int16)(var_169) >> (Int16)(var_169)
            if var_134 != var_134
            end
            var_200 = (Int64)(var_154) & (Int64)(var_154)
            var_174 = var_154 * var_154
            var_134 = log(if var_134 > 0
                        var_134
                    else
                        var_134
                    end)
            var_164 = if haskey(o.mem,var_164)
                    o.mem[var_164]
                else
                    var_164
                end
            var_134 = cos(var_169)
            var_154 = var_154 / var_154
            var_105 = string(-120)
            var_174 = Creature.energyDown(o)
            var_154 = Creature.energyUp(o)
            var_169 = Int16(o.pos.y)
            var_134 = log(if var_169 > 0
                        var_169
                    else
                        var_134
                    end)
            var_164 = Int16(o.color)
            var_134 = sin(var_169)
            var_154 = Int(Creature.idLeft(o))
            var_134 = sqrt(if var_134 > 0
                        var_134
                    else
                        var_134
                    end)
            var_105 = var_105 * var_105
            var_169 = (Int16)(var_169) >> (Int16)(var_164)
            var_154 = Int(Creature.idRight(o))
            var_154 = Creature.energyLeft(o)
            var_134 = sec(var_134)
            var_164 = Int16(o.pos.x)
            var_134 = tan(var_174)
            var_174 = (Int64)(var_174) | (Int64)(var_174)
            if var_169 === var_169
                var_196 = (Int8)(var_196) $ (Int8)(var_196)
                var_196 = Int8(Creature.eatDown(c,o,Int(var_196)))
                o.mem[var_181] = var_181
            end
            var_164 = Int16(o.pos.x)
            var_134 = csc(var_154)
            var_169 = Int16(o.pos.x)
            o.mem[var_164] = var_164
            var_154 = var_174 + var_174
            var_169 = var_164 % var_169
            var_164 = (Int16)(var_164) $ (Int16)(var_164)
            var_134 = var_134 / var_134
            var_154 = var_154 % var_174
            var_174 = Int(Creature.idRight(o))
            return var_105
        end
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        function func_88(var_86::String="HMocC0cA",var_87::Bool=false)
            local var_194::String = "Klt1DlBC"
            var_187 = Int16(o.pos.y)
            if var_86 !== var_86
                local var_206::String = "yaEth1lx"
                var_206 = string(-15073)
                var_195 = sec(114)
            end
            var_187 = if haskey(o.mem,var_187)
                    o.mem[var_187]
                else
                    var_187
                end
            var_87 = Creature.stepLeft(o)
            var_87 = (Bool)(var_87) $ (Bool)(var_87)
            var_87 = var_87
            var_187 = if haskey(o.mem,var_187)
                    o.mem[var_187]
                else
                    var_187
                end
            var_87 = Creature.stepUp(o)
            var_87 = Creature.stepLeft(o)
            var_87 = Creature.stepRight(o)
            var_87 = isempty(var_194)
            var_87 = Creature.stepRight(o)
            var_87 = !var_87
            var_187 = if haskey(o.mem,var_187)
                    o.mem[var_187]
                else
                    var_187
                end
            var_187 = Int16(o.pos.x)
            var_187 = Int16(o.pos.x)
            var_87 = isempty(var_194)
            var_187 = var_187 + var_187
            var_187 = var_187 / var_187
            var_187 = Int16(o.pos.y)
            var_187 = Int16(o.pos.y)
            var_87 = !var_87
            var_187 = Int16(o.pos.y)
            var_87 = 590792758760502130 > (Int64)(0)
            return var_86
        end
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_183::Int16 = 14041
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_183 = (Int16)(var_183) << (Int16)(var_183)
            var_121 = Int(-126)
            var_70 = sec(var_183)
            o.mem[var_183] = var_183
            var_70 = pi
            var_136 = var_136 + var_136
            var_108 = if true
                    1
                else
                    0
                end
            var_121 = Creature.energyUp(o)
            var_70 = Float64(18136)
            var_183 = Int16(o.pos.x)
            var_183 = var_183 * var_183
            var_121 = var_121 + var_121
            o.mem[var_183] = var_183
            var_183 = if 32767 >= var_121
                    Int16(var_121)
                else
                    32767
                end
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_70 = cot(var_70)
            var_183 = Int16(o.color)
            var_121 = Int(Creature.idUp(o))
            var_183 = Int16(o.pos.x)
            var_70 = sin(var_70)
            var_121 = Creature.energyLeft(o)
            var_70 = Float64(19)
            var_121 = Int(Creature.getEnergy(o,Int(var_183),Int(var_183)))
            var_121 = Int(Creature.idRight(o))
            var_121 = Int(Creature.idDown(o))
            var_183 = Int16(o.color)
            var_70 = csc(var_70)
            var_121 = Creature.energyRight(o)
            var_70 = cos(var_70)
            var_183 = Int16(o.pos.y)
            var_121 = Int(Creature.idRight(o))
            var_121 = var_121 % var_121
            var_121 = Int(true)
            var_183 = Int16(o.pos.y)
            var_121 = Creature.energyLeft(o)
            var_70 = sqrt(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_121 = Creature.energyRight(o)
            var_183 = if true
                    1
                else
                    0
                end
            var_121 = Int(Creature.idDown(o))
            var_70 = csc(var_121)
            var_70 = csc(71)
            var_121 = Creature.energyUp(o)
            var_121 = var_121 / var_121
            var_183 = if false
                    1
                else
                    0
                end
            var_121 = Int(Creature.idUp(o))
            var_121 = Creature.energyRight(o)
            var_70 = csc(-60)
            var_121 = Creature.energyLeft(o)
            for i::Int8 = 1:div(var_136,_LOOP_STEPS_DIVIDER)
                local var_185::Int16 = -27142
                local var_179::Int16 = 4715
                var_179 = Int16(o.pos.y)
                var_185 = if isempty("za3Zkr5m")
                        0
                    else
                        1
                    end
                var_179 = var_179 * var_179
                var_185 = var_179 / var_179
                var_185 = var_179 - var_179
                var_185 = var_185 / var_179
                var_179 = Int16(o.pos.x)
                var_185 = Int16(o.pos.y)
            end
            var_121 = Creature.energyUp(o)
            var_183 = Int16(o.pos.y)
            var_70 = sqrt(if var_183 > 0
                        var_183
                    else
                        var_70
                    end)
            var_70 = pi
            var_183 = Int16(o.pos.x)
            var_70 = pi
            var_183 = Int16(o.color)
            var_121 = Int(Creature.getEnergy(o,Int(var_183),Int(var_183)))
            var_70 = sec(var_70)
            var_121 = Int(Creature.idLeft(o))
            var_183 = Int16(o.color)
            var_70 = csc(103)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_183 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_70 = sin(var_121)
            var_70 = sin(var_183)
            var_108 = if haskey(o.mem,var_108)
                    o.mem[var_108]
                else
                    var_108
                end
            var_136 = Int8(Creature.eatDown(c,o,Int(var_136)))
            var_108 = Int16(o.pos.y)
            var_121 = Creature.energyRight(o)
            var_70 = pi
            var_183 = Int16(o.pos.y)
            var_121 = Creature.energyDown(o)
            var_70 = pi
            var_121 = Int(Creature.idUp(o))
            var_70 = Float64(var_121)
            var_108 = Int16(o.color)
            var_121 = (Int64)(var_121) >> (Int64)(var_121)
            var_70 = pi
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Int(var_121)
            var_183 = (Int16)(var_183) >> (Int16)(var_183)
            if var_70 < var_70
            end
            var_70 = log(if var_70 > 0
                        var_70
                    else
                        var_70
                    end)
            var_70 = csc(var_183)
            var_121 = Creature.energyLeft(o)
            var_121 = Int(Creature.idLeft(o))
            var_70 = if isempty(var_102)
                    0.0
                else
                    1.0
                end
            var_70 = sin(var_136)
            var_121 = Int(Creature.idDown(o))
            var_70 = csc(var_121)
            var_121 = Creature.energyLeft(o)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            return var_50
        end
        function func_48(var_46::String="FR5W3RfT",var_47::String="LWvlurB1")
            local var_191::Int16 = -19266
            local var_135::String = "vshPSVVW"
            local var_114::Int64 = -3602926542828129870
            local var_58::Int8 = 3
            local var_57::Int8 = -47
            local var_54::Int16 = 30799
            local var_72::Int8 = 63
            var_54 = (Int16)(var_54) & (Int16)(var_54)
            o.mem[var_54] = var_54
            for i::Int8 = 1:div(var_58,_LOOP_STEPS_DIVIDER)
                local var_189::Int64 = 6448460198187455959
                var_189 = Creature.energyLeft(o)
            end
            var_49 = (Int64)(var_49) >> (Int64)(var_49)
            var_54 = Int16(o.color)
            if var_54 != var_54
                local var_198::Int64 = 3320819194485767642
            end
            var_58 = (Int8)(var_57) << (Int8)(var_57)
            var_46 = var_47 * var_135
            var_49 = Int(Creature.idRight(o))
            var_57 = Int8(Creature.eatRight(c,o,Int(var_58)))
            var_114 = Creature.energyDown(o)
            var_49 = Int(Creature.idLeft(o))
            var_58 = (Int8)(var_58) << (Int8)(var_57)
            var_114 = Creature.energyRight(o)
            var_57 = Int8(Creature.eatUp(c,o,Int(var_72)))
            var_72 = Int8(Creature.eatRight(c,o,Int(var_58)))
            var_54 = if haskey(o.mem,var_54)
                    o.mem[var_54]
                else
                    var_54
                end
            var_72 = Int8(Creature.eatUp(c,o,Int(var_58)))
            var_54 = Int16(o.color)
            var_57 = Int8(Creature.eatDown(c,o,Int(var_57)))
            var_58 = (Int8)(var_72) | (Int8)(var_58)
            var_72 = Int8(Creature.eatUp(c,o,Int(var_57)))
            var_72 = var_57 % var_72
            for i::Int8 = 1:div(var_57,_LOOP_STEPS_DIVIDER)
                var_129 = Creature.energyUp(o)
                var_129 = var_129 / var_129
                var_129 = Creature.energyUp(o)
            end
            var_114 = Creature.energyRight(o)
            var_58 = if 127 >= var_54
                    Int8(var_54)
                else
                    127
                end
            var_58 = (Int8)(var_58) << (Int8)(var_57)
            o.mem[var_54] = var_54
            var_135 = var_47[1:if length(var_47) > length(var_47) > 0
                            0
                        else
                            div(length(var_47),length(var_47))
                        end]
            var_57 = var_72 + var_57
            var_54 = Int16(o.color)
            var_57 = Int8(Creature.eatRight(c,o,Int(var_57)))
            var_114 = (Int64)(var_114) & (Int64)(var_114)
            if var_46 >= var_46
            end
            var_114 = Int(Creature.idDown(o))
            var_114 = Creature.energyUp(o)
            var_49 = Int(false)
            var_57 = Int8(Creature.eatLeft(c,o,Int(var_72)))
            var_114 = Int(Creature.idLeft(o))
            var_191 = if haskey(o.mem,var_54)
                    o.mem[var_54]
                else
                    var_191
                end
            var_54 = var_54 - var_54
            var_114 = Creature.energyRight(o)
            var_54 = if haskey(o.mem,var_54)
                    o.mem[var_54]
                else
                    var_54
                end
            var_114 = Int(Creature.idLeft(o))
            var_57 = Int8(Creature.eatDown(c,o,Int(var_72)))
            var_49 = Int(Creature.idDown(o))
            var_54 = var_54 % var_54
            var_191 = if haskey(o.mem,var_54)
                    o.mem[var_54]
                else
                    var_191
                end
            var_54 = if 32767 >= 0.400404
                    Int16(round(0.400404))
                else
                    32767
                end
            var_46 = string(var_72)
            var_46 = string(0.428206)
            var_54 = if 32767 >= var_54
                    Int16(var_54)
                else
                    32767
                end
            var_54 = Int16(o.pos.y)
            var_57 = var_57 + var_72
            for i::Int8 = 1:div(var_58,_LOOP_STEPS_DIVIDER)
                local var_182::String = "KTNV4q4q"
            end
            var_114 = Int(Creature.idLeft(o))
            var_58 = var_57 - var_57
            var_47 = string(var_46)
            var_54 = if isempty(var_46)
                    0
                else
                    1
                end
            var_54 = Int16(o.color)
            var_54 = Int16(o.color)
            var_114 = Creature.energyUp(o)
            var_114 = var_114 / var_114
            var_54 = Int16(o.pos.x)
            var_57 = (Int8)(var_72) >> (Int8)(var_57)
            var_191 = (Int16)(var_54) >> (Int16)(var_191)
            var_58 = Int8(Creature.eatRight(c,o,Int(var_57)))
            var_114 = Int(Creature.idUp(o))
            if var_54 > var_54
            end
            var_114 = (Int64)(var_114) | (Int64)(var_114)
            o.mem[var_54] = var_54
            var_114 = Int(Creature.idUp(o))
            var_114 = Int(Creature.getEnergy(o,Int(var_54),Int(var_54)))
            var_114 = Creature.energyRight(o)
            var_114 = Int(Creature.idUp(o))
            var_72 = Int8(Creature.eatRight(c,o,Int(var_57)))
            var_114 = Int(Creature.idDown(o))
            var_114 = Int(false)
            var_57 = Int8(Creature.eatDown(c,o,Int(var_58)))
            var_57 = Int8(Creature.eatLeft(c,o,Int(var_72)))
            var_72 = Int8(Creature.eatDown(c,o,Int(var_72)))
            var_114 = Int(Creature.idUp(o))
            var_114 = Int(Creature.idLeft(o))
            var_54 = Int16(o.color)
            var_49 = Int(Creature.idDown(o))
            o.mem[var_54] = var_54
            for i::Int8 = 1:div(var_58,_LOOP_STEPS_DIVIDER)
                local var_133::String = "hhg5nbvc"
            end
            var_54 = (Int16)(var_54) & (Int16)(var_54)
            o.mem[var_191] = var_54
            var_58 = (Int8)(var_58) $ (Int8)(var_58)
            var_114 = Int(Creature.getEnergy(o,Int(var_54),Int(var_54)))
            for i::Int8 = 1:div(var_57,_LOOP_STEPS_DIVIDER)
            end
            var_46 = var_47 * var_46
            for i::Int8 = 1:div(var_72,_LOOP_STEPS_DIVIDER)
            end
            var_57 = Int8(Creature.eatUp(c,o,Int(var_72)))
            var_54 = if 32767 >= var_57
                    Int16(var_57)
                else
                    32767
                end
            var_54 = var_191 + var_54
            var_54 = Int16(o.color)
            var_114 = (Int64)(var_114) | (Int64)(var_114)
            return var_46
        end
        local var_12::Int64 = -2313843942701862767
        local var_2::Int8 = 110
        var_119 = (Int8)(var_119) >> (Int8)(var_90)
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        if var_24 > var_24
            var_123 = string(-5537589781385576577)
        end
        var_24 = Creature.stepDown(o)
        var_78 = Int16(o.pos.y)
        var_24 = Creature.stepDown(o)
        var_24 = var_12 < (Int64)(1)
        var_24 = var_24 & var_24
        var_2 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_2 > (Int8)(0)
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_90 = var_93 * var_93
        var_24 = Creature.stepDown(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_119 = var_93 % var_2
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        var_24 = isempty("5DYJZqc4")
        var_24 = Creature.stepDown(o)
        var_78 = Int16(o.pos.y)
        var_78 = if var_24
                1
            else
                0
            end
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_12 = Int(Creature.idUp(o))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_24 = var_24 | var_24
        var_78 = var_78 * var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = (Int8)(var_2) $ (Int8)(var_2)
        var_24 = isempty("hZwpjLRh")
        var_12 = Int(var_24)
        var_119 = Int8(Creature.eatDown(c,o,Int(var_2)))
        var_12 = Int(Creature.idUp(o))
        var_78 = Int16(o.pos.x)
        var_12 = var_12 / var_12
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_24 = (Bool)(var_24) & (Bool)(var_24)
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_93 = (Int8)(var_119) & (Int8)(var_119)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_93 = var_119 % var_93
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = Creature.stepRight(o)
        var_12 = Int(Creature.idUp(o))
        var_12 = Creature.energyRight(o)
        var_24 = var_90 < (Int8)(1)
        var_24 = Creature.stepUp(o)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_138::String = "6TPIfzge"
            var_138 = var_138 * var_138
        end
        var_93 = (Int8)(var_119) << (Int8)(var_93)
        var_24 = 0.0625898 > (Float64)(0)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_24 = var_12 > (Int64)(0)
        var_32 = if isempty("CzMXU725")
                0
            else
                1
            end
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_12 = Int(Creature.idDown(o))
        var_24 = Creature.stepUp(o)
        var_78 = Int16(o.color)
        var_90 = (Int8)(var_2) << (Int8)(var_2)
        var_78 = if 32767 >= var_2
                Int16(var_2)
            else
                32767
            end
        var_24 = 0.523591 > (Float64)(0)
        var_12 = if isempty("xwCXVPXV")
                0
            else
                1
            end
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_12 = Int(0.602117)
        var_12 = Creature.energyDown(o)
        var_24 = Creature.stepUp(o)
        var_93 = (Int8)(var_90) $ (Int8)(var_119)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_12 = Creature.energyDown(o)
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_93 = Int8(Creature.eatUp(c,o,Int(var_90)))
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_12 = Creature.energyUp(o)
        var_24 = Creature.stepLeft(o)
        var_90 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_119 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = isempty("nwIMilB8")
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_12 = Creature.energyUp(o)
        var_24 = isempty("bjQI3wgH")
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_90 = (Int8)(var_119) >> (Int8)(var_2)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_12 = Int(Creature.idDown(o))
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_156::String = "BXjWWqaP"
        end
        var_24 = Creature.stepUp(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = var_24 & var_24
        var_24 = isempty("E2PWbuDj")
        var_24 = var_12 < (Int64)(1)
        var_78 = func_153(var_78)
        var_12 = Int(Creature.idDown(o))
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = Int(Creature.idDown(o))
        var_24 = isempty("zTJQrDX1")
        var_24 = isempty("7sLaCsBE")
        if var_24 <= var_24
        end
        var_12 = Int(0.67598)
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_24 * var_24
        var_12 = Int(Creature.idLeft(o))
        var_78 = Int16(o.color)
        o.mem[var_78] = var_78
        var_24 = var_12 > (Int64)(0)
        var_12 = Int(Creature.idRight(o))
        var_78 = Int16(o.pos.x)
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = Int(Creature.idLeft(o))
        var_24 = isempty("Eh3bEWfA")
        var_24 = Creature.stepUp(o)
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Creature.energyLeft(o)
        var_90 = if var_24
                1
            else
                0
            end
        var_12 = Creature.energyUp(o)
        var_93 = var_2 - var_90
        if var_24 != var_24
        end
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_93 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_78 = Int16(o.color)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = var_78 - var_78
        return true
    end),[300,500,50,0,1,1,1],46,404,0,50981,0x0000000f,Dict{Int16,Int16}(),[1364,198],48138,50,561),RpcApi.SimpleOrganism(0x0000000000046f35,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_199::Int64 = -4966622752543147897
        local var_191::Bool = false
        function func_182(var_180::String="GBmFCDNF",var_181::Int16=22381)
            local var_202::Int64 = -6081476713843739485
            local var_185::Float64 = 0.192684
            var_185 = cot(35)
            o.mem[var_181] = var_181
            var_185 = csc(var_185)
            var_185 = pi
            var_185 = log(if var_185 > 0
                        var_185
                    else
                        var_185
                    end)
            var_181 = Int16(o.color)
            var_185 = sin(1560675702056248875)
            var_202 = if isempty(var_180)
                    0
                else
                    1
                end
            var_181 = var_181 + var_181
            var_181 = if 32767 >= var_181
                    Int16(var_181)
                else
                    32767
                end
            var_202 = Int(Creature.getEnergy(o,Int(var_181),Int(var_181)))
            var_185 = cot(var_181)
            var_180 = string(var_185)
            var_181 = (Int16)(var_181) & (Int16)(var_181)
            o.mem[var_181] = var_181
            var_181 = Int16(o.pos.x)
            var_185 = csc(6599264619854227740)
            var_202 = Int(Creature.idLeft(o))
            var_181 = Int16(o.color)
            var_181 = if 32767 >= 40
                    Int16(40)
                else
                    32767
                end
            if var_180 <= var_180
                local var_204::Int16 = -4022
            end
            var_181 = var_181 - var_181
            var_185 = sec(-46)
            var_185 = tan(-2882767664638605688)
            var_202 = var_202 % var_202
            var_180 = var_180 * var_180
            var_181 = if isempty(var_180)
                    0
                else
                    1
                end
            var_181 = if isempty(var_180)
                    0
                else
                    1
                end
            if var_202 == var_202
            end
            var_181 = if haskey(o.mem,var_181)
                    o.mem[var_181]
                else
                    var_181
                end
            var_185 = csc(531358632619388800)
            var_185 = sec(var_181)
            var_185 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = sec(var_185)
            var_185 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_181 = Int16(o.pos.x)
            var_185 = cos(-4346608255505395844)
            var_185 = Float64(var_185)
            var_181 = if 32767 >= var_181
                    Int16(var_181)
                else
                    32767
                end
            var_181 = Int16(o.color)
            var_181 = Int16(o.pos.x)
            o.mem[var_181] = var_181
            var_181 = Int16(o.pos.x)
            var_185 = Float64(5319409292578217414)
            var_181 = Int16(o.pos.x)
            var_185 = Float64(-27)
            var_202 = var_202 / var_202
            var_181 = Int16(o.color)
            return var_180
        end
        function func_166(var_165::Float64=0.543507)
            local var_195::Int8 = 32
            local var_207::String = "FxBDakVw"
            var_195 = Int8(Creature.eatRight(c,o,Int(var_195)))
            var_195 = Int8(Creature.eatDown(c,o,Int(var_195)))
            for i::Int8 = 1:div(var_195,_LOOP_STEPS_DIVIDER)
            end
            var_165 = Float64(true)
            var_165 = tan(var_195)
            if var_165 < var_165
            end
            var_195 = Int8(Creature.eatRight(c,o,Int(var_195)))
            var_165 = var_165 / var_165
            var_195 = Int8(Creature.eatRight(c,o,Int(var_195)))
            var_165 = Float64(var_165)
            var_195 = var_195 * var_195
            var_165 = tan(var_195)
            var_195 = Int8(Creature.eatLeft(c,o,Int(var_195)))
            var_195 = (Int8)(var_195) >> (Int8)(var_195)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_102::String = "XvKhhYqE"
            var_128 = isempty(var_102)
            var_163 = if var_128
                    1
                else
                    0
                end
            var_70 = sec(var_152)
            var_161 = Int(Creature.idLeft(o))
            var_128 = var_128 | var_128
            var_128 = var_152 > (Int16)(0)
            var_128 = Bool(abs(var_128 - var_128))
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_161 = Creature.energyLeft(o)
            var_137 = tan(var_163)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_121 < (Int64)(1)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_152 = (Int16)(var_152) & (Int16)(var_152)
            if var_102 >= var_102
                local var_201::Int16 = 6095
            end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_121 = Creature.energyLeft(o)
            var_128 = var_70 < (Float64)(1)
            var_128 = var_163 < (Int8)(1)
            var_128 = Creature.stepRight(o)
            o.mem[var_108] = var_152
            var_161 = Creature.energyUp(o)
            var_163 = var_163 - var_163
            var_128 = (Bool)(var_128) & (Bool)(var_128)
            var_163 = if 127 >= var_70
                    Int8(round(var_70))
                else
                    127
                end
            var_152 = var_108 % var_152
            var_70 = sin(var_161)
            var_161 = Int(Creature.idRight(o))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Int(Creature.idUp(o))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_152 = var_152 + var_152
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_152 = var_152 + var_152
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.idLeft(o))
            var_70 = sin(var_163)
            var_137 = log(if var_163 > 0
                        var_163
                    else
                        var_137
                    end)
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_137 = csc(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_121 = Creature.energyLeft(o)
            var_102 = string(var_70)
            var_70 = pi
            var_161 = Int(var_163)
            var_152 = Int16(o.pos.y)
            var_128 = var_128 & var_128
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_121 = Creature.energyLeft(o)
            var_152 = (Int16)(var_152) $ (Int16)(var_152)
            var_152 = Int16(o.pos.x)
            var_102 = string(var_70)
            var_128 = Creature.stepDown(o)
            var_128 = !var_128
            var_137 = csc(var_121)
            var_70 = sin(var_70)
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = var_137 / var_137
            if var_121 <= var_161
                local var_193::Int8 = 79
                var_193 = Int8(Creature.eatUp(c,o,Int(var_193)))
            end
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_70 = var_137 - var_137
            var_128 = var_128 | var_128
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_137 = sec(var_121)
            var_128 = Creature.stepUp(o)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_161 = Int(var_161)
            var_152 = (Int16)(var_152) | (Int16)(var_152)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_137 = cot(var_163)
            var_128 = Creature.stepUp(o)
            var_152 = (Int16)(var_152) & (Int16)(var_152)
            var_161 = Creature.energyDown(o)
            o.mem[var_152] = var_152
            var_128 = Creature.stepUp(o)
            var_137 = Float64(var_128)
            var_121 = Creature.energyRight(o)
            var_137 = sec(var_70)
            var_137 = Float64(var_152)
            var_121 = Int(Creature.idRight(o))
            var_137 = Float64(var_152)
            if var_70 < var_137
                local var_205::Bool = false
                var_183 = string(false)
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) & (Bool)(var_128)
            var_161 = Int(var_163)
            var_161 = Creature.energyLeft(o)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            if var_128 != var_128
            end
            var_128 = Creature.stepRight(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_161 = Int(Creature.idUp(o))
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_152 = (Int16)(var_152) & (Int16)(var_152)
            var_70 = Float64(var_161)
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_70 = cos(var_121)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_102 = string(var_163)
            var_121 = Creature.energyLeft(o)
            var_70 = sin(var_161)
            var_102 = string(var_163)
            var_163 = var_163 + var_163
            var_121 = (Int64)(var_121) | (Int64)(var_121)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_206::Int16 = -21899
            var_198 = (Int64)(var_198) $ (Int64)(var_198)
            var_198 = Int(Creature.getEnergy(o,Int(var_206),Int(var_206)))
            var_198 = Creature.energyDown(o)
            var_198 = Creature.energyUp(o)
            var_198 = Creature.energyRight(o)
            var_50 = var_50[if length(var_50) > length(var_50)
                            1
                        else
                            length(var_50)
                        end:if length(var_50) > length(var_50) > 0
                            0
                        else
                            end
                        end]
            var_206 = Int16(o.color)
            var_206 = Int16(o.pos.y)
            var_206 = if haskey(o.mem,var_206)
                    o.mem[var_206]
                else
                    var_206
                end
            var_198 = if isempty(var_50)
                    0
                else
                    1
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_78 = Int16(o.pos.x)
        if var_24 > var_24
            local var_176::Bool = true
            var_176 = 0.120252 < (Float64)(1)
        end
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_78 = Int16(o.pos.x)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_199 = Creature.energyLeft(o)
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_78 = Int16(o.pos.x)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_90 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_78 = Int16(o.pos.y)
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        o.mem[var_78] = var_78
        var_24 = var_90 < (Int8)(1)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_203::Int8 = -119
        end
        var_24 = Creature.stepUp(o)
        var_158 = isempty("nd3LKWqq")
        o.mem[var_78] = var_78
        var_78 = var_78 % var_78
        var_199 = Int(Creature.idDown(o))
        if var_158 > var_24
            local var_197::Float64 = 0.550085
        end
        var_158 = isempty("TNPVfOZ0")
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_93 = (Int8)(var_2) >> (Int8)(var_2)
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        var_78 = Int16(o.color)
        var_24 = Creature.stepRight(o)
        var_24 = isempty("ODobJIvF")
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_2)))
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        var_119 = if isempty("lJmffQ3s")
                0
            else
                1
            end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_200::Int64 = -8501368530849704668
            var_200 = Creature.energyUp(o)
            var_200 = Int(Creature.idLeft(o))
            var_187 = var_187 + var_187
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        var_78 = Int16(o.color)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        o.mem[var_78] = var_78
        var_78 = if isempty("olbuDv7w")
                0
            else
                1
            end
        o.mem[var_78] = var_78
        var_78 = Int16(o.color)
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_12 = Int(Creature.idDown(o))
        o.mem[var_78] = var_78
        if var_24 <= var_24
            local var_150::String = "qfkghmc3"
        end
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_24 = (Bool)(var_24) & (Bool)(var_158)
        var_191 = isempty("BEyFKihk")
        var_78 = if 32767 >= -8179538222314297200
                Int16(-8179538222314297200)
            else
                32767
            end
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_199 = Creature.energyDown(o)
        var_90 = Int8(Creature.eatRight(c,o,Int(var_119)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],42,45,0,50037,0x0000000f,Dict{Int16,Int16}(),[253,787],40718,50,349),RpcApi.SimpleOrganism(0x0000000000046f6f,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_191::Bool = false
        function func_182(var_180::String="GBmFCDNF",var_181::Int16=22381)
            local var_205::Float64 = 0.90613
            local var_185::Float64 = 0.192684
            var_181 = Int16(o.pos.y)
            var_185 = pi
            var_205 = sin(-46)
            o.mem[var_181] = var_181
            if var_185 <= var_185
            end
            var_181 = Int16(o.color)
            var_185 = cos(var_181)
            var_185 = log(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = log(if var_185 > 0
                        var_185
                    else
                        var_185
                    end)
            var_185 = cos(112)
            var_185 = csc(6599264619854227740)
            var_181 = Int16(o.color)
            var_181 = if 32767 >= 40
                    Int16(40)
                else
                    32767
                end
            var_185 = pi
            var_181 = Int16(o.pos.y)
            var_185 = cos(var_185)
            var_181 = var_181 / var_181
            var_185 = pi
            var_185 = log(if var_185 > 0
                        var_185
                    else
                        var_185
                    end)
            var_181 = Int16(o.color)
            var_185 = csc(531358632619388800)
            var_185 = sin(-6189380764600129463)
            var_185 = cot(var_185)
            var_180 = string(-50)
            var_185 = cot(58)
            var_185 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = Float64(-7262383213745081321)
            var_185 = sec(5540477798517610965)
            var_181 = var_181 / var_181
            var_185 = Float64(-3140162855464852850)
            var_185 = pi
            var_181 = Int16(o.color)
            var_181 = Int16(o.pos.x)
            var_181 = if haskey(o.mem,var_181)
                    o.mem[var_181]
                else
                    var_181
                end
            var_181 = Int16(o.pos.y)
            var_180 = var_180[1:if length(var_180) > length(var_180) > 0
                            0
                        else
                            div(length(var_180),length(var_180))
                        end]
            if var_185 !== var_185
                var_197 = Creature.energyUp(o)
            end
            var_205 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_205
                    end)
            var_185 = Float64(5319409292578217414)
            var_181 = Int16(o.pos.x)
            var_185 = Float64(-85)
            var_185 = cos(89)
            if var_181 < var_181
                var_194 = (Int64)(var_194) << (Int64)(var_194)
            end
            var_185 = log(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = Float64(-24)
            var_185 = tan(7037638296861469391)
            return var_180
        end
        function func_166(var_165::Float64=0.543507)
            local var_198::Int16 = -17284
            var_198 = Int16(o.pos.x)
            var_165 = sin(var_198)
            var_198 = Int16(o.pos.y)
            var_165 = sin(-81)
            var_198 = Int16(o.pos.y)
            var_165 = sqrt(if var_198 > 0
                        var_198
                    else
                        var_165
                    end)
            var_198 = if haskey(o.mem,var_198)
                    o.mem[var_198]
                else
                    var_198
                end
            var_165 = cos(var_165)
            var_198 = if haskey(o.mem,var_198)
                    o.mem[var_198]
                else
                    var_198
                end
            var_165 = cot(-88)
            var_165 = tan(-7920362842195276411)
            var_198 = if haskey(o.mem,var_198)
                    o.mem[var_198]
                else
                    var_198
                end
            var_165 = cos(var_198)
            var_198 = Int16(o.pos.x)
            var_198 = if haskey(o.mem,var_198)
                    o.mem[var_198]
                else
                    var_198
                end
            var_198 = Int16(o.pos.x)
            var_165 = pi
            var_165 = Float64(var_198)
            var_198 = (Int16)(var_198) << (Int16)(var_198)
            o.mem[var_198] = var_198
            var_165 = cot(var_198)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_206::Bool = false
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_102::String = "XvKhhYqE"
            var_128 = isempty(var_102)
            var_163 = if var_128
                    1
                else
                    0
                end
            var_70 = sec(var_152)
            var_128 = var_128 | var_128
            var_128 = var_152 > (Int16)(0)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_152 = var_152 - var_152
            var_128 = Creature.stepLeft(o)
            var_128 = var_121 < (Int64)(1)
            var_137 = tan(var_163)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            if var_102 >= var_102
            end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_121 = Creature.energyLeft(o)
            var_128 = var_70 < (Float64)(1)
            var_128 = var_163 < (Int8)(1)
            var_128 = Creature.stepRight(o)
            o.mem[var_108] = var_152
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
                var_199 = Creature.energyLeft(o)
            end
            var_161 = Creature.energyUp(o)
            var_161 = Creature.energyDown(o)
            var_163 = var_163 - var_163
            var_128 = (Bool)(var_128) & (Bool)(var_128)
            var_70 = csc(var_152)
            var_152 = var_108 % var_152
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_161 = Int(Creature.idRight(o))
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Int(Creature.idUp(o))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_152 = var_152 + var_152
            var_163 = if 127 >= var_70
                    Int8(round(var_70))
                else
                    127
                end
            var_152 = var_152 + var_152
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = pi
            var_70 = sec(var_70)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_121 = Creature.energyLeft(o)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Creature.energyLeft(o)
                var_135 = Int(var_135)
                var_135 = Int(Creature.idRight(o))
                var_127 = sin(var_135)
                var_135 = Creature.energyRight(o)
                var_135 = Creature.energyDown(o)
                var_118 = string(0.169118)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idUp(o))
                var_135 = Int(Creature.idDown(o))
                var_135 = Creature.energyUp(o)
                var_134 = string(0.174223)
                var_135 = Int(Creature.idUp(o))
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) & (Int64)(var_135)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_135 = Creature.energyDown(o)
            end
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_128 = Creature.stepUp(o)
            var_161 = Int(var_163)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_161 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_161 = (Int64)(var_161) << (Int64)(var_161)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_102 = string(var_70)
            var_128 = (Bool)(var_128) $ (Bool)(var_128)
            var_128 = !var_128
            var_137 = csc(var_121)
            var_70 = sin(var_70)
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_152 = if 32767 >= var_161
                    Int16(var_161)
                else
                    32767
                end
            var_70 = var_137 - var_137
            var_128 = var_128 | var_128
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_137 = sec(var_121)
            var_128 = Creature.stepUp(o)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_161 = Int(var_161)
            var_163 = (Int8)(var_163) $ (Int8)(var_163)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_137 = cot(var_163)
            var_161 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepUp(o)
            var_137 = Float64(var_128)
            var_121 = Creature.energyRight(o)
            var_137 = Float64(var_152)
            var_163 = var_163 + var_163
            var_121 = Int(Creature.idRight(o))
            if var_70 < var_137
                local var_201::Int16 = 6554
                var_201 = var_201 * var_201
                var_183 = string(false)
            end
            var_128 = var_128
            var_161 = Int(Creature.idLeft(o))
            var_152 = var_152 - var_152
            var_161 = Creature.energyRight(o)
            var_70 = csc(var_70)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_161 = Creature.energyDown(o)
            var_137 = sec(var_152)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_163 = var_163 % var_163
            var_163 = if isempty(var_102)
                    0
                else
                    1
                end
            var_70 = Float64(var_161)
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_70 = cos(var_121)
            var_152 = Int16(o.pos.y)
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_161 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_102 = string(var_102)
            var_108 = var_108 + var_108
            var_161 = Creature.energyUp(o)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = sin(var_161)
            var_102 = string(var_163)
            var_121 = (Int64)(var_121) | (Int64)(var_121)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        if var_24 > var_24
            var_176 = Creature.stepDown(o)
            var_130 = (Int8)(var_130) $ (Int8)(var_130)
            var_176 = 0.120252 < (Float64)(1)
        end
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_78 = Int16(o.pos.x)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_119 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_78 = Int16(o.pos.x)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_158 = Creature.stepRight(o)
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_196::Float64 = 0.884324
            local var_190::Bool = true
            var_196 = var_196 - var_196
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_158 = isempty("TNPVfOZ0")
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_191 = var_90 > (Int8)(0)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_93 = (Int8)(var_2) >> (Int8)(var_2)
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        var_78 = Int16(o.color)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_187 = var_187 + var_187
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_78 = if isempty("olbuDv7w")
                0
            else
                1
            end
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = Int(Creature.idDown(o))
        o.mem[var_78] = var_78
        o.mem[var_78] = var_78
        if var_24 <= var_24
            local var_150::String = "qfkghmc3"
        end
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_24 = (Bool)(var_24) & (Bool)(var_158)
        var_24 = isempty("x8uDypUZ")
        var_78 = if 32767 >= -8179538222314297200
                Int16(-8179538222314297200)
            else
                32767
            end
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_24 = var_24 & var_158
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        return true
    end),[300,500,50,0,1,1,1],44,612,0,49678,0x0000000f,Dict{Int16,Int16}(),[1047,241],35918,50,359),RpcApi.SimpleOrganism(0x0000000000046f79,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_166(var_165::Float64=0.543507)
            local var_205::Float64 = 0.928307
            local var_204::Int16 = 7977
            local var_192::Int64 = 6913464341823033563
            var_165 = csc(-6562)
            var_165 = cos(28020)
            var_192 = Int(Creature.idLeft(o))
            var_165 = cot(var_165)
            var_192 = (Int64)(var_192) $ (Int64)(var_192)
            var_165 = csc(var_165)
            var_165 = var_165 / var_165
            var_192 = Int(var_192)
            var_192 = var_192 + var_192
            var_165 = tan(-3779)
            var_204 = if haskey(o.mem,var_204)
                    o.mem[var_204]
                else
                    var_204
                end
            var_192 = Int(Creature.idUp(o))
            var_192 = Int(Creature.idDown(o))
            var_165 = cos(var_192)
            var_192 = Int(Creature.getEnergy(o,Int(var_204),Int(var_204)))
            var_165 = if isempty("2eCdmP6S")
                    0.0
                else
                    1.0
                end
            var_165 = tan(var_192)
            var_165 = tan(-73)
            var_165 = cos(3900)
            var_165 = pi
            var_165 = sec(-112)
            var_192 = Creature.energyUp(o)
            var_205 = log(if var_165 > 0
                        var_165
                    else
                        var_205
                    end)
            var_192 = (Int64)(var_192) | (Int64)(var_192)
            var_165 = tan(var_165)
            var_192 = Int(23173)
            var_165 = sec(var_165)
            var_165 = Float64(false)
            var_192 = Int(Creature.idRight(o))
            var_192 = Int(Creature.idRight(o))
            var_165 = log(if var_192 > 0
                        var_192
                    else
                        var_165
                    end)
            var_165 = pi
            var_192 = Creature.energyDown(o)
            var_204 = (Int16)(var_204) >> (Int16)(var_204)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_203::Int16 = 11353
            local var_200::Bool = true
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_163 = if var_128
                    1
                else
                    0
                end
            var_152 = Int16(o.pos.y)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_128 = var_121 < (Int64)(1)
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            if var_128 == var_200
            end
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = cot(var_152)
            var_121 = Int(Creature.idRight(o))
            var_121 = Creature.energyLeft(o)
            var_128 = var_70 < (Float64)(1)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_163 < (Int8)(1)
            o.mem[var_108] = var_152
            o.mem[var_152] = var_152
            var_163 = var_163 - var_163
            var_163 = if 127 >= var_163
                    Int8(var_163)
                else
                    127
                end
            o.mem[var_152] = var_152
            var_152 = var_108 % var_152
            var_161 = Creature.energyRight(o)
            var_200 = Creature.stepRight(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_152 = Int16(o.color)
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Creature.energyLeft(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = csc(var_163)
            var_152 = Int16(o.pos.x)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_70 = tan(-41)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_121 = Int(Creature.getEnergy(o,Int(var_203),Int(var_152)))
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_161 = var_121 % var_161
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepDown(o)
            var_137 = var_137 * var_70
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Int(var_135)
                var_118 = var_134 * var_134
                var_135 = Int(var_135)
                var_127 = sin(var_135)
                var_191 = !var_191
                var_135 = Creature.energyDown(o)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idDown(o))
                var_118 = var_118 * var_118
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_118 = string(var_118)
                var_135 = (Int64)(var_135) & (Int64)(var_135)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_191 = Creature.stepLeft(o)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_118 = var_134[1:if length(var_118) > length(var_134) > 0
                                0
                            else
                                div(length(var_134),length(var_118))
                            end]
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_70 = sin(var_163)
            var_70 = var_137 % var_70
            var_128 = var_163 > (Int8)(0)
            var_137 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            var_70 = sin(var_70)
            if var_128 >= var_128
            end
            var_121 = Int(Creature.idLeft(o))
            var_121 = Creature.energyDown(o)
            var_70 = var_137 / var_137
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            if var_121 <= var_161
            end
            var_70 = var_137 - var_137
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) | (Bool)(var_128)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_121 = (Int64)(var_161) | (Int64)(var_161)
            var_152 = (Int16)(var_152) << (Int16)(var_152)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_121 = Int(Creature.idRight(o))
            var_102 = string(var_102)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = Creature.stepUp(o)
            var_200 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            o.mem[var_152] = var_152
            var_121 = Creature.energyUp(o)
            if var_70 < var_137
                local var_183::String = "RYYi6iTt"
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepDown(o)
            var_161 = Int(var_163)
            var_70 = cot(var_121)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_152 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                var_193 = var_193 / var_193
            end
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_203 = (Int16)(var_152) >> (Int16)(var_203)
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_161 = Int(Creature.idUp(o))
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.color)
            var_70 = cot(var_152)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_197::Int16 = 12072
            var_197 = var_197 * var_197
            var_197 = (Int16)(var_197) $ (Int16)(var_197)
            var_197 = if 32767 >= 0.706169
                    Int16(round(0.706169))
                else
                    32767
                end
            var_197 = Int16(o.pos.y)
            var_197 = if 32767 >= var_197
                    Int16(var_197)
                else
                    32767
                end
            var_50 = var_50[1:if length(var_50) > length(var_50)
                            0
                        else
                            length(var_50) - length(var_50)
                        end]
            var_197 = if haskey(o.mem,var_197)
                    o.mem[var_197]
                else
                    var_197
                end
            var_197 = var_197 - var_197
            var_197 = if haskey(o.mem,var_197)
                    o.mem[var_197]
                else
                    var_197
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_158 = Creature.stepDown(o)
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_202::Float64 = 0.0731271
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_78 = if 32767 >= 0.0238714
                Int16(round(0.0238714))
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_201::Int16 = -24565
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        o.mem[var_78] = var_78
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_78 < (Int16)(1)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_158 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_78 = Int16(o.color)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_199::Float64 = 0.217299
            var_199 = cos(var_199)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_187::Float64 = 0.778312
            var_187 = var_187 + var_187
            var_187 = cot(7405634173161602863)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepLeft(o)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        var_24 = Creature.stepLeft(o)
        var_78 = Int16(o.pos.y)
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_93 = var_93 * var_93
        var_78 = Int16(o.pos.y)
        var_78 = Int16(o.pos.y)
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_78 < (Int16)(1)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = Creature.stepRight(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],13,654,0,49379,0x0000000f,Dict{Int16,Int16}(),[337,95],35458,50,348),RpcApi.SimpleOrganism(0x0000000000046eca,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_166(var_165::Float64=0.543507)
            local var_192::Int64 = 6913464341823033563
            var_165 = cos(28020)
            var_192 = Int(Creature.idLeft(o))
            var_165 = csc(119)
            var_165 = sin(var_192)
            var_165 = cot(-6517)
            var_192 = Creature.energyDown(o)
            var_192 = Int(Creature.idUp(o))
            var_192 = Int(Creature.idDown(o))
            var_165 = cos(var_192)
            var_165 = tan(var_165)
            var_165 = tan(var_192)
            var_192 = (Int64)(var_192) $ (Int64)(var_192)
            var_165 = cos(3900)
            var_192 = Creature.energyDown(o)
            var_192 = Int(Creature.idLeft(o))
            var_192 = Creature.energyUp(o)
            var_192 = (Int64)(var_192) | (Int64)(var_192)
            var_165 = tan(var_165)
            var_192 = Int(Creature.idLeft(o))
            if var_192 > var_192
            end
            var_192 = Int(Creature.idDown(o))
            var_192 = Int(Creature.idRight(o))
            var_192 = Creature.energyLeft(o)
            var_165 = sec(-13609)
            var_165 = var_165 / var_165
            var_165 = var_165 * var_165
            var_165 = cot(99)
            var_192 = Int(false)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_200::Bool = true
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_163 = if var_128
                    1
                else
                    0
                end
            var_152 = Int16(o.pos.y)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_121 = Int(Creature.idRight(o))
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            if var_128 == var_200
            end
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = cot(var_152)
            var_121 = Int(Creature.idRight(o))
            var_121 = Creature.energyLeft(o)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_128 = var_70 < (Float64)(1)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_163 < (Int8)(1)
            o.mem[var_108] = var_152
            o.mem[var_152] = var_152
            var_200 = Creature.stepDown(o)
            var_163 = if 127 >= var_163
                    Int8(var_163)
                else
                    127
                end
            o.mem[var_152] = var_152
            var_152 = var_108 % var_152
            var_161 = Creature.energyRight(o)
            var_200 = Creature.stepRight(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_152 = Int16(o.color)
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Creature.energyLeft(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = csc(var_163)
            var_137 = sin(var_161)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_121 = var_161 / var_121
            var_70 = tan(-41)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = (Bool)(var_128) $ (Bool)(var_200)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_161 = var_121 % var_161
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepDown(o)
            var_137 = var_137 * var_70
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Int(var_135)
                var_135 = Int(Creature.idRight(o))
                var_135 = Int(var_135)
                var_127 = sin(var_135)
                var_191 = !var_191
                var_135 = Creature.energyDown(o)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idDown(o))
                var_118 = var_118 * var_118
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_118 = string(var_118)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_191 = Creature.stepLeft(o)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_118 = var_134[1:if length(var_118) > length(var_134) > 0
                                0
                            else
                                div(length(var_134),length(var_118))
                            end]
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_70 = sin(var_163)
            var_70 = var_137 % var_70
            var_152 = var_152 - var_152
            var_70 = sin(var_70)
            var_137 = cot(var_161)
            if var_128 >= var_128
            end
            var_121 = Int(Creature.idLeft(o))
            var_121 = Creature.energyDown(o)
            var_70 = var_137 / var_137
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            if var_121 <= var_161
            end
            var_70 = var_137 - var_137
            var_137 = sec(var_121)
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) | (Bool)(var_128)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_152 = Int16(o.color)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_121 = (Int64)(var_161) | (Int64)(var_161)
            var_152 = (Int16)(var_152) << (Int16)(var_152)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_102 = string(var_102)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = Creature.stepUp(o)
            var_121 = Int(Creature.idDown(o))
            var_200 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_137 = Float64(var_152)
            var_121 = Creature.energyUp(o)
            if var_70 < var_137
                local var_183::String = "RYYi6iTt"
            end
            var_152 = Int16(o.pos.x)
            var_128 = Creature.stepDown(o)
            var_161 = Int(var_163)
            var_70 = cot(var_121)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_152 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                var_193 = var_193 / var_193
            end
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.color)
            var_70 = cot(var_152)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_204::String = "tkRAKGMz"
            local var_203::Int8 = 22
            local var_197::Int16 = 12072
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            o.mem[var_197] = var_197
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_203 = if 127 >= 618520776802013943
                    Int8(618520776802013943)
                else
                    127
                end
            var_197 = Int16(o.color)
            o.mem[var_197] = var_197
            var_197 = Int16(o.pos.x)
            var_203 = var_203 - var_203
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_197 = (Int16)(var_197) & (Int16)(var_197)
            var_203 = if 127 >= 0.240899
                    Int8(round(0.240899))
                else
                    127
                end
            var_203 = (Int8)(var_203) | (Int8)(var_203)
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_24 = isempty("TksqxH1y")
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_119 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_202::Float64 = 0.0731271
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        var_78 = Int16(o.pos.y)
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_78 < (Int16)(1)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_78 = Int16(o.color)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_199::Float64 = 0.217299
            var_199 = cos(var_199)
            var_199 = tan(4909025479825310100)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_187::Float64 = 0.778312
            var_187 = var_187 + var_187
            var_187 = cot(7405634173161602863)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepLeft(o)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        var_24 = Creature.stepLeft(o)
        var_78 = Int16(o.pos.y)
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_93 = var_93 * var_93
        var_78 = Int16(o.pos.y)
        var_78 = Int16(o.pos.y)
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_78 < (Int16)(1)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = Creature.stepRight(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],13,654,0,47342,0x0000000f,Dict{Int16,Int16}(),[917,535],48518,50,347),RpcApi.SimpleOrganism(0x0000000000046eea,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_191::Bool = false
        function func_182(var_180::String="GBmFCDNF",var_181::Int16=22381)
            var_181 = Int16(o.pos.y)
            var_185 = pi
            var_185 = csc(-53)
            var_185 = pi
            var_181 = (Int16)(var_181) & (Int16)(var_181)
            var_181 = Int16(o.pos.y)
            var_185 = cos(var_181)
            var_185 = log(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = cos(var_185)
            var_185 = log(if var_185 > 0
                        var_185
                    else
                        var_185
                    end)
            var_181 = Int16(o.pos.y)
            var_185 = cos(112)
            var_185 = csc(6599264619854227740)
            var_181 = Int16(o.color)
            var_180 = string(var_180)
            var_181 = (Int16)(var_181) >> (Int16)(var_181)
            var_185 = pi
            var_181 = Int16(o.pos.y)
            var_185 = cos(var_185)
            var_181 = Int16(o.color)
            var_181 = var_181 / var_181
            var_185 = pi
            var_185 = log(if var_185 > 0
                        var_185
                    else
                        var_185
                    end)
            var_181 = Int16(o.color)
            var_185 = csc(531358632619388800)
            var_185 = sin(-6189380764600129463)
            var_185 = cot(var_185)
            var_185 = cot(58)
            var_185 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = sec(5540477798517610965)
            var_185 = Float64(var_185)
            var_181 = var_181 / var_181
            var_185 = Float64(-3140162855464852850)
            var_185 = pi
            var_181 = Int16(o.color)
            var_181 = Int16(o.pos.x)
            var_181 = Int16(o.pos.y)
            var_185 = sqrt(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            o.mem[var_181] = var_181
            if var_185 !== var_185
                local var_206::String = "rY38wKAq"
                local var_197::Int64 = 8553431336065242588
                var_197 = (Int64)(var_197) >> (Int64)(var_197)
                var_197 = Creature.energyUp(o)
            end
            var_185 = Float64(5319409292578217414)
            var_181 = Int16(o.pos.x)
            var_185 = Float64(-27)
            var_185 = cos(89)
            if var_181 < var_181
                var_194 = (Int64)(var_194) << (Int64)(var_194)
            end
            var_185 = log(if var_181 > 0
                        var_181
                    else
                        var_185
                    end)
            var_185 = Float64(-24)
            var_185 = tan(7037638296861469391)
            return var_180
        end
        function func_166(var_165::Float64=0.543507)
            local var_205::Int8 = 74
            local var_198::Int16 = -17284
            var_165 = pi
            var_198 = Int16(o.color)
            var_198 = var_198 - var_198
            var_165 = sin(var_198)
            var_165 = cot(var_165)
            var_198 = if isempty("PDCia6xN")
                    0
                else
                    1
                end
            var_198 = (Int16)(var_198) >> (Int16)(var_198)
            var_165 = tan(-8521071770279717885)
            var_165 = cos(-28)
            var_165 = cos(var_165)
            var_165 = sec(8157123923372613793)
            var_198 = var_198 % var_198
            var_165 = cos(-5572428818241911616)
            var_205 = (Int8)(var_205) << (Int8)(var_205)
            var_165 = sin(3028262668493246063)
            var_198 = (Int16)(var_198) << (Int16)(var_198)
            var_198 = if haskey(o.mem,var_198)
                    o.mem[var_198]
                else
                    var_198
                end
            var_198 = Int16(o.pos.x)
            var_198 = Int16(o.pos.x)
            var_165 = Float64(var_198)
            var_198 = if 32767 >= 3335702617057889552
                    Int16(3335702617057889552)
                else
                    32767
                end
            var_198 = Int16(o.pos.y)
            var_198 = (Int16)(var_198) << (Int16)(var_198)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_204::Int8 = 42
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_102::String = "XvKhhYqE"
            var_128 = isempty(var_102)
            var_163 = if var_128
                    1
                else
                    0
                end
            var_70 = sec(var_152)
            var_128 = var_128 | var_128
            var_128 = var_152 > (Int16)(0)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_152 = var_152 - var_152
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_128 = var_121 < (Int64)(1)
            var_137 = tan(var_163)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            if var_102 >= var_102
            end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_121 = Creature.energyLeft(o)
            var_128 = var_70 < (Float64)(1)
            var_128 = var_163 < (Int8)(1)
            var_128 = Creature.stepRight(o)
            o.mem[var_108] = var_152
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
                local var_199::Int64 = -650160128575642811
                var_199 = Int(Creature.idRight(o))
                var_199 = var_199 - var_199
                var_199 = Creature.energyLeft(o)
            end
            var_161 = Creature.energyUp(o)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = var_163 - var_163
            var_128 = (Bool)(var_128) & (Bool)(var_128)
            var_70 = csc(var_152)
            var_152 = var_108 % var_152
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Int(Creature.idUp(o))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_152 = var_152 + var_152
            var_137 = cot(var_163)
            var_152 = var_152 + var_152
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = pi
            var_70 = sec(var_70)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_121 = Creature.energyLeft(o)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Creature.energyLeft(o)
                var_135 = Int(var_135)
                var_135 = Int(Creature.idRight(o))
                var_127 = sin(var_135)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idUp(o))
                var_135 = Int(Creature.idDown(o))
                var_135 = Creature.energyUp(o)
                var_134 = string(0.174223)
                var_135 = Int(Creature.idUp(o))
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) & (Int64)(var_135)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Int(var_163)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_161 = Creature.energyUp(o)
            var_70 = cot(var_70)
            if var_161 > var_161
            end
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_102 = string(var_70)
            var_137 = cos(var_163)
            var_128 = !var_128
            var_137 = csc(var_121)
            var_70 = sin(var_70)
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = var_137 / var_137
            if var_121 <= var_161
                local var_193::Int8 = 79
                var_193 = Int8(Creature.eatLeft(c,o,Int(var_193)))
            end
            var_70 = var_137 - var_137
            var_128 = var_128 | var_128
            var_70 = sqrt(if var_161 > 0
                        var_161
                    else
                        var_70
                    end)
            for i::Int8 = 1:div(var_163,_LOOP_STEPS_DIVIDER)
            end
            var_137 = sec(var_121)
            var_128 = Creature.stepUp(o)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_161 = Int(var_161)
            var_163 = (Int8)(var_163) $ (Int8)(var_163)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_137 = cot(var_163)
            var_161 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepUp(o)
            var_121 = Creature.energyRight(o)
            var_137 = Float64(var_152)
            var_163 = var_163 + var_163
            var_121 = Int(Creature.idRight(o))
            if var_70 < var_137
                local var_201::Int16 = 6554
                var_183 = string(false)
            end
            var_128 = var_128
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) & (Bool)(var_128)
            var_161 = Int(var_163)
            var_70 = csc(var_70)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_161 = Creature.energyDown(o)
            var_137 = sec(var_152)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_70 = Float64(var_161)
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Int(Creature.idUp(o))
            var_152 = Int16(o.pos.y)
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_161 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_108 = var_108 + var_108
            var_121 = Creature.energyLeft(o)
            var_70 = sin(var_161)
            var_102 = string(var_163)
            var_121 = (Int64)(var_121) | (Int64)(var_121)
            var_102 = string(var_163)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_200::Int16 = -10270
            local var_202::Int16 = 15886
            var_200 = Int16(o.pos.y)
            if var_202 != var_202
            end
            var_202 = Int16(o.pos.y)
            var_202 = if haskey(o.mem,var_202)
                    o.mem[var_202]
                else
                    var_202
                end
            var_202 = var_200 + var_200
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        if var_24 > var_24
            local var_176::Bool = true
            var_176 = Creature.stepDown(o)
            var_176 = Creature.stepRight(o)
            var_130 = (Int8)(var_130) $ (Int8)(var_130)
            var_176 = 0.120252 < (Float64)(1)
        end
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_78 = Int16(o.pos.x)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_119 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_78 = Int16(o.pos.x)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_191 = Creature.stepDown(o)
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_158 = Creature.stepRight(o)
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_196::Float64 = 0.884324
            local var_190::Bool = true
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_158 = isempty("TNPVfOZ0")
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_191 = var_90 > (Int8)(0)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_93 = (Int8)(var_2) >> (Int8)(var_2)
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        var_78 = Int16(o.color)
        var_24 = isempty("ODobJIvF")
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_187 = var_187 + var_187
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_78 = if isempty("olbuDv7w")
                0
            else
                1
            end
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_12 = Int(Creature.idDown(o))
        o.mem[var_78] = var_78
        o.mem[var_78] = var_78
        if var_24 <= var_24
            local var_150::String = "qfkghmc3"
        end
        var_78 = Int16(o.pos.y)
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_24 = var_12 < (Int64)(1)
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatDown(c,o,Int(var_119)))
        var_24 = (Bool)(var_24) & (Bool)(var_158)
        var_24 = isempty("x8uDypUZ")
        var_78 = if 32767 >= -8179538222314297200
                Int16(-8179538222314297200)
            else
                32767
            end
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_12 = (Int64)(var_12) & (Int64)(var_12)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_24 = var_24 & var_158
        var_2 = if 127 >= var_2
                Int8(var_2)
            else
                127
            end
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],7,645,0,47179,0x0000000f,Dict{Int16,Int16}(),[1120,799],46108,50,375),RpcApi.SimpleOrganism(0x0000000000046f4c,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_166(var_165::Float64=0.543507)
            local var_205::Float64 = 0.928307
            local var_204::Int16 = 7977
            local var_192::Int64 = 6913464341823033563
            var_165 = csc(-6562)
            var_165 = cos(28020)
            var_192 = Int(Creature.idLeft(o))
            var_165 = cot(var_165)
            if var_204 !== var_204
            end
            var_165 = csc(var_165)
            var_192 = Int(var_192)
            var_192 = var_192 + var_192
            var_165 = tan(-3779)
            var_204 = if haskey(o.mem,var_204)
                    o.mem[var_204]
                else
                    var_204
                end
            var_192 = Int(Creature.idUp(o))
            var_165 = cos(var_192)
            var_165 = tan(var_204)
            var_165 = if isempty("2eCdmP6S")
                    0.0
                else
                    1.0
                end
            var_165 = tan(var_192)
            var_165 = tan(-73)
            var_165 = cos(3900)
            var_205 = pi
            var_165 = pi
            var_165 = pi
            var_192 = Creature.energyUp(o)
            var_165 = if isempty("7U9rvDDl")
                    0.0
                else
                    1.0
                end
            var_192 = (Int64)(var_192) | (Int64)(var_192)
            var_165 = tan(var_165)
            var_192 = Int(23173)
            var_165 = sec(var_165)
            var_165 = Float64(false)
            var_192 = Int(Creature.idRight(o))
            var_192 = Int(Creature.idRight(o))
            var_165 = log(if var_192 > 0
                        var_192
                    else
                        var_165
                    end)
            var_165 = pi
            var_192 = Creature.energyDown(o)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_203::Int16 = 11353
            local var_200::Bool = true
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_163 = if var_128
                    1
                else
                    0
                end
            var_152 = Int16(o.pos.y)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_128 = var_121 < (Int64)(1)
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            if var_128 == var_200
            end
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = cot(var_152)
            var_121 = Int(Creature.idRight(o))
            var_121 = Creature.energyLeft(o)
            var_128 = var_70 < (Float64)(1)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_163 < (Int8)(1)
            o.mem[var_108] = var_152
            o.mem[var_152] = var_152
            var_163 = var_163 - var_163
            var_163 = if 127 >= var_163
                    Int8(var_163)
                else
                    127
                end
            o.mem[var_152] = var_152
            var_152 = var_108 % var_152
            var_161 = Creature.energyRight(o)
            var_200 = Creature.stepRight(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_152 = Int16(o.color)
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Creature.energyLeft(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = csc(var_163)
            var_152 = Int16(o.pos.x)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_70 = tan(-41)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_121 = Int(Creature.getEnergy(o,Int(var_203),Int(var_152)))
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_161 = var_121 % var_161
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepDown(o)
            var_137 = var_137 * var_70
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Int(var_135)
                var_118 = var_134 * var_134
                var_135 = Int(var_135)
                var_127 = sin(var_135)
                var_191 = !var_191
                var_135 = Creature.energyDown(o)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idDown(o))
                var_118 = var_118 * var_118
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_118 = string(var_118)
                var_135 = (Int64)(var_135) & (Int64)(var_135)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_191 = Creature.stepLeft(o)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_118 = var_134[1:if length(var_118) > length(var_134) > 0
                                0
                            else
                                div(length(var_134),length(var_118))
                            end]
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_70 = var_137 % var_70
            var_128 = var_163 > (Int8)(0)
            var_137 = sqrt(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            var_70 = sin(var_70)
            if var_128 >= var_128
            end
            var_121 = Int(Creature.idLeft(o))
            var_121 = Creature.energyDown(o)
            var_70 = var_137 / var_137
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            if var_121 <= var_161
            end
            var_70 = var_137 - var_137
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) | (Bool)(var_128)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_70 = var_70 / var_137
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_121 = (Int64)(var_161) | (Int64)(var_161)
            var_152 = (Int16)(var_152) << (Int16)(var_152)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_121 = Int(Creature.idRight(o))
            var_102 = string(var_102)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = Creature.stepUp(o)
            var_200 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_121 = Creature.energyRight(o)
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_121 = Creature.energyUp(o)
            if var_70 < var_137
                local var_183::String = "RYYi6iTt"
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepDown(o)
            var_161 = Int(var_163)
            var_70 = cot(var_121)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_152 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                var_193 = var_193 / var_193
            end
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_161 = Int(Creature.idUp(o))
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.color)
            var_70 = cot(var_152)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_206::Float64 = 0.403247
            local var_197::Int16 = 12072
            var_197 = var_197 * var_197
            var_197 = (Int16)(var_197) $ (Int16)(var_197)
            var_197 = Int16(o.color)
            var_197 = if 32767 >= var_197
                    Int16(var_197)
                else
                    32767
                end
            var_206 = pi
            var_50 = var_50[1:if length(var_50) > length(var_50)
                            0
                        else
                            length(var_50) - length(var_50)
                        end]
            var_197 = if haskey(o.mem,var_197)
                    o.mem[var_197]
                else
                    var_197
                end
            var_197 = if haskey(o.mem,var_197)
                    o.mem[var_197]
                else
                    var_197
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_158 = Creature.stepDown(o)
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_202::Float64 = 0.0731271
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_78 = if 32767 >= 0.0238714
                Int16(round(0.0238714))
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_201::Int16 = -24565
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        o.mem[var_78] = var_78
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_78 < (Int16)(1)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_158 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_78 = Int16(o.color)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_207::Int16 = 7089
            local var_199::Float64 = 0.217299
            var_199 = cos(var_199)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_187::Float64 = 0.778312
            var_187 = var_187 + var_187
            var_187 = Float64(true)
            var_187 = cot(7405634173161602863)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepLeft(o)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        var_24 = Creature.stepLeft(o)
        var_78 = Int16(o.pos.y)
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_93 = var_93 * var_93
        var_78 = Int16(o.pos.y)
        var_78 = Int16(o.pos.y)
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_78 < (Int16)(1)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = Creature.stepRight(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],13,654,0,47077,0x0000000f,Dict{Int16,Int16}(),[376,643],38918,50,346),RpcApi.SimpleOrganism(0x0000000000046ef7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_166(var_165::Float64=0.543507)
            local var_192::Int64 = 6913464341823033563
            var_165 = cos(28020)
            var_192 = Int(Creature.idLeft(o))
            var_165 = csc(119)
            var_165 = sin(var_192)
            var_165 = var_165 / var_165
            var_192 = Int(Creature.idLeft(o))
            var_192 = Int(Creature.idUp(o))
            var_192 = (Int64)(var_192) >> (Int64)(var_192)
            var_192 = Int(Creature.idDown(o))
            var_165 = cos(var_192)
            var_165 = tan(var_165)
            var_165 = tan(var_192)
            var_192 = (Int64)(var_192) $ (Int64)(var_192)
            var_165 = cos(3900)
            var_165 = sqrt(if var_192 > 0
                        var_192
                    else
                        var_165
                    end)
            var_192 = Int(Creature.idLeft(o))
            var_192 = Creature.energyDown(o)
            var_192 = Creature.energyUp(o)
            var_192 = (Int64)(var_192) | (Int64)(var_192)
            var_165 = tan(var_165)
            var_192 = Int(Creature.idLeft(o))
            if var_192 > var_192
                local var_204::Float64 = 0.738297
            end
            var_192 = Int(Creature.idDown(o))
            var_192 = Int(Creature.idRight(o))
            var_192 = Creature.energyLeft(o)
            var_165 = sec(-13609)
            var_165 = var_165 / var_165
            var_165 = var_165 * var_165
            var_192 = Creature.energyDown(o)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_200::Bool = true
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_163 = if var_128
                    1
                else
                    0
                end
            var_152 = Int16(o.pos.y)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_121 = Int(Creature.idRight(o))
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            if var_128 == var_200
            end
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = cot(var_152)
            var_121 = Int(Creature.idRight(o))
            var_121 = Creature.energyLeft(o)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_128 = var_70 < (Float64)(1)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_128 = var_163 < (Int8)(1)
            o.mem[var_108] = var_152
            o.mem[var_152] = var_152
            var_200 = Creature.stepDown(o)
            var_163 = if 127 >= var_163
                    Int8(var_163)
                else
                    127
                end
            o.mem[var_152] = var_152
            var_152 = var_108 % var_152
            var_161 = Creature.energyRight(o)
            var_200 = Creature.stepRight(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_152 = Int16(o.color)
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Creature.energyLeft(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = csc(var_163)
            var_137 = sin(var_161)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_121 = var_161 / var_121
            var_70 = tan(-41)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = (Bool)(var_128) $ (Bool)(var_200)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_161 = var_121 % var_161
            var_161 = Int(Creature.idRight(o))
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepDown(o)
            var_137 = var_137 * var_70
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Int(var_135)
                var_135 = Int(Creature.idRight(o))
                var_135 = Int(var_135)
                var_127 = sin(var_135)
                var_191 = !var_191
                var_135 = Creature.energyDown(o)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idDown(o))
                var_118 = var_118 * var_118
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_118 = string(var_118)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_191 = Creature.stepLeft(o)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_118 = var_134[1:if length(var_118) > length(var_134) > 0
                                0
                            else
                                div(length(var_134),length(var_118))
                            end]
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_70 = sin(var_163)
            var_70 = var_137 % var_70
            var_152 = var_152 - var_152
            var_70 = sin(var_70)
            if var_128 >= var_128
            end
            var_121 = Int(Creature.idLeft(o))
            var_121 = Creature.energyDown(o)
            var_70 = var_137 / var_137
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            if var_121 <= var_161
            end
            var_70 = var_137 - var_137
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) | (Bool)(var_128)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_128 = Creature.stepRight(o)
            var_121 = (Int64)(var_161) | (Int64)(var_161)
            var_152 = (Int16)(var_152) << (Int16)(var_152)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_102 = string(var_102)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = Creature.stepUp(o)
            var_121 = Int(Creature.idDown(o))
            var_200 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_137 = Float64(var_152)
            var_121 = Creature.energyUp(o)
            if var_70 < var_137
                local var_183::String = "RYYi6iTt"
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepDown(o)
            var_161 = Int(var_163)
            var_70 = cot(var_121)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_152 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                var_193 = var_193 / var_193
            end
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.color)
            var_70 = cot(var_152)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_203::Int8 = 22
            local var_197::Int16 = 12072
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_197 = Int16(o.pos.y)
            var_197 = var_197 / var_197
            var_197 = (Int16)(var_197) | (Int16)(var_197)
            var_197 = Int16(o.color)
            var_203 = if false
                    1
                else
                    0
                end
            var_197 = Int16(o.pos.x)
            for i::Int8 = 1:div(var_203,_LOOP_STEPS_DIVIDER)
            end
            var_197 = (Int16)(var_197) << (Int16)(var_197)
            var_203 = if isempty(var_50)
                    0
                else
                    1
                end
            var_197 = (Int16)(var_197) << (Int16)(var_197)
            var_197 = (Int16)(var_197) & (Int16)(var_197)
            var_203 = Int8(Creature.eatDown(c,o,Int(var_203)))
            var_203 = if 127 >= 0.240899
                    Int8(round(0.240899))
                else
                    127
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_24 = isempty("TksqxH1y")
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_202::Float64 = 0.0731271
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        var_78 = Int16(o.pos.y)
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_78 < (Int16)(1)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_78 = Int16(o.color)
        var_24 = Creature.stepRight(o)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_199::Float64 = 0.217299
            var_199 = cos(var_199)
            var_199 = tan(4909025479825310100)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_187::Float64 = 0.778312
            var_187 = pi
            var_187 = var_187 + var_187
            var_187 = cot(7405634173161602863)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepLeft(o)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        var_24 = Creature.stepLeft(o)
        var_78 = Int16(o.pos.y)
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_93 = var_93 * var_93
        var_78 = Int16(o.pos.y)
        var_78 = Int16(o.pos.y)
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_78 < (Int16)(1)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = Creature.stepRight(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],13,654,0,47076,0x0000000f,Dict{Int16,Int16}(),[856,220],45488,50,351),RpcApi.SimpleOrganism(0x0000000000046fa7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_166(var_165::Float64=0.543507)
            local var_192::Int64 = 6913464341823033563
            var_165 = cos(28020)
            var_192 = Int(Creature.idLeft(o))
            var_165 = csc(119)
            var_165 = sin(var_192)
            var_165 = var_165 / var_165
            var_192 = Creature.energyDown(o)
            var_192 = Int(Creature.idUp(o))
            var_192 = Int(Creature.idDown(o))
            var_165 = cos(var_192)
            var_165 = tan(var_165)
            var_165 = csc(var_165)
            var_192 = (Int64)(var_192) $ (Int64)(var_192)
            var_165 = sin(var_192)
            var_165 = sec(-11422)
            var_165 = sqrt(if var_192 > 0
                        var_192
                    else
                        var_165
                    end)
            var_192 = Int(Creature.idLeft(o))
            var_192 = Creature.energyDown(o)
            var_192 = Creature.energyUp(o)
            var_165 = tan(20)
            var_192 = (Int64)(var_192) | (Int64)(var_192)
            var_165 = tan(var_165)
            if var_192 > var_192
            end
            var_192 = Int(Creature.idDown(o))
            var_192 = Int(Creature.idRight(o))
            var_192 = Creature.energyLeft(o)
            var_165 = var_165 * var_165
            var_165 = var_165 / var_165
            var_165 = var_165 * var_165
            var_192 = Creature.energyDown(o)
            return var_165
        end
        local var_158::Bool = true
        local var_119::Int8 = 44
        local var_93::Int8 = 126
        local var_90::Int8 = -21
        local var_78::Int16 = 14555
        function func_71(var_70::Float64=0.809126)
            local var_200::Bool = true
            local var_163::Int8 = -46
            local var_161::Int64 = -3584603265908086203
            local var_152::Int16 = -21262
            local var_137::Float64 = 0.425621
            local var_128::Bool = true
            local var_121::Int64 = -6967685978255822595
            local var_102::String = "XvKhhYqE"
            var_121 = Int(Creature.idRight(o))
            var_163 = if var_128
                    1
                else
                    0
                end
            var_152 = Int16(o.pos.y)
            var_121 = Int(Creature.idLeft(o))
            var_128 = var_152 > (Int16)(0)
            var_128 = Creature.stepLeft(o)
            var_161 = (Int64)(var_161) >> (Int64)(var_161)
            var_121 = Int(Creature.idRight(o))
            var_152 = Int16(o.color)
            var_121 = Int(Creature.idLeft(o))
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            if var_128 == var_200
            end
            var_128 = var_121 < (Int64)(1)
            var_137 = sqrt(if var_70 > 0
                        var_70
                    else
                        var_137
                    end)
            var_102 = string(var_128)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_70 = cot(var_152)
            var_121 = Int(Creature.idRight(o))
            var_121 = Creature.energyLeft(o)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_128 = var_70 < (Float64)(1)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_128 = var_163 < (Int8)(1)
            o.mem[var_108] = var_152
            o.mem[var_152] = var_152
            var_200 = Creature.stepDown(o)
            var_163 = if 127 >= var_163
                    Int8(var_163)
                else
                    127
                end
            o.mem[var_152] = var_152
            var_152 = var_108 % var_152
            var_161 = Creature.energyRight(o)
            var_200 = Creature.stepRight(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_152 = Int16(o.color)
            var_70 = pi
            var_152 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_137 = var_70 / var_137
            var_121 = Creature.energyLeft(o)
            var_163 = Int8(Creature.eatLeft(c,o,Int(var_163)))
            var_163 = Int8(Creature.eatUp(c,o,Int(var_163)))
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_137 = csc(var_163)
            var_137 = sin(var_161)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_108 = if 32767 >= 6
                    Int16(6)
                else
                    32767
                end
            var_121 = var_161 / var_121
            var_70 = tan(-41)
            var_161 = Creature.energyUp(o)
            var_70 = sin(var_163)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = (Bool)(var_128) $ (Bool)(var_200)
            var_102 = var_102[1:if length(var_102) > length(var_102)
                            0
                        else
                            length(var_102) - length(var_102)
                        end]
            var_161 = Creature.energyDown(o)
            var_128 = Creature.stepRight(o)
            var_137 = Float64(var_128)
            var_161 = var_121 % var_161
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_152 = Int16(o.color)
            var_121 = Creature.energyLeft(o)
            var_128 = Creature.stepDown(o)
            var_137 = var_137 * var_70
            var_163 = if 127 >= var_137
                    Int8(round(var_137))
                else
                    127
                end
            var_121 = Creature.energyLeft(o)
            if var_102 < var_102
                local var_118::String = "O2EFbKVh"
                local var_134::String = "nzNNFVS7"
                var_135 = Int(var_135)
                var_135 = Int(Creature.idRight(o))
                var_135 = Int(var_135)
                var_127 = sin(var_135)
                var_191 = !var_191
                var_135 = Creature.energyDown(o)
                var_135 = Creature.energyRight(o)
                var_135 = (Int64)(var_135) << (Int64)(var_135)
                var_135 = (Int64)(var_135) | (Int64)(var_135)
                var_135 = Int(Creature.idDown(o))
                var_118 = var_118 * var_118
                var_118 = var_118 * var_118
                var_135 = Creature.energyRight(o)
                var_118 = string(var_118)
                var_135 = Creature.energyLeft(o)
                var_118 = string(-114)
                var_191 = Creature.stepLeft(o)
                var_118 = string(0.769671)
                var_135 = Creature.energyUp(o)
                var_118 = var_134[1:if length(var_118) > length(var_134) > 0
                                0
                            else
                                div(length(var_134),length(var_118))
                            end]
                var_135 = Creature.energyDown(o)
            end
            var_70 = pi
            var_161 = Creature.energyUp(o)
            var_152 = Int16(o.pos.y)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_128 = var_152 < (Int16)(1)
            var_128 = Creature.stepLeft(o)
            var_161 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_70 = log(if var_152 > 0
                        var_152
                    else
                        var_70
                    end)
            var_163 = (Int8)(var_163) >> (Int8)(var_163)
            var_70 = sin(var_163)
            var_70 = var_137 % var_70
            var_152 = var_152 - var_152
            var_70 = sin(var_70)
            if var_128 >= var_128
            end
            var_121 = Int(Creature.idLeft(o))
            var_121 = Creature.energyDown(o)
            var_70 = var_137 / var_137
            var_163 = Int8(Creature.eatRight(c,o,Int(var_163)))
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            if var_121 <= var_161
            end
            var_70 = var_137 - var_137
            var_161 = Int(Creature.idLeft(o))
            var_128 = (Bool)(var_128) | (Bool)(var_128)
            var_137 = sec(var_121)
            var_70 = cot(var_152)
            var_128 = Creature.stepRight(o)
            var_152 = if isempty(var_102)
                    0
                else
                    1
                end
            var_121 = (Int64)(var_161) | (Int64)(var_161)
            var_152 = (Int16)(var_152) << (Int16)(var_152)
            var_121 = Creature.energyRight(o)
            var_121 = Creature.energyDown(o)
            var_70 = csc(var_163)
            var_70 = cot(var_108)
            var_102 = string(var_102)
            var_137 = log(if var_152 > 0
                        var_152
                    else
                        var_137
                    end)
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_128 = Creature.stepUp(o)
            var_121 = Int(Creature.idDown(o))
            var_200 = Creature.stepLeft(o)
            var_137 = Float64(var_128)
            var_70 = sqrt(if var_163 > 0
                        var_163
                    else
                        var_70
                    end)
            var_121 = (Int64)(var_121) << (Int64)(var_121)
            var_70 = log(if var_121 > 0
                        var_121
                    else
                        var_70
                    end)
            var_137 = Float64(var_152)
            var_121 = Creature.energyUp(o)
            if var_70 < var_137
                local var_183::String = "RYYi6iTt"
            end
            var_161 = Int(Creature.idLeft(o))
            var_128 = Creature.stepDown(o)
            var_161 = Int(var_163)
            var_70 = cot(var_121)
            var_108 = if 32767 >= var_108
                    Int16(var_108)
                else
                    32767
                end
            var_161 = Creature.energyDown(o)
            var_152 = if 32767 >= var_70
                    Int16(round(var_70))
                else
                    32767
                end
            var_121 = Int(Creature.getEnergy(o,Int(var_152),Int(var_152)))
            var_121 = Creature.energyLeft(o)
            var_137 = csc(var_121)
            var_121 = var_121 - var_121
            var_70 = cot(var_152)
            var_102 = var_102[1:if length(var_102) > length(var_102) > 0
                            0
                        else
                            div(length(var_102),length(var_102))
                        end]
            var_152 = if haskey(o.mem,var_152)
                    o.mem[var_152]
                else
                    var_152
                end
            if var_152 >= var_152
                var_193 = var_193 / var_193
            end
            var_128 = var_128 & var_128
            var_70 = Float64(var_121)
            var_161 = Creature.energyDown(o)
            var_163 = Int8(Creature.eatDown(c,o,Int(var_163)))
            var_163 = var_163 * var_163
            var_161 = Int(Creature.idRight(o))
            var_121 = Creature.energyRight(o)
            var_137 = cos(var_152)
            var_121 = Creature.energyUp(o)
            var_121 = Creature.energyLeft(o)
            var_121 = Creature.energyUp(o)
            var_152 = Int16(o.color)
            var_70 = cot(var_152)
            var_128 = var_161 > (Int64)(0)
            return var_70
        end
        function func_51(var_50::String="235SLR3U")
            local var_203::Int8 = 22
            local var_197::Int16 = 12072
            var_197 = (Int16)(var_197) << (Int16)(var_197)
            o.mem[var_197] = var_197
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_197 = (Int16)(var_197) | (Int16)(var_197)
            o.mem[var_197] = var_197
            var_197 = Int16(o.color)
            var_197 = if haskey(o.mem,var_197)
                    o.mem[var_197]
                else
                    var_197
                end
            var_203 = Int8(Creature.eatLeft(c,o,Int(var_203)))
            var_197 = Int16(o.pos.y)
            var_203 = Int8(Creature.eatDown(c,o,Int(var_203)))
            var_203 = Int8(Creature.eatUp(c,o,Int(var_203)))
            var_203 = if 127 >= 0.240899
                    Int8(round(0.240899))
                else
                    127
                end
            return var_50
        end
        local var_2::Int8 = 110
        var_24 = Creature.stepRight(o)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = var_78 % var_78
        var_24 = Creature.stepDown(o)
        var_78 = (Int16)(var_78) << (Int16)(var_78)
        var_24 = isempty("TksqxH1y")
        var_78 = Int16(o.pos.x)
        var_24 = Creature.stepDown(o)
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_24 = Creature.stepDown(o)
        var_2 = Int8(Creature.eatDown(c,o,Int(var_93)))
        var_2 = Int8(Creature.eatDown(c,o,Int(var_2)))
        o.mem[var_78] = var_78
        var_24 = var_24 * var_24
        var_93 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_24 = Creature.stepDown(o)
        for i::Int8 = 1:div(var_119,_LOOP_STEPS_DIVIDER)
            local var_202::Float64 = 0.0731271
        end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_158 = 0.533799 > (Float64)(0)
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_24 * var_158
        var_78 = Int16(o.pos.y)
        var_24 = var_12 < (Int64)(1)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_78 = Int16(o.pos.x)
        var_78 = (Int16)(var_78) $ (Int16)(var_78)
        var_78 = var_78 * var_78
        for i::Int8 = 1:div(var_90,_LOOP_STEPS_DIVIDER)
        end
        var_78 = Int16(o.color)
        var_24 = 0.591621 > (Float64)(0)
        var_24 = var_78 > (Int16)(0)
        var_12 = var_12 / var_12
        var_2 = Int8(Creature.eatRight(c,o,Int(var_90)))
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if 32767 >= 0.837857
                Int16(round(0.837857))
            else
                32767
            end
        var_78 = Int16(o.pos.y)
        var_93 = Int8(Creature.eatRight(c,o,Int(var_2)))
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_12 = Int(Creature.idUp(o))
        var_24 = var_90 < (Int8)(1)
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            var_141 = if 32767 >= 0.414183
                    Int16(round(0.414183))
                else
                    32767
                end
        end
        var_24 = Creature.stepDown(o)
        var_78 = if 32767 >= var_78
                Int16(var_78)
            else
                32767
            end
        var_78 = if 32767 >= var_90
                Int16(var_90)
            else
                32767
            end
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_2 = var_119 / var_90
        var_78 = Int16(o.pos.y)
        var_78 = var_78 % var_78
        if var_158 > var_24
        end
        var_93 = Int8(Creature.eatLeft(c,o,Int(var_2)))
        var_24 = var_78 < (Int16)(1)
        o.mem[var_78] = var_78
        var_119 = (Int8)(var_119) & (Int8)(var_90)
        var_90 = if 127 >= var_93
                Int8(var_93)
            else
                127
            end
        var_78 = if var_24
                1
            else
                0
            end
        var_2 = if 127 >= 8405913256475658068
                Int8(8405913256475658068)
            else
                127
            end
        var_24 = Creature.stepUp(o)
        var_24 = Creature.stepUp(o)
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_158 = Creature.stepUp(o)
        o.mem[var_78] = var_78
        var_78 = if 32767 >= 0.0303596
                Int16(round(0.0303596))
            else
                32767
            end
        var_78 = Int16(o.color)
        var_24 = Creature.stepRight(o)
        var_158 = Creature.stepLeft(o)
        var_2 = Int8(Creature.eatUp(c,o,Int(var_2)))
        var_24 = var_24
        var_12 = (Int64)(var_12) $ (Int64)(var_12)
        var_24 = var_12 < (Int64)(1)
        var_12 = Int(Creature.idRight(o))
        var_24 = Creature.stepUp(o)
        var_24 = var_24 & var_24
        o.mem[var_78] = var_78
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
            local var_199::Float64 = 0.217299
            var_199 = cos(var_199)
            var_199 = tan(4909025479825310100)
            var_174 = sqrt(if var_174 > 0
                        var_174
                    else
                        var_174
                    end)
        end
        for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
            local var_187::Float64 = 0.778312
            var_187 = var_187 + var_187
            var_187 = cot(7405634173161602863)
        end
        var_12 = Int(Creature.getEnergy(o,Int(var_78),Int(var_78)))
        var_78 = Int16(o.color)
        for i::Int8 = 1:div(var_93,_LOOP_STEPS_DIVIDER)
        end
        var_24 = Creature.stepLeft(o)
        var_119 = Int8(Creature.eatLeft(c,o,Int(var_119)))
        var_24 = var_24 & var_24
        var_119 = Int8(Creature.eatUp(c,o,Int(var_119)))
        var_12 = (Int64)(var_12) | (Int64)(var_12)
        o.mem[var_78] = var_78
        var_12 = var_12 * var_12
        o.mem[var_78] = var_78
        var_78 = var_78 + var_78
        var_78 = var_78 + var_78
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_2 = if 127 >= var_12
                Int8(var_12)
            else
                127
            end
        var_78 = Int16(o.pos.y)
        o.mem[var_78] = var_78
        var_24 = Creature.stepLeft(o)
        var_78 = Int16(o.pos.y)
        var_2 = Int8(Creature.eatLeft(c,o,Int(var_93)))
        var_78 = if haskey(o.mem,var_78)
                o.mem[var_78]
            else
                var_78
            end
        var_93 = var_93 * var_93
        var_78 = Int16(o.pos.y)
        var_78 = Int16(o.pos.y)
        var_24 = isempty("x8uDypUZ")
        var_12 = Int(Creature.idLeft(o))
        var_119 = if 127 >= var_78
                Int8(var_78)
            else
                127
            end
        var_24 = var_78 < (Int16)(1)
        var_24 = (Bool)(var_24) | (Bool)(var_24)
        var_12 = Int(Creature.idUp(o))
        var_78 = (Int16)(var_78) >> (Int16)(var_78)
        var_24 = Creature.stepRight(o)
        var_90 = Int8(Creature.eatLeft(c,o,Int(var_90)))
        var_119 = Int8(Creature.eatDown(c,o,Int(var_90)))
        var_78 = Int16(o.pos.x)
        var_78 = if var_24
                1
            else
                0
            end
        return true
    end),[300,500,50,0,1,1,1],13,654,0,46579,0x0000000f,Dict{Int16,Int16}(),[882,424],31908,50,347)]