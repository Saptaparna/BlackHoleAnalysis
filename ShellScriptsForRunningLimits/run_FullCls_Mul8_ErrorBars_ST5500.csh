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
