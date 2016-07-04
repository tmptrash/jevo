[RpcApi.SimpleOrganism(0x00000000000263bc,:(function (o::Creature.Organism,)
     local var_82::Int16 = -28253
     function func_63(var_62::Int64=-5487471262987408691)
         return var_62
     end
     local var_55::Int64 = 8062249648076403993
     function func_45(var_43::ASCIIString="D42FzkNp",var_44::ASCIIString="QVktoUuw")
         Creature.stepLeft(o)
         Creature.stepRight(o)
         Creature.stepLeft(o)
         return var_43
     end
     local var_34::Int64 = -6982312523886405890
     function func_25(var_24::Int64=5926471544133193903)
         return var_24
     end
     function func_9(var_8::Int8=-18)
         local var_85::Int16 = -29091
         local var_76::Int64 = -8364194871863581978
         local var_57::Bool = true
         local var_26::ASCIIString = "zSGt1MST"
         local var_16::Bool = true
         local var_14::Int8 = 115
         local var_13::Int16 = 31438
         Creature.eatDown(o,Int(var_14))
         if var_14 <= var_14
         end
         var_28 = Int(Creature.getEnergy(o,Int(var_13),Int(var_13)))
         var_28 = var_28 / var_76
         Creature.eatDown(o,Int(var_8))
         Creature.eatLeft(o,Int(var_14))
         var_13 = var_13 * var_13
         Creature.stepUp(o)
         Creature.eatRight(o,Int(var_8))
         o.mem[var_13] = var_13
         Creature.eatUp(o,Int(var_8))
         Creature.eatLeft(o,Int(var_8))
         Creature.eatLeft(o,Int(var_14))
         Creature.stepLeft(o)
         var_26 = var_26[1:if length(var_26) > length(var_26)
                         0
                     else
                         length(var_26) - length(var_26)
                     end]
         Creature.eatLeft(o,Int(var_14))
         Creature.stepDown(o)
         var_28 = var_28 + var_28
         Creature.eatLeft(o,Int(var_14))
         Creature.eatLeft(o,Int(var_8))
         var_13 = if haskey(o.mem,var_85)
                 o.mem[var_85]
             else
                 var_13
             end
         var_13 = if haskey(o.mem,var_13)
                 o.mem[var_13]
             else
                 var_13
             end
         var_13 = var_13 + var_13
         Creature.eatDown(o,Int(var_14))
         Creature.eatLeft(o,Int(var_14))
         var_57 = Bool(abs(var_16 - var_16))
         Creature.stepDown(o)
         Creature.eatLeft(o,Int(var_8))
         var_28 = Int(Creature.getEnergy(o,Int(var_13),Int(var_13)))
         var_13 = var_13 - var_13
         if var_28 !== var_28
             Creature.stepUp(o)
         end
         Creature.stepDown(o)
         Creature.eatLeft(o,Int(var_14))
         Creature.eatDown(o,Int(var_14))
         Creature.stepLeft(o)
         var_26 = var_26 * var_26
         var_13 = var_85 / var_85
         Creature.eatDown(o,Int(var_14))
         Creature.eatRight(o,Int(var_14))
         if var_8 !== var_14
             Creature.stepUp(o)
         end
         Creature.eatRight(o,Int(var_8))
         if var_26 === var_26
             Creature.stepDown(o)
         end
         Creature.eatLeft(o,Int(var_14))
         Creature.stepDown(o)
         Creature.eatDown(o,Int(var_14))
         Creature.eatUp(o,Int(var_8))
         Creature.stepUp(o)
         if var_16 === var_16
             Creature.stepUp(o)
             Creature.stepUp(o)
             Creature.stepRight(o)
         end
         var_28 = Int(Creature.getEnergy(o,Int(var_13),Int(var_13)))
         Creature.eatDown(o,Int(var_14))
         Creature.stepUp(o)
         return var_8
     end
     local var_1::Int8 = 59
     Creature.stepLeft(o)
     var_12 = func_9(var_1)
     Creature.eatRight(o,Int(var_1))
     Creature.eatLeft(o,Int(var_1))
     var_1 = func_9(var_1)
     var_12 = func_9(var_1)
     var_1 = var_1 + var_12
     Creature.stepDown(o)
     var_34 = var_34 / var_34
     Creature.eatLeft(o,Int(var_12))
     if var_55 == var_34
         Creature.stepLeft(o)
     end
     var_12 = func_9(var_12)
     o.mem[var_82] = var_82
     Creature.eatUp(o,Int(var_1))
     Creature.stepDown(o)
     Creature.eatLeft(o,Int(var_12))
     Creature.eatUp(o,Int(var_1))
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.eatRight(o,Int(var_12))
     Creature.stepDown(o)
     var_34 = var_34 + var_34
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.eatDown(o,Int(var_1))
     var_34 = var_34 - var_34
     for i::Int8 = 1:div(var_12,_LOOP_STEPS_DIVIDER)
     end
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepUp(o)
     if var_34 != var_34
     end
     Creature.stepRight(o)
     Creature.eatLeft(o,Int(var_1))
     if var_1 != var_1
         Creature.stepUp(o)
     end
     Creature.eatRight(o,Int(var_1))
     Creature.stepUp(o)
     Creature.eatDown(o,Int(var_1))
     for i::Int8 = 1:div(var_15,_LOOP_STEPS_DIVIDER)
         Creature.stepRight(o)
     end
     Creature.eatRight(o,Int(var_1))
     Creature.stepUp(o)
     var_34 = Int(Creature.getEnergy(o,Int(var_82),Int(var_82)))
     if var_12 <= var_12
         Creature.stepRight(o)
         Creature.stepLeft(o)
     end
     Creature.stepLeft(o)
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],7,915,2,440300,0x0000002c,Dict(31438=>31438,-28253=>-28253,-2660=>-2660,-5320=>-5320,-572=>-572,1=>1),[17,1],124)