text2workspace.py CardFiles_Mul5/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul5/ws_ST5000_BHMI.root
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul5/r5_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul5/r6_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul5/r7_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul5/r8_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul5/r9_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul5/r11_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul5/r13_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul5/r15_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul5/r17_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul5/r19_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul5/r21_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=23 > CardFiles_Mul5/r23_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=30 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul5/r25_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul5/
hadd CardFiles_Mul5/grid_ST5000.root CardFiles_Mul5/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul5/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul5/p0025_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul5/p0016_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul5/p0500_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul5/p0840_ST5000.log
combine CardFiles_Mul5/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul5/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul5/p0025_ST5000.log > CardFiles_Mul5/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0016_ST5000.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0500_ST5000.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0840_ST5000.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0975_ST5000.log >> CardFiles_Mul5/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul5/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul5/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul5/realistic-counting-experiment_observed_5000.log > CardFiles_Mul5/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*
