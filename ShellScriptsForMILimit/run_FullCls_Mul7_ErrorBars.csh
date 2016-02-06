text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST2600_BHMI.txt -o CardFiles_Mul7/ws_ST2600_BHMI.root
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul7/r100_ST2600.log 
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=125 > CardFiles_Mul7/r125_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=150 > CardFiles_Mul7/r150_ST2600.log 
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=175 > CardFiles_Mul7/r175_ST2600.log 
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=200 > CardFiles_Mul7/r200_ST2600.log 
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=225 > CardFiles_Mul7/r225_ST2600.log 
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=250 > CardFiles_Mul7/r250_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=275 > CardFiles_Mul7/r275_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=300 > CardFiles_Mul7/r300_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=325 > CardFiles_Mul7/r325_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=350 > CardFiles_Mul7/r350_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=375 > CardFiles_Mul7/r375_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --rMin=0 --rMax=400 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=400 > CardFiles_Mul7/r400_ST2600.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST2600.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST2600.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST2600.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST2600.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST2600.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST2600.log
combine CardFiles_Mul7/ws_ST2600_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST2600.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST2600.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST2600.log > CardFiles_Mul7/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST2600.log >> CardFiles_Mul7/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST2600.log >> CardFiles_Mul7/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST2600.log >> CardFiles_Mul7/realistic-counting-experiment_expected_2600_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST2600.log >> CardFiles_Mul7/realistic-counting-experiment_expected_2600_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST2600_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_2600.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_2600.log > CardFiles_Mul7/realistic-counting-experiment_observed_2600_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST3000_BHMI.txt -o CardFiles_Mul7/ws_ST3000_BHMI.root
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul7/r50_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=75 > CardFiles_Mul7/r75_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul7/r100_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=125 > CardFiles_Mul7/r125_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=150 > CardFiles_Mul7/r150_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=175 > CardFiles_Mul7/r175_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=200 > CardFiles_Mul7/r200_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --rMin=0 --rMax=200 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=225 > CardFiles_Mul7/r225_ST3000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST3000.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST3000.log
combine CardFiles_Mul7/ws_ST3000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST3000.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST3000.log > CardFiles_Mul7/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST3000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST3000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST3000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST3000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3000_CL95.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST3000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_3000.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_3000.log > CardFiles_Mul7/realistic-counting-experiment_observed_3000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST3500_BHMI.txt -o CardFiles_Mul7/ws_ST3500_BHMI.root
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul7/r10_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=20 > CardFiles_Mul7/r20_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=30 > CardFiles_Mul7/r30_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=40 > CardFiles_Mul7/r40_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=50 > CardFiles_Mul7/r50_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=60 > CardFiles_Mul7/r60_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=70 > CardFiles_Mul7/r70_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=80 > CardFiles_Mul7/r80_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=90 > CardFiles_Mul7/r90_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=100 > CardFiles_Mul7/r100_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=110 > CardFiles_Mul7/r110_ST3500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST3500.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST3500.log
combine CardFiles_Mul7/ws_ST3500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST3500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST3500.log
rm higgsCombineTest.HybridNew.mH120.quant0*.root
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST3500.log > CardFiles_Mul7/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST3500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST3500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST3500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST3500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_3500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST3500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_3500.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_3500.log > CardFiles_Mul7/realistic-counting-experiment_observed_3500_CL95.log
rm roostats-*

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

