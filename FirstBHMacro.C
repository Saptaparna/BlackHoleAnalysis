#define FirstBHMacro_cxx
#include "FirstBHMacro.h"
#include <iostream>
#include <iomanip>
#include <fstream>
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>
using namespace std;
void FirstBHMacro::Loop(std::string name, float weight, std::string jecUnc, std::string metListFilename)
{
  //@@@@@@@@@@@@@@@@@@@@
  //  SET BRANCHES     @    
  //@@@@@@@@@@@@@@@@@@@@
  fChain->SetBranchStatus("*",0);
  fChain->SetBranchStatus("ST",1);
  fChain->SetBranchStatus("Multiplicity",1);
  fChain->SetBranchStatus("firedHLT_PFHT800_v2",1);
  fChain->SetBranchStatus("passed_CSCTightHaloFilter", 1);
  fChain->SetBranchStatus("passed_goodVertices", 1);
  fChain->SetBranchStatus("passed_eeBadScFilter", 1); 
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
  fChain->SetBranchStatus("MuPFdBiso", 1);
  //variables associated with the output tree
  TFile *outputFile;
  TTree *outputTree;
  double ST_mul2 = 0.0;
  double ST_mul3 = 0.0;
  double ST_mul4 = 0.0;
  double ST_mul5 = 0.0;
  double ST_mul6 = 0.0;
  double ST_mul7 = 0.0;
  double ST_mul8 = 0.0;
  double ST_mul9 = 0.0;
  double ST_mul10 = 0.0;
  int n_multiplicity = 0.0;
  double weightTree = 0.0;

  outputFile = new TFile(("BH_Tree_"+name+".root").c_str(),"RECREATE");
  outputTree=new TTree("BH_Tree", "BH_Tree"); 
  outputTree->Branch("ST_mul2", &ST_mul2, "ST_mul2/D");
  outputTree->Branch("ST_mul3", &ST_mul3, "ST_mul3/D");
  outputTree->Branch("ST_mul4", &ST_mul4, "ST_mul4/D");
  outputTree->Branch("ST_mul5", &ST_mul5, "ST_mul5/D");
  outputTree->Branch("ST_mul6", &ST_mul6, "ST_mul6/D");
  outputTree->Branch("ST_mul7", &ST_mul7, "ST_mul7/D");
  outputTree->Branch("ST_mul8", &ST_mul8, "ST_mul8/D");
  outputTree->Branch("ST_mul9", &ST_mul9, "ST_mul9/D");
  outputTree->Branch("ST_mul10", &ST_mul10, "ST_mul10/D");
  outputTree->Branch("n_multiplicity", &n_multiplicity, "n_multiplicity/I");
  outputTree->Branch("weightTree", &weightTree, "weightTree/D");

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
  TH1D * LJ1_pT50          = new TH1D("LJ1_pT50","",      500,   0,    5000);
  TH1D * LJ2_pT50          = new TH1D("LJ2_pT50","",      500,   0,    5000);
  TH1D * jet_eT50          = new TH1D("jet_eT50","",      500,   0,    5000);
  TH1D * jet_eta_et50      = new TH1D("jet_eta_et50","",  80,   -4,       4);
  TH1D * jet_phi_et50      = new TH1D("jet_phi_et50","",  80,   -4,       4);
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
  TH1D * hdR_EleJet = new TH1D("hdR_EleJet", "",80,   0,8);  
  TH1D * hdR_EleMuo = new TH1D("hdR_EleMuo", "",80,   0,8);
 

  if (fChain == 0) return;
  Long64_t nentries = fChain->GetEntriesFast();
  Long64_t nbytes = 0, nb = 0;

  //@@@@@@@@@@@@@
  // g-Counters @    
  //@@@@@@@@@@@@@
   int n_start=0, n_trig=0, n_total=0;
   bool debugFlag     = false;
   bool debugFlagMETList = true;
   bool passIso          = true ;
   char *messageBuffer   = new char[400] ;
   bool eventHasMuon     = false;
   bool eventHasPhoton   = false;
   bool eventHasElectron = false;
   float JetMuonEt       = 0.;
   float JetElectronEt   = 0.;
   float JetPhotonEt     = 0.;
   fillJECUncVector();
  //@@@@@@@@@@@@@@
  // output file @    
  //@@@@@@@@@@@@@@
  //@@@@@@@@@@@@@@@@@@@@
  //    EVENT LOOP     @    
  //@@@@@@@@@@@@@@@@@@@@   
  std::map<unsigned, std::set<unsigned> > list = readEventList(metListFilename.c_str());
  bool passMETfilterList = true;
  int  eventsToDump  = 25    ;  // if debugFlag is true, then stop once the number of dumped events reaches eventsToDump
  bool dumpBigEvents = true ;
  bool dumpIsoInfo   = false ;
  int  nDumpedEvents = 0     ;
  ofstream outTextFile;
  std::string outTextFilename  = name+"_log.txt";
  outTextFile.open(outTextFilename.c_str());

  for (Long64_t jentry=0; jentry<nentries;jentry++) {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      if(jentry % 100000 == 0) cout << "Processing event number: " << jentry << endl;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      n_start++;
      // Pass Trigger, filters, good vertices
      if (!firedHLT_PFHT800_v2 || !passed_CSCTightHaloFilter || !passed_goodVertices || !passed_eeBadScFilter) continue;
      n_trig++;
      passMETfilterList=true;
      auto rItr(list.find(runno));
      if (rItr != list.end()) {
        if (rItr->second.find(evtno) != rItr->second.end()){
          if (dumpBigEvents && debugFlagMETList) {
            sprintf(messageBuffer, "Event in MET list skipped: run number %d lumi section %d event number %lld\n", runno, lumiblock, evtno);
            outTextFile << messageBuffer;
            }
            passMETfilterList = false;
            continue;
          }
        }
      if (!passMETfilterList) cout << "ERROR! This event should be filtered!" << endl;
  
      njets      -> Fill(NJets);
      nelectrons -> Fill(NElectrons);
      nphotons   -> Fill(NPhotons);
      nmuons     -> Fill(NMuons);

      //hardcode numbers here:
      eventHasMuon     = false ;
      eventHasPhoton   = false ;
      eventHasElectron = false ;
      NJets = 25;
      NElectrons = 25;
      NPhotons = 25;
      NMuons = 25;
  
     //@@@@@@@@@@@@@
     // l-Counters @    
     //@@@@@@@@@@@@@
     int n_et50=0,n_pt50=0, n_jet_et50=0,n_jet_pt50=0, n_ele_et50=0, n_ele_pt50=0, n_pho_et50=0, n_pho_pt50=0, n_muo_et50=0, n_muo_pt50=0;
     float etsum=0., ptsum=0., MetEtsum=0.,MetPtsum=0.,JetEtsum =0.,JetPtsum=0.,EleEtsum=0., ElePtsum=0., PhoEtsum=0., PhoPtsum=0., MuoPtsum=0., MuoEtsum=0.;
     float JetEtsum_reg = 0.;
     ST_mul2 = 0.0;
     ST_mul3 = 0.0;
     ST_mul4 = 0.0;
     ST_mul5 = 0.0;
     ST_mul6 = 0.0;
     ST_mul7 = 0.0;
     ST_mul8 = 0.0;
     ST_mul9 = 0.0;
     ST_mul10 = 0.0;
     n_multiplicity = 0.0;
     weightTree = 0.0;
     //@@@@@@@@@@@@@
     //     MET    @    
     //@@@@@@@@@@@@@
     MetEtsum = Met;
     if(MetEtsum > 10000) continue;
     //@@@@@@@@@@@@@
     //    Jets    @    
     //@@@@@@@@@@@@@
     double jetPt = 0.0;
     double jetEt = 0.0;
     for (int iJet = 0; iJet < NJets; ++iJet) {
       passIso=true;
       JetMuonEt     =0;
       JetElectronEt =0;
       JetPhotonEt   =0;
       if(jecUnc=="Default") {
         jetPt = JecUnc(JetPt[iJet], JetEta[iJet], "Default")*JetPt[iJet] + JetPt[iJet];
         jetEt = JetEt[iJet]*(jetPt/JetPt[iJet]);
       }
       else if(jecUnc=="JecUp"){
         jetPt = JecUnc(JetPt[iJet], JetEta[iJet], "JecUp")*JetPt[iJet] + JetPt[iJet];
         jetEt = JetEt[iJet]*(jetPt/JetPt[iJet]);
       }
       else if(jecUnc=="JecDown"){
         jetPt = -JecUnc(JetPt[iJet], JetEta[iJet], "JecDown")*JetPt[iJet] + JetPt[iJet];
         jetEt = JetEt[iJet]*(jetPt/JetPt[iJet]);
       }
       if (jetEt>50.) {
         for (int iMuon = 0; iMuon < NMuons; ++iMuon ) {
           if (MuEt[iMuon]>50 and MuPFdBiso[iMuon] < 0.15) {
             eventHasMuon = true;
             hdR_JetMuo->Fill(dR(JetEta[iJet],JetPhi[iJet], MuEta[iMuon], MuPhi[iMuon]));
             if (jetEt && dR(JetEta[iJet],JetPhi[iJet], MuEta[iMuon], MuPhi[iMuon]) < 0.05) {
               JetMuonEt+=MuEt[iMuon];
               if (JetMuonEt>0.8*jetEt) {
                 passIso = false;
                 if (debugFlag) {
                   sprintf(messageBuffer, "Jet number %d failed isolation with Muon number %d  in run number %d lumi section %d event number %lld\n", iJet, iMuon, runno, lumiblock, evtno);
                   cout << messageBuffer;
                 }
                 break;
               }
             }
           }
         }
         for (int iElectron = 0; iElectron < NElectrons; ++iElectron ) {
          if (EleEt[iElectron]>50) {
            eventHasElectron = true;
            hdR_JetEle->Fill(dR(JetEta[iJet],JetPhi[iJet], EleEta[iElectron], ElePhi[iElectron]));
            if (dR(JetEta[iJet],JetPhi[iJet], EleEta[iElectron], ElePhi[iElectron]) < 0.05) {
              JetElectronEt+=EleEt[iElectron];
              if (JetElectronEt > 0.7*jetEt) {
                passIso = false;
                if (debugFlag) {
                  sprintf(messageBuffer, "Jet number %d failed isolation with Electron number %d  in run number %d lumi section %d event number %lld\n", iJet, iElectron, runno, lumiblock, evtno);
                  cout << messageBuffer;
                }
                break;
              }
            }
          }
        }
        for (int iPhoton = 0; iPhoton < NPhotons; ++iPhoton ) {
          if (PhEt[iPhoton]>50) {
            eventHasPhoton = true;
            hdR_JetPho->Fill(dR(JetEta[iJet],JetPhi[iJet], PhEta[iPhoton], PhPhi[iPhoton]));
            if (dR(JetEta[iJet],JetPhi[iJet], PhEta[iPhoton], PhPhi[iPhoton]) < 0.05) {
              JetPhotonEt+=PhEt[iPhoton];
              if (JetPhotonEt>0.5*jetEt) {
                passIso = false;
                if (debugFlag) {
                  sprintf(messageBuffer, "Jet number %d failed isolation with Photon number %d  in run number %d lumi section %d event number %lld\n", iJet, iPhoton, runno, lumiblock, evtno);
                  cout << messageBuffer;
                }
                break;
              }
            }
          }
        }
        if (!passIso) continue;
        if (debugFlag) cout << "    JetEt for jet number " << iJet << " is: " << jetEt << endl;
        JetEtsum += jetEt; 
        JetEtsum_reg += JetEt[iJet];
        //std::cout << "JetEtsum = " << JetEtsum << std::endl;
        //std::cout << "JetEtsum_reg = " << JetEtsum_reg << std::endl;
        jet_eT50     -> Fill(jetEt,  weight);
        jet_eta_et50 -> Fill(JetEta[iJet], weight); 
        jet_phi_et50 -> Fill(JetPhi[iJet], weight);
        n_jet_et50++;
        if (debugFlag) {
          sprintf(messageBuffer, "Jet number %d passed isolation in run number %d lumi section %d event number %lld.\n       It had Px=%f and Py=%f\n", iJet, runno, lumiblock, evtno, JetPx[iJet], JetPy[iJet]);
          cout << messageBuffer;
        }
      }  
     else break;
   }// Jet Loop

   //Leading Jets
   if(n_jet_et50>2){
     LJ1_pT50->Fill(JecUnc(JetPt[0], JetEta[0], "Default")*JetPt[0] + JetPt[0], weight);
     LJ2_pT50->Fill(JecUnc(JetPt[1], JetEta[1], "Default")*JetPt[1] + JetPt[1], weight);
     }//Leading jets Loop
    // Jet Multiplicity
    njet_et50->Fill(n_jet_et50, weight);
    //@@@@@@@@@@@@@
    //  Electrons @    
    //@@@@@@@@@@@@@
    if (eventHasElectron) {
      for (int iElectron = 0; iElectron < NElectrons; ++iElectron) {
        passIso=true;
        if (EleEt[iElectron]>50.) {
          for (int iJet = 0; iJet < NJets; ++iJet ) {
            hdR_EleJet->Fill(dR(EleEta[iElectron],ElePhi[iElectron], JetEta[iJet], JetPhi[iJet]));
            if (jetEt>50 && dR(EleEta[iElectron],ElePhi[iElectron], JetEta[iJet], JetPhi[iJet]) < 0.05) {
              if (EleEt[iElectron]<0.7*jetEt) {
                passIso = false;
                if (debugFlag) {
                  sprintf(messageBuffer, "Electron number %d failed isolation with Jet number %d  in run number %d lumi section %d event number %lld\n", iElectron, iJet, runno, lumiblock, evtno);
                  cout << messageBuffer;
                }
                break;
              }
            }
          }
          if (!passIso) continue;
         
          // Throw away electron if there's an electron/muon overlap.
          for (int iMuon = 0; iMuon < NMuons; ++iMuon ) {
            hdR_EleMuo->Fill(dR(EleEta[iElectron],ElePhi[iElectron], MuEta[iMuon], MuPhi[iMuon]));
            if (MuEt[iMuon]>50 and MuPFdBiso[iMuon] < 0.15 and dR(EleEta[iElectron],ElePhi[iElectron], MuEta[iMuon], MuPhi[iMuon]) < 0.05) {
              passIso = false;
              if (debugFlag) {
                sprintf(messageBuffer, "Electron number %d failed isolation with Muon number %d  in run number %d lumi section %d event number %lld\n", iElectron, iMuon, runno, lumiblock, evtno);
                cout << messageBuffer;
              }
             break;
           } 
         } 
         if (!passIso) continue;
         EleEtsum += EleEt[iElectron];
         n_ele_et50++;
         if (debugFlag) {
            sprintf(messageBuffer, "Ele number %d passed isolation in run number %d lumi section %d event number %lld. \n It had Px=%f and Py=%f\n", iElectron, runno, lumiblock, evtno, ElePx[iElectron], ElePy[iElectron]);
            cout << messageBuffer;
         }
       }
       else break;
     }
   }      
   if (eventHasPhoton) {
     for (int iPhoton = 0; iPhoton < NPhotons; ++iPhoton) {
       passIso=true;
       if (PhEt[iPhoton]>50.) {
         for (int iJet = 0; iJet < NJets; ++iJet ) {
           hdR_PhoJet->Fill(dR(PhEta[iPhoton],PhPhi[iPhoton], JetEta[iJet], JetPhi[iJet]));
           if (jetEt>50 && dR(PhEta[iPhoton],PhPhi[iPhoton], JetEta[iJet], JetPhi[iJet]) < 0.05) {
             if (PhEt[iPhoton]<0.5*jetEt) {
               passIso = false;
               break;
              }
            }
          }
          if (!passIso) continue;
          for (int iMuon = 0; iMuon < NMuons; ++iMuon ) {
            hdR_PhoMuo->Fill(dR(PhEta[iPhoton], PhPhi[iPhoton], MuEta[iMuon], MuPhi[iMuon]));
            if (MuEt[iMuon]>50 and MuPFdBiso[iMuon] < 0.15 and dR(PhEta[iPhoton], PhPhi[iPhoton], MuEta[iMuon], MuPhi[iMuon]) < 0.05) {
              if (debugFlag) {
                sprintf(messageBuffer, "Photon number %d failed isolation with Muon number %d  in run number %d lumi section %d event number %lld\n", iPhoton, iMuon, runno, lumiblock, evtno);
                cout << messageBuffer;
              }
              passIso = false;
              break;
            }
          }
          if (!passIso) continue;
          for (int iElectron = 0; iElectron < NElectrons; ++iElectron ) {
            hdR_PhoEle->Fill(dR(PhEta[iPhoton], PhPhi[iPhoton], EleEta[iElectron], ElePhi[iElectron]));
            if (EleEt[iElectron]>50 && dR(PhEta[iPhoton], PhPhi[iPhoton], EleEta[iElectron], ElePhi[iElectron]) < 0.05) {
              if (debugFlag) {
                sprintf(messageBuffer, "Photon number %d failed isolation with Electron number %d  in run number %d lumi section %d event number %lld\n", iPhoton, iElectron, runno, lumiblock, evtno);
                cout << messageBuffer;
              }
              passIso = false;
              break;
            }
          }
          if (!passIso) continue;
          if (debugFlag) cout << "    PhEt for photon number " << iPhoton << " is: " << PhEt[iPhoton] << endl;
          PhoEtsum += PhEt[iPhoton];
          n_pho_et50++;
          if (debugFlag) {
            sprintf(messageBuffer, "Photon number %d passed isolation in run number %d lumi section %d event number %lld.\n      It had Px=%f and Py=%f\n", iPhoton, runno, lumiblock, evtno, PhPx[iPhoton], PhPy[iPhoton]);
            cout << messageBuffer;
            }
          }
        else break;
      }
    }

  if (eventHasMuon) {
      for (int iMuon = 0; iMuon < NMuons; ++iMuon) {
        passIso=true;
        if (MuEt[iMuon]>50. and MuPFdBiso[iMuon] < 0.15) {
          if (debugFlag) cout << "    MuEt for muon number " << iMuon << " is: " << MuEt[iMuon] << endl;
          MuoEtsum += MuEt[iMuon];
          n_muo_et50++;
          if (debugFlag) {
            sprintf(messageBuffer, "Muon number %d passed isolation in run number %d lumi section %d event number %lld.\n       It had Px=%f and Py=%f\n", iMuon, runno, lumiblock, evtno, MuPx[iMuon], MuPy[iMuon]);
          }
        }
        else break;
      }
    }

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
  //if(n_et50 >= 8 and etsum > 1000.0 and debugFlagMETList) sprintf(messageBuffer, "Event number high multiplicity %lld, %d, %d, with ST = %f and MetEtsum = %f + JetEtsum = %f + EleEtsum = %f + PhoEtsum = %f + MuoEtsum = %f and multiplicity = %d", evtno, lumiblock, runno, etsum, MetEtsum, JetEtsum, EleEtsum, PhoEtsum, MuoEtsum, n_et50);
  //cout << messageBuffer;
  //if(etsum > 5000.0 and debugFlagMETList) sprintf(messageBuffer, "Event number low multiplicity and high ST %lld, %d, %d, with ST = %f and MetEtsum = %f + JetEtsum = %f + EleEtsum = %f + PhoEtsum = %f + MuoEtsum = %f and multiplicity = %d", evtno, lumiblock, runno, etsum, MetEtsum, JetEtsum, EleEtsum, PhoEtsum, MuoEtsum, n_et50);     
  //cout << messageBuffer; 
  if(n_et50 >= 8 and etsum > 1000.0) cout << "Event number high multiplicity = " << evtno << " Lumi Section = " << lumiblock << " Run number " << runno << " with jets: " << n_et50 << " ST = " << etsum << " etsum  = MetEtsum + JetEtsum + EleEtsum + PhoEtsum + MuoEtsum "<< " , " << MetEtsum << " , "  << JetEtsum << " , " << EleEtsum << " , " << PhoEtsum << " , " << MuoEtsum << endl;
  if(etsum > 5000.0) cout << "Event number low multiplicity and high ST = " << evtno << " Lumi Section = " << lumiblock << " Run number " << runno << " with jets: " << n_et50 << " ST = " << etsum << " etsum  = MetEtsum + JetEtsum + EleEtsum + PhoEtsum + MuoEtsum "<< " , " << MetEtsum << " , "  << JetEtsum << " , " << EleEtsum << " , " << PhoEtsum << " , " << MuoEtsum << endl;
  
  //if(etsum < 1000.0) continue;

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

  if(n_et50 >= 2) ST_mul2 = etsum;
  if(n_et50 >= 3) ST_mul3 = etsum;
  if(n_et50 >= 4) ST_mul4 = etsum;
  if(n_et50 >= 5) ST_mul5 = etsum;
  if(n_et50 >= 6) ST_mul6 = etsum;
  if(n_et50 >= 7) ST_mul7 = etsum;
  if(n_et50 >= 8) ST_mul8 = etsum;
  if(n_et50 >= 9) ST_mul9 = etsum;
  if(n_et50 >= 10) ST_mul10 = etsum;

  n_multiplicity = n_et50;
  n_total++;
  weightTree = 1.00;
  //weightTree = (1064.0*1280.0)/(4963895.0);
  //weightTree = (121.5*1280.0)/(3868886.0);
  //weightTree = (25.4*1280.0)/(1961774.0);
  outputTree->Fill();
  //if(n_total ==100)break;
   } //Event Loop
  //@@@@@@@@@@@@@@@@@@@@
  //    OutPut File    @    
  //@@@@@@@@@@@@@@@@@@@@

  outputTree->Write();

  TFile* file = new TFile(("output_"+name+".root").c_str(), "RECREATE");
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
  jet_eT50       -> Write();
  jet_eta_et50   -> Write();
  jet_phi_et50   -> Write();
  LJ1_pT50       -> Write();
  LJ2_pT50       -> Write();

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
  hdR_EleMuo -> Write();   
  hdR_PhoJet -> Write();
  hdR_PhoEle -> Write();
  hdR_PhoMuo -> Write();
  file->Close();
  cout << "***************************  " << endl;
  cout <<name    <<endl;
  cout << "***************************  " << endl;
  cout << "Weight of Sample:" <<weight<<endl;
  cout << "Initial Events  :" << n_start << endl;
  cout << "After Trigger   :" << n_trig  << endl;
  cout << "Total Events    :" << n_total  << endl;
}
