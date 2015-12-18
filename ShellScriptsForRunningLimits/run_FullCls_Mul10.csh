combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq -s 123 --saveToys --saveHybridResult -H ProfileLikelihood
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.123.root --expectedFromGrid=0.025 > CardFiles_Mul10/realistic-counting-experiment_expected_2600.log
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq -s 123 --saveToys --saveHybridResult -H ProfileLikelihood
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.123.root --expectedFromGrid=0.16 >> CardFiles_Mul10/realistic-counting-experiment_expected_2600.log
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq -s 123 --saveToys --saveHybridResult -H ProfileLikelihood
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.123.root --expectedFromGrid=0.5 >> CardFiles_Mul10/realistic-counting-experiment_expected_2600.log
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq -s 123 --saveToys --saveHybridResult -H ProfileLikelihood
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.123.root --expectedFromGrid=0.84 >> CardFiles_Mul10/realistic-counting-experiment_expected_2600.log
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq -s 123 --saveToys --saveHybridResult -H ProfileLikelihood
combine CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.123.root --expectedFromGrid=0.975 >> CardFiles_Mul10/realistic-counting-experiment_expected_2600.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_2600.log > CardFiles_Mul10/realistic-counting-experiment_expected_2600_CL95.log
combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST2600_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_2600.log
grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_2600.log > CardFiles_Mul10/realistic-counting-experiment_observed_2600_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST3000_BHMI.txt -M HybridNew --freq -s 124 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST3000_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.124.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_3000.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_3000.log > CardFiles_Mul10/realistic-counting-experiment_expected_3000_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST3000_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_3000.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_3000.log > CardFiles_Mul10/realistic-counting-experiment_observed_3000_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST3500_BHMI.txt -M HybridNew --freq -s 125 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST3500_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.125.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_3500.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_3500.log > CardFiles_Mul10/realistic-counting-experiment_expected_3500_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST3500_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_3500.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_3500.log > CardFiles_Mul10/realistic-counting-experiment_observed_3500_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST4000_BHMI.txt -M HybridNew --freq -s 126 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST4000_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.126.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_4000.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_4000.log > CardFiles_Mul10/realistic-counting-experiment_expected_4000_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST4000_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_4000.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_4000.log > CardFiles_Mul10/realistic-counting-experiment_observed_4000_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST4500_BHMI.txt -M HybridNew --freq -s 127 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST4500_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.127.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_4500.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_4500.log > CardFiles_Mul10/realistic-counting-experiment_expected_4500_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST4500_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_4500.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_4500.log > CardFiles_Mul10/realistic-counting-experiment_observed_4500_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST5000_BHMI.txt -M HybridNew --freq -s 128 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST5000_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.128.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_5000.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_5000.log > CardFiles_Mul10/realistic-counting-experiment_expected_5000_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST5000_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_5000.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_5000.log > CardFiles_Mul10/realistic-counting-experiment_observed_5000_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST5500_BHMI.txt -M HybridNew --freq -s 129 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST5500_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.129.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_5500.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_5500.log > CardFiles_Mul10/realistic-counting-experiment_expected_5500_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST5500_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_5500.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_5500.log > CardFiles_Mul10/realistic-counting-experiment_observed_5500_CL95.log

#combine CardFiles_Mul10/realistic-counting-experiment_ST5800_BHMI.txt -M HybridNew --freq -s 132 --saveToys --saveHybridResult -H ProfileLikelihood
#combine CardFiles_Mul10/realistic-counting-experiment_ST5800_BHMI.txt -M HybridNew --freq --grid=higgsCombineTest.HybridNew.mH120.132.root --expectedFromGrid=0.5 > CardFiles_Mul10/realistic-counting-experiment_expected_5800.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_expected_5800.log > CardFiles_Mul10/realistic-counting-experiment_expected_5800_CL95.log
#combine -M HybridNew --frequentist --testStat LHC CardFiles_Mul10/realistic-counting-experiment_ST5800_BHMI.txt > CardFiles_Mul10/realistic-counting-experiment_observed_5800.log
#grep "@ 95% CL" CardFiles_Mul10/realistic-counting-experiment_observed_5800.log > CardFiles_Mul10/realistic-counting-experiment_observed_5800_CL95.log


rm roostats*
