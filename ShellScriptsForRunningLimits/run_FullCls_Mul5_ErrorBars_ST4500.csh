text2workspace.py CardFiles_Mul5/realistic-counting-experiment_ST4500_BHMI.txt -o CardFiles_Mul5/ws_ST4500_BHMI.root
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul5/r11_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul5/r13_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul5/r15_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul5/r17_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul5/r19_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul5/r21_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=23 > CardFiles_Mul5/r23_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul5/r25_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=27 > CardFiles_Mul5/r27_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=29 > CardFiles_Mul5/r29_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=34 > CardFiles_Mul5/r34_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul5/r38_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=42 > CardFiles_Mul5/r42_ST4500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul5/
hadd CardFiles_Mul5/grid_ST4500.root CardFiles_Mul5/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul5/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST4500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul5/p0025_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST4500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul5/p0016_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST4500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul5/p0500_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST4500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul5/p0840_ST4500.log
combine CardFiles_Mul5/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul5/grid_ST4500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul5/p0975_ST4500.log
grep -h "@ 95% CL" CardFiles_Mul5/p0025_ST4500.log > CardFiles_Mul5/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0016_ST4500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0500_ST4500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0840_ST4500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul5/p0975_ST4500.log >> CardFiles_Mul5/realistic-counting-experiment_expected_4500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul5/realistic-counting-experiment_ST4500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul5/realistic-counting-experiment_observed_4500.log
grep "@ 95% CL" CardFiles_Mul5/realistic-counting-experiment_observed_4500.log > CardFiles_Mul5/realistic-counting-experiment_observed_4500_CL95.log
rm roostats-*
