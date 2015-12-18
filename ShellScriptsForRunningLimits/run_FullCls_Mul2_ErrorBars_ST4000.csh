text2workspace.py CardFiles_Mul2/realistic-counting-experiment_ST4000_BHMI.txt -o CardFiles_Mul2/ws_ST4000_BHMI.root
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul2/r70_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul2/r80_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul2/r90_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul2/r100_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=120 > CardFiles_Mul2/r120_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=140 > CardFiles_Mul2/r140_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=160 > CardFiles_Mul2/r160_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=180 > CardFiles_Mul2/r180_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=200 > CardFiles_Mul2/r200_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=220 > CardFiles_Mul2/r220_ST4000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul2/
hadd CardFiles_Mul2/grid_ST4000.root CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST4000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul2/p0025_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST4000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul2/p0016_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST4000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul2/p0500_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST4000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul2/p0840_ST4000.log
combine CardFiles_Mul2/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST4000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul2/p0975_ST4000.log
grep -h "@ 95% CL" CardFiles_Mul2/p0025_ST4000.log > CardFiles_Mul2/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0016_ST4000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0500_ST4000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0840_ST4000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0975_ST4000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_4000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul2/realistic-counting-experiment_ST4000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul2/realistic-counting-experiment_observed_4000.log
grep "@ 95% CL" CardFiles_Mul2/realistic-counting-experiment_observed_4000.log > CardFiles_Mul2/realistic-counting-experiment_observed_4000_CL95.log
rm roostats-*
