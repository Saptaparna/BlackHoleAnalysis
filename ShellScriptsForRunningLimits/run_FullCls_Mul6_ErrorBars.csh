text2workspace.py CardFiles_Mul6/realistic-counting-experiment_ST2600_BHMI.txt -o CardFiles_Mul6/ws_ST2600_BHMI.root
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul6/r100_ST2600.log 
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=200 > CardFiles_Mul6/r205_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=250 > CardFiles_Mul6/r250_ST2600.log 
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=300 > CardFiles_Mul6/r300_ST2600.log 
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=350 > CardFiles_Mul6/r350_ST2600.log 
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=400 > CardFiles_Mul6/r400_ST2600.log 
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=500 > CardFiles_Mul6/r500_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=550 > CardFiles_Mul6/r550_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=600 > CardFiles_Mul6/r600_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=800 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=650 > CardFiles_Mul6/r650_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=800 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=700 > CardFiles_Mul6/r700_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=800 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=750 > CardFiles_Mul6/r750_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=800 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=800 > CardFiles_Mul6/r800_ST2600.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul6/
hadd CardFiles_Mul6/grid_ST2600.root CardFiles_Mul6/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul6/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST2600.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul6/p0025_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST2600.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul6/p0016_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST2600.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul6/p0500_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST2600.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul6/p0840_ST2600.log
combine CardFiles_Mul6/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST2600.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul6/p0975_ST2600.log
grep -h "@ 95% CL" CardFiles_Mul6/p0025_ST2600.log > CardFiles_Mul6/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0016_ST2600.log >> CardFiles_Mul6/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0500_ST2600.log >> CardFiles_Mul6/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0840_ST2600.log >> CardFiles_Mul6/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0975_ST2600.log >> CardFiles_Mul6/realistic-counting-experiment_expected_2600_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul6/realistic-counting-experiment_ST2600_BHMI.txt -H ProfileLikelihood > CardFiles_Mul6/realistic-counting-experiment_observed_2600.log
grep "@ 95% CL" CardFiles_Mul6/realistic-counting-experiment_observed_2600.log > CardFiles_Mul6/realistic-counting-experiment_observed_2600_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul6/realistic-counting-experiment_ST3000_BHMI.txt -o CardFiles_Mul6/ws_ST3000_BHMI.root
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=300 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul6/r100_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=300 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=120 > CardFiles_Mul6/r120_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=300 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=180 > CardFiles_Mul6/r180_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=210 > CardFiles_Mul6/r210_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=250 > CardFiles_Mul6/r250_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=275 > CardFiles_Mul6/r275_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=310 > CardFiles_Mul6/r310_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=350 > CardFiles_Mul6/r350_ST3000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul6/
hadd CardFiles_Mul6/grid_ST3000.root CardFiles_Mul6/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul6/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul6/p0025_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul6/p0016_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul6/p0500_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul6/p0840_ST3000.log
combine CardFiles_Mul6/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul6/p0975_ST3000.log
grep -h "@ 95% CL" CardFiles_Mul6/p0025_ST3000.log > CardFiles_Mul6/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0016_ST3000.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0500_ST3000.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0840_ST3000.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0975_ST3000.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3000_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul6/realistic-counting-experiment_ST3000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul6/realistic-counting-experiment_observed_3000.log
grep "@ 95% CL" CardFiles_Mul6/realistic-counting-experiment_observed_3000.log > CardFiles_Mul6/realistic-counting-experiment_observed_3000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul6/realistic-counting-experiment_ST3500_BHMI.txt -o CardFiles_Mul6/ws_ST3500_BHMI.root
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul6/r30_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul6/r40_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul6/r50_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=60 > CardFiles_Mul6/r60_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul6/r70_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul6/r80_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul6/r90_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul6/r100_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=110 > CardFiles_Mul6/r110_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=120 > CardFiles_Mul6/r120_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=130 > CardFiles_Mul6/r130_ST3500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul6/
hadd CardFiles_Mul6/grid_ST3500.root CardFiles_Mul6/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul6/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul6/p0025_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul6/p0016_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul6/p0500_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul6/p0840_ST3500.log
combine CardFiles_Mul6/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul6/grid_ST3500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul6/p0975_ST3500.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
grep -h "@ 95% CL" CardFiles_Mul6/p0025_ST3500.log > CardFiles_Mul6/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0016_ST3500.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0500_ST3500.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0840_ST3500.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul6/p0975_ST3500.log >> CardFiles_Mul6/realistic-counting-experiment_expected_3500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul6/realistic-counting-experiment_ST3500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul6/realistic-counting-experiment_observed_3500.log
grep "@ 95% CL" CardFiles_Mul6/realistic-counting-experiment_observed_3500.log > CardFiles_Mul6/realistic-counting-experiment_observed_3500_CL95.log
rm roostats-*

