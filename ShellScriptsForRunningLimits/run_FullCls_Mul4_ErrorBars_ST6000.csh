text2workspace.py CardFiles_Mul4/realistic-counting-experiment_ST6000_BHMI.txt -o CardFiles_Mul4/ws_ST6000_BHMI.root
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul4/r15_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul4/r2_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul4/r25_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul4/r3_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul4/r35_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul4/r4_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul4/r45_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul4/r5_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul4/r5_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul4/r6_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul4/r7_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul4/r8_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul4/r9_ST5900.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul4/r10_ST5900.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul4/r11_ST5900.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul4/r12_ST5900.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul4/
hadd CardFiles_Mul4/grid_ST6000.root CardFiles_Mul4/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul4/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST6000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul4/p0025_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST6000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul4/p0016_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST6000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul4/p0500_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST6000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul4/p0840_ST6000.log
combine CardFiles_Mul4/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul4/grid_ST6000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul4/p0975_ST6000.log
grep -h "@ 95% CL" CardFiles_Mul4/p0025_ST6000.log > CardFiles_Mul4/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0016_ST6000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0500_ST6000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0840_ST6000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul4/p0975_ST6000.log >> CardFiles_Mul4/realistic-counting-experiment_expected_6000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul4/realistic-counting-experiment_ST6000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul4/realistic-counting-experiment_observed_6000.log
grep "@ 95% CL" CardFiles_Mul4/realistic-counting-experiment_observed_6000.log > CardFiles_Mul4/realistic-counting-experiment_observed_6000_CL95.log
rm roostats-*
