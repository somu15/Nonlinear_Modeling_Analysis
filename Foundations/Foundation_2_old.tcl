######################################################################################
#                                                                                    #
# This is an intermediate file generated by the command ShallowFoundationGen.        #
# Source it after the ShallowFoundationGen command.                                  #
# Use this file to check shallow foundation nodes, elements,  fixity details         #
# ShallowFoundationGen.cpp is developed by Prishati Raychowdhury (UCSD)              #
#                                                                                    #
######################################################################################


 # Foundation Tag =2
 # Foundation Base Condition Tag =5

 #node   $NodeTag  $Xcoord  $Ycoord 
 node  2001  -33.4645 0
 node  200001 -33.4645 0
 node  2002  -32.7952 0
 node  200002 -32.7952 0
 node  2003  -32.1259 0
 node  200003 -32.1259 0
 node  2004  -31.4566 0
 node  200004 -31.4566 0
 node  2005  -30.7873 0
 node  200005 -30.7873 0
 node  2006  -30.1181 0
 node  200006 -30.1181 0
 node  2007  -29.4488 0
 node  200007 -29.4488 0
 node  2008  -28.7795 0
 node  200008 -28.7795 0
 node  2009  -28.1102 0
 node  200009 -28.1102 0
 node  2010  -27.4409 0
 node  200010 -27.4409 0
 node  2011  -26.7716 0
 node  200011 -26.7716 0
 node  2012  -26.1023 0
 node  200012 -26.1023 0
 node  2013  -25.433 0
 node  200013 -25.433 0
 node  2014  -24.0944 0
 node  200014 -24.0944 0
 node  2015  -22.7559 0
 node  200015 -22.7559 0
 node  2016  -21.4173 0
 node  200016 -21.4173 0
 node  2017  -20.0787 0
 node  200017 -20.0787 0
 node  2018  -18.7401 0
 node  200018 -18.7401 0
 node  2019  -17.4015 0
 node  200019 -17.4015 0
 node  2020  -16.063 0
 node  200020 -16.063 0
 node  2021  -14.7244 0
 node  200021 -14.7244 0
 node  2022  -13.3858 0
 node  200022 -13.3858 0
 node  2023  -12.0472 0
 node  200023 -12.0472 0
 node  2024  -10.7086 0
 node  200024 -10.7086 0
 node  2025  -9.37006 0
 node  200025 -9.37006 0
 node  2026  -8.03148 0
 node  200026 -8.03148 0
 node  2027  -6.6929 0
 node  200027 -6.6929 0
 node  2028  -5.35432 0
 node  200028 -5.35432 0
 node  2029  -4.01574 0
 node  200029 -4.01574 0
 node  2030  -2.67716 0
 node  200030 -2.67716 0
 node  2031  -1.33858 0
 node  200031 -1.33858 0
 node  2032  3.55271e-015 0
 node  200032 3.55271e-015 0
 node  2033  1.33858 0
 node  200033 1.33858 0
 node  2034  2.67716 0
 node  200034 2.67716 0
 node  2035  4.01574 0
 node  200035 4.01574 0
 node  2036  5.35432 0
 node  200036 5.35432 0
 node  2037  6.6929 0
 node  200037 6.6929 0
 node  2038  8.03148 0
 node  200038 8.03148 0
 node  2039  9.37006 0
 node  200039 9.37006 0
 node  2040  10.7086 0
 node  200040 10.7086 0
 node  2041  12.0472 0
 node  200041 12.0472 0
 node  2042  13.3858 0
 node  200042 13.3858 0
 node  2043  14.7244 0
 node  200043 14.7244 0
 node  2044  16.063 0
 node  200044 16.063 0
 node  2045  17.4015 0
 node  200045 17.4015 0
 node  2046  18.7401 0
 node  200046 18.7401 0
 node  2047  20.0787 0
 node  200047 20.0787 0
 node  2048  21.4173 0
 node  200048 21.4173 0
 node  2049  22.7559 0
 node  200049 22.7559 0
 node  2050  24.0944 0
 node  200050 24.0944 0
 node  2051  25.433 0
 node  200051 25.433 0
 node  2052  26.1023 0
 node  200052 26.1023 0
 node  2053  26.7716 0
 node  200053 26.7716 0
 node  2054  27.4409 0
 node  200054 27.4409 0
 node  2055  28.1102 0
 node  200055 28.1102 0
 node  2056  28.7795 0
 node  200056 28.7795 0
 node  2057  29.4488 0
 node  200057 29.4488 0
 node  2058  30.1181 0
 node  200058 30.1181 0
 node  2059  30.7873 0
 node  200059 30.7873 0
 node  2060  31.4566 0
 node  200060 31.4566 0
 node  2061  32.1259 0
 node  200061 32.1259 0
 node  2062  32.7952 0
 node  200062 32.7952 0
 node  2063  33.4645 0
 node  200063 33.4645 0
 node  200064 33.4645 0
 node  200065 33.4645 0

 #equalDOF $rNodeTag $cNodeTag $dof1 $dof2 $dof3
 equalDOF 12  2032 1 2 3 

 #Materials for shallow foundation

 #uniaxialMaterial  QzSimple2  $matTag  $SoilType  $Qult-end-extreme  $z50-end  <TpSoil>  <CradSoil> 
 uniaxialMaterial  QzSimple2 201  2 6.91884 0.224658 0.1 0.128

 #uniaxialMaterial  QzSimple2  $matTag  $SoilType  $Qult-end  $z50-end  <TpSoil>  <CradSoil> 
 uniaxialMaterial  QzSimple2 202  2 13.8377 0.224658 0.1 0.128

 #uniaxialMaterial  QzSimple2  $matTag  $SoilType  $Qult-mid  $z50-mid  <TpSoil>  <CradSoil> 
 uniaxialMaterial  QzSimple2 203  2 27.6754 1.12329 0.1 0.128

 #uniaxialMaterial  PySimple2  $matTag  $SoilType  $Pp  $xp50  Cd  <CradSoil> 
 uniaxialMaterial  PySimple2 205  2 30.1595 0.00623684 0.1 0.128

 #uniaxialMaterial  TzSimple2  $matTag  $SoilType  $Tult  $xt50  <CradSoil> 
 uniaxialMaterial  TzSimple2 206  2 80.695 0.0627 0.1 0.128

 #Vertical spring element connectivity
 #element   zeroLength  $eleTag  $iNode  $jNode  -mat$matTag  -dir  $dir 
 element   zeroLength 200001  200001  2001 -mat 201   -dir  2 
 element   zeroLength 200002  200002  2002 -mat 202   -dir  2 
 element   zeroLength 200003  200003  2003 -mat 202   -dir  2 
 element   zeroLength 200004  200004  2004 -mat 202   -dir  2 
 element   zeroLength 200005  200005  2005 -mat 202   -dir  2 
 element   zeroLength 200006  200006  2006 -mat 202   -dir  2 
 element   zeroLength 200007  200007  2007 -mat 202   -dir  2 
 element   zeroLength 200008  200008  2008 -mat 202   -dir  2 
 element   zeroLength 200009  200009  2009 -mat 202   -dir  2 
 element   zeroLength 200010  200010  2010 -mat 202   -dir  2 
 element   zeroLength 200011  200011  2011 -mat 202   -dir  2 
 element   zeroLength 200012  200012  2012 -mat 202   -dir  2 
 element   zeroLength 200013  200013  2013 -mat 203   -dir  2 
 element   zeroLength 200014  200014  2014 -mat 203   -dir  2 
 element   zeroLength 200015  200015  2015 -mat 203   -dir  2 
 element   zeroLength 200016  200016  2016 -mat 203   -dir  2 
 element   zeroLength 200017  200017  2017 -mat 203   -dir  2 
 element   zeroLength 200018  200018  2018 -mat 203   -dir  2 
 element   zeroLength 200019  200019  2019 -mat 203   -dir  2 
 element   zeroLength 200020  200020  2020 -mat 203   -dir  2 
 element   zeroLength 200021  200021  2021 -mat 203   -dir  2 
 element   zeroLength 200022  200022  2022 -mat 203   -dir  2 
 element   zeroLength 200023  200023  2023 -mat 203   -dir  2 
 element   zeroLength 200024  200024  2024 -mat 203   -dir  2 
 element   zeroLength 200025  200025  2025 -mat 203   -dir  2 
 element   zeroLength 200026  200026  2026 -mat 203   -dir  2 
 element   zeroLength 200027  200027  2027 -mat 203   -dir  2 
 element   zeroLength 200028  200028  2028 -mat 203   -dir  2 
 element   zeroLength 200029  200029  2029 -mat 203   -dir  2 
 element   zeroLength 200030  200030  2030 -mat 203   -dir  2 
 element   zeroLength 200031  200031  2031 -mat 203   -dir  2 
 element   zeroLength 200032  200032  2032 -mat 203   -dir  2 
 element   zeroLength 200033  200033  2033 -mat 203   -dir  2 
 element   zeroLength 200034  200034  2034 -mat 203   -dir  2 
 element   zeroLength 200035  200035  2035 -mat 203   -dir  2 
 element   zeroLength 200036  200036  2036 -mat 203   -dir  2 
 element   zeroLength 200037  200037  2037 -mat 203   -dir  2 
 element   zeroLength 200038  200038  2038 -mat 203   -dir  2 
 element   zeroLength 200039  200039  2039 -mat 203   -dir  2 
 element   zeroLength 200040  200040  2040 -mat 203   -dir  2 
 element   zeroLength 200041  200041  2041 -mat 203   -dir  2 
 element   zeroLength 200042  200042  2042 -mat 203   -dir  2 
 element   zeroLength 200043  200043  2043 -mat 203   -dir  2 
 element   zeroLength 200044  200044  2044 -mat 203   -dir  2 
 element   zeroLength 200045  200045  2045 -mat 203   -dir  2 
 element   zeroLength 200046  200046  2046 -mat 203   -dir  2 
 element   zeroLength 200047  200047  2047 -mat 203   -dir  2 
 element   zeroLength 200048  200048  2048 -mat 203   -dir  2 
 element   zeroLength 200049  200049  2049 -mat 203   -dir  2 
 element   zeroLength 200050  200050  2050 -mat 203   -dir  2 
 element   zeroLength 200051  200051  2051 -mat 203   -dir  2 
 element   zeroLength 200052  200052  2052 -mat 202   -dir  2 
 element   zeroLength 200053  200053  2053 -mat 202   -dir  2 
 element   zeroLength 200054  200054  2054 -mat 202   -dir  2 
 element   zeroLength 200055  200055  2055 -mat 202   -dir  2 
 element   zeroLength 200056  200056  2056 -mat 202   -dir  2 
 element   zeroLength 200057  200057  2057 -mat 202   -dir  2 
 element   zeroLength 200058  200058  2058 -mat 202   -dir  2 
 element   zeroLength 200059  200059  2059 -mat 202   -dir  2 
 element   zeroLength 200060  200060  2060 -mat 202   -dir  2 
 element   zeroLength 200061  200061  2061 -mat 202   -dir  2 
 element   zeroLength 200062  200062  2062 -mat 202   -dir  2 
 element   zeroLength 200063  200063  2063 -mat 201   -dir  2 

 #Horizontal spring element connectivity
 #element   zeroLength  $eleTag  $iNode  $jNode  -mat$matTag  -dir  $dir 
 element   zeroLength 200064  2063  200064 -mat 205   -dir  1 
 element   zeroLength 200065  2063  200065 -mat 206   -dir  1 

 # geomTransf Linear $transfTag <-jntOffset $dXi $dYi $dXj $dYj>
 geomTransf Linear  20

 #foundation element connectivity
 #element   elasticBeamColumn  $eleTag  $iNode  $jNode  $A  $E  $Iz  $transfTag 
 element elasticBeamColumn 2001 2001  2002 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2002 2002  2003 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2003 2003  2004 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2004 2004  2005 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2005 2005  2006 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2006 2006  2007 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2007 2007  2008 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2008 2008  2009 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2009 2009  2010 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2010 2010  2011 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2011 2011  2012 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2012 2012  2013 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2013 2013  2014 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2014 2014  2015 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2015 2015  2016 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2016 2016  2017 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2017 2017  2018 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2018 2018  2019 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2019 2019  2020 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2020 2020  2021 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2021 2021  2022 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2022 2022  2023 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2023 2023  2024 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2024 2024  2025 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2025 2025  2026 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2026 2026  2027 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2027 2027  2028 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2028 2028  2029 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2029 2029  2030 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2030 2030  2031 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2031 2031  2032 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2032 2032  2033 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2033 2033  2034 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2034 2034  2035 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2035 2035  2036 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2036 2036  2037 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2037 2037  2038 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2038 2038  2039 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2039 2039  2040 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2040 2040  2041 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2041 2041  2042 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2042 2042  2043 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2043 2043  2044 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2044 2044  2045 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2045 2045  2046 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2046 2046  2047 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2047 2047  2048 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2048 2048  2049 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2049 2049  2050 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2050 2050  2051 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2051 2051  2052 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2052 2052  2053 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2053 2053  2054 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2054 2054  2055 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2055 2055  2056 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2056 2056  2057 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2057 2057  2058 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2058 2058  2059 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2059 2059  2060 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2060 2060  2061 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2061 2061  2062 790.498 3625.94 9189.53 20
 element elasticBeamColumn 2062 2062  2063 790.498 3625.94 9189.53 20

 #fixity 
 fix  200001 1 1 1
 fix  200002 1 1 1
 fix  200003 1 1 1
 fix  200004 1 1 1
 fix  200005 1 1 1
 fix  200006 1 1 1
 fix  200007 1 1 1
 fix  200008 1 1 1
 fix  200009 1 1 1
 fix  200010 1 1 1
 fix  200011 1 1 1
 fix  200012 1 1 1
 fix  200013 1 1 1
 fix  200014 1 1 1
 fix  200015 1 1 1
 fix  200016 1 1 1
 fix  200017 1 1 1
 fix  200018 1 1 1
 fix  200019 1 1 1
 fix  200020 1 1 1
 fix  200021 1 1 1
 fix  200022 1 1 1
 fix  200023 1 1 1
 fix  200024 1 1 1
 fix  200025 1 1 1
 fix  200026 1 1 1
 fix  200027 1 1 1
 fix  200028 1 1 1
 fix  200029 1 1 1
 fix  200030 1 1 1
 fix  200031 1 1 1
 fix  200032 1 1 1
 fix  200033 1 1 1
 fix  200034 1 1 1
 fix  200035 1 1 1
 fix  200036 1 1 1
 fix  200037 1 1 1
 fix  200038 1 1 1
 fix  200039 1 1 1
 fix  200040 1 1 1
 fix  200041 1 1 1
 fix  200042 1 1 1
 fix  200043 1 1 1
 fix  200044 1 1 1
 fix  200045 1 1 1
 fix  200046 1 1 1
 fix  200047 1 1 1
 fix  200048 1 1 1
 fix  200049 1 1 1
 fix  200050 1 1 1
 fix  200051 1 1 1
 fix  200052 1 1 1
 fix  200053 1 1 1
 fix  200054 1 1 1
 fix  200055 1 1 1
 fix  200056 1 1 1
 fix  200057 1 1 1
 fix  200058 1 1 1
 fix  200059 1 1 1
 fix  200060 1 1 1
 fix  200061 1 1 1
 fix  200062 1 1 1
 fix  200063 1 1 1
 fix  200064 1 1 1
 fix  200065 1 1 1

 set endFootNodeL_2   2001
 set endFootNodeR_2   2063
 set endSprEleL_2   200001
 set endSprEleR_2   200063
 set midSprEle_2   200032
