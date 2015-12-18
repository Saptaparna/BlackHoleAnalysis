text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST5800_BHMI.txt -o CardFiles_Mul7/ws_ST5800_BHMI.root
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.5 > CardFiles_Mul7/r05_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.75 > CardFiles_Mul7/r075_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul7/r1_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul7/r15_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul7/r2_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul7/r25_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul7/r3_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul7/r35_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul7/r4_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul7/r45_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul7/r5_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul7/r5_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul7/r6_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul7/r7_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul7/r8_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul7/r8_ST5900.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST5800.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST5800.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST5800.log > CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST5800_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_5800.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_5800.log > CardFiles_Mul7/realistic-counting-experiment_observed_5800_CL95.log
rm roostats-*
