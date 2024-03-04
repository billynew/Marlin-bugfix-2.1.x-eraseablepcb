(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: copper_top.gbr_iso_combined_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Saturday, 02 March 2024 at 20:18)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 0.1 mm)
(Feedrate_XY: 80.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -0.15 mm)
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

G01 F80.00

M5
G00 Z15.0000
G00 X0.0000 Y0.0000
T1
M6    
(MSG, Change to Tool Dia = 0.1000)
G4 P1000
G4 P1000
G4 P1000
M280 P0 S40
G4 P1000
G4 P1000
M280 P0 S40
G4 P1000
M280 P0 S40
M0
G00 Z15.0000

M280 P0 S160
G01 F80.00
G00 X10.3124 Y11.9893
G01 F60.00
G01 Z-0.15
G01 F80.00
G01 X11.6344 Y11.9893
G01 X11.7053 Y11.9930 E0.00355
G01 X11.7719 Y12.0029 E0.00692
G01 X11.8190 Y12.0147 E0.00934
G01 X16.1210 Y12.0147 E0.22444
G01 X16.1681 Y12.0029 E0.22687
G01 X16.2347 Y11.9930 E0.23024
G01 X16.3056 Y11.9893 E0.23379
G01 X17.6276 Y11.9893 E0.29989
G01 X17.6973 Y11.9927 E0.30338
G01 X17.7663 Y12.0029 E0.30687
G01 X17.8339 Y12.0199 E0.31035
G01 X17.8996 Y12.0434 E0.31384
G01 X17.9626 Y12.0732 E0.31732
G01 X18.0225 Y12.1090 E0.32081
G01 X18.0785 Y12.1506 E0.32430
G01 X18.1302 Y12.1974 E0.32779
G01 X18.1770 Y12.2491 E0.33127
G01 X18.2186 Y12.3051 E0.33476
G01 X18.2544 Y12.3650 E0.33825
G01 X18.2842 Y12.4280 E0.34174
G01 X18.3077 Y12.4937 E0.34523
G01 X18.3247 Y12.5613 E0.34871
G01 X18.3349 Y12.6303 E0.35220
G01 X18.3383 Y12.7000 E0.35569
G01 X18.3349 Y12.7697 E0.35918
G01 X18.3247 Y12.8387 E0.36266
G01 X18.3084 Y12.9039 E0.36602
G01 X18.2832 Y12.9742 E0.36976
G01 X18.2544 Y13.0350 E0.37312
G01 X18.2186 Y13.0949 E0.37661
G01 X18.1770 Y13.1509 E0.38010
G01 X18.1302 Y13.2026 E0.38359
G01 X18.0785 Y13.2494 E0.38707
G01 X18.0225 Y13.2910 E0.39056
G01 X17.9626 Y13.3268 E0.39405
G01 X17.9018 Y13.3556 E0.39741
G01 X17.8315 Y13.3808 E0.40115
G01 X17.7663 Y13.3971 E0.40451
G01 X17.6960 Y13.4074 E0.40806
G01 X17.6276 Y13.4107 E0.41148
G01 X16.3056 Y13.4107 E0.47758
G01 X16.2347 Y13.4070 E0.48113
G01 X16.1681 Y13.3971 E0.48450
G01 X16.1210 Y13.3853 E0.48693
G01 X11.8190 Y13.3853 E0.70203
G01 X11.7719 Y13.3971 E0.70446
G01 X11.7053 Y13.4070 E0.70782
G01 X11.6344 Y13.4107 E0.71137
G01 X10.3124 Y13.4107 E0.77747
G01 X10.2427 Y13.4073 E0.78096
G01 X10.1737 Y13.3971 E0.78445
G01 X10.1061 Y13.3801 E0.78793
G01 X10.0404 Y13.3566 E0.79142
G01 X9.9774 Y13.3268 E0.79491
G01 X9.9175 Y13.2910 E0.79840
G01 X9.8615 Y13.2494 E0.80189
G01 X9.8098 Y13.2026 E0.80537
G01 X9.7630 Y13.1509 E0.80886
G01 X9.7214 Y13.0949 E0.81235
G01 X9.6856 Y13.0350 E0.81584
G01 X9.6558 Y12.9720 E0.81932
G01 X9.6323 Y12.9063 E0.82281
G01 X9.6153 Y12.8387 E0.82629
G01 X9.6051 Y12.7697 E0.82978
G01 X9.6017 Y12.7000 E0.83327
G01 X9.6049 Y12.6328 E0.83664
G01 X9.6159 Y12.5589 E0.84037
G01 X9.6323 Y12.4937 E0.84373
G01 X9.6568 Y12.4258 E0.84734
G01 X9.6856 Y12.3650 E0.85071
G01 X9.7214 Y12.3051 E0.85419
G01 X9.7630 Y12.2491 E0.85768
G01 X9.8116 Y12.1957 E0.86129
G01 X9.8615 Y12.1506 E0.86466
G01 X9.9175 Y12.1090 E0.86814
G01 X9.9774 Y12.0732 E0.87163
G01 X10.0404 Y12.0434 E0.87512
G01 X10.1061 Y12.0199 E0.87861
G01 X10.1737 Y12.0029 E0.88209
G01 X10.2427 Y11.9927 E0.88558
G01 X10.3124 Y11.9893 E0.88907
G00 Z2.0000
G00 X16.3068 Y14.4785
G01 F60.00
G01 Z-0.15
G01 F80.00
G01 X17.6276 Y14.4785 E1.27542
G01 X17.6948 Y14.4817 E1.27879
G01 X17.7663 Y14.4921 E1.28240
G01 X17.8339 Y14.5091 E1.28589
G01 X17.8996 Y14.5326 E1.28937
G01 X17.9648 Y14.5636 E1.29298
G01 X18.0225 Y14.5982 E1.29635
G01 X18.0785 Y14.6398 E1.29984
G01 X18.1302 Y14.6866 E1.30332
G01 X18.1770 Y14.7383 E1.30681
G01 X18.2186 Y14.7943 E1.31030
G01 X18.2544 Y14.8542 E1.31379
G01 X18.2842 Y14.9172 E1.31727
G01 X18.3077 Y14.9829 E1.32076
G01 X18.3247 Y15.0505 E1.32425
G01 X18.3349 Y15.1195 E1.32773
G01 X18.3383 Y15.1892 E1.33122
G01 X18.3349 Y15.2589 E1.33471
G01 X18.3247 Y15.3279 E1.33820
G01 X18.3077 Y15.3955 E1.34168
G01 X18.2842 Y15.4612 E1.34517
G01 X18.2599 Y15.5127 E1.34802
G01 X18.5719 Y15.8247 E1.37008
G01 X26.3861 Y15.8247 E1.76079
G01 X28.5247 Y13.6861 E1.91201
G01 X28.5247 Y8.3053 E2.18105
G01 X19.8419 Y8.3053 E2.61519
G01 X18.2599 Y9.8873 E2.72706
G01 X18.2842 Y9.9388 E2.72991
G01 X18.3070 Y10.0022 E2.73327
G01 X18.3241 Y10.0697 E2.73676
G01 X18.3349 Y10.1411 E2.74037
G01 X18.3383 Y10.2108 E2.74386
G01 X18.3346 Y10.2829 E2.74747
G01 X18.3247 Y10.3495 E2.75083
G01 X18.3084 Y10.4147 E2.75419
G01 X18.2842 Y10.4828 E2.75781
G01 X18.2544 Y10.5458 E2.76129
G01 X18.2171 Y10.6077 E2.76490
G01 X18.1770 Y10.6617 E2.76827
G01 X18.1319 Y10.7116 E2.77163
G01 X18.0785 Y10.7602 E2.77524
G01 X18.0225 Y10.8018 E2.77873
G01 X17.9626 Y10.8376 E2.78222
G01 X17.8973 Y10.8683 E2.78583
G01 X17.8339 Y10.8909 E2.78919
G01 X17.7687 Y10.9073 E2.79255
G01 X17.6985 Y10.9180 E2.79610
G01 X17.6276 Y10.9215 E2.79965
G01 X16.3043 Y10.9215 E2.86582
G01 X16.2371 Y10.9181 E2.86918
G01 X16.1657 Y10.9073 E2.87279
G01 X16.1005 Y10.8909 E2.87615
G01 X16.0371 Y10.8683 E2.87952
G01 X15.9740 Y10.8387 E2.88300
G01 X15.9099 Y10.8003 E2.88674
G01 X15.8559 Y10.7602 E2.89010
G01 X15.8025 Y10.7116 E2.89371
G01 X15.7574 Y10.6617 E2.89708
G01 X15.7158 Y10.6057 E2.90056
G01 X15.6800 Y10.5458 E2.90405
G01 X15.6493 Y10.4805 E2.90766
G01 X15.6267 Y10.4171 E2.91103
G01 X15.6097 Y10.3495 E2.91451
G01 X15.5995 Y10.2805 E2.91800
G01 X15.5961 Y10.2108 E2.92149
G01 X15.5995 Y10.1411 E2.92498
G01 X15.6097 Y10.0721 E2.92847
G01 X15.6267 Y10.0045 E2.93195
G01 X15.6502 Y9.9388 E2.93544
G01 X15.6800 Y9.8758 E2.93892
G01 X15.7158 Y9.8159 E2.94241
G01 X15.7574 Y9.7599 E2.94590
G01 X15.8042 Y9.7082 E2.94939
G01 X15.8559 Y9.6614 E2.95287
G01 X15.9119 Y9.6198 E2.95636
G01 X15.9718 Y9.5840 E2.95985
G01 X16.0348 Y9.5542 E2.96334
G01 X16.1005 Y9.5307 E2.96683
G01 X16.1657 Y9.5143 E2.97019
G01 X16.2384 Y9.5034 E2.97386
G01 X16.3068 Y9.5001 E2.97729
G01 X16.7087 Y9.5001 E2.99738
G01 X19.0743 Y7.1346 E3.16465
G01 X19.1232 Y7.0902 E3.16795
G01 X19.1753 Y7.0516 E3.17120
G01 X19.2349 Y7.0156 E3.17468
G01 X19.2980 Y6.9860 E3.17816
G01 X19.3591 Y6.9642 E3.18141
G01 X19.4243 Y6.9479 E3.18477
G01 X19.4908 Y6.9380 E3.18813
G01 X19.5580 Y6.9347 E3.19149
G01 X29.2112 Y6.9347 E3.67415
G01 X29.2772 Y6.9380 E3.67746
G01 X29.3413 Y6.9474 E3.68069
G01 X29.4089 Y6.9642 E3.68418
G01 X29.4745 Y6.9878 E3.68766
G01 X29.5331 Y7.0156 E3.69091
G01 X29.5887 Y7.0489 E3.69415
G01 X29.6448 Y7.0902 E3.69763
G01 X29.6963 Y7.1372 E3.70112
G01 X29.7398 Y7.1852 E3.70436
G01 X29.7784 Y7.2373 E3.70760
G01 X29.8144 Y7.2969 E3.71108
G01 X29.8440 Y7.3600 E3.71456
G01 X29.8658 Y7.4211 E3.71781
G01 X29.8816 Y7.4839 E3.72105
G01 X29.8920 Y7.5528 E3.72453
G01 X29.8953 Y7.6200 E3.72789
G01 X29.8953 Y13.9700 E4.04539
G01 X29.8917 Y14.0396 E4.04888
G01 X29.8821 Y14.1037 E4.05212
G01 X29.8661 Y14.1678 E4.05542
G01 X29.8432 Y14.2323 E4.05884
G01 X29.8132 Y14.2952 E4.06233
G01 X29.7798 Y14.3507 E4.06557
G01 X29.7413 Y14.4028 E4.06881
G01 X29.6954 Y14.4537 E4.07223
G01 X27.1546 Y16.9946 E4.25190
G01 X27.1028 Y17.0413 E4.25539
G01 X27.0507 Y17.0798 E4.25862
G01 X26.9931 Y17.1144 E4.26198
G01 X26.9300 Y17.1440 E4.26547
G01 X26.8689 Y17.1658 E4.26871
G01 X26.8061 Y17.1816 E4.27195
G01 X26.7372 Y17.1920 E4.27543
G01 X26.6700 Y17.1953 E4.27880
G01 X18.2880 Y17.1953 E4.69790
G01 X18.2208 Y17.1920 E4.70126
G01 X18.1519 Y17.1816 E4.70475
G01 X18.0891 Y17.1658 E4.70798
G01 X18.0280 Y17.1440 E4.71123
G01 X17.9671 Y17.1155 E4.71459
G01 X17.9073 Y17.0798 E4.71807
G01 X17.8514 Y17.0382 E4.72156
G01 X17.8034 Y16.9946 E4.72480
G01 X16.7087 Y15.8999 E4.80221
G01 X16.3068 Y15.8999 E4.82230
G01 X16.2396 Y15.8967 E4.82566
G01 X16.1681 Y15.8863 E4.82928
G01 X16.0993 Y15.8690 E4.83282
G01 X16.0348 Y15.8458 E4.83625
G01 X15.9718 Y15.8160 E4.83974
G01 X15.9119 Y15.7802 E4.84323
G01 X15.8579 Y15.7401 E4.84659
G01 X15.8025 Y15.6900 E4.85032
G01 X15.7574 Y15.6401 E4.85369
G01 X15.7158 Y15.5841 E4.85717
G01 X15.6800 Y15.5242 E4.86066
G01 X15.6512 Y15.4634 E4.86403
G01 X15.6267 Y15.3955 E4.86764
G01 X15.6093 Y15.3254 E4.87125
G01 X15.5995 Y15.2589 E4.87461
G01 X15.5961 Y15.1917 E4.87797
G01 X15.5995 Y15.1195 E4.88159
G01 X15.6103 Y15.0481 E4.88520
G01 X15.6267 Y14.9829 E4.88856
G01 X15.6493 Y14.9195 E4.89192
G01 X15.6800 Y14.8542 E4.89553
G01 X15.7173 Y14.7923 E4.89915
G01 X15.7574 Y14.7383 E4.90251
G01 X15.8042 Y14.6866 E4.90600
G01 X15.8579 Y14.6383 E4.90961
G01 X15.9119 Y14.5982 E4.91297
G01 X15.9696 Y14.5636 E4.91633
G01 X16.0348 Y14.5326 E4.91994
G01 X16.1029 Y14.5084 E4.92356
G01 X16.1681 Y14.4921 E4.92692
G01 X16.2347 Y14.4822 E4.93028
G01 X16.3068 Y14.4785 E4.93389
G00 Z2.0000
G00 X4.3947 Y15.2400
G01 F60.00
G01 Z-0.15
G01 F80.00
G01 X4.3947 Y11.4300 E5.54869
G01 X4.3983 Y11.3604 E5.55218
G01 X4.4079 Y11.2963 E5.55542
G01 X4.4239 Y11.2322 E5.55872
G01 X4.4468 Y11.1677 E5.56214
G01 X4.4768 Y11.1048 E5.56563
G01 X4.5102 Y11.0493 E5.56887
G01 X4.5487 Y10.9972 E5.57211
G01 X4.5946 Y10.9463 E5.57553
G01 X5.8654 Y9.6754 E5.66540
G01 X5.9152 Y9.6302 E5.66876
G01 X5.9682 Y9.5909 E5.67206
G01 X6.0291 Y9.5545 E5.67561
G01 X6.0877 Y9.5268 E5.67885
G01 X6.1511 Y9.5042 E5.68221
G01 X6.2187 Y9.4874 E5.68569
G01 X6.2828 Y9.4780 E5.68893
G01 X6.3488 Y9.4747 E5.69224
G01 X10.9220 Y9.4747 E5.92090
G01 X10.9916 Y9.4783 E5.92438
G01 X11.0557 Y9.4879 E5.92762
G01 X11.1047 Y9.5001 E5.93015
G01 X11.6344 Y9.5001 E5.95663
G01 X11.7053 Y9.5038 E5.96018
G01 X11.7719 Y9.5137 E5.96355
G01 X11.8371 Y9.5300 E5.96691
G01 X11.9052 Y9.5542 E5.97052
G01 X11.9682 Y9.5840 E5.97401
G01 X12.0281 Y9.6198 E5.97750
G01 X12.0859 Y9.6630 E5.98111
G01 X12.1358 Y9.7082 E5.98447
G01 X12.1810 Y9.7581 E5.98784
G01 X12.2235 Y9.8149 E5.99139
G01 X12.2600 Y9.8758 E5.99494
G01 X12.2907 Y9.9411 E5.99854
G01 X12.3140 Y10.0069 E6.00203
G01 X12.3303 Y10.0721 E6.00539
G01 X12.3402 Y10.1387 E6.00876
G01 X12.3439 Y10.2108 E6.01237
G01 X12.3405 Y10.2805 E6.01586
G01 X12.3303 Y10.3495 E6.01935
G01 X12.3126 Y10.4194 E6.02295
G01 X12.2888 Y10.4850 E6.02644
G01 X12.2600 Y10.5458 E6.02980
G01 X12.2255 Y10.6036 E6.03317
G01 X12.1826 Y10.6617 E6.03678
G01 X12.1358 Y10.7134 E6.04027
G01 X12.0841 Y10.7602 E6.04376
G01 X12.0260 Y10.8031 E6.04737
G01 X11.9682 Y10.8376 E6.05073
G01 X11.9074 Y10.8664 E6.05410
G01 X11.8395 Y10.8909 E6.05771
G01 X11.7694 Y10.9083 E6.06132
G01 X11.7029 Y10.9181 E6.06468
G01 X11.6344 Y10.9215 E6.06811
G01 X10.3124 Y10.9215 E6.13421
G01 X10.2427 Y10.9181 E6.13770
G01 X10.1713 Y10.9073 E6.14131
G01 X10.1038 Y10.8902 E6.14479
G01 X10.0404 Y10.8674 E6.14816
G01 X9.9935 Y10.8453 E6.15075
G01 X6.6339 Y10.8453 E6.31873
G01 X5.7653 Y11.7139 E6.38015
G01 X5.7653 Y14.9561 E6.54226
G01 X7.9039 Y17.0947 E6.69348
G01 X8.0981 Y17.0947 E6.70319
G01 X9.6801 Y15.5127 E6.81505
G01 X9.6558 Y15.4612 E6.81790
G01 X9.6323 Y15.3955 E6.82139
G01 X9.6153 Y15.3279 E6.82488
G01 X9.6051 Y15.2589 E6.82836
G01 X9.6017 Y15.1892 E6.83185
G01 X9.6051 Y15.1195 E6.83534
G01 X9.6153 Y15.0505 E6.83883
G01 X9.6323 Y14.9829 E6.84231
G01 X9.6558 Y14.9172 E6.84580
G01 X9.6856 Y14.8542 E6.84929
G01 X9.7214 Y14.7943 E6.85278
G01 X9.7630 Y14.7383 E6.85627
G01 X9.8098 Y14.6866 E6.85975
G01 X9.8615 Y14.6398 E6.86324
G01 X9.9175 Y14.5982 E6.86673
G01 X9.9785 Y14.5618 E6.87028
G01 X10.0404 Y14.5326 E6.87370
G01 X10.1085 Y14.5084 E6.87731
G01 X10.1737 Y14.4921 E6.88067
G01 X10.2403 Y14.4822 E6.88404
G01 X10.3099 Y14.4785 E6.88753
G01 X11.6332 Y14.4785 E6.95369
G01 X11.7029 Y14.4819 E6.95718
G01 X11.7694 Y14.4917 E6.96054
G01 X11.8395 Y14.5091 E6.96415
G01 X11.9074 Y14.5336 E6.96776
G01 X11.9682 Y14.5624 E6.97113
G01 X12.0260 Y14.5969 E6.97449
G01 X12.0841 Y14.6398 E6.97810
G01 X12.1358 Y14.6866 E6.98159
G01 X12.1841 Y14.7403 E6.98520
G01 X12.2242 Y14.7943 E6.98856
G01 X12.2588 Y14.8520 E6.99193
G01 X12.2893 Y14.9161 E6.99548
G01 X12.3140 Y14.9853 E6.99915
G01 X12.3303 Y15.0505 E7.00251
G01 X12.3405 Y15.1195 E7.00600
G01 X12.3439 Y15.1917 E7.00961
G01 X12.3405 Y15.2589 E7.01298
G01 X12.3303 Y15.3279 E7.01646
G01 X12.3133 Y15.3955 E7.01995
G01 X12.2907 Y15.4589 E7.02331
G01 X12.2600 Y15.5242 E7.02692
G01 X12.2242 Y15.5841 E7.03041
G01 X12.1841 Y15.6381 E7.03377
G01 X12.1349 Y15.6926 E7.03745
G01 X12.0841 Y15.7386 E7.04087
G01 X12.0301 Y15.7787 E7.04424
G01 X11.9682 Y15.8160 E7.04785
G01 X11.9029 Y15.8467 E7.05146
G01 X11.8395 Y15.8693 E7.05482
G01 X11.7731 Y15.8860 E7.05825
G01 X11.7029 Y15.8965 E7.06179
G01 X11.6344 Y15.8999 E7.06522
G01 X11.2313 Y15.8999 E7.08538
G01 X8.8666 Y18.2646 E7.25259
G01 X8.8168 Y18.3098 E7.25595
G01 X8.7638 Y18.3491 E7.25925
G01 X8.7051 Y18.3844 E7.26267
G01 X8.6420 Y18.4140 E7.26616
G01 X8.5809 Y18.4358 E7.26940
G01 X8.5181 Y18.4516 E7.27264
G01 X8.4492 Y18.4620 E7.27613
G01 X8.3820 Y18.4653 E7.27949
G01 X7.6200 Y18.4653 E7.31759
G01 X7.5504 Y18.4617 E7.32107
G01 X7.4863 Y18.4521 E7.32431
G01 X7.4211 Y18.4358 E7.32768
G01 X7.3577 Y18.4132 E7.33104
G01 X7.2991 Y18.3855 E7.33428
G01 X7.2382 Y18.3491 E7.33783
G01 X7.1852 Y18.3098 E7.34113
G01 X7.1354 Y18.2646 E7.34449
G01 X4.5937 Y15.7228 E7.52422
G01 X4.5502 Y15.6748 E7.52746
G01 X4.5102 Y15.6207 E7.53082
G01 X4.4756 Y15.5631 E7.53418
G01 X4.4468 Y15.5023 E7.53755
G01 X4.4242 Y15.4389 E7.54091
G01 X4.4079 Y15.3737 E7.54427
G01 X4.3980 Y15.3072 E7.54763
G01 X4.3947 Y15.2400 E7.55100
G00 Z2.0000
G4 P1000
G4 P1000
G4 P1000
G4 P1000
M280 P0 S40
G00 Z2.0000
G00 Z15.00


