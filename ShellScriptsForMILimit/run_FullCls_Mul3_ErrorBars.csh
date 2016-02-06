text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST2300_BHMI.txt -o CardFiles_Mul3/ws_ST2300_BHMI.root
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1000 > CardFiles_Mul3/r1000_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1500 > CardFiles_Mul3/r1500_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2000 > CardFiles_Mul3/r2000_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2500 > CardFiles_Mul3/r2500_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3000 > CardFiles_Mul3/r3000_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3500 > CardFiles_Mul3/r3500_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4000 > CardFiles_Mul3/r4000_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4500 > CardFiles_Mul3/r4500_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5000 > CardFiles_Mul3/r4000_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5500 > CardFiles_Mul3/r5000_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --rMin=0 --rMax=10000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5500 > CardFiles_Mul3/r5500_ST2300.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST2300.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2300.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2300.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2300.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2300.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST2300.log
combine CardFiles_Mul3/ws_ST2300_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2300.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST2300.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST2300.log > CardFiles_Mul3/realistic-counting-experiment_expected_2300_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST2300.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2300_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST2300.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2300_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST2300.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2300_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST2300.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2300_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST2300_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_2300.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_2300.log > CardFiles_Mul3/realistic-counting-experiment_observed_2300_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST2600_BHMI.txt -o CardFiles_Mul3/ws_ST2600_BHMI.root
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=750 > CardFiles_Mul3/r750_ST2600.log 
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1000 > CardFiles_Mul3/r1000_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1250 > CardFiles_Mul3/r1250_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1750 > CardFiles_Mul3/r1750_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2000 > CardFiles_Mul3/r2000_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2250 > CardFiles_Mul3/r2250_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2500 > CardFiles_Mul3/r2500_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2600 > CardFiles_Mul3/r2600_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2800 > CardFiles_Mul3/r2800_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3000 > CardFiles_Mul3/r3000_ST2600.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST2600.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2600.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2600.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2600.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2600.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST2600.log
combine CardFiles_Mul3/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST2600.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST2600.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST2600.log > CardFiles_Mul3/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST2600.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST2600.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST2600.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST2600.log >> CardFiles_Mul3/realistic-counting-experiment_expected_2600_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST2600_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_2600.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_2600.log > CardFiles_Mul3/realistic-counting-experiment_observed_2600_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST3000_BHMI.txt -o CardFiles_Mul3/ws_ST3000_BHMI.root
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=400 > CardFiles_Mul3/r400_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=500 > CardFiles_Mul3/r500_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=600 > CardFiles_Mul3/r600_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=700 > CardFiles_Mul3/r700_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=800 > CardFiles_Mul3/r800_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=900 > CardFiles_Mul3/r900_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1000 > CardFiles_Mul3/r1000_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1100 > CardFiles_Mul3/r1100_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1200 > CardFiles_Mul3/r1200_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1300 > CardFiles_Mul3/r1300_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1500 > CardFiles_Mul3/r1500_ST3000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST3000.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST3000.log
combine CardFiles_Mul3/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST3000.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST3000.log > CardFiles_Mul3/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST3000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST3000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST3000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST3000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3000_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST3000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_3000.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_3000.log > CardFiles_Mul3/realistic-counting-experiment_observed_3000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST3500_BHMI.txt -o CardFiles_Mul3/ws_ST3500_BHMI.root
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=180 > CardFiles_Mul3/r180_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=210 > CardFiles_Mul3/r210_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=240 > CardFiles_Mul3/r240_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=280 > CardFiles_Mul3/r280_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=320 > CardFiles_Mul3/r320_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=360 > CardFiles_Mul3/r360_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=400 > CardFiles_Mul3/r400_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=450 > CardFiles_Mul3/r450_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=500 > CardFiles_Mul3/r500_ST3500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST3500.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST3500.log
combine CardFiles_Mul3/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST3500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST3500.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST3500.log > CardFiles_Mul3/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST3500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST3500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST3500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST3500.log >> CardFiles_Mul3/realistic-counting-experiment_expected_3500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST3500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_3500.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_3500.log > CardFiles_Mul3/realistic-counting-experiment_observed_3500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST4000_BHMI.txt -o CardFiles_Mul3/ws_ST4000_BHMI.root
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul3/r70_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul3/r80_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul3/r90_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul3/r100_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=120 > CardFiles_Mul3/r120_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=140 > CardFiles_Mul3/r140_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=160 > CardFiles_Mul3/r160_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=180 > CardFiles_Mul3/r180_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --rMin=0 --rMax=500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=200 > CardFiles_Mul3/r200_ST4000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST4000.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST4000.log
combine CardFiles_Mul3/ws_ST4000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST4000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST4000.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST4000.log > CardFiles_Mul3/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST4000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST4000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST4000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST4000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_4000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST4000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_4000.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_4000.log > CardFiles_Mul3/realistic-counting-experiment_observed_4000_CL95.log
rm roostats-*

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

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul3/ws_ST5000_BHMI.root
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul3/r11_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul3/r13_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul3/r15_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul3/r17_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul3/r19_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul3/r21_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=23 > CardFiles_Mul3/r23_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=25 > CardFiles_Mul3/r25_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=27 > CardFiles_Mul3/r27_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=29 > CardFiles_Mul3/r29_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=31 > CardFiles_Mul3/r31_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=33 > CardFiles_Mul3/r33_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=35 > CardFiles_Mul3/r35_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=50 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=37 > CardFiles_Mul3/r37_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST5000.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST5000.log
combine CardFiles_Mul3/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST5000.log > CardFiles_Mul3/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST5000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST5000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST5000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST5000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_5000.log > CardFiles_Mul3/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*

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

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST6000_BHMI.txt -o CardFiles_Mul3/ws_ST6000_BHMI.root
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul3/r15_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul3/r2_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul3/r25_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul3/r3_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul3/r35_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul3/r4_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul3/r45_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul3/r5_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul3/r5_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul3/r6_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul3/r7_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul3/r8_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul3/r9_ST5900.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul3/r10_ST5900.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul3/r11_ST5900.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul3/r12_ST5900.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=14 > CardFiles_Mul3/r14_ST5900.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST6000.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST6000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST6000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST6000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST6000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST6000.log
combine CardFiles_Mul3/ws_ST6000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST6000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST6000.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST6000.log > CardFiles_Mul3/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST6000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST6000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST6000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_6000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST6000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_6000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST6000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_6000.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_6000.log > CardFiles_Mul3/realistic-counting-experiment_observed_6000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul3/realistic-counting-experiment_ST7000_BHMI.txt -o CardFiles_Mul3/ws_ST7000_BHMI.root
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.0 > CardFiles_Mul3/r1_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul3/r15_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul3/r2_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul3/r25_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul3/r3_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul3/r35_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul3/r4_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul3/r45_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul3/r5_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul3/r5_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul3/r6_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul3/r7_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul3/r8_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul3/r9_ST5900.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul3/r10_ST5900.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul3/r11_ST5900.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --rMin=0 --rMax=15 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=12 > CardFiles_Mul3/r12_ST5900.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul3/
hadd CardFiles_Mul3/grid_ST7000.root CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul3/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST7000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul3/p0025_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST7000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul3/p0016_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST7000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul3/p0500_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST7000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul3/p0840_ST7000.log
combine CardFiles_Mul3/ws_ST7000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul3/grid_ST7000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul3/p0975_ST7000.log
grep -h "@ 95% CL" CardFiles_Mul3/p0025_ST7000.log > CardFiles_Mul3/realistic-counting-experiment_expected_7000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0016_ST7000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_7000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0500_ST7000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_7000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0840_ST7000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_7000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul3/p0975_ST7000.log >> CardFiles_Mul3/realistic-counting-experiment_expected_7000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul3/realistic-counting-experiment_ST7000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul3/realistic-counting-experiment_observed_7000.log
grep "@ 95% CL" CardFiles_Mul3/realistic-counting-experiment_observed_7000.log > CardFiles_Mul3/realistic-counting-experiment_observed_7000_CL95.log
rm roostats-*

