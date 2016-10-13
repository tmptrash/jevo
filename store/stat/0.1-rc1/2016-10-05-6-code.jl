RpcApi.SimpleOrganism[RpcApi.SimpleOrganism(0x000000000000751c,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_3(var_2::Int16=-475)
            local var_8::Bool = false
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        var_1 = var_1 * var_1
        Creature.eatUp(c,o,Int(var_1))
        if var_1 !== var_1
            Creature.stepUp(o)
            Creature.stepLeft(o)
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,448073,0x00000043,Dict{Int16,Int16}(),[186,156],16),RpcApi.SimpleOrganism(0x000000000000719f,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_9(var_7::Int8=116,var_8::Int16=-6418)
            return var_7
        end
        local var_1::Int8 = 118
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            local var_6::Int8 = 0
            local var_5::Int64 = 5157083918494790572
            Creature.stepDown(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        Creature.eatRight(c,o,Int(var_1))
        Creature.stepUp(o)
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        var_1 = var_1 + var_1
        Creature.stepDown(o)
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,361396,0x00000059,Dict{Int16,Int16}(),[34,92],23),RpcApi.SimpleOrganism(0x0000000000007369,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_9(var_7::Int16=36,var_8::Bool=true)
            return var_7
        end
        function func_6(var_5::Int16=32298)
            var_5 = if haskey(o.mem,var_5)
                    o.mem[var_5]
                else
                    var_5
                end
            return var_5
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.stepDown(o)
        Creature.eatUp(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
        end
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,359680,0x0000004c,Dict{Int16,Int16}(),[242,165],15),RpcApi.SimpleOrganism(0x00000000000070c7,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_6(var_5::Bool=false)
            local var_7::Int16 = -16358
            Creature.stepRight(o)
            return var_5
        end
        function func_3(var_2::Int16=-475)
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,313387,0x0000003e,Dict{Int16,Int16}(),[257,147],10),RpcApi.SimpleOrganism(0x000000000000731d,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_9(var_7::Int16=2352,var_8::Int64=9133158049229628223)
            Creature.stepUp(o)
            return var_7
        end
        local var_1::Int8 = 118
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepDown(o)
        end
        return true
    end),[110,300,98,0,1,1,1],22,1000,1,310972,0x00000059,Dict{Int16,Int16}(),[14,177],8),RpcApi.SimpleOrganism(0x0000000000006d17,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_12(var_11::Int8=82)
            Creature.eatRight(c,o,Int(var_11))
            return var_11
        end
        function func_3(var_2::Int16=-475)
            local var_10::Int8 = 26
            Creature.eatUp(c,o,Int(var_10))
            return var_2
        end
        local var_1::Int8 = 118
        function func_9(var_7::Int8=26,var_8::Int8=56)
            return var_7
        end
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        if var_1 !== var_1
            Creature.stepLeft(o)
        end
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,300078,0x00000046,Dict{Int16,Int16}(),[192,154],15),RpcApi.SimpleOrganism(0x00000000000067df,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_1::Int8 = 118
        function func_4(var_2::String="MNzqi667",var_3::Int16=-8895)
            return var_2
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepLeft(o)
        end
        Creature.stepDown(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            local var_12::String = "toXGxplE"
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.stepLeft(o)
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,286071,0x0000004d,Dict{Int16,Int16}(),[9,144],12),RpcApi.SimpleOrganism(0x0000000000006fd8,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_1::Int8 = 118
        Creature.eatRight(c,o,Int(var_1))
        Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_1))
        Creature.stepDown(o)
        Creature.eatLeft(c,o,Int(var_1))
        Creature.stepRight(o)
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,419,1,248467,0x00000028,Dict{Int16,Int16}(),[248,39],9),RpcApi.SimpleOrganism(0x000000000000761b,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_3(var_2::Int16=-475)
            local var_8::Bool = false
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        var_1 = var_1 * var_1
        Creature.eatUp(c,o,Int(var_1))
        if var_1 !== var_1
            Creature.stepLeft(o)
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,245342,0x00000045,Dict{Int16,Int16}(),[186,156],15),RpcApi.SimpleOrganism(0x0000000000006550,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_1::Int8 = 118
        function func_9(var_7::Int8=26,var_8::Int8=56)
            Creature.stepUp(o)
            Creature.stepUp(o)
            return var_7
        end
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.stepDown(o)
        Creature.eatDown(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,242142,0x00000045,Dict{Int16,Int16}(),[192,115],9),RpcApi.SimpleOrganism(0x0000000000007252,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_14(var_13::Int8=-76)
            return var_13
        end
        function func_8(var_6::Int16=8879,var_7::Int8=-29)
            local var_11::String = "wNNAU2Ib"
            var_7 = var_7 / var_7
            return var_6
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            local var_9::Int8 = 49
            local var_5::Int64 = -8273336838347865267
            Creature.stepLeft(o)
        end
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,616,1,240481,0x00000055,Dict{Int16,Int16}(),[249,23],21),RpcApi.SimpleOrganism(0x0000000000007368,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_5(var_4::Int8=-70)
            for i::Int8 = 1:div(var_4,_LOOP_STEPS_DIVIDER)
            end
            Creature.stepUp(o)
            return var_4
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
        end
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
        end
        Creature.eatDown(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,232592,0x00000049,Dict{Int16,Int16}(),[88,177],10),RpcApi.SimpleOrganism(0x0000000000006f20,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_12(var_11::Int8=82)
            local var_13::Int16 = 7012
            return var_11
        end
        function func_3(var_2::Int16=-475)
            local var_10::Int8 = 26
            var_2 = var_2 - var_2
            return var_2
        end
        local var_1::Int8 = 118
        function func_9(var_7::Int8=26,var_8::Int8=56)
            var_7 = var_8 - var_8
            return var_7
        end
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        if var_1 !== var_1
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepDown(o)
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,231148,0x00000048,Dict{Int16,Int16}(),[193,154],18),RpcApi.SimpleOrganism(0x000000000000764a,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_1::Int8 = 118
        local var_9::Int8 = -112
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepLeft(o)
        end
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,229688,0x00000047,Dict{Int16,Int16}(),[157,50],10),RpcApi.SimpleOrganism(0x0000000000006a19,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_7::Bool = false
        function func_3(var_2::Int16=-475)
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        if var_1 !== var_1
            Creature.stepLeft(o)
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,214471,0x00000040,Dict{Int16,Int16}(),[181,153],12),RpcApi.SimpleOrganism(0x00000000000066dc,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_1::Int8 = 118
        function func_4(var_2::String="MNzqi667",var_3::Int16=-8895)
            var_2 = var_2[1:if length(var_2) > length(var_2)
                            0
                        else
                            length(var_2) - length(var_2)
                        end]
            return var_2
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,0,210587,0x00000000,Dict{Int16,Int16}(),[260,64],7),RpcApi.SimpleOrganism(0x0000000000007424,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_6::Int8 = -122
        function func_3(var_2::Int16=-475)
            if var_2 >= var_2
                Creature.stepLeft(o)
            end
            var_2 = if haskey(o.mem,var_2)
                    o.mem[var_2]
                else
                    var_2
                end
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        var_6 = var_6 - var_1
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,209594,0x0000004b,Dict{Int16,Int16}(),[239,161],12),RpcApi.SimpleOrganism(0x0000000000007681,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_8::Int16 = -30821
        function func_3(var_2::String="coZMo3wf")
            if var_2 !== var_2
                Creature.stepRight(o)
            end
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
        end
        Creature.eatRight(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,574,1,205829,0x00000051,Dict{Int16,Int16}(),[135,21],12),RpcApi.SimpleOrganism(0x0000000000006d1b,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.stepLeft(o)
        Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepUp(o)
            Creature.stepRight(o)
        end
        Creature.stepDown(o)
        Creature.stepRight(o)
        return true
    end),[110,300,98,0,1,1,1],0,802,1,198970,0x00000054,Dict{Int16,Int16}(),[175,106],12),RpcApi.SimpleOrganism(0x00000000000076ff,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_10(var_8::String="MvDdYyK4",var_9::Int16=19954)
            return var_8
        end
        local var_1::Int8 = 118
        function func_4(var_2::String="MNzqi667",var_3::Int16=-8895)
            Creature.stepLeft(o)
            var_2 = var_2 * var_2
            Creature.stepDown(o)
            return var_2
        end
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        Creature.stepDown(o)
        var_1 = var_1 + var_1
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            local var_12::String = "toXGxplE"
            Creature.stepRight(o)
        end
        Creature.stepLeft(o)
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,195196,0x0000005e,Dict{Int16,Int16}(),[24,141],21),RpcApi.SimpleOrganism(0x000000000000722c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_9::Int16 = -11877
        function func_8(var_6::Int16=8879,var_7::Int8=-29)
            Creature.stepRight(o)
            return var_6
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        var_9 = if haskey(o.mem,var_9)
                o.mem[var_9]
            else
                var_9
            end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepLeft(o)
        end
        Creature.stepUp(o)
        Creature.stepUp(o)
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,193942,0x00000059,Dict{Int16,Int16}(),[53,192],18),RpcApi.SimpleOrganism(0x0000000000006898,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_8::Int16 = -30821
        function func_3(var_2::String="coZMo3wf")
            return var_2
        end
        local var_1::Int8 = 118
        function func_6(var_5::String="SYGCsvm3")
            return var_5
        end
        Creature.eatDown(c,o,Int(var_1))
        var_8 = if haskey(o.mem,var_8)
                o.mem[var_8]
            else
                var_8
            end
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
        end
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,574,1,189085,0x00000051,Dict{Int16,Int16}(),[133,21],12),RpcApi.SimpleOrganism(0x0000000000006b0e,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_16::Int16 = -20204
        function func_10(var_8::String="MvDdYyK4",var_9::Int16=19954)
            Creature.stepLeft(o)
            return var_8
        end
        local var_1::Int8 = 118
        function func_4(var_2::String="MNzqi667",var_3::Int16=-8895)
            Creature.stepRight(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.stepDown(o)
            return var_2
        end
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.stepUp(o)
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepUp(o)
        end
        Creature.eatLeft(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            local var_12::String = "toXGxplE"
            Creature.stepRight(o)
        end
        Creature.stepLeft(o)
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,185584,0x0000005c,Dict{Int16,Int16}(),[14,177],21),RpcApi.SimpleOrganism(0x0000000000007263,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_3(var_2::Int16=-475)
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        if var_1 !== var_1
            Creature.stepLeft(o)
            Creature.stepLeft(o)
        end
        Creature.stepRight(o)
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,185209,0x00000040,Dict{Int16,Int16}(),[177,3],11),RpcApi.SimpleOrganism(0x0000000000006e9c,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_6::String = "ZyhtgXbe"
        function func_5(var_4::Int8=-70)
            return var_4
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
        end
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
            Creature.stepUp(o)
        end
        return true
    end),[110,300,98,0,1,1,1],4,1000,1,184485,0x0000004c,Dict{Int16,Int16}(),[84,177],10),RpcApi.SimpleOrganism(0x0000000000007510,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_9(var_7::Int16=36,var_8::Bool=true)
            return var_7
        end
        function func_6(var_5::Int16=32298)
            o.mem[var_5] = var_5
            return var_5
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.stepLeft(o)
        Creature.eatUp(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
        end
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,184333,0x0000004c,Dict{Int16,Int16}(),[173,95],16),RpcApi.SimpleOrganism(0x0000000000006971,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_5(var_4::Int8=-70)
            for i::Int8 = 1:div(var_4,_LOOP_STEPS_DIVIDER)
                Creature.stepRight(o)
            end
            var_4 = var_4 - var_4
            return var_4
        end
        local var_1::Int8 = 118
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
        end
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,178272,0x0000004d,Dict{Int16,Int16}(),[85,177],10),RpcApi.SimpleOrganism(0x00000000000073f8,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_3(var_2::Int16=-475)
            return var_2
        end
        local var_1::Int8 = 118
        function func_9(var_7::Int8=26,var_8::Int8=56)
            Creature.stepLeft(o)
            Creature.stepUp(o)
            return var_7
        end
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatLeft(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,177927,0x00000043,Dict{Int16,Int16}(),[193,154],10),RpcApi.SimpleOrganism(0x0000000000007612,:(function (c::Config.ConfigData,o::Creature.Organism)
        function func_6(var_5::Bool=false)
            local var_7::Int16 = -16358
            Creature.stepRight(o)
            return var_5
        end
        function func_3(var_2::Int16=-475)
            return var_2
        end
        local var_1::Int8 = 118
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatRight(c,o,Int(var_1))
        Creature.stepLeft(o)
        Creature.eatRight(c,o,Int(var_1))
        Creature.eatDown(c,o,Int(var_1))
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,175925,0x0000003f,Dict{Int16,Int16}(),[258,147],11),RpcApi.SimpleOrganism(0x0000000000007497,:(function (c::Config.ConfigData,o::Creature.Organism)
        local var_9::Int64 = 695849987980146412
        local var_6::String = "TKDkiukK"
        function func_5(var_4::Int16=-30639)
            return var_4
        end
        Creature.eatDown(c,o,Int(var_1))
        Creature.eatUp(c,o,Int(var_1))
        var_6 = var_6[1:if length(var_6) > length(var_6)
                        0
                    else
                        length(var_6) - length(var_6)
                    end]
        var_6 = var_6[1:if length(var_6) > length(var_6) > 0
                        0
                    else
                        div(length(var_6),length(var_6))
                    end]
        var_9 = var_9 / var_9
        Creature.stepDown(o)
        Creature.eatRight(c,o,Int(var_1))
        for i::Int8 = 1:div(var_1,_LOOP_STEPS_DIVIDER)
            Creature.stepRight(o)
        end
        return true
    end),[110,300,98,0,1,1,1],0,1000,1,173295,0x00000054,Dict{Int16,Int16}(),[137,181],12)]
