#text2workspace.py CardFiles_Mul2/realistic-counting-experiment_ST2600_BHMI.txt -o CardFiles_Mul2/ws_ST2600_BHMI.root
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1000 > CardFiles_Mul2/r1000_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1250 > CardFiles_Mul2/r1250_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1750 > CardFiles_Mul2/r1750_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2000 > CardFiles_Mul2/r2000_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2250 > CardFiles_Mul2/r2250_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2500 > CardFiles_Mul2/r2500_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2600 > CardFiles_Mul2/r2600_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2800 > CardFiles_Mul2/r2800_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3000 > CardFiles_Mul2/r3000_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3200 > CardFiles_Mul2/r3200_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=5000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3400 > CardFiles_Mul2/r3400_ST2600.log
#mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul2/
#hadd CardFiles_Mul2/grid_ST2600.root CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
#rm CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST2600.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul2/p0025_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST2600.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul2/p0016_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST2600.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul2/p0500_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST2600.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul2/p0840_ST2600.log
#combine CardFiles_Mul2/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST2600.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul2/p0975_ST2600.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0025_ST2600.log > CardFiles_Mul2/realistic-counting-experiment_expected_2600_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0016_ST2600.log >> CardFiles_Mul2/realistic-counting-experiment_expected_2600_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0500_ST2600.log >> CardFiles_Mul2/realistic-counting-experiment_expected_2600_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0840_ST2600.log >> CardFiles_Mul2/realistic-counting-experiment_expected_2600_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0975_ST2600.log >> CardFiles_Mul2/realistic-counting-experiment_expected_2600_CL95.log
#rm higgsCombineTest.HybridNew.mH120.quant0*.root
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul2/realistic-counting-experiment_ST2600_BHMI.txt -H ProfileLikelihood > CardFiles_Mul2/realistic-counting-experiment_observed_2600.log
#grep "@ 95% CL" CardFiles_Mul2/realistic-counting-experiment_observed_2600.log > CardFiles_Mul2/realistic-counting-experiment_observed_2600_CL95.log
#rm roostats-*

#text2workspace.py CardFiles_Mul2/realistic-counting-experiment_ST3000_BHMI.txt -o CardFiles_Mul2/ws_ST3000_BHMI.root
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=500 > CardFiles_Mul2/r500_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=600 > CardFiles_Mul2/r600_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=700 > CardFiles_Mul2/r700_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=800 > CardFiles_Mul2/r800_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=900 > CardFiles_Mul2/r900_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1000 > CardFiles_Mul2/r1000_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1100 > CardFiles_Mul2/r1100_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1200 > CardFiles_Mul2/r1200_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1300 > CardFiles_Mul2/r1300_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1500 > CardFiles_Mul2/r1500_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=1500 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1700 > CardFiles_Mul2/r1700_ST3000.log
#mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul2/
#hadd CardFiles_Mul2/grid_ST3000.root CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
#rm CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul2/p0025_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul2/p0016_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul2/p0500_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul2/p0840_ST3000.log
#combine CardFiles_Mul2/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul2/p0975_ST3000.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0025_ST3000.log > CardFiles_Mul2/realistic-counting-experiment_expected_3000_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0016_ST3000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3000_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0500_ST3000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3000_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0840_ST3000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3000_CL95.log
#grep -h "@ 95% CL" CardFiles_Mul2/p0975_ST3000.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3000_CL95.log
#rm higgsCombineTest.HybridNew.mH120.quant0*.root
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul2/realistic-counting-experiment_ST3000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul2/realistic-counting-experiment_observed_3000.log
#grep "@ 95% CL" CardFiles_Mul2/realistic-counting-experiment_observed_3000.log > CardFiles_Mul2/realistic-counting-experiment_observed_3000_CL95.log
#rm roostats-*

text2workspace.py CardFiles_Mul2/realistic-counting-experiment_ST3500_BHMI.txt -o CardFiles_Mul2/ws_ST3500_BHMI.root
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=190 > CardFiles_Mul2/r190_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=200 > CardFiles_Mul2/r200_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=210 > CardFiles_Mul2/r210_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=240 > CardFiles_Mul2/r240_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=280 > CardFiles_Mul2/r280_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=320 > CardFiles_Mul2/r320_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=360 > CardFiles_Mul2/r360_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=400 > CardFiles_Mul2/r400_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=450 > CardFiles_Mul2/r450_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=500 > CardFiles_Mul2/r500_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=550 > CardFiles_Mul2/r550_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=1000 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=600 > CardFiles_Mul2/r600_ST3500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul2/
hadd CardFiles_Mul2/grid_ST3500.root CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul2/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul2/p0025_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul2/p0016_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul2/p0500_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul2/p0840_ST3500.log
combine CardFiles_Mul2/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul2/grid_ST3500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul2/p0975_ST3500.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
grep -h "@ 95% CL" CardFiles_Mul2/p0025_ST3500.log > CardFiles_Mul2/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0016_ST3500.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0500_ST3500.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0840_ST3500.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul2/p0975_ST3500.log >> CardFiles_Mul2/realistic-counting-experiment_expected_3500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul2/realistic-counting-experiment_ST3500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul2/realistic-counting-experiment_observed_3500.log
grep "@ 95% CL" CardFiles_Mul2/realistic-counting-experiment_observed_3500.log > CardFiles_Mul2/realistic-counting-experiment_observed_3500_CL95.log
rm roostats-*
