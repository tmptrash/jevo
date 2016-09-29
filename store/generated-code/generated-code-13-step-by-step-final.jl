RpcApi.SimpleOrganism(0x0000000000063235,:(function (o::Creature.Organism)
     local var_33::Int16 = -17711
     function func_24(var_23::Int8=28)
         local var_27::Int64 = 7619797539999258533
         Creature.eatDown(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         var_27 = var_27 / var_27
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         return var_23
     end
     local var_21::Int8 = 88
     local var_20::Int16 = -11365
     function func_17(var_15::String="Dy4HZerj",var_16::Int16=3937)
         return var_15
     end
     local var_3::Int16 = 32203
     local var_2::Int8 = 83
     Creature.eatLeft(o,Int(var_2))
     Creature.eatLeft(o,Int(var_2))
     if var_21 > var_2
         Creature.stepDown(o)
     end
     var_2 = func_24(var_21)
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     Creature.stepLeft(o)
     var_20 = if haskey(o.mem,var_3)
             o.mem[var_3]
         else
             var_20
         end
     o.mem[var_20] = var_3
     var_21 = func_24(var_2)
     var_20 = if haskey(o.mem,var_20)
             o.mem[var_20]
         else
             var_20
         end
     if var_3 === var_3
         Creature.stepDown(o)
         Creature.stepLeft(o)
     end
     Creature.eatLeft(o,Int(var_2))
     Creature.eatLeft(o,Int(var_2))
     var_2 = func_24(var_21)
     var_20 = var_3 - var_3
     var_3 = if haskey(o.mem,var_3)
             o.mem[var_3]
         else
             var_3
         end
     Creature.stepLeft(o)
     var_21 = func_24(var_2)
     o.mem[var_3] = var_20
     Creature.eatLeft(o,Int(var_2))
     Creature.stepRight(o)
     Creature.stepDown(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.eatRight(o,Int(var_2))
     Creature.eatUp(o,Int(var_2))
     Creature.eatRight(o,Int(var_2))
     Creature.stepRight(o)
     for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
         Creature.stepLeft(o)
         Creature.stepLeft(o)
     end
     Creature.stepDown(o)
     var_21 = var_2 + var_2
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],1,9586,1,655790,0x01576620,Dict(0=>0,-6815=>-6815,32203=>0,-8455=>32203,-12751=>-6815),[43,996],73)

#------------------------------------------------------------------------------------------------------------------------------

RpcApi.SimpleOrganism(0x000000000006840b,:(function (o::Creature.Organism,)
     local var_33::Int16 = -17711
     function func_24(var_23::Int8=28)
         local var_27::Int64 = 7619797539999258533
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         return var_23
     end
     local var_21::Int8 = 88
     local var_20::Int16 = -11365
     function func_17(var_15::String="Dy4HZerj",var_16::Int16=3937)
         o.mem[var_16] = var_16
         o.mem[var_16] = var_16
         return var_15
     end
     local var_3::Int16 = 32203
     local var_2::Int8 = 83
     Creature.stepRight(o)
     Creature.eatLeft(o,Int(var_2))
     if var_21 > var_2
         Creature.stepDown(o)
         Creature.stepLeft(o)
     end
     var_2 = func_24(var_21)
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     Creature.stepLeft(o)
     var_20 = if haskey(o.mem,var_3)
             o.mem[var_3]
         else
             var_20
         end
     o.mem[var_20] = var_3
     var_21 = func_24(var_2)
     var_2 = func_24(var_21)
     if var_3 === var_3
         local var_26::Int64 = 4052005204377763992
         Creature.stepLeft(o)
     end
     Creature.eatLeft(o,Int(var_2))
     var_21 = func_24(var_2)
     var_2 = func_24(var_21)
     var_20 = var_3 - var_3
     var_3 = if haskey(o.mem,var_3)
             o.mem[var_3]
         else
             var_3
         end
     var_21 = func_24(var_2)
     o.mem[var_3] = var_20
     Creature.eatLeft(o,Int(var_2))
     Creature.stepDown(o)
     Creature.stepDown(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.eatRight(o,Int(var_2))
     Creature.stepRight(o)
     Creature.eatRight(o,Int(var_2))
     Creature.stepRight(o)
     for i::Int8 = 1:div(var_2,_LOOP_STEPS_DIVIDER)
         Creature.stepDown(o)
         Creature.stepRight(o)
         Creature.stepLeft(o)
     end
     Creature.stepDown(o)
     var_21 = var_2 + var_2
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],1,9586,59,2521319,0x015ee860,Dict(0=>0,-6815=>-6815,32203=>0,-8455=>32203,-12751=>-6815),[21,998],82)

#------------------------------------------------------------------------------------------------------------------------------

[RpcApi.SimpleOrganism(0x000000000007c887,:(function (o::Creature.Organism,)
     function func_35(var_33::Bool=false,var_34::Int16=22779)
         local var_45::String = "C5qJrm41"
         return var_33
     end
     function func_24(var_23::Int8=28)
         local var_44::Bool = false
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.stepLeft(o)
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatLeft(o,Int(var_23))
         if var_44 !== var_44
             Creature.stepLeft(o)
         end
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatUp(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         return var_23
     end
     local var_21::Int8 = 88
     local var_20::Int16 = -11365
     function func_17(var_15::String="Dy4HZerj",var_16::Int16=3937)
         Creature.stepRight(o)
         Creature.stepUp(o)
         return var_15
     end
     local var_3::Int16 = 32203
     local var_2::Int8 = 83
     Creature.eatUp(o,Int(var_21))
     if var_21 < var_21
     end
     Creature.eatLeft(o,Int(var_2))
     Creature.eatLeft(o,Int(var_2))
     if var_21 > var_2
         Creature.stepRight(o)
         Creature.stepUp(o)
         Creature.stepRight(o)
     end
     var_2 = func_24(var_21)
     Creature.stepLeft(o)
     Creature.eatUp(o,Int(var_21))
     var_20 = var_3 * var_20
     var_21 = func_24(var_21)
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     o.mem[var_20] = var_20
     Creature.stepUp(o)
     var_21 = func_24(var_2)
     var_20 = if haskey(o.mem,var_20)
             o.mem[var_20]
         else
             var_20
         end
     if var_3 != var_20
         Creature.stepLeft(o)
     end
     var_21 = func_24(var_21)
     Creature.eatLeft(o,Int(var_2))
     var_3 = if haskey(o.mem,var_3)
             o.mem[var_3]
         else
             var_3
         end
     Creature.stepLeft(o)
     var_21 = func_24(var_2)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.eatRight(o,Int(var_2))
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.eatLeft(o,Int(var_21))
     Creature.eatDown(o,Int(var_2))
     Creature.stepRight(o)
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],9,5699,1,4236892,0x017f2950,Dict(0=>32203,-11365=>32203,-6815=>-6815,32203=>0,-8455=>32203,-12751=>-6815,31465=>31465),[86,1],86)

#------------------------------------------------------------------------------------------------------------------------------

[RpcApi.SimpleOrganism(0x00000000000874a5,:(function (o::Creature.Organism,)
     function func_47(var_45::Bool=true,var_46::Int16=10622)
         var_46 = var_46 - var_46
         if var_45 === var_45
         end
         o.mem[var_46] = var_46
         return var_45
     end
     function func_35(var_33::Bool=false,var_34::Int16=22779)
         var_33 = var_33 & var_33
         return var_33
     end
     function func_24(var_23::Int8=28)
         local var_52::Int64 = 2425467459860682992
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         var_52 = var_52 / var_52
         Creature.eatDown(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.stepDown(o)
         if var_23 >= var_23
             Creature.stepLeft(o)
         end
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.stepRight(o)
         Creature.stepLeft(o)
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         return var_23
     end
     local var_21::Int8 = 88
     local var_20::Int16 = -11365
     function func_17(var_15::String="Dy4HZerj",var_16::Int16=3937)
         var_16 = if haskey(o.mem,var_16)
                 o.mem[var_16]
             else
                 var_16
             end
         Creature.stepUp(o)
         return var_15
     end
     local var_3::Int16 = 32203
     local var_2::Int8 = 83
     Creature.eatUp(o,Int(var_21))
     if var_21 < var_21
         local var_50::Int64 = 6585452198095506637
     end
     Creature.eatLeft(o,Int(var_2))
     Creature.eatLeft(o,Int(var_2))
     if var_21 > var_2
         Creature.stepUp(o)
         Creature.stepLeft(o)
         Creature.stepUp(o)
         Creature.stepRight(o)
     end
     var_2 = func_24(var_21)
     Creature.stepLeft(o)
     Creature.eatUp(o,Int(var_21))
     var_20 = var_3 * var_20
     var_21 = func_24(var_21)
     var_21 = func_24(var_21)
     o.mem[var_20] = var_20
     o.mem[var_20] = var_3
     var_21 = func_24(var_2)
     if var_3 != var_20
         Creature.stepLeft(o)
     end
     var_21 = func_24(var_21)
     Creature.eatLeft(o,Int(var_2))
     Creature.eatUp(o,Int(var_21))
     Creature.stepLeft(o)
     var_21 = func_24(var_2)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.eatLeft(o,Int(var_2))
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.eatRight(o,Int(var_2))
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.eatDown(o,Int(var_2))
     o.mem[var_20] = var_3
     Creature.stepRight(o)
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],3,4844,1,3145530,0x01965ed0,Dict(0=>32203,-11365=>32203,-6815=>-6815,32203=>0,-8455=>32203,-12751=>-6815,31465=>32203),[18,934],96)

#------------------------------------------------------------------------------------------------------------------------------

[RpcApi.SimpleOrganism(0x000000000008e556,:(function (o::Creature.Organism,)
     function func_47(var_45::Bool=true,var_46::Int16=10622)
         Creature.stepRight(o)
         if var_45 != var_45
         end
         return var_45
     end
     function func_35(var_33::Bool=false,var_34::Int16=22779)
         var_34 = if haskey(o.mem,var_34)
                 o.mem[var_34]
             else
                 var_34
             end
         return var_33
     end
     function func_24(var_23::Int8=28)
         local var_52::Int64 = 2425467459860682992
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.stepDown(o)
         if var_23 >= var_23
             Creature.stepLeft(o)
         end
         Creature.eatLeft(o,Int(var_23))
         var_52 = var_52 - var_52
         Creature.eatUp(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.stepRight(o)
         Creature.stepLeft(o)
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         return var_23
     end
     local var_21::Int8 = 88
     local var_20::Int16 = -11365
     function func_17(var_15::String="Dy4HZerj",var_16::Int16=3937)
         var_15 = var_15[if length(var_15) > length(var_15)
                         1
                     else
                         length(var_15)
                     end:if length(var_15) > length(var_15) > 0
                         0
                     else
                         end
                     end]
         return var_15
     end
     local var_3::Int16 = 32203
     local var_2::Int8 = 83
     Creature.eatUp(o,Int(var_21))
     if var_21 < var_21
         Creature.stepDown(o)
     end
     Creature.eatLeft(o,Int(var_2))
     Creature.eatLeft(o,Int(var_2))
     if var_21 > var_2
         Creature.stepUp(o)
         Creature.stepUp(o)
         Creature.stepUp(o)
         Creature.stepRight(o)
     end
     var_2 = func_24(var_21)
     Creature.stepLeft(o)
     Creature.eatUp(o,Int(var_21))
     var_20 = var_3 * var_20
     var_21 = func_24(var_21)
     var_21 = func_24(var_21)
     o.mem[var_20] = var_20
     o.mem[var_20] = var_3
     var_21 = func_24(var_2)
     if var_3 != var_20
         Creature.stepLeft(o)
     end
     var_21 = func_24(var_21)
     Creature.eatLeft(o,Int(var_2))
     Creature.eatUp(o,Int(var_21))
     Creature.stepLeft(o)
     var_21 = func_24(var_2)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.eatLeft(o,Int(var_2))
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.eatDown(o,Int(var_2))
     o.mem[var_20] = var_3
     Creature.stepRight(o)
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],3,4844,1,2081716,0x019f95f0,Dict(0=>32203,-11365=>32203,-6815=>-6815,32203=>0,-8455=>32203,-12751=>-6815,31465=>32203),[295,3],92)

#------------------------------------------------------------------------------------------------------------------------------

[RpcApi.SimpleOrganism(0x000000000009d049,:(function (o::Creature.Organism,)
     local var_46::Bool = true
     function func_35(var_33::Bool=false,var_34::Int16=22779)
         var_34 = var_34 + var_34
         Creature.stepRight(o)
         if var_33 == var_33
         end
         Creature.stepDown(o)
         Creature.stepLeft(o)
         Creature.stepLeft(o)
         Creature.stepRight(o)
         return var_33
     end
     function func_24(var_23::Int8=28)
         local var_49::String = "WlX2dxq4"
         local var_44::Int64 = -8745441503928347880
         Creature.eatUp(o,Int(var_23))
         Creature.eatRight(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         if var_23 < var_23
         end
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         var_44 = var_44 - var_44
         Creature.stepLeft(o)
         Creature.eatDown(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.stepUp(o)
         Creature.stepLeft(o)
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.stepUp(o)
         Creature.eatLeft(o,Int(var_23))
         Creature.eatDown(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.stepLeft(o)
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatUp(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         Creature.eatLeft(o,Int(var_23))
         return var_23
     end
     local var_21::Int8 = 88
     local var_20::Int16 = -11365
     function func_17(var_15::String="Dy4HZerj",var_16::Int16=3937)
         return var_15
     end
     local var_3::Int16 = 32203
     local var_2::Int8 = 83
     Creature.eatUp(o,Int(var_21))
     Creature.eatLeft(o,Int(var_2))
     Creature.eatLeft(o,Int(var_2))
     if var_21 > var_2
         local var_47::Bool = false
         Creature.stepRight(o)
         Creature.stepRight(o)
         Creature.stepUp(o)
         Creature.stepDown(o)
     end
     var_2 = func_24(var_21)
     Creature.stepUp(o)
     o.mem[var_20] = var_20
     var_21 = func_24(var_21)
     o.mem[var_20] = var_3
     if var_21 === var_21
         Creature.stepLeft(o)
     end
     o.mem[var_20] = var_20
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     var_21 = var_21 + var_21
     o.mem[var_20] = var_3
     var_21 = func_24(var_2)
     Creature.stepUp(o)
     Creature.eatRight(o,Int(var_21))
     Creature.stepLeft(o)
     var_21 = func_24(var_21)
     Creature.eatLeft(o,Int(var_2))
     var_21 = func_24(var_2)
     Creature.eatUp(o,Int(var_21))
     var_21 = func_24(var_2)
     o.mem[var_3] = var_20
     Creature.stepRight(o)
     var_3 = if haskey(o.mem,var_3)
             o.mem[var_3]
         else
             var_3
         end
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepLeft(o)
     Creature.stepRight(o)
     Creature.stepRight(o)
     Creature.eatRight(o,Int(var_21))
     Creature.eatDown(o,Int(var_21))
     Creature.stepRight(o)
     Creature.stepUp(o)
     Creature.stepRight(o)
     Creature.stepUp(o)
     o.mem[var_20] = var_3
     Creature.stepRight(o)
     Creature.stepRight(o)
     var_21 = var_21 / var_2
     Creature.stepLeft(o)
     Creature.stepUp(o)
     Creature.eatLeft(o,Int(var_21))
     if var_20 < var_20
         o.mem[var_40] = var_40
     end
     Creature.stepRight(o)
     Creature.stepRight(o)
     return true
 end),[100,300,95,0,1,1,1],1,5208,1,6209333,0x019790a0,Dict(0=>32203,-11365=>-11365,-6815=>-6815,32203=>-11365,-8455=>32203,-12751=>-6815),[123,1],111)

#------------------------------------------------------------------------------------------------------------------------------

[RpcApi.SimpleOrganism(0x00000000000d984b,:(function (o::Creature.Organism,)
        local var_70::Int8 = -75
        local var_65::Bool = true
        function func_61(var_59::Bool=false,var_60::Int16=32538)
            Creature.stepLeft(o)
            return var_59
        end
        local var_46::Bool = true
        function func_35(var_33::Bool=false,var_34::Int16=22779)
            local var_72::Int16 = -20135
            local var_52::String = "ftwMEhZ0"
            local var_67::Int16 = 32063
            local var_68::Int8 = 92
            Creature.eatDown(o,Int(var_68))
            var_33 = var_33 & var_33
            Creature.stepRight(o)
            Creature.eatRight(o,Int(var_68))
            o.mem[var_67] = var_67
            if var_68 > var_68
            end
            Creature.eatRight(o,Int(var_68))
            var_52 = var_52[1:if length(var_52) > length(var_52)
                            0
                        else
                            length(var_52) - length(var_52)
                        end]
            Creature.eatRight(o,Int(var_68))
            return var_33
        end
        function func_24(var_23::Int8=28)
            local var_69::Int8 = -102
            local var_64::Int16 = -29512
            Creature.eatLeft(o,Int(var_23))
            Creature.eatLeft(o,Int(var_23))
            Creature.eatRight(o,Int(var_23))
            for i::Int8 = 1:div(var_69,_LOOP_STEPS_DIVIDER)
                Creature.stepRight(o)
            end
            Creature.eatLeft(o,Int(var_23))
            Creature.stepLeft(o)
            Creature.eatUp(o,Int(var_23))
            Creature.eatLeft(o,Int(var_23))
            Creature.eatLeft(o,Int(var_23))
            Creature.stepLeft(o)
            Creature.eatLeft(o,Int(var_23))
            Creature.eatUp(o,Int(var_23))
            var_23 = var_23 * var_69
            Creature.stepDown(o)
            Creature.eatLeft(o,Int(var_23))
            Creature.eatLeft(o,Int(var_23))
            Creature.stepLeft(o)
            Creature.stepUp(o)
            Creature.stepUp(o)
            Creature.eatRight(o,Int(var_23))
            for i::Int8 = 1:div(var_69,_LOOP_STEPS_DIVIDER)
            end
            Creature.eatRight(o,Int(var_23))
            Creature.stepUp(o)
            Creature.eatLeft(o,Int(var_23))
            var_69 = var_69 + var_23
            Creature.eatRight(o,Int(var_23))
            Creature.eatUp(o,Int(var_69))
            Creature.stepUp(o)
            Creature.eatUp(o,Int(var_23))
            Creature.stepRight(o)
            o.mem[var_64] = var_64
            Creature.eatUp(o,Int(var_23))
            for i::Int8 = 1:div(var_23,_LOOP_STEPS_DIVIDER)
                local var_73::Int64 = -1174901014922562206
                Creature.stepDown(o)
            end
            Creature.eatLeft(o,Int(var_23))
            var_64 = if haskey(o.mem,var_64)
                    o.mem[var_64]
                else
                    var_64
                end
            o.mem[var_64] = var_64
            for i::Int8 = 1:div(var_23,_LOOP_STEPS_DIVIDER)
                local var_71::String = "J0uBz06k"
            end
            Creature.eatLeft(o,Int(var_23))
            Creature.eatLeft(o,Int(var_23))
            Creature.eatUp(o,Int(var_23))
            var_69 = var_23 / var_69
            Creature.eatUp(o,Int(var_23))
            Creature.eatDown(o,Int(var_23))
            Creature.eatLeft(o,Int(var_23))
            Creature.eatUp(o,Int(var_23))
            Creature.eatUp(o,Int(var_23))
            var_64 = var_64 + var_64
            Creature.stepLeft(o)
            o.mem[var_64] = var_64
            var_64 = if haskey(o.mem,var_64)
                    o.mem[var_64]
                else
                    var_64
                end
            var_23 = var_23 * var_69
            return var_23
        end
        local var_21::Int8 = 88
        local var_20::Int16 = -11365
        local var_3::Int16 = 32203
        local var_2::Int8 = 83
        var_46 = func_35(var_46,var_20)
        o.mem[var_20] = var_3
        Creature.eatDown(o,Int(var_21))
        var_21 = func_24(var_21)
        var_46 = var_46 & var_46
        Creature.stepDown(o)
        var_21 = func_24(var_21)
        var_21 = func_24(var_21)
        var_46 = var_46 * var_46
        var_21 = func_24(var_2)
        var_20 = var_3 - var_20
        var_2 = func_24(var_2)
        Creature.stepLeft(o)
        Creature.eatDown(o,Int(var_21))
        var_21 = func_24(var_21)
        if var_2 < var_21
            local var_75::String = "k8rd2EVQ"
            Creature.stepRight(o)
        end
        var_21 = func_24(var_21)
        var_20 = var_20 / var_20
        var_20 = var_3 / var_3
        Creature.eatLeft(o,Int(var_2))
        Creature.stepUp(o)
        var_21 = func_24(var_2)
        Creature.stepDown(o)
        o.mem[var_3] = var_20
        var_21 = func_24(var_2)
        Creature.stepDown(o)
        Creature.stepRight(o)
        for i::Int8 = 1:div(var_21,_LOOP_STEPS_DIVIDER)
            local var_74::Int8 = 53
        end
        var_3 = var_20 + var_20
        var_46 = func_35(var_46,var_20)
        Creature.stepRight(o)
        Creature.stepUp(o)
        Creature.stepRight(o)
        var_2 = var_2 / var_2
        var_46 = var_46 * var_46
        var_65 = func_35(var_46,var_20)
        var_46 = func_35(var_46)
        Creature.eatLeft(o,Int(var_21))
        var_2 = var_70 / var_21
        Creature.stepDown(o)
        Creature.stepRight(o)
        Creature.stepRight(o)
        var_21 = var_21 / var_21
        Creature.stepUp(o)
        var_46 = func_35(var_46)
        Creature.stepRight(o)
        Creature.eatRight(o,Int(var_21))
        Creature.stepDown(o)
        var_46 = func_35(var_46)
        Creature.eatLeft(o,Int(var_21))
        Creature.stepRight(o)
        return true
    end)