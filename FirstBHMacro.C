#define FirstBHMacro_cxx
#include <iostream>
#include <iomanip>
#include <fstream>
#include "FirstBHMacro.h"
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>
using namespace std;
void FirstBHMacro::Loop(TString name, float weight)
{
//@@@@@@@@@@@@@@@@@@@@
//  SET BRANCHES     @    
//@@@@@@@@@@@@@@@@@@@@
fChain->SetBranchStatus("*",0);
fChain->SetBranchStatus("ST",1);
fChain->SetBranchStatus("Multiplicity",1);
fChain->SetBranchStatus("firedHLT_PFJet60_v2",1);
fChain->SetBranchStatus("firedHLT_PFJet140_v2",1);
fChain->SetBranchStatus("firedHLT_PFJet450_v2",1);
fChain->SetBranchStatus("firedHLT_PFHT300_v1",1);
fChain->SetBranchStatus("firedHLT_PFHT400_v1",1);
fChain->SetBranchStatus("firedHLT_PFHT475_v2",1);
fChain->SetBranchStatus("firedHLT_PFHT600_v2",1);
fChain->SetBranchStatus("firedHLT_PFHT650_v2",1);
fChain->SetBranchStatus("firedHLT_PFHT800_v2",1);
fChain->SetBranchStatus("Met", 1);
fChain->SetBranchStatus("NJets", 1);
fChain->SetBranchStatus("NMuons", 1);
fChain->SetBranchStatus("NElectrons", 1);
fChain->SetBranchStatus("NPhotons", 1);
fChain->SetBranchStatus("JetPt", 1);
fChain->SetBranchStatus("JetPx", 1);
fChain->SetBranchStatus("JetPy", 1);
fChain->SetBranchStatus("JetPz", 1);
fChain->SetBranchStatus("JetE", 1);
fChain->SetBranchStatus("JetEt", 1);
fChain->SetBranchStatus("JetEta",1);
fChain->SetBranchStatus("JetPhi",1);
fChain->SetBranchStatus("ElePt",1);
fChain->SetBranchStatus("EleEt",1);
fChain->SetBranchStatus("EleEta",1);
fChain->SetBranchStatus("PhPt",1);
fChain->SetBranchStatus("PhEt",1);
fChain->SetBranchStatus("PhEta",1);
fChain->SetBranchStatus("MuPt",1);
fChain->SetBranchStatus("MuEt",1);
fChain->SetBranchStatus("MuEta",1);
fChain->SetBranchStatus("runno", 1);
fChain->SetBranchStatus("evtno", 1);
fChain->SetBranchStatus("lumiblock", 1);
//@@@@@@@@@@@@@@@@@@@@
//    Histograms     @    
//@@@@@@@@@@@@@@@@@@@@
  //N Objects
  TH1D * njets             = new TH1D("njets","",              35,    0.5,  35.5);
  TH1D * nelectrons        = new TH1D("nelectrons","",         35,    0.5,  35.5);
  TH1D * nmuons            = new TH1D("nmuons","",             35,    0.5,  35.5);
  TH1D * nphotons          = new TH1D("nphotons","",           35,    0.5,  35.5);
  TH1D * njets_et50        = new TH1D("njets_et50","",         35,    0.5,  35.5);
  TH1D * nelectrons_et50   = new TH1D("nelectrons_et50","",    35,    0.5,  35.5);
  TH1D * nmuons_et50       = new TH1D("nmuons_et50","",        35,    0.5,  35.5);
  TH1D * nphotons_et50     = new TH1D("nphotons_et50","",      35,    0.5,  35.5);
  TH1D * njets_pt50        = new TH1D("njets_pt50","",         35,    0.5,  35.5);
  TH1D * nelectrons_pt50   = new TH1D("nelectrons_pt50","",    35,    0.5,  35.5);
  TH1D * nmuons_pt50       = new TH1D("nmuons_pt50","",        35,    0.5,  35.5);
  TH1D * nphotons_pt50     = new TH1D("nphotons_pt50","",      35,    0.5,  35.5);
  //TH1::SetDefaultSumw2();
  //general Histos
  TH1D * njet_et50         = new TH1D("njet_et50","",     35,    0.5,  35.5);
  TH1D * njet_pt50         = new TH1D("njet_pt50","",     35,    0.5,  35.5);
  TH1D * LJ1_pT50          = new TH1D("LJ1_pT50","",      500,   0,    5000);
  TH1D * LJ2_pT50          = new TH1D("LJ2_pT50","",      500,   0,    5000);
  TH1D * jet_pT            = new TH1D("jet_pT","",        500,   0,    5000);
  TH1D * ele_pT            = new TH1D("ele_pT","",        500,   0,    5000);
  TH1D * jet_eT            = new TH1D("jet_eT","",        500,   0,    5000);
  TH1D * ele_pT50          = new TH1D("ele_pT50","",      500,   0,    5000);
  TH1D * ele_pTId          = new TH1D("ele_pTId","",      500,   0,    5000);
  TH1D * jet_pT50          = new TH1D("jet_pT50","",      500,   0,    5000);
  TH1D * jet_eT50          = new TH1D("jet_eT50","",      500,   0,    5000);
  TH1D * jet_eta           = new TH1D("jet_eta","",       80,   -4,       4);
  TH1D * jet_phi           = new TH1D("jet_phi","",       80,   -4,       4);
  TH1D * jet_eta_et50      = new TH1D("jet_eta_et50","",  80,   -4,       4);
  TH1D * jet_phi_et50      = new TH1D("jet_phi_et50","",  80,   -4,       4);
  TH1D * jet_eta_pt50      = new TH1D("jet_eta_pt50","",  80,   -4,       4);
  TH1D * jet_phi_pt50      = new TH1D("jet_phi_pt50","",  80,   -4,       4);
  TH1D * DijetMass_pt50    = new TH1D("DijetMass_pt50","",80,    0,    8000); 
  // Jet ST and HT 
  TH1D * ST_2jet_exc = new TH1D("ST_2jet_exc", "", 800, 0,8000);  TH1D * HT_2jet_exc = new TH1D("HT_2jet_exc", "", 800, 0,8000);
  TH1D * ST_3jet_exc = new TH1D("ST_3jet_exc", "", 800, 0,8000);  TH1D * HT_3jet_exc = new TH1D("HT_3jet_exc", "", 800, 0,8000);
  TH1D * ST_4jet_exc = new TH1D("ST_4jet_exc", "", 800, 0,8000);  TH1D * HT_4jet_exc = new TH1D("HT_4jet_exc", "", 800, 0,8000);
  TH1D * ST_5jet_exc = new TH1D("ST_5jet_exc", "", 800, 0,8000);  TH1D * HT_5jet_exc = new TH1D("HT_5jet_exc", "", 800, 0,8000);
  TH1D * ST_6jet_exc = new TH1D("ST_6jet_exc", "", 800, 0,8000);  TH1D * HT_6jet_exc = new TH1D("HT_6jet_exc", "", 800, 0,8000);
  TH1D * ST_7jet_exc = new TH1D("ST_7jet_exc", "", 800, 0,8000);  TH1D * HT_7jet_exc = new TH1D("HT_7jet_exc", "", 800, 0,8000);
  TH1D * ST_8jet_exc = new TH1D("ST_8jet_exc", "", 800, 0,8000);  TH1D * HT_8jet_exc = new TH1D("HT_8jet_exc", "", 800, 0,8000);
  TH1D * ST_9jet_exc = new TH1D("ST_9jet_exc", "", 800, 0,8000);  TH1D * HT_9jet_exc = new TH1D("HT_9jet_exc", "", 800, 0,8000);
  TH1D * ST_10jet_exc = new TH1D("ST_10jet_exc", "", 800, 0,8000);  TH1D * HT_10jet_exc = new TH1D("HT_10jet_exc", "", 800, 0,8000);
  TH1D * ST_11jet_exc = new TH1D("ST_11jet_exc", "", 800, 0,8000);  TH1D * HT_11jet_exc = new TH1D("HT_11jet_exc", "", 800, 0,8000);
  TH1D * ST_12jet_exc = new TH1D("ST_12jet_exc", "", 800, 0,8000);  TH1D * HT_12jet_exc = new TH1D("HT_12jet_exc", "", 800, 0,8000);

  TH2D * Njet_vs_ST = new TH2D("Njet_vs_ST", "Njet_vs_ST", 900, 1000, 10000, 50, 0.0, 50.0);

  TH1D * ST_2jet_inc = new TH1D("ST_2jet_inc", "", 800, 0,8000);  TH1D * HT_2jet_inc = new TH1D("HT_2jet_inc", "", 800, 0,8000);
  TH1D * ST_3jet_inc = new TH1D("ST_3jet_inc", "", 800, 0,8000);  TH1D * HT_3jet_inc = new TH1D("HT_3jet_inc", "", 800, 0,8000);
  TH1D * ST_4jet_inc = new TH1D("ST_4jet_inc", "", 800, 0,8000);  TH1D * HT_4jet_inc = new TH1D("HT_4jet_inc", "", 800, 0,8000);
  TH1D * ST_5jet_inc = new TH1D("ST_5jet_inc", "", 800, 0,8000);  TH1D * HT_5jet_inc = new TH1D("HT_5jet_inc", "", 800, 0,8000);
  TH1D * ST_6jet_inc = new TH1D("ST_6jet_inc", "", 800, 0,8000);  TH1D * HT_6jet_inc = new TH1D("HT_6jet_inc", "", 800, 0,8000);
  TH1D * ST_7jet_inc = new TH1D("ST_7jet_inc", "", 800, 0,8000);  TH1D * HT_7jet_inc = new TH1D("HT_7jet_inc", "", 800, 0,8000);
  TH1D * ST_8jet_inc = new TH1D("ST_8jet_inc", "", 800, 0,8000);  TH1D * HT_8jet_inc = new TH1D("HT_8jet_inc", "", 800, 0,8000);
  TH1D * ST_9jet_inc = new TH1D("ST_9jet_inc", "", 800, 0,8000);  TH1D * HT_9jet_inc = new TH1D("HT_9jet_inc", "", 800, 0,8000);
  TH1D * ST_10jet_inc = new TH1D("ST_10jet_inc", "", 800, 0,8000);  TH1D * HT_10jet_inc = new TH1D("HT_10jet_inc", "", 800, 0,8000);
  TH1D * ST_11jet_inc = new TH1D("ST_11jet_inc", "", 800, 0,8000);  TH1D * HT_11jet_inc = new TH1D("HT_11jet_inc", "", 800, 0,8000);
  TH1D * ST_12jet_inc = new TH1D("ST_12jet_inc", "", 800, 0,8000);  TH1D * HT_12jet_inc = new TH1D("HT_12jet_inc", "", 800, 0,8000);

  // All ST and HT
  TH1D * ST_N2_exc = new TH1D("ST_N2_exc", "", 800, 0,8000);  TH1D * HT_N2_exc = new TH1D("HT_N2_exc", "", 800, 0,8000);
  TH1D * ST_N3_exc = new TH1D("ST_N3_exc", "", 800, 0,8000);  TH1D * HT_N3_exc = new TH1D("HT_N3_exc", "", 800, 0,8000);
  TH1D * ST_N4_exc = new TH1D("ST_N4_exc", "", 800, 0,8000);  TH1D * HT_N4_exc = new TH1D("HT_N4_exc", "", 800, 0,8000);
  TH1D * ST_N5_exc = new TH1D("ST_N5_exc", "", 800, 0,8000);  TH1D * HT_N5_exc = new TH1D("HT_N5_exc", "", 800, 0,8000);
  TH1D * ST_N6_exc = new TH1D("ST_N6_exc", "", 800, 0,8000);  TH1D * HT_N6_exc = new TH1D("HT_N6_exc", "", 800, 0,8000);
  TH1D * ST_N7_exc = new TH1D("ST_N7_exc", "", 800, 0,8000);  TH1D * HT_N7_exc = new TH1D("HT_N7_exc", "", 800, 0,8000);
  TH1D * ST_N8_exc = new TH1D("ST_N8_exc", "", 800, 0,8000);  TH1D * HT_N8_exc = new TH1D("HT_N8_exc", "", 800, 0,8000);
  TH1D * ST_N9_exc = new TH1D("ST_N9_exc", "", 800, 0,8000);  TH1D * HT_N9_exc = new TH1D("HT_N9_exc", "", 800, 0,8000);
  TH1D * ST_N10_exc = new TH1D("ST_N10_exc", "", 800, 0,8000);  TH1D * HT_N10_exc = new TH1D("HT_N10_exc", "", 800, 0,8000);
  TH1D * ST_N11_exc = new TH1D("ST_N11_exc", "", 800, 0,8000);  TH1D * HT_N11_exc = new TH1D("HT_N11_exc", "", 800, 0,8000);
  TH1D * ST_N12_exc = new TH1D("ST_N12_exc", "", 800, 0,8000);  TH1D * HT_N12_exc = new TH1D("HT_N12_exc", "", 800, 0,8000);

  TH2D * N_vs_ST = new TH2D("N_vs_ST", "N_vs_ST", 900, 1000, 10000, 50, 0.0, 50.0);
  TH1D *multiplicity = new TH1D("multiplicity", "multiplicity", 50, 0.0, 50.0);
  TH1D *ST = new TH1D("ST", "ST", 900, 1000, 10000);

  TH1D * ST_N2_inc = new TH1D("ST_N2_inc", "", 800, 0,8000);  TH1D * HT_N2_inc = new TH1D("HT_N2_inc", "", 800, 0,8000);
  TH1D * ST_N3_inc = new TH1D("ST_N3_inc", "", 800, 0,8000);  TH1D * HT_N3_inc = new TH1D("HT_N3_inc", "", 800, 0,8000);
  TH1D * ST_N4_inc = new TH1D("ST_N4_inc", "", 800, 0,8000);  TH1D * HT_N4_inc = new TH1D("HT_N4_inc", "", 800, 0,8000);
  TH1D * ST_N5_inc = new TH1D("ST_N5_inc", "", 800, 0,8000);  TH1D * HT_N5_inc = new TH1D("HT_N5_inc", "", 800, 0,8000);
  TH1D * ST_N6_inc = new TH1D("ST_N6_inc", "", 800, 0,8000);  TH1D * HT_N6_inc = new TH1D("HT_N6_inc", "", 800, 0,8000);
  TH1D * ST_N7_inc = new TH1D("ST_N7_inc", "", 800, 0,8000);  TH1D * HT_N7_inc = new TH1D("HT_N7_inc", "", 800, 0,8000);
  TH1D * ST_N8_inc = new TH1D("ST_N8_inc", "", 800, 0,8000);  TH1D * HT_N8_inc = new TH1D("HT_N8_inc", "", 800, 0,8000);
  TH1D * ST_N9_inc = new TH1D("ST_N9_inc", "", 800, 0,8000);  TH1D * HT_N9_inc = new TH1D("HT_N9_inc", "", 800, 0,8000);
  TH1D * ST_N10_inc = new TH1D("ST_N10_inc", "", 800, 0,8000);  TH1D * HT_N10_inc = new TH1D("HT_N10_inc", "", 800, 0,8000);
  TH1D * ST_N11_inc = new TH1D("ST_N11_inc", "", 800, 0,8000);  TH1D * HT_N11_inc = new TH1D("HT_N11_inc", "", 800, 0,8000);
  TH1D * ST_N12_inc = new TH1D("ST_N12_inc", "", 800, 0,8000);  TH1D * HT_N12_inc = new TH1D("HT_N12_inc", "", 800, 0,8000);

  // Object Separation
  TH1D * hdR_JetEle = new TH1D("hdR_JetEle", "",80,   0,8);  TH1D * hdR_PhoJet = new TH1D("hdR_PhoJet", "",80,   0,8);
  TH1D * hdR_JetPho = new TH1D("hdR_JetPho", "",80,   0,8);  TH1D * hdR_PhoEle = new TH1D("hdR_PhoEle", "",80,   0,8);
  TH1D * hdR_JetMuo = new TH1D("hdR_JetMuo", "",80,   0,8);  TH1D * hdR_PhoMuo = new TH1D("hdR_PhoMuo", "",80,   0,8);
  TH1D * hdR_EleJet = new TH1D("hdR_EleJet", "",80,   0,8);  TH1D * hdR_MuoJet = new TH1D("hdR_MuoJet", "",80,   0,8);
  TH1D * hdR_ElePho = new TH1D("hdR_ElePho", "",80,   0,8);  TH1D * hdR_MuoEle = new TH1D("hdR_MuoEle", "",80,   0,8);
  TH1D * hdR_EleMuo = new TH1D("hdR_EleMuo", "",80,   0,8);  TH1D * hdR_MuoPho = new TH1D("hdR_MuoPho", "",80,   0,8);
 

  if (fChain == 0) return;
  Long64_t nentries = fChain->GetEntriesFast();
  //cout << "nentries = " << nentries << endl;
  Long64_t nbytes = 0, nb = 0;

//@@@@@@@@@@@@@
// g-Counters @    
//@@@@@@@@@@@@@
   int n_start=0, n_trig=0, n_total=0;
//@@@@@@@@@@@@@@
// output file @    
//@@@@@@@@@@@@@@
//ifstream myfile("IntEvt/intEvt_"+datatype+".txt");
//if (myfile.is_open())
//@@@@@@@@@@@@@@@@@@@@
//    EVENT LOOP     @    
//@@@@@@@@@@@@@@@@@@@@   
  for (Long64_t jentry=0; jentry<nentries;jentry++) {
  Long64_t ientry = LoadTree(jentry);
  if (ientry < 0) break;
  nb = fChain->GetEntry(jentry);   nbytes += nb;
  n_start++;
  // Pass Trigger
  if(firedHLT_PFHT800_v2 != 1) continue;
  //if(!(firedHLT_PFHT800_v2 == 1 || firedHLT_PFHT475_v2 == 1)) continue;
  //if(firedHLT_PFHT475_v1 != 1) continue;
  //if(firedHLT_PFJet140_v2 != 1) continue;
  //if(firedHLT_PFJet450_v2 != 1) continue;
  n_trig++;

  njets      -> Fill(NJets);
  nelectrons -> Fill(NElectrons);
  nphotons   -> Fill(NPhotons);
  nmuons     -> Fill(NMuons);

  //hardcode numbers here:
  NJets = 25;
  NElectrons = 25;
  NPhotons = 25;
  NMuons = 25;

//@@@@@@@@@@@@@
// l-Counters @    
//@@@@@@@@@@@@@
  int n_et50=0,n_pt50=0, n_jet_et50=0,n_jet_pt50=0, n_ele_et50=0, n_ele_pt50=0, n_pho_et50=0, n_pho_pt50=0, n_muo_et50=0, n_muo_pt50=0;
  float etsum=0., ptsum=0., MetEtsum=0.,MetPtsum=0.,JetEtsum =0.,JetPtsum=0.,EleEtsum=0., ElePtsum=0., PhoEtsum=0., PhoPtsum=0., MuoPtsum=0., MuoEtsum=0.;

//@@@@@@@@@@@@@
//     MET    @    
//@@@@@@@@@@@@@
MetEtsum =Met;

if(MetEtsum > 10000) continue;
//@@@@@@@@@@@@@
//    Jets    @    
//@@@@@@@@@@@@@
 for(int jeti=0; jeti<NJets; jeti++){
  double dR_JetEle =1000;
  double dR_JetPho =1000;
  double dR_JetMuo =1000;
  // Jet separation from electrons
  for(int elei=0; elei<NElectrons; elei++){
  dR_JetEle = getdR(JetEta[jeti],EleEta[elei],JetPhi[jeti],ElePhi[elei]);
  if(dR_JetEle<0.3)break;
  hdR_JetEle ->Fill(dR_JetEle,weight); 
  }
  if(dR_JetEle<0.3)continue;
  // Jet separation from photons
  for(int phoi=0; phoi<NPhotons; phoi++){
  dR_JetPho = getdR(JetEta[jeti],PhEta[phoi],JetPhi[jeti],PhPhi[phoi]);
  if(dR_JetPho<0.3)break;
  hdR_JetPho ->Fill(dR_JetPho,weight);
  }
  if(dR_JetPho<0.3)continue;
  // Jet separation from muons
  for(int muoi=0; muoi<NMuons; muoi++){
  dR_JetMuo = getdR(JetEta[jeti],MuEta[muoi],JetEta[jeti],MuPhi[muoi]);
  if(dR_JetMuo<0.3)break;
  hdR_JetMuo ->Fill(dR_JetMuo,weight);
  }
  if(dR_JetMuo<0.3)continue;
  
  jet_pT  -> Fill(JetPt[jeti],  weight);
  jet_eT  -> Fill(JetEt[jeti],  weight);
  jet_eta -> Fill(JetEta[jeti], weight);
  jet_phi -> Fill(JetPhi[jeti], weight);
  if(JetEt[jeti]>50 ) {
  JetEtsum += JetEt[jeti]; 
  jet_eT50     -> Fill(JetEt[jeti],  weight);
  jet_eta_et50 -> Fill(JetEta[jeti], weight); 
  jet_phi_et50 -> Fill(JetPhi[jeti], weight);
  n_jet_et50++;
  } //et50
  if(JetPt[jeti]>50 ) {
  JetPtsum += JetPt[jeti]; 
  jet_pT50     -> Fill(JetPt[jeti], weight);
  jet_eta_pt50 -> Fill(JetEta[jeti], weight); 
  jet_phi_pt50 -> Fill(JetPhi[jeti], weight);
  n_jet_pt50++;
    }//pt50
 }// Jet Loop

  //Leading Jets
  if(n_jet_pt50>2){
  LJ1_pT50->Fill(JetPt[0],weight);
  LJ2_pT50->Fill(JetPt[1],weight);
             }//Leading jets Loop
  // Jet Multiplicity
  njet_et50->Fill(n_jet_et50, weight);
  njet_pt50->Fill(n_jet_pt50, weight);
//Dijet Mass
if(n_jet_pt50==2){
float DijetMass = (JetE[0]*JetE[1])-((JetPx[0]*JetPx[1])+(JetPy[0]*JetPy[1])+(JetPz[0]*JetPz[1]));
DijetMass_pt50  -> Fill(DijetMass, weight);
}
//@@@@@@@@@@@@@
//  Electrons @    
//@@@@@@@@@@@@@
  for(int elei=0; elei<NElectrons; elei++){
  ele_pT -> Fill(ElePt[elei],weight);
  ele_pTId -> Fill(ElePt[elei],weight);
  double dR_EleJet =1000;
  double dR_ElePho =1000;
  double dR_EleMuo =1000;
  // Electron separation from jets
  for(int jeti=0; jeti<NJets; jeti++){
  dR_EleJet = getdR(EleEta[elei],JetEta[jeti],ElePhi[elei],JetPhi[jeti]);
  if(dR_EleJet<0.3)break;
  hdR_EleJet ->Fill(dR_EleJet,weight);
  }
  if(dR_EleJet<0.3)continue;
  // Electron separation from photons
  for(int phoi=0; phoi<NPhotons; phoi++){
  dR_ElePho = getdR(EleEta[elei],PhEta[phoi],ElePhi[elei],PhPhi[phoi]);
  if(dR_ElePho<0.3)break;
  hdR_ElePho ->Fill(dR_ElePho,weight);
  }
  if(dR_ElePho<0.3)continue;
  // Electron separation from muons
  for(int muoi=0; muoi<NMuons; muoi++){
  dR_EleMuo = getdR(EleEta[elei],MuEta[muoi],EleEta[elei],MuPhi[muoi]);
  if(dR_EleMuo<0.3)break;
  hdR_EleMuo ->Fill(dR_EleMuo,weight);
  }
  if(dR_EleMuo<0.3)continue;
  if(EleEt[elei]>50){ EleEtsum += EleEt[elei];
  ele_pT50 -> Fill(ElePt[elei],weight);
  n_ele_et50++;
  }//et50
  if(ElePt[elei]>50){
  ElePtsum += ElePt[elei];
  n_ele_pt50++;
    }//pt50
  }//Electron Loop
  //if(n_ele_pt50 !=0 )cout << "Hurrrrrrray  Electron Accepted   :" << n_ele_pt50  << endl;
//@@@@@@@@@@@@@
//   Photons  @    
//@@@@@@@@@@@@@
  for(int phoi=0; phoi<NPhotons; phoi++){
  double dR_PhoJet =1000;
  double dR_PhoEle =1000;
  double dR_PhoMuo =1000;
  // Photon separation from jets
  for(int jeti=0; jeti<NJets; jeti++){
  dR_PhoJet = getdR(PhEta[phoi],JetEta[jeti],PhPhi[phoi],JetPhi[jeti]);
  if(dR_PhoJet<0.3)break;
  hdR_PhoJet -> Fill(dR_PhoJet,weight);
  }
  if(dR_PhoJet<0.3)continue;
  // Photon separation from electrons
  for(int elei=0; elei<NElectrons; elei++){
  dR_PhoEle = getdR(PhEta[phoi],EleEta[elei],PhPhi[phoi],ElePhi[elei]);
  if(dR_PhoEle<0.3)break;
  hdR_PhoEle -> Fill(dR_PhoEle,weight);
  }
  if(dR_PhoEle<0.3)continue;
  // Photon separation from muons
  for(int muoi=0; muoi<NMuons; muoi++){
  dR_PhoMuo = getdR(PhEta[phoi],MuEta[muoi],PhEta[phoi],MuPhi[muoi]);
  if(dR_PhoMuo<0.3)break;
  hdR_PhoMuo -> Fill(dR_PhoMuo,weight);
  }
  if(dR_PhoMuo<0.3)continue;
  if(PhEt[phoi]>50){
  PhoEtsum += PhEt[phoi];
  n_pho_et50++;
  }//et50 
  if(PhPt[phoi]>50){
  PhoPtsum += PhPt[phoi];
  n_pho_pt50++;
    }//pt50
  }//Photon Loop
//@@@@@@@@@@@@@
//   Muons    @    
//@@@@@@@@@@@@@
  for(int muoi=0; muoi<NMuons; muoi++){
  double dR_MuoJet =1000;
  double dR_MuoEle =1000;
  double dR_MuoPho =1000;
  // Muon separation from jets
  for(int jeti=0; jeti<NJets; jeti++){
  dR_MuoJet = getdR(MuEta[muoi],JetEta[jeti],MuPhi[muoi],JetPhi[jeti]);
  if(dR_MuoJet<0.3)break;
  hdR_MuoJet -> Fill(dR_MuoJet,weight);
  }
  if(dR_MuoJet<0.3)continue;
  // Muon separation from electrons
  for(int elei=0; elei<NElectrons; elei++){
  dR_MuoEle = getdR(MuEta[muoi],EleEta[elei],MuPhi[muoi],ElePhi[elei]);
  if(dR_MuoEle<0.3)break;
  hdR_MuoEle -> Fill(dR_MuoEle,weight);
  }
  if(dR_MuoEle<0.3)continue;
  // Electron separation from photons
  for(int phoi=0; phoi<NPhotons; phoi++){
  dR_MuoPho = getdR(MuEta[muoi],PhEta[phoi],MuPhi[muoi],PhPhi[phoi]);
  if(dR_MuoPho<0.3)break;
  hdR_MuoPho -> Fill(dR_MuoPho,weight); 
  }
  if(dR_MuoPho<0.3)continue;
 if(MuEt[muoi]>50){
    MuoEtsum +=  MuEt[muoi];
    n_muo_et50++;
    }//et50 
    if(MuPt[muoi]>50){
    MuoPtsum += MuPt[muoi];
    n_muo_pt50++;
      }//pt50
  }//Muon Loop
//@@@@@@@@@@@@@
// (N,ST) SUM @    
//@@@@@@@@@@@@@
  etsum  = MetEtsum + JetEtsum + EleEtsum + PhoEtsum + MuoEtsum;
  ptsum  = MetPtsum + JetPtsum + ElePtsum + PhoPtsum + MuoPtsum;
  n_et50 = n_jet_et50 + n_ele_et50 + n_pho_et50 + n_muo_et50;
  n_pt50 = n_jet_pt50 + n_ele_pt50 + n_pho_pt50 + n_muo_pt50;

  njets_et50      ->  Fill(n_jet_et50,weight);   
  nelectrons_et50 ->  Fill(n_ele_et50,weight);
  nmuons_et50     ->  Fill(n_muo_et50,weight);
  nphotons_et50   ->  Fill(n_pho_et50,weight);
  njets_pt50      ->  Fill(n_jet_et50,weight);
  nelectrons_pt50 ->  Fill(n_ele_pt50,weight);
  nmuons_pt50     ->  Fill(n_muo_pt50,weight);
  nphotons_pt50   ->  Fill(n_pho_pt50,weight);


// Only Jets ST 
  if(n_jet_et50 == 2) {ST_2jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 2){HT_2jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 3) {ST_3jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 3){HT_3jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 4) {ST_4jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 4){HT_4jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 5) {ST_5jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 5){HT_5jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 6) {ST_6jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 6){HT_6jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 7) {ST_7jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 7){HT_7jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 8) {ST_8jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 8){HT_8jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 9) {ST_9jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 9){HT_9jet_exc -> Fill(JetPtsum, weight);} 
  if(n_jet_et50 == 10) {ST_10jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 10){HT_10jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 11) {ST_11jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 11){HT_11jet_exc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 == 12) {ST_12jet_exc -> Fill(JetEtsum, weight); } if(n_jet_pt50 == 12){HT_12jet_exc -> Fill(JetPtsum, weight);} 

  Njet_vs_ST->Fill(JetEtsum, n_jet_et50, weight);

  if(n_jet_et50 >= 2) {ST_2jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 2){HT_2jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 3) {ST_3jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 3){HT_3jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 4) {ST_4jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 4){HT_4jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 5) {ST_5jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 5){HT_5jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 6) {ST_6jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 6){HT_6jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 7) {ST_7jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 7){HT_7jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 8) {ST_8jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 8){HT_8jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 9) {ST_9jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 9){HT_9jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 10) {ST_10jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 10){HT_10jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 11) {ST_11jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 11){HT_11jet_inc -> Fill(JetPtsum, weight);}
  if(n_jet_et50 >= 12) {ST_12jet_inc -> Fill(JetEtsum, weight); } if(n_jet_pt50 >= 12){HT_12jet_inc -> Fill(JetPtsum, weight);}

//All Objects ST
  if(n_et50 == 2) {ST_N2_exc -> Fill(etsum, weight); } if(n_pt50 == 2){HT_N2_exc -> Fill(ptsum, weight);}
  if(n_et50 == 3) {ST_N3_exc -> Fill(etsum, weight); } if(n_pt50 == 3){HT_N3_exc -> Fill(ptsum, weight);}
  if(n_et50 == 4) {ST_N4_exc -> Fill(etsum, weight); } if(n_pt50 == 4){HT_N4_exc -> Fill(ptsum, weight);}
  if(n_et50 == 5) {ST_N5_exc -> Fill(etsum, weight); } if(n_pt50 == 5){HT_N5_exc -> Fill(ptsum, weight);}
  if(n_et50 == 6) {ST_N6_exc -> Fill(etsum, weight); } if(n_pt50 == 6){HT_N6_exc -> Fill(ptsum, weight);}
  if(n_et50 == 7) {ST_N7_exc -> Fill(etsum, weight); } if(n_pt50 == 7){HT_N7_exc -> Fill(ptsum, weight);}
  if(n_et50 == 8) {ST_N8_exc -> Fill(etsum, weight); } if(n_pt50 == 8){HT_N8_exc -> Fill(ptsum, weight);}
  if(n_et50 == 9) {ST_N9_exc -> Fill(etsum, weight); } if(n_pt50 == 9){HT_N9_exc -> Fill(ptsum, weight);}
  if(n_et50 == 10) {ST_N10_exc -> Fill(etsum, weight); } if(n_pt50 == 10){HT_N10_exc -> Fill(ptsum, weight);}
  if(n_et50 == 11) {ST_N11_exc -> Fill(etsum, weight); } if(n_pt50 == 11){HT_N11_exc -> Fill(ptsum, weight);} 
  if(n_et50 == 12) {ST_N12_exc -> Fill(etsum, weight); } if(n_pt50 == 12){HT_N12_exc -> Fill(ptsum, weight);}  

  N_vs_ST->Fill(etsum, n_et50, weight);
  multiplicity->Fill(n_et50,  weight);
  ST->Fill(etsum, weight);
  if(n_et50 >= 8 and etsum > 1000.0) cout << "Event number high multiplicity = " << evtno << " Lumi Section = " << lumiblock << " Run number " << runno << " with jets: " << n_et50 << " ST = " << etsum << " etsum  = MetEtsum + JetEtsum + EleEtsum + PhoEtsum + MuoEtsum "<< " , " << MetEtsum << " , "  << JetEtsum << " , " << EleEtsum << " , " << PhoEtsum << " , " << MuoEtsum << endl;
  if(etsum > 5000.0) cout << "Event number low multiplicity and high ST = " << evtno << " Lumi Section = " << lumiblock << " Run number " << runno << " with jets: " << n_et50 << " ST = " << etsum << " etsum  = MetEtsum + JetEtsum + EleEtsum + PhoEtsum + MuoEtsum "<< " , " << MetEtsum << " , "  << JetEtsum << " , " << EleEtsum << " , " << PhoEtsum << " , " << MuoEtsum << endl;
  if(n_et50 >= 2) {ST_N2_inc -> Fill(etsum, weight); } if(n_pt50 >= 2){HT_N2_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 3) {ST_N3_inc -> Fill(etsum, weight); } if(n_pt50 >= 3){HT_N3_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 4) {ST_N4_inc -> Fill(etsum, weight); } if(n_pt50 >= 4){HT_N4_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 5) {ST_N5_inc -> Fill(etsum, weight); } if(n_pt50 >= 5){HT_N5_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 6) {ST_N6_inc -> Fill(etsum, weight); } if(n_pt50 >= 6){HT_N6_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 7) {ST_N7_inc -> Fill(etsum, weight); } if(n_pt50 >= 7){HT_N7_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 8) {ST_N8_inc -> Fill(etsum, weight); } if(n_pt50 >= 8){HT_N8_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 9) {ST_N9_inc -> Fill(etsum, weight); } if(n_pt50 >= 9){HT_N9_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 10) {ST_N10_inc -> Fill(etsum, weight); } if(n_pt50 >= 10){HT_N10_inc -> Fill(ptsum, weight);}
  if(n_et50 >= 11) {ST_N11_inc -> Fill(etsum, weight); } if(n_pt50 >= 11){HT_N11_inc -> Fill(ptsum, weight);} 
  if(n_et50 >= 12) {ST_N12_inc -> Fill(etsum, weight); } if(n_pt50 >= 12){HT_N12_inc -> Fill(ptsum, weight);} 

  n_total++;
  //if(n_total ==100)break;
   } //Event Loop
//myfile.close();
//@@@@@@@@@@@@@@@@@@@@
//    OutPut File    @    
//@@@@@@@@@@@@@@@@@@@@

  TFile* file = new TFile("output_"+name+".root", "RECREATE");
  file->mkdir("NObjects");
  file->mkdir("general");
  file->mkdir("JetST");
  file->mkdir("JetHT");
  file->mkdir("AllST");
  file->mkdir("AllHT");
  file->mkdir("dR");

  file->cd("NObjects");
  njets           -> Write();
  nelectrons      -> Write();
  nphotons        -> Write();
  nmuons          -> Write(); 
  njets_et50      -> Write();   
  nelectrons_et50 -> Write();  
  nmuons_et50     -> Write();  
  nphotons_et50   -> Write();  
  njets_pt50      -> Write();  
  nelectrons_pt50 -> Write();  
  nmuons_pt50     -> Write();  
  nphotons_pt50   -> Write();  

  file->cd("general");
  njet_et50      -> Write();
  njet_pt50      -> Write();
  jet_pT         -> Write();  
  jet_eT         -> Write();
  jet_pT50       -> Write();
  jet_eT50       -> Write();
  jet_eta        -> Write();
  jet_phi        -> Write();
  jet_eta_et50   -> Write();
  jet_phi_et50   -> Write();
  jet_eta_pt50   -> Write();
  jet_phi_pt50   -> Write();
  LJ1_pT50       -> Write();
  LJ2_pT50       -> Write();
  ele_pT         -> Write();
  ele_pTId       -> Write();
  ele_pT50       -> Write();
  DijetMass_pt50 -> Write(); 

  file->cd("JetST");
  ST_2jet_exc    ->Write();    
  ST_3jet_exc    ->Write();
  ST_4jet_exc    ->Write();
  ST_5jet_exc    ->Write();
  ST_6jet_exc    ->Write();
  ST_7jet_exc    ->Write();
  ST_8jet_exc    ->Write();
  ST_9jet_exc    ->Write();
  ST_10jet_exc    ->Write();
  ST_11jet_exc    ->Write();
  ST_12jet_exc    ->Write();
  ST_2jet_inc    ->Write();
  ST_3jet_inc    ->Write();
  ST_4jet_inc    ->Write();
  ST_5jet_inc    ->Write();
  ST_6jet_inc    ->Write();
  ST_7jet_inc    ->Write();
  ST_8jet_inc    ->Write();
  ST_9jet_inc    ->Write();
  ST_10jet_inc    ->Write();
  ST_11jet_inc    ->Write();
  ST_12jet_inc    ->Write();
  Njet_vs_ST      ->Write(); 
 
  file->cd("JetHT");
  HT_2jet_exc    ->Write();    
  HT_3jet_exc    ->Write();
  HT_4jet_exc    ->Write();
  HT_5jet_exc    ->Write();
  HT_6jet_exc    ->Write();
  HT_7jet_exc    ->Write();
  HT_8jet_exc    ->Write();
  HT_9jet_exc    ->Write();
  HT_10jet_exc    ->Write();
  HT_11jet_exc    ->Write();
  HT_12jet_exc    ->Write();
  HT_2jet_inc    ->Write();
  HT_3jet_inc    ->Write();
  HT_4jet_inc    ->Write();
  HT_5jet_inc    ->Write();
  HT_6jet_inc    ->Write();
  HT_7jet_inc    ->Write();
  HT_8jet_inc    ->Write();
  HT_9jet_inc    ->Write();
  HT_10jet_inc    ->Write();
  HT_11jet_inc    ->Write();
  HT_12jet_inc    ->Write();  

  file->cd("AllST");
  ST_N2_exc    ->Write();    
  ST_N3_exc    ->Write();
  ST_N4_exc    ->Write();
  ST_N5_exc    ->Write();
  ST_N6_exc    ->Write();
  ST_N7_exc    ->Write();
  ST_N8_exc    ->Write();
  ST_N9_exc    ->Write();
  ST_N10_exc    ->Write();
  ST_N11_exc    ->Write();
  ST_N12_exc    ->Write();
  ST_N2_inc    ->Write();
  ST_N3_inc    ->Write();
  ST_N4_inc    ->Write();
  ST_N5_inc    ->Write();
  ST_N6_inc    ->Write();
  ST_N7_inc    ->Write();
  ST_N8_inc    ->Write();
  ST_N9_inc    ->Write();
  ST_N10_inc    ->Write();
  ST_N11_inc    ->Write();
  ST_N12_inc    ->Write();
  N_vs_ST       ->Write();  
  multiplicity  ->Write();
  ST->Write();

  file->cd("AllHT");
  HT_N2_exc    ->Write();    
  HT_N3_exc    ->Write();
  HT_N4_exc    ->Write();
  HT_N5_exc    ->Write();
  HT_N6_exc    ->Write();
  HT_N7_exc    ->Write();
  HT_N8_exc    ->Write();
  HT_N9_exc    ->Write();
  HT_N10_exc    ->Write();
  HT_N11_exc    ->Write();
  HT_N12_exc    ->Write();

  HT_N2_inc    ->Write();
  HT_N3_inc    ->Write();
  HT_N4_inc    ->Write();
  HT_N5_inc    ->Write();
  HT_N6_inc    ->Write();
  HT_N7_inc    ->Write();
  HT_N8_inc    ->Write();
  HT_N9_inc    ->Write();
  HT_N10_inc    ->Write();
  HT_N11_inc    ->Write();
  HT_N12_inc    ->Write();    

  file->cd("dR");
  hdR_JetEle -> Write();
  hdR_JetPho -> Write(); 
  hdR_JetMuo -> Write();  
  hdR_EleJet -> Write();  
  hdR_ElePho -> Write();  
  hdR_EleMuo -> Write();   
  hdR_PhoJet -> Write();
  hdR_PhoEle -> Write();
  hdR_PhoMuo -> Write();
  hdR_MuoJet -> Write();
  hdR_MuoEle -> Write();
  hdR_MuoPho -> Write();
  file->Close();
  cout << "***************************  " << endl;
  cout <<name    <<endl;
  cout << "***************************  " << endl;
  cout << "Weight of Sample:" <<weight<<endl;
  cout << "Initial Events  :" << n_start << endl;
  cout << "After Trigger   :" << n_trig  << endl;
  cout << "Total Events    :" << n_total  << endl;

}
