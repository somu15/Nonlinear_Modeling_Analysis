######################################################################################
#                                                                                    #
# This is an intermediate file generated by the command ShallowFoundationGen.        #
# Source it after the ShallowFoundationGen command.                                  #
# Use this file to check shallow foundation nodes, elements,  fixity details         #
# ShallowFoundationGen.cpp is developed by Prishati Raychowdhury (UCSD)              #
#                                                                                    #
######################################################################################


 # Foundation Tag =3
 # Foundation Base Condition Tag =5

 #node   $NodeTag  $Xcoord  $Ycoord 
 node  3001  -33.4645 0
 node  300001 -33.4645 0
 node  3002  -32.7952 0
 node  300002 -32.7952 0
 node  3003  -32.1259 0
 node  300003 -32.1259 0
 node  3004  -31.4566 0
 node  300004 -31.4566 0
 node  3005  -30.7873 0
 node  300005 -30.7873 0
 node  3006  -30.1181 0
 node  300006 -30.1181 0
 node  3007  -29.4488 0
 node  300007 -29.4488 0
 node  3008  -28.7795 0
 node  300008 -28.7795 0
 node  3009  -28.1102 0
 node  300009 -28.1102 0
 node  3010  -27.4409 0
 node  300010 -27.4409 0
 node  3011  -26.7716 0
 node  300011 -26.7716 0
 node  3012  -26.1023 0
 node  300012 -26.1023 0
 node  3013  -25.433 0
 node  300013 -25.433 0
 node  3014  -24.0944 0
 node  300014 -24.0944 0
 node  3015  -22.7559 0
 node  300015 -22.7559 0
 node  3016  -21.4173 0
 node  300016 -21.4173 0
 node  3017  -20.0787 0
 node  300017 -20.0787 0
 node  3018  -18.7401 0
 node  300018 -18.7401 0
 node  3019  -17.4015 0
 node  300019 -17.4015 0
 node  3020  -16.063 0
 node  300020 -16.063 0
 node  3021  -14.7244 0
 node  300021 -14.7244 0
 node  3022  -13.3858 0
 node  300022 -13.3858 0
 node  3023  -12.0472 0
 node  300023 -12.0472 0
 node  3024  -10.7086 0
 node  300024 -10.7086 0
 node  3025  -9.37006 0
 node  300025 -9.37006 0
 node  3026  -8.03148 0
 node  300026 -8.03148 0
 node  3027  -6.6929 0
 node  300027 -6.6929 0
 node  3028  -5.35432 0
 node  300028 -5.35432 0
 node  3029  -4.01574 0
 node  300029 -4.01574 0
 node  3030  -2.67716 0
 node  300030 -2.67716 0
 node  3031  -1.33858 0
 node  300031 -1.33858 0
 node  3032  3.55271e-015 0
 node  300032 3.55271e-015 0
 node  3033  1.33858 0
 node  300033 1.33858 0
 node  3034  2.67716 0
 node  300034 2.67716 0
 node  3035  4.01574 0
 node  300035 4.01574 0
 node  3036  5.35432 0
 node  300036 5.35432 0
 node  3037  6.6929 0
 node  300037 6.6929 0
 node  3038  8.03148 0
 node  300038 8.03148 0
 node  3039  9.37006 0
 node  300039 9.37006 0
 node  3040  10.7086 0
 node  300040 10.7086 0
 node  3041  12.0472 0
 node  300041 12.0472 0
 node  3042  13.3858 0
 node  300042 13.3858 0
 node  3043  14.7244 0
 node  300043 14.7244 0
 node  3044  16.063 0
 node  300044 16.063 0
 node  3045  17.4015 0
 node  300045 17.4015 0
 node  3046  18.7401 0
 node  300046 18.7401 0
 node  3047  20.0787 0
 node  300047 20.0787 0
 node  3048  21.4173 0
 node  300048 21.4173 0
 node  3049  22.7559 0
 node  300049 22.7559 0
 node  3050  24.0944 0
 node  300050 24.0944 0
 node  3051  25.433 0
 node  300051 25.433 0
 node  3052  26.1023 0
 node  300052 26.1023 0
 node  3053  26.7716 0
 node  300053 26.7716 0
 node  3054  27.4409 0
 node  300054 27.4409 0
 node  3055  28.1102 0
 node  300055 28.1102 0
 node  3056  28.7795 0
 node  300056 28.7795 0
 node  3057  29.4488 0
 node  300057 29.4488 0
 node  3058  30.1181 0
 node  300058 30.1181 0
 node  3059  30.7873 0
 node  300059 30.7873 0
 node  3060  31.4566 0
 node  300060 31.4566 0
 node  3061  32.1259 0
 node  300061 32.1259 0
 node  3062  32.7952 0
 node  300062 32.7952 0
 node  3063  33.4645 0
 node  300063 33.4645 0
 node  300064 33.4645 0
 node  300065 33.4645 0

 #equalDOF $rNodeTag $cNodeTag $dof1 $dof2 $dof3
 equalDOF 13  3032 1 2 3 

 #Materials for shallow foundation

 #uniaxialMaterial  QzSimple2  $matTag  $SoilType  $Qult-end-extreme  $z50-end  <TpSoil>  <CradSoil> 
 uniaxialMaterial  QzSimple2 301  2 6.91884 0.224658 0.1 0.128

 #uniaxialMaterial  QzSimple2  $matTag  $SoilType  $Qult-end  $z50-end  <TpSoil>  <CradSoil> 
 uniaxialMaterial  QzSimple2 302  2 13.8377 0.224658 0.1 0.128

 #uniaxialMaterial  QzSimple2  $matTag  $SoilType  $Qult-mid  $z50-mid  <TpSoil>  <CradSoil> 
 uniaxialMaterial  QzSimple2 303  2 27.6754 1.12329 0.1 0.128

 #uniaxialMaterial  PySimple2  $matTag  $SoilType  $Pp  $xp50  Cd  <CradSoil> 
 uniaxialMaterial  PySimple2 305  2 30.1595 0.00623684 0.1 0.128

 #uniaxialMaterial  TzSimple2  $matTag  $SoilType  $Tult  $xt50  <CradSoil> 
 uniaxialMaterial  TzSimple2 306  2 80.695 0.0627 0.1 0.128

 #Vertical spring element connectivity
 #element   zeroLength  $eleTag  $iNode  $jNode  -mat$matTag  -dir  $dir 
 element   zeroLength 300001  300001  3001 -mat 301   -dir  2 
 element   zeroLength 300002  300002  3002 -mat 302   -dir  2 
 element   zeroLength 300003  300003  3003 -mat 302   -dir  2 
 element   zeroLength 300004  300004  3004 -mat 302   -dir  2 
 element   zeroLength 300005  300005  3005 -mat 302   -dir  2 
 element   zeroLength 300006  300006  3006 -mat 302   -dir  2 
 element   zeroLength 300007  300007  3007 -mat 302   -dir  2 
 element   zeroLength 300008  300008  3008 -mat 302   -dir  2 
 element   zeroLength 300009  300009  3009 -mat 302   -dir  2 
 element   zeroLength 300010  300010  3010 -mat 302   -dir  2 
 element   zeroLength 300011  300011  3011 -mat 302   -dir  2 
 element   zeroLength 300012  300012  3012 -mat 302   -dir  2 
 element   zeroLength 300013  300013  3013 -mat 303   -dir  2 
 element   zeroLength 300014  300014  3014 -mat 303   -dir  2 
 element   zeroLength 300015  300015  3015 -mat 303   -dir  2 
 element   zeroLength 300016  300016  3016 -mat 303   -dir  2 
 element   zeroLength 300017  300017  3017 -mat 303   -dir  2 
 element   zeroLength 300018  300018  3018 -mat 303   -dir  2 
 element   zeroLength 300019  300019  3019 -mat 303   -dir  2 
 element   zeroLength 300020  300020  3020 -mat 303   -dir  2 
 element   zeroLength 300021  300021  3021 -mat 303   -dir  2 
 element   zeroLength 300022  300022  3022 -mat 303   -dir  2 
 element   zeroLength 300023  300023  3023 -mat 303   -dir  2 
 element   zeroLength 300024  300024  3024 -mat 303   -dir  2 
 element   zeroLength 300025  300025  3025 -mat 303   -dir  2 
 element   zeroLength 300026  300026  3026 -mat 303   -dir  2 
 element   zeroLength 300027  300027  3027 -mat 303   -dir  2 
 element   zeroLength 300028  300028  3028 -mat 303   -dir  2 
 element   zeroLength 300029  300029  3029 -mat 303   -dir  2 
 element   zeroLength 300030  300030  3030 -mat 303   -dir  2 
 element   zeroLength 300031  300031  3031 -mat 303   -dir  2 
 element   zeroLength 300032  300032  3032 -mat 303   -dir  2 
 element   zeroLength 300033  300033  3033 -mat 303   -dir  2 
 element   zeroLength 300034  300034  3034 -mat 303   -dir  2 
 element   zeroLength 300035  300035  3035 -mat 303   -dir  2 
 element   zeroLength 300036  300036  3036 -mat 303   -dir  2 
 element   zeroLength 300037  300037  3037 -mat 303   -dir  2 
 element   zeroLength 300038  300038  3038 -mat 303   -dir  2 
 element   zeroLength 300039  300039  3039 -mat 303   -dir  2 
 element   zeroLength 300040  300040  3040 -mat 303   -dir  2 
 element   zeroLength 300041  300041  3041 -mat 303   -dir  2 
 element   zeroLength 300042  300042  3042 -mat 303   -dir  2 
 element   zeroLength 300043  300043  3043 -mat 303   -dir  2 
 element   zeroLength 300044  300044  3044 -mat 303   -dir  2 
 element   zeroLength 300045  300045  3045 -mat 303   -dir  2 
 element   zeroLength 300046  300046  3046 -mat 303   -dir  2 
 element   zeroLength 300047  300047  3047 -mat 303   -dir  2 
 element   zeroLength 300048  300048  3048 -mat 303   -dir  2 
 element   zeroLength 300049  300049  3049 -mat 303   -dir  2 
 element   zeroLength 300050  300050  3050 -mat 303   -dir  2 
 element   zeroLength 300051  300051  3051 -mat 303   -dir  2 
 element   zeroLength 300052  300052  3052 -mat 302   -dir  2 
 element   zeroLength 300053  300053  3053 -mat 302   -dir  2 
 element   zeroLength 300054  300054  3054 -mat 302   -dir  2 
 element   zeroLength 300055  300055  3055 -mat 302   -dir  2 
 element   zeroLength 300056  300056  3056 -mat 302   -dir  2 
 element   zeroLength 300057  300057  3057 -mat 302   -dir  2 
 element   zeroLength 300058  300058  3058 -mat 302   -dir  2 
 element   zeroLength 300059  300059  3059 -mat 302   -dir  2 
 element   zeroLength 300060  300060  3060 -mat 302   -dir  2 
 element   zeroLength 300061  300061  3061 -mat 302   -dir  2 
 element   zeroLength 300062  300062  3062 -mat 302   -dir  2 
 element   zeroLength 300063  300063  3063 -mat 301   -dir  2 

 #Horizontal spring element connectivity
 #element   zeroLength  $eleTag  $iNode  $jNode  -mat$matTag  -dir  $dir 
 element   zeroLength 300064  3063  300064 -mat 305   -dir  1 
 element   zeroLength 300065  3063  300065 -mat 306   -dir  1 

 # geomTransf Linear $transfTag <-jntOffset $dXi $dYi $dXj $dYj>
 geomTransf Linear  30

 #foundation element connectivity
 #element   elasticBeamColumn  $eleTag  $iNode  $jNode  $A  $E  $Iz  $transfTag 
 element elasticBeamColumn 3001 3001  3002 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3002 3002  3003 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3003 3003  3004 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3004 3004  3005 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3005 3005  3006 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3006 3006  3007 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3007 3007  3008 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3008 3008  3009 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3009 3009  3010 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3010 3010  3011 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3011 3011  3012 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3012 3012  3013 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3013 3013  3014 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3014 3014  3015 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3015 3015  3016 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3016 3016  3017 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3017 3017  3018 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3018 3018  3019 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3019 3019  3020 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3020 3020  3021 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3021 3021  3022 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3022 3022  3023 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3023 3023  3024 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3024 3024  3025 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3025 3025  3026 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3026 3026  3027 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3027 3027  3028 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3028 3028  3029 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3029 3029  3030 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3030 3030  3031 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3031 3031  3032 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3032 3032  3033 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3033 3033  3034 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3034 3034  3035 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3035 3035  3036 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3036 3036  3037 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3037 3037  3038 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3038 3038  3039 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3039 3039  3040 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3040 3040  3041 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3041 3041  3042 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3042 3042  3043 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3043 3043  3044 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3044 3044  3045 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3045 3045  3046 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3046 3046  3047 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3047 3047  3048 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3048 3048  3049 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3049 3049  3050 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3050 3050  3051 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3051 3051  3052 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3052 3052  3053 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3053 3053  3054 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3054 3054  3055 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3055 3055  3056 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3056 3056  3057 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3057 3057  3058 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3058 3058  3059 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3059 3059  3060 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3060 3060  3061 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3061 3061  3062 790.498 3625.94 9189.53 30
 element elasticBeamColumn 3062 3062  3063 790.498 3625.94 9189.53 30

 #fixity 
 fix  300001 1 1 1
 fix  300002 1 1 1
 fix  300003 1 1 1
 fix  300004 1 1 1
 fix  300005 1 1 1
 fix  300006 1 1 1
 fix  300007 1 1 1
 fix  300008 1 1 1
 fix  300009 1 1 1
 fix  300010 1 1 1
 fix  300011 1 1 1
 fix  300012 1 1 1
 fix  300013 1 1 1
 fix  300014 1 1 1
 fix  300015 1 1 1
 fix  300016 1 1 1
 fix  300017 1 1 1
 fix  300018 1 1 1
 fix  300019 1 1 1
 fix  300020 1 1 1
 fix  300021 1 1 1
 fix  300022 1 1 1
 fix  300023 1 1 1
 fix  300024 1 1 1
 fix  300025 1 1 1
 fix  300026 1 1 1
 fix  300027 1 1 1
 fix  300028 1 1 1
 fix  300029 1 1 1
 fix  300030 1 1 1
 fix  300031 1 1 1
 fix  300032 1 1 1
 fix  300033 1 1 1
 fix  300034 1 1 1
 fix  300035 1 1 1
 fix  300036 1 1 1
 fix  300037 1 1 1
 fix  300038 1 1 1
 fix  300039 1 1 1
 fix  300040 1 1 1
 fix  300041 1 1 1
 fix  300042 1 1 1
 fix  300043 1 1 1
 fix  300044 1 1 1
 fix  300045 1 1 1
 fix  300046 1 1 1
 fix  300047 1 1 1
 fix  300048 1 1 1
 fix  300049 1 1 1
 fix  300050 1 1 1
 fix  300051 1 1 1
 fix  300052 1 1 1
 fix  300053 1 1 1
 fix  300054 1 1 1
 fix  300055 1 1 1
 fix  300056 1 1 1
 fix  300057 1 1 1
 fix  300058 1 1 1
 fix  300059 1 1 1
 fix  300060 1 1 1
 fix  300061 1 1 1
 fix  300062 1 1 1
 fix  300063 1 1 1
 fix  300064 1 1 1
 fix  300065 1 1 1

 set endFootNodeL_3   3001
 set endFootNodeR_3   3063
 set endSprEleL_3   300001
 set endSprEleR_3   300063
 set midSprEle_3   300032
