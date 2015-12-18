text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -o CardFiles_Mul10/ws_ST2600_BHMI.root
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r05_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r07_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r09_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul10/r16_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul10/r20_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul10/r30_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul10/r35_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul10/r38_ST2600.log 
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul10/r40_ST2600.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST2600.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST2600.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST2600.log
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST2600.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST2600.log
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST2600.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST2600.log
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST2600.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST2600.log
combine CardFiles_Mul10/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST2600.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST2600.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST2600.log > CardFiles_Mul10/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST2600.log >> CardFiles_Mul10/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST2600.log >> CardFiles_Mul10/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST2600.log >> CardFiles_Mul10/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST2600.log >> CardFiles_Mul10/realistic-counting-experiment_expected_2600_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_2600.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_2600.log > CardFiles_Mul10/realistic-counting-experiment_observed_2600_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST3000_BHMI.txt -o CardFiles_Mul10/ws_ST3000_BHMI.root
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r05_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r07_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r09_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul10/r16_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul10/r20_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul10/r30_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul10/r35_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul10/r38_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul10/r40_ST3000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST3000.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST3000.log
combine CardFiles_Mul10/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST3000.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST3000.log > CardFiles_Mul10/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST3000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST3000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST3000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST3000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3000_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST3000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_3000.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_3000.log > CardFiles_Mul10/realistic-counting-experiment_observed_3000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST3500_BHMI.txt -o CardFiles_Mul10/ws_ST3500_BHMI.root
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.5 > CardFiles_Mul10/r005_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul10/r01_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul10/r02_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul10/r3_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r5_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r7_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r9_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul10/r11_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul10/r15_ST3500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST3500.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST3500.log
combine CardFiles_Mul10/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST3500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST3500.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST3500.log > CardFiles_Mul10/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST3500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST3500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST3500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST3500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_3500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST3500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_3500.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_3500.log > CardFiles_Mul10/realistic-counting-experiment_observed_3500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST4000_BHMI.txt -o CardFiles_Mul10/ws_ST4000_BHMI.root
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.5 > CardFiles_Mul10/r005_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul10/r01_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul10/r02_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul10/r3_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul10/r4_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r5_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul10/r6_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r7_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul10/r8_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r9_ST4000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST4000.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST4000.log
combine CardFiles_Mul10/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST4000.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST4000.log > CardFiles_Mul10/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST4000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST4000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST4000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST4000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST4000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_4000.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_4000.log > CardFiles_Mul10/realistic-counting-experiment_observed_4000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST4500_BHMI.txt -o CardFiles_Mul10/ws_ST4500_BHMI.root
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r05_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r07_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r09_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul10/r16_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul10/r20_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul10/r30_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul10/r35_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul10/r38_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul10/r40_ST4500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST4500.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST4500.log
combine CardFiles_Mul10/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST4500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST4500.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST4500.log > CardFiles_Mul10/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST4500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST4500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST4500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST4500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_4500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST4500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_4500.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_4500.log > CardFiles_Mul10/realistic-counting-experiment_observed_4500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul10/ws_ST5000_BHMI.root
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r05_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r07_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r09_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul10/r16_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul10/r20_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul10/r30_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul10/r35_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul10/r38_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul10/r40_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST5000.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST5000.log
combine CardFiles_Mul10/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST5000.log > CardFiles_Mul10/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST5000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST5000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST5000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST5000.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_5000.log > CardFiles_Mul10/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST5500_BHMI.txt -o CardFiles_Mul10/ws_ST5500_BHMI.root
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r05_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r07_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r09_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul10/r16_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul10/r20_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul10/r30_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul10/r35_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul10/r38_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul10/r40_ST5500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST5500.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST5500.log
combine CardFiles_Mul10/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST5500.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST5500.log > CardFiles_Mul10/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST5500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST5500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST5500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST5500.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST5500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_5500.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_5500.log > CardFiles_Mul10/realistic-counting-experiment_observed_5500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul10/realistic-counting-experiment_ST5800_BHMI.txt -o CardFiles_Mul10/ws_ST5800_BHMI.root
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul10/r05_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul10/r07_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul10/r09_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul10/r12_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul10/r16_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul10/r20_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul10/r30_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul10/r35_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul10/r38_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul10/r40_ST5800.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul10/
hadd CardFiles_Mul10/grid_ST5800.root CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul10/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5800.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul10/p0025_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5800.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul10/p0016_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5800.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul10/p0500_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5800.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul10/p0840_ST5800.log
combine CardFiles_Mul10/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul10/grid_ST5800.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul10/p0975_ST5800.log
grep -h "@ 95% CL" CardFiles_Mul10/p0025_ST5800.log > CardFiles_Mul10/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0016_ST5800.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0500_ST5800.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0840_ST5800.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul10/p0975_ST5800.log >> CardFiles_Mul10/realistic-counting-experiment_expected_5800_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST5800_BHMI.txt -H ProfileLikelihood > CardFiles_Mul10/realistic-counting-experiment_observed_5800.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_5800.log > CardFiles_Mul10/realistic-counting-experiment_observed_5800_CL95.log
rm roostats-*
