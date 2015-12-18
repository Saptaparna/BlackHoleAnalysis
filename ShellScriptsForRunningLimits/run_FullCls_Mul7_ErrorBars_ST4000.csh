text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST4000_BHMI.txt -o CardFiles_Mul7/ws_ST4000_BHMI.root
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul7/r9_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul7/r11_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul7/r13_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul7/r15_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul7/r17_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul7/r19_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul7/r21_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul7/r25_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul7/r30_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul7/r35_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul7/r40_ST4000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST4000.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST4000.log
combine CardFiles_Mul7/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST4000.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST4000.log > CardFiles_Mul7/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST4000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST4000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST4000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST4000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST4000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_4000.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_4000.log > CardFiles_Mul7/realistic-counting-experiment_observed_4000_CL95.log
rm roostats-*
