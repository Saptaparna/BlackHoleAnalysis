text2workspace.py CardFiles_Mul4/realistic-counting-experiment_ST4000_BHMI.txt -o CardFiles_Mul4/ws_ST4000_BHMI.root
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul4/r35_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul4/r40_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul4/r50_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=60 > CardFiles_Mul4/r60_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul4/r70_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul4/r80_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul4/r90_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul4/r100_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=120 > CardFiles_Mul4/r120_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=140 > CardFiles_Mul4/r140_ST4000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul4/
hadd CardFiles_Mul4/grid_ST4000.root CardFiles_Mul4/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul4/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST4000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul4/p0025_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST4000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul4/p0016_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST4000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul4/p0500_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST4000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul4/p0840_ST4000.log
combine CardFiles_Mul4/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST4000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul4/p0975_ST4000.log
grep -h "@ 95% CL" CardFiles_Mul4/p0025_ST4000.log > CardFiles_Mul4/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0016_ST4000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0500_ST4000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0840_ST4000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0975_ST4000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_4000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul4/realistic-counting-experiment_ST4000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul4/realistic-counting-experiment_observed_4000.log
grep "@ 95% CL" CardFiles_Mul4/realistic-counting-experiment_observed_4000.log > CardFiles_Mul4/realistic-counting-experiment_observed_4000_CL95.log
rm roostats-*
