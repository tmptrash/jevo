    :(function (o::Creature.Organism,)
        function func_3(var_12::Int64=8428943236158514626,var_13::Int8=-102)
            return var_12
        end
        function func_2(var_10::Int64=8331567932446283170,var_11::Bool=true)
            return var_10
        end
        Creature.stepRight(o)
        local var_7::Int8 = 125
        Creature.stepUp(o)
        Creature.eatUp(o,Int(var_7))
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        Creature.eatLeft(o,Int(var_7))
        begin
            local var_8::Int8
            for var_8 = 1:var_7
                Creature.stepLeft(o)
                Creature.stepRight(o)
                local var_9::Int16 = -28033
            end
        end
        Creature.stepRight(o)
	)