(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: copper_top.gbr_iso_combined_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Monday, 04 March 2024 at 22:33)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 0.1 mm)
(Feedrate_XY: 120.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -0.05 mm)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 15.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: default)

(X range:    4.3947 ...   29.8953  mm)
(Y range:    6.9347 ...   18.4653  mm)

(Spindle Speed: 0.0 RPM)
G21
G90
G94

G01 F120.00

M5
G00 Z15.0000
G00 X0.0000 Y0.0000
T1
M6    
(MSG, Change to Tool Dia = 0.1000)
M0
G00 Z15.0000

M03
G01 F120.00
G00 X10.3124 Y11.9893
G01 F60.00
G01 Z-0.0500
G01 F120.00
G01 X11.6344 Y11.9893
G01 X11.7053 Y11.9930
G01 X11.7719 Y12.0029
G01 X11.8190 Y12.0147
G01 X16.1210 Y12.0147
G01 X16.1681 Y12.0029
G01 X16.2347 Y11.9930
G01 X16.3056 Y11.9893
G01 X17.6276 Y11.9893
G01 X17.6973 Y11.9927
G01 X17.7663 Y12.0029
G01 X17.8339 Y12.0199
G01 X17.8996 Y12.0434
G01 X17.9626 Y12.0732
G01 X18.0225 Y12.1090
G01 X18.0785 Y12.1506
G01 X18.1302 Y12.1974
G01 X18.1770 Y12.2491
G01 X18.2186 Y12.3051
G01 X18.2544 Y12.3650
G01 X18.2842 Y12.4280
G01 X18.3077 Y12.4937
G01 X18.3247 Y12.5613
G01 X18.3349 Y12.6303
G01 X18.3383 Y12.7000
G01 X18.3349 Y12.7697
G01 X18.3247 Y12.8387
G01 X18.3084 Y12.9039
G01 X18.2832 Y12.9742
G01 X18.2544 Y13.0350
G01 X18.2186 Y13.0949
G01 X18.1770 Y13.1509
G01 X18.1302 Y13.2026
G01 X18.0785 Y13.2494
G01 X18.0225 Y13.2910
G01 X17.9626 Y13.3268
G01 X17.9018 Y13.3556
G01 X17.8315 Y13.3808
G01 X17.7663 Y13.3971
G01 X17.6960 Y13.4074
G01 X17.6276 Y13.4107
G01 X16.3056 Y13.4107
G01 X16.2347 Y13.4070
G01 X16.1681 Y13.3971
G01 X16.1210 Y13.3853
G01 X11.8190 Y13.3853
G01 X11.7719 Y13.3971
G01 X11.7053 Y13.4070
G01 X11.6344 Y13.4107
G01 X10.3124 Y13.4107
G01 X10.2427 Y13.4073
G01 X10.1737 Y13.3971
G01 X10.1061 Y13.3801
G01 X10.0404 Y13.3566
G01 X9.9774 Y13.3268
G01 X9.9175 Y13.2910
G01 X9.8615 Y13.2494
G01 X9.8098 Y13.2026
G01 X9.7630 Y13.1509
G01 X9.7214 Y13.0949
G01 X9.6856 Y13.0350
G01 X9.6558 Y12.9720
G01 X9.6323 Y12.9063
G01 X9.6153 Y12.8387
G01 X9.6051 Y12.7697
G01 X9.6017 Y12.7000
G01 X9.6049 Y12.6328
G01 X9.6159 Y12.5589
G01 X9.6323 Y12.4937
G01 X9.6568 Y12.4258
G01 X9.6856 Y12.3650
G01 X9.7214 Y12.3051
G01 X9.7630 Y12.2491
G01 X9.8116 Y12.1957
G01 X9.8615 Y12.1506
G01 X9.9175 Y12.1090
G01 X9.9774 Y12.0732
G01 X10.0404 Y12.0434
G01 X10.1061 Y12.0199
G01 X10.1737 Y12.0029
G01 X10.2427 Y11.9927
G01 X10.3124 Y11.9893
G00 Z2.0000
G00 X16.3068 Y14.4785
G01 F60.00
G01 Z-0.0500
G01 F120.00
G01 X17.6276 Y14.4785
G01 X17.6948 Y14.4817
G01 X17.7663 Y14.4921
G01 X17.8339 Y14.5091
G01 X17.8996 Y14.5326
G01 X17.9648 Y14.5636
G01 X18.0225 Y14.5982
G01 X18.0785 Y14.6398
G01 X18.1302 Y14.6866
G01 X18.1770 Y14.7383
G01 X18.2186 Y14.7943
G01 X18.2544 Y14.8542
G01 X18.2842 Y14.9172
G01 X18.3077 Y14.9829
G01 X18.3247 Y15.0505
G01 X18.3349 Y15.1195
G01 X18.3383 Y15.1892
G01 X18.3349 Y15.2589
G01 X18.3247 Y15.3279
G01 X18.3077 Y15.3955
G01 X18.2842 Y15.4612
G01 X18.2599 Y15.5127
G01 X18.5719 Y15.8247
G01 X26.3861 Y15.8247
G01 X28.5247 Y13.6861
G01 X28.5247 Y8.3053
G01 X19.8419 Y8.3053
G01 X18.2599 Y9.8873
G01 X18.2842 Y9.9388
G01 X18.3070 Y10.0022
G01 X18.3241 Y10.0697
G01 X18.3349 Y10.1411
G01 X18.3383 Y10.2108
G01 X18.3346 Y10.2829
G01 X18.3247 Y10.3495
G01 X18.3084 Y10.4147
G01 X18.2842 Y10.4828
G01 X18.2544 Y10.5458
G01 X18.2171 Y10.6077
G01 X18.1770 Y10.6617
G01 X18.1319 Y10.7116
G01 X18.0785 Y10.7602
G01 X18.0225 Y10.8018
G01 X17.9626 Y10.8376
G01 X17.8973 Y10.8683
G01 X17.8339 Y10.8909
G01 X17.7687 Y10.9073
G01 X17.6985 Y10.9180
G01 X17.6276 Y10.9215
G01 X16.3043 Y10.9215
G01 X16.2371 Y10.9181
G01 X16.1657 Y10.9073
G01 X16.1005 Y10.8909
G01 X16.0371 Y10.8683
G01 X15.9740 Y10.8387
G01 X15.9099 Y10.8003
G01 X15.8559 Y10.7602
G01 X15.8025 Y10.7116
G01 X15.7574 Y10.6617
G01 X15.7158 Y10.6057
G01 X15.6800 Y10.5458
G01 X15.6493 Y10.4805
G01 X15.6267 Y10.4171
G01 X15.6097 Y10.3495
G01 X15.5995 Y10.2805
G01 X15.5961 Y10.2108
G01 X15.5995 Y10.1411
G01 X15.6097 Y10.0721
G01 X15.6267 Y10.0045
G01 X15.6502 Y9.9388
G01 X15.6800 Y9.8758
G01 X15.7158 Y9.8159
G01 X15.7574 Y9.7599
G01 X15.8042 Y9.7082
G01 X15.8559 Y9.6614
G01 X15.9119 Y9.6198
G01 X15.9718 Y9.5840
G01 X16.0348 Y9.5542
G01 X16.1005 Y9.5307
G01 X16.1657 Y9.5143
G01 X16.2384 Y9.5034
G01 X16.3068 Y9.5001
G01 X16.7087 Y9.5001
G01 X19.0743 Y7.1346
G01 X19.1232 Y7.0902
G01 X19.1753 Y7.0516
G01 X19.2349 Y7.0156
G01 X19.2980 Y6.9860
G01 X19.3591 Y6.9642
G01 X19.4243 Y6.9479
G01 X19.4908 Y6.9380
G01 X19.5580 Y6.9347
G01 X29.2112 Y6.9347
G01 X29.2772 Y6.9380
G01 X29.3413 Y6.9474
G01 X29.4089 Y6.9642
G01 X29.4745 Y6.9878
G01 X29.5331 Y7.0156
G01 X29.5887 Y7.0489
G01 X29.6448 Y7.0902
G01 X29.6963 Y7.1372
G01 X29.7398 Y7.1852
G01 X29.7784 Y7.2373
G01 X29.8144 Y7.2969
G01 X29.8440 Y7.3600
G01 X29.8658 Y7.4211
G01 X29.8816 Y7.4839
G01 X29.8920 Y7.5528
G01 X29.8953 Y7.6200
G01 X29.8953 Y13.9700
G01 X29.8917 Y14.0396
G01 X29.8821 Y14.1037
G01 X29.8661 Y14.1678
G01 X29.8432 Y14.2323
G01 X29.8132 Y14.2952
G01 X29.7798 Y14.3507
G01 X29.7413 Y14.4028
G01 X29.6954 Y14.4537
G01 X27.1546 Y16.9946
G01 X27.1028 Y17.0413
G01 X27.0507 Y17.0798
G01 X26.9931 Y17.1144
G01 X26.9300 Y17.1440
G01 X26.8689 Y17.1658
G01 X26.8061 Y17.1816
G01 X26.7372 Y17.1920
G01 X26.6700 Y17.1953
G01 X18.2880 Y17.1953
G01 X18.2208 Y17.1920
G01 X18.1519 Y17.1816
G01 X18.0891 Y17.1658
G01 X18.0280 Y17.1440
G01 X17.9671 Y17.1155
G01 X17.9073 Y17.0798
G01 X17.8514 Y17.0382
G01 X17.8034 Y16.9946
G01 X16.7087 Y15.8999
G01 X16.3068 Y15.8999
G01 X16.2396 Y15.8967
G01 X16.1681 Y15.8863
G01 X16.0993 Y15.8690
G01 X16.0348 Y15.8458
G01 X15.9718 Y15.8160
G01 X15.9119 Y15.7802
G01 X15.8579 Y15.7401
G01 X15.8025 Y15.6900
G01 X15.7574 Y15.6401
G01 X15.7158 Y15.5841
G01 X15.6800 Y15.5242
G01 X15.6512 Y15.4634
G01 X15.6267 Y15.3955
G01 X15.6093 Y15.3254
G01 X15.5995 Y15.2589
G01 X15.5961 Y15.1917
G01 X15.5995 Y15.1195
G01 X15.6103 Y15.0481
G01 X15.6267 Y14.9829
G01 X15.6493 Y14.9195
G01 X15.6800 Y14.8542
G01 X15.7173 Y14.7923
G01 X15.7574 Y14.7383
G01 X15.8042 Y14.6866
G01 X15.8579 Y14.6383
G01 X15.9119 Y14.5982
G01 X15.9696 Y14.5636
G01 X16.0348 Y14.5326
G01 X16.1029 Y14.5084
G01 X16.1681 Y14.4921
G01 X16.2347 Y14.4822
G01 X16.3068 Y14.4785
G00 Z2.0000
G00 X4.3947 Y15.2400
G01 F60.00
G01 Z-0.0500
G01 F120.00
G01 X4.3947 Y11.4300
G01 X4.3983 Y11.3604
G01 X4.4079 Y11.2963
G01 X4.4239 Y11.2322
G01 X4.4468 Y11.1677
G01 X4.4768 Y11.1048
G01 X4.5102 Y11.0493
G01 X4.5487 Y10.9972
G01 X4.5946 Y10.9463
G01 X5.8654 Y9.6754
G01 X5.9152 Y9.6302
G01 X5.9682 Y9.5909
G01 X6.0291 Y9.5545
G01 X6.0877 Y9.5268
G01 X6.1511 Y9.5042
G01 X6.2187 Y9.4874
G01 X6.2828 Y9.4780
G01 X6.3488 Y9.4747
G01 X10.9220 Y9.4747
G01 X10.9916 Y9.4783
G01 X11.0557 Y9.4879
G01 X11.1047 Y9.5001
G01 X11.6344 Y9.5001
G01 X11.7053 Y9.5038
G01 X11.7719 Y9.5137
G01 X11.8371 Y9.5300
G01 X11.9052 Y9.5542
G01 X11.9682 Y9.5840
G01 X12.0281 Y9.6198
G01 X12.0859 Y9.6630
G01 X12.1358 Y9.7082
G01 X12.1810 Y9.7581
G01 X12.2235 Y9.8149
G01 X12.2600 Y9.8758
G01 X12.2907 Y9.9411
G01 X12.3140 Y10.0069
G01 X12.3303 Y10.0721
G01 X12.3402 Y10.1387
G01 X12.3439 Y10.2108
G01 X12.3405 Y10.2805
G01 X12.3303 Y10.3495
G01 X12.3126 Y10.4194
G01 X12.2888 Y10.4850
G01 X12.2600 Y10.5458
G01 X12.2255 Y10.6036
G01 X12.1826 Y10.6617
G01 X12.1358 Y10.7134
G01 X12.0841 Y10.7602
G01 X12.0260 Y10.8031
G01 X11.9682 Y10.8376
G01 X11.9074 Y10.8664
G01 X11.8395 Y10.8909
G01 X11.7694 Y10.9083
G01 X11.7029 Y10.9181
G01 X11.6344 Y10.9215
G01 X10.3124 Y10.9215
G01 X10.2427 Y10.9181
G01 X10.1713 Y10.9073
G01 X10.1038 Y10.8902
G01 X10.0404 Y10.8674
G01 X9.9935 Y10.8453
G01 X6.6339 Y10.8453
G01 X5.7653 Y11.7139
G01 X5.7653 Y14.9561
G01 X7.9039 Y17.0947
G01 X8.0981 Y17.0947
G01 X9.6801 Y15.5127
G01 X9.6558 Y15.4612
G01 X9.6323 Y15.3955
G01 X9.6153 Y15.3279
G01 X9.6051 Y15.2589
G01 X9.6017 Y15.1892
G01 X9.6051 Y15.1195
G01 X9.6153 Y15.0505
G01 X9.6323 Y14.9829
G01 X9.6558 Y14.9172
G01 X9.6856 Y14.8542
G01 X9.7214 Y14.7943
G01 X9.7630 Y14.7383
G01 X9.8098 Y14.6866
G01 X9.8615 Y14.6398
G01 X9.9175 Y14.5982
G01 X9.9785 Y14.5618
G01 X10.0404 Y14.5326
G01 X10.1085 Y14.5084
G01 X10.1737 Y14.4921
G01 X10.2403 Y14.4822
G01 X10.3099 Y14.4785
G01 X11.6332 Y14.4785
G01 X11.7029 Y14.4819
G01 X11.7694 Y14.4917
G01 X11.8395 Y14.5091
G01 X11.9074 Y14.5336
G01 X11.9682 Y14.5624
G01 X12.0260 Y14.5969
G01 X12.0841 Y14.6398
G01 X12.1358 Y14.6866
G01 X12.1841 Y14.7403
G01 X12.2242 Y14.7943
G01 X12.2588 Y14.8520
G01 X12.2893 Y14.9161
G01 X12.3140 Y14.9853
G01 X12.3303 Y15.0505
G01 X12.3405 Y15.1195
G01 X12.3439 Y15.1917
G01 X12.3405 Y15.2589
G01 X12.3303 Y15.3279
G01 X12.3133 Y15.3955
G01 X12.2907 Y15.4589
G01 X12.2600 Y15.5242
G01 X12.2242 Y15.5841
G01 X12.1841 Y15.6381
G01 X12.1349 Y15.6926
G01 X12.0841 Y15.7386
G01 X12.0301 Y15.7787
G01 X11.9682 Y15.8160
G01 X11.9029 Y15.8467
G01 X11.8395 Y15.8693
G01 X11.7731 Y15.8860
G01 X11.7029 Y15.8965
G01 X11.6344 Y15.8999
G01 X11.2313 Y15.8999
G01 X8.8666 Y18.2646
G01 X8.8168 Y18.3098
G01 X8.7638 Y18.3491
G01 X8.7051 Y18.3844
G01 X8.6420 Y18.4140
G01 X8.5809 Y18.4358
G01 X8.5181 Y18.4516
G01 X8.4492 Y18.4620
G01 X8.3820 Y18.4653
G01 X7.6200 Y18.4653
G01 X7.5504 Y18.4617
G01 X7.4863 Y18.4521
G01 X7.4211 Y18.4358
G01 X7.3577 Y18.4132
G01 X7.2991 Y18.3855
G01 X7.2382 Y18.3491
G01 X7.1852 Y18.3098
G01 X7.1354 Y18.2646
G01 X4.5937 Y15.7228
G01 X4.5502 Y15.6748
G01 X4.5102 Y15.6207
G01 X4.4756 Y15.5631
G01 X4.4468 Y15.5023
G01 X4.4242 Y15.4389
G01 X4.4079 Y15.3737
G01 X4.3980 Y15.3072
G01 X4.3947 Y15.2400
G00 Z2.0000
M05
G00 Z2.0000
G00 Z15.00


