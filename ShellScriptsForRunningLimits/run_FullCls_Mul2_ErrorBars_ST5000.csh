text2workspace.py CardFiles_Mul2/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul2/ws_ST5000_BHMI.root
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul2/r11_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul2/r13_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul2/r15_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul2/r17_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul2/r19_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul2/r21_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=23 > CardFiles_Mul2/r23_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul2/r25_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=27 > CardFiles_Mul2/r27_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=29 > CardFiles_Mul2/r29_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=31 > CardFiles_Mul2/r31_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=33 > CardFiles_Mul2/r33_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul2/r35_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=37 > CardFiles_Mul2/r37_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=39 > CardFiles_Mul2/r39_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=41 > CardFiles_Mul2/r41_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul2/
hadd CardFiles_Mul2/grid_ST5000.root CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul2/p0025_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul2/p0016_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul2/p0500_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul2/p0840_ST5000.log
combine CardFiles_Mul2/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul2/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul2/p0025_ST5000.log > CardFiles_Mul2/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0016_ST5000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0500_ST5000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0840_ST5000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0975_ST5000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul2/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul2/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul2/realistic-counting-experiment_observed_5000.log > CardFiles_Mul2/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*
