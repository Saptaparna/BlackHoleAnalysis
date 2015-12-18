text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST4500_BHMI.txt -o CardFiles_Mul3/ws_ST4500_BHMI.root
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul3/r25_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=27 > CardFiles_Mul3/r27_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=29 > CardFiles_Mul3/r29_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=34 > CardFiles_Mul3/r34_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=38 > CardFiles_Mul3/r38_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=42 > CardFiles_Mul3/r42_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=46 > CardFiles_Mul3/r46_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul3/r50_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=55 > CardFiles_Mul3/r55_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=60 > CardFiles_Mul3/r60_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=65 > CardFiles_Mul3/r65_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul3/r70_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=75 > CardFiles_Mul3/r75_ST4500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST4500.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST4500.log
combine CardFiles_Mul3/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST4500.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST4500.log > CardFiles_Mul3/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST4500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST4500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST4500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST4500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST4500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_4500.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_4500.log > CardFiles_Mul3/realistic-counting-experiment_observed_4500_CL95.log
rm roostats-*
