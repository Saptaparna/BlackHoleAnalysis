text2workspace.py CardFiles_Mul9/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul9/ws_ST5000_BHMI.root
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul9/r1_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul9/r15_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul9/r2_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul9/r25_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul9/r3_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul9/r35_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul9/r4_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul9/r5_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul9/r6_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul9/r7_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul9/r8_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul9/r9_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul9/r11_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul9/
hadd CardFiles_Mul9/grid_ST5000.root CardFiles_Mul9/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul9/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul9/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul9/p0025_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul9/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul9/p0016_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul9/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul9/p0500_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul9/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul9/p0840_ST5000.log
combine CardFiles_Mul9/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul9/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul9/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul9/p0025_ST5000.log > CardFiles_Mul9/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul9/p0016_ST5000.log >> CardFiles_Mul9/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul9/p0500_ST5000.log >> CardFiles_Mul9/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul9/p0840_ST5000.log >> CardFiles_Mul9/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul9/p0975_ST5000.log >> CardFiles_Mul9/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul9/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul9/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul9/realistic-counting-experiment_observed_5000.log > CardFiles_Mul9/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*
