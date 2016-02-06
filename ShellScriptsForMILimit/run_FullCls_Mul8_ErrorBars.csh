text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST2600_BHMI.txt -o CardFiles_Mul8/ws_ST2600_BHMI.root
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul8/r40_ST2600.log 
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul8/r50_ST2600.log 
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=55 > CardFiles_Mul8/r55_ST2600.log 
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=65 > CardFiles_Mul8/r60_ST2600.log 
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul8/r70_ST2600.log 
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=75 > CardFiles_Mul8/r75_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul8/r80_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul8/r70_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=110 > CardFiles_Mul8/r110_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=120 > CardFiles_Mul8/r120_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=130 > CardFiles_Mul8/r130_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=150 > CardFiles_Mul8/r150_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=165 > CardFiles_Mul8/r165_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=170 > CardFiles_Mul8/r170_ST2600.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST2600.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST2600.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST2600.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST2600.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST2600.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST2600.log
combine CardFiles_Mul8/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST2600.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST2600.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST2600.log > CardFiles_Mul8/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST2600.log >> CardFiles_Mul8/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST2600.log >> CardFiles_Mul8/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST2600.log >> CardFiles_Mul8/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST2600.log >> CardFiles_Mul8/realistic-counting-experiment_expected_2600_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST2600_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_2600.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_2600.log > CardFiles_Mul8/realistic-counting-experiment_observed_2600_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST3000_BHMI.txt -o CardFiles_Mul8/ws_ST3000_BHMI.root
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul8/r25_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul8/r35_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul8/r40_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul8/r50_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=60 > CardFiles_Mul8/r60_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul8/r70_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul8/r80_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul8/r90_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=95 > CardFiles_Mul8/r95_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=105 > CardFiles_Mul8/r105_ST3000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST3000.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST3000.log
combine CardFiles_Mul8/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST3000.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST3000.log > CardFiles_Mul8/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST3000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST3000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST3000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST3000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3000_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST3000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_3000.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_3000.log > CardFiles_Mul8/realistic-counting-experiment_observed_3000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST3500_BHMI.txt -o CardFiles_Mul8/ws_ST3500_BHMI.root
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul8/r05_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul8/r10_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul8/r15_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul8/r20_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul8/r25_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul8/r30_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul8/r35_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul8/r40_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=45 > CardFiles_Mul8/r45_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul8/r50_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=55 > CardFiles_Mul8/r55_ST3500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST3500.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST3500.log
combine CardFiles_Mul8/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST3500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST3500.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST3500.log > CardFiles_Mul8/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST3500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST3500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST3500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST3500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_3500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST3500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_3500.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_3500.log > CardFiles_Mul8/realistic-counting-experiment_observed_3500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST4000_BHMI.txt -o CardFiles_Mul8/ws_ST4000_BHMI.root
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul8/r3_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul8/r4_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul8/r5_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul8/r6_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul8/r7_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul8/r8_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul8/r9_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul8/r11_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul8/r13_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul8/r15_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul8/r17_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul8/r19_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul8/r21_ST4000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST4000.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST4000.log
combine CardFiles_Mul8/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST4000.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST4000.log > CardFiles_Mul8/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST4000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST4000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST4000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST4000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST4000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_4000.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_4000.log > CardFiles_Mul8/realistic-counting-experiment_observed_4000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST4500_BHMI.txt -o CardFiles_Mul8/ws_ST4500_BHMI.root
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul8/r15_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul8/r2_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul8/r25_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul8/r3_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul8/r35_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul8/r4_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul8/r5_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul8/r6_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul8/r7_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul8/r8_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul8/r9_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul8/r11_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul8/r13_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul8/r15_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul8/r17_ST4500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST4500.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST4500.log
combine CardFiles_Mul8/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST4500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST4500.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST4500.log > CardFiles_Mul8/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST4500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST4500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST4500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST4500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_4500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST4500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_4500.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_4500.log > CardFiles_Mul8/realistic-counting-experiment_observed_4500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul8/ws_ST5000_BHMI.root
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul8/r15_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul8/r2_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul8/r25_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul8/r3_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul8/r35_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul8/r4_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul8/r5_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul8/r6_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul8/r7_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul8/r8_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul8/r9_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul8/r11_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul8/r13_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST5000.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST5000.log
combine CardFiles_Mul8/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST5000.log > CardFiles_Mul8/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST5000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST5000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST5000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST5000.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_5000.log > CardFiles_Mul8/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST5500_BHMI.txt -o CardFiles_Mul8/ws_ST5500_BHMI.root
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul8/r1_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul8/r15_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul8/r2_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul8/r25_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul8/r3_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul8/r35_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul8/r4_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul8/r45_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul8/r5_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul8/r5_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul8/r6_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul8/r7_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul8/r8_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul8/r9_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul8/r10_ST5500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST5500.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST5500.log
combine CardFiles_Mul8/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST5500.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST5500.log > CardFiles_Mul8/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST5500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST5500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST5500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST5500.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST5500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_5500.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_5500.log > CardFiles_Mul8/realistic-counting-experiment_observed_5500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul8/realistic-counting-experiment_ST5800_BHMI.txt -o CardFiles_Mul8/ws_ST5800_BHMI.root
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.5 > CardFiles_Mul8/r05_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.75 > CardFiles_Mul8/r075_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul8/r1_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul8/r15_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul8/r2_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul8/r25_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul8/r3_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul8/r35_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul8/r4_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul8/r45_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul8/r5_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul8/r5_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul8/r6_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul8/r7_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul8/r8_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul8/r8_ST5900.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul8/
hadd CardFiles_Mul8/grid_ST5800.root CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul8/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5800.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul8/p0025_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5800.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul8/p0016_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5800.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul8/p0500_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5800.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul8/p0840_ST5800.log
combine CardFiles_Mul8/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul8/grid_ST5800.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul8/p0975_ST5800.log
grep -h "@ 95% CL" CardFiles_Mul8/p0025_ST5800.log > CardFiles_Mul8/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0016_ST5800.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0500_ST5800.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0840_ST5800.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul8/p0975_ST5800.log >> CardFiles_Mul8/realistic-counting-experiment_expected_5800_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul8/realistic-counting-experiment_ST5800_BHMI.txt -H ProfileLikelihood > CardFiles_Mul8/realistic-counting-experiment_observed_5800.log
grep "@ 95% CL" CardFiles_Mul8/realistic-counting-experiment_observed_5800.log > CardFiles_Mul8/realistic-counting-experiment_observed_5800_CL95.log
rm roostats-*
