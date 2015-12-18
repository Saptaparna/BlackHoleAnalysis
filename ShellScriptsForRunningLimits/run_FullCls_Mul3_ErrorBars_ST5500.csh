text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST5500_BHMI.txt -o CardFiles_Mul3/ws_ST5500_BHMI.root
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul3/r4_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul3/r45_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul3/r5_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul3/r5_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul3/r6_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul3/r7_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul3/r8_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul3/r9_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul3/r10_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul3/r12_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=14 > CardFiles_Mul3/r14_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=16 > CardFiles_Mul3/r16_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=18 > CardFiles_Mul3/r18_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul3/r20_ST5500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST5500.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST5500.log
combine CardFiles_Mul3/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST5500.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST5500.log > CardFiles_Mul3/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST5500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST5500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST5500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST5500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST5500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_5500.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_5500.log > CardFiles_Mul3/realistic-counting-experiment_observed_5500_CL95.log
rm roostats-*