text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST4500_BHMI.txt -o CardFiles_Mul7/ws_ST4500_BHMI.root
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul7/r3_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul7/r35_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul7/r4_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul7/r5_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul7/r6_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul7/r7_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul7/r8_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul7/r9_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul7/r11_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul7/r13_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul7/r15_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=17 > CardFiles_Mul7/r17_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=19 > CardFiles_Mul7/r19_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=21 > CardFiles_Mul7/r21_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --rMin=0 --rMax=100 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=23 > CardFiles_Mul7/r23_ST4500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST4500.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST4500.log
combine CardFiles_Mul7/ws_ST4500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST4500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST4500.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST4500.log > CardFiles_Mul7/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST4500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST4500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST4500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST4500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_4500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST4500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_4500.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_4500.log > CardFiles_Mul7/realistic-counting-experiment_observed_4500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST5000_BHMI.txt -o CardFiles_Mul7/ws_ST5000_BHMI.root
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul7/r2_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul7/r25_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul7/r3_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul7/r35_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul7/r4_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul7/r5_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul7/r6_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul7/r7_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul7/r8_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul7/r9_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=11 > CardFiles_Mul7/r11_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=13 > CardFiles_Mul7/r13_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=15 > CardFiles_Mul7/r15_ST5000.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST5000.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5000.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5000.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5000.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5000.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST5000.log
combine CardFiles_Mul7/ws_ST5000_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5000.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST5000.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST5000.log > CardFiles_Mul7/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST5000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST5000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST5000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5000_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST5000.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5000_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST5000_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_5000.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_5000.log > CardFiles_Mul7/realistic-counting-experiment_observed_5000_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST5500_BHMI.txt -o CardFiles_Mul7/ws_ST5500_BHMI.root
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul7/r1_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul7/r15_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul7/r2_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul7/r25_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul7/r3_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul7/r35_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul7/r4_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul7/r45_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul7/r5_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul7/r5_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul7/r6_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul7/r7_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul7/r8_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul7/r9_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --rMin=0 --rMax=20 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=10 > CardFiles_Mul7/r10_ST5500.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST5500.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5500.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5500.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5500.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5500.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST5500.log
combine CardFiles_Mul7/ws_ST5500_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5500.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST5500.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST5500.log > CardFiles_Mul7/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0016_ST5500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST5500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST5500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5500_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST5500.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5500_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST5500_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_5500.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_5500.log > CardFiles_Mul7/realistic-counting-experiment_observed_5500_CL95.log
rm roostats-*

text2workspace.py CardFiles_Mul7/realistic-counting-experiment_ST5800_BHMI.txt -o CardFiles_Mul7/ws_ST5800_BHMI.root
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.5 > CardFiles_Mul7/r05_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=0.75 > CardFiles_Mul7/r075_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1 > CardFiles_Mul7/r1_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=1.5 > CardFiles_Mul7/r15_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2 > CardFiles_Mul7/r2_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=2.5 > CardFiles_Mul7/r25_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3 > CardFiles_Mul7/r3_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=3.5 > CardFiles_Mul7/r35_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4 > CardFiles_Mul7/r4_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=4.5 > CardFiles_Mul7/r45_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5 > CardFiles_Mul7/r5_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=5.5 > CardFiles_Mul7/r5_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=6 > CardFiles_Mul7/r6_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=7 > CardFiles_Mul7/r7_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=8 > CardFiles_Mul7/r8_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --rMin=0 --rMax=10 --freq --fullBToys -s -1 -T 1000 -i 5 --saveToys --saveHybridResult --clsAcc 0 -v9 --singlePoint=9 > CardFiles_Mul7/r8_ST5900.log
mv higgsCombineTest.HybridNew.mH120.*root CardFiles_Mul7/
hadd CardFiles_Mul7/grid_ST5800.root CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
rm CardFiles_Mul7/higgsCombineTest.HybridNew.mH120.*root
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.025 > CardFiles_Mul7/p0025_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.160 > CardFiles_Mul7/p0016_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.500 > CardFiles_Mul7/p0500_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.840 > CardFiles_Mul7/p0840_ST5800.log
combine CardFiles_Mul7/ws_ST5800_BHMI.root -M HybridNew --freq --grid=CardFiles_Mul7/grid_ST5800.root -v9 --expectedFromGrid=0.975 > CardFiles_Mul7/p0975_ST5800.log
grep -h "@ 95% CL" CardFiles_Mul7/p0025_ST5800.log > CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.loggrep -h "@ 95% CL" CardFiles_Mul7/p0016_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0500_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0840_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
grep -h "@ 95% CL" CardFiles_Mul7/p0975_ST5800.log >> CardFiles_Mul7/realistic-counting-experiment_expected_5800_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul7/realistic-counting-experiment_ST5800_BHMI.txt -H ProfileLikelihood > CardFiles_Mul7/realistic-counting-experiment_observed_5800.log
grep "@ 95% CL" CardFiles_Mul7/realistic-counting-experiment_observed_5800.log > CardFiles_Mul7/realistic-counting-experiment_observed_5800_CL95.log
rm roostats-*
