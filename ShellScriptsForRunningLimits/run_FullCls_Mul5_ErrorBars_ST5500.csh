text2workspace.py CardFiles_Mul5/realistic-counting-experiment_ST5500_BHMI.txt -o CardFiles_Mul5/ws_ST5500_BHMI.root
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul5/r2_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul5/r25_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul5/r3_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul5/r35_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul5/r4_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul5/r45_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul5/r5_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul5/r5_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul5/r6_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul5/r7_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul5/r8_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul5/r9_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul5/r10_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul5/r12_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=14 > CardFiles_Mul5/r14_ST5500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul5/
hadd CardFiles_Mul5/grid_ST5500.root CardFiles_Mul5/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul5/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul5/p0025_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul5/p0016_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul5/p0500_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul5/p0840_ST5500.log
combine CardFiles_Mul5/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul5/p0975_ST5500.log
grep -h "@ 95% CL" CardFiles_Mul5/p0025_ST5500.log > CardFiles_Mul5/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0016_ST5500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0500_ST5500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0840_ST5500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0975_ST5500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul5/realistic-counting-experiment_ST5500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul5/realistic-counting-experiment_observed_5500.log
grep "@ 95% CL" CardFiles_Mul5/realistic-counting-experiment_observed_5500.log > CardFiles_Mul5/realistic-counting-experiment_observed_5500_CL95.log
rm roostats-*
