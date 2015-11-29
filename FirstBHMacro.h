//////////////////////////////////////////////////////////
// This class has been automatically generated on
// Wed Apr 22 18:25:09 2015 by ROOT version 5.34/25
// from TTree t/t
// found on file: QCD_1000_inf_madgraph.root
//////////////////////////////////////////////////////////

#ifndef FirstBHMacro_h
#define FirstBHMacro_h
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>

#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>
#include <TMath.h>
// Header file for the classes stored in the TTree if any.

// Fixed size dimensions of array or collections stored in the TTree if any.

class FirstBHMacro {
public :
   TTree          *fChain;   //!pointer to the analyzed TTree or TChain
   Int_t           fCurrent; //!current Tree number in a TChain
  
   // Declaration of leaf types
   Int_t           NJets;
   Float_t         JetE[18];   //[NJets]
   Float_t         JetPx[18];   //[NJets]
   Float_t         JetPy[18];   //[NJets]
   Float_t         JetPz[18];   //[NJets]
   Float_t         JetPt[18];   //[NJets]
   Float_t         JetEt[18];   //[NJets]
   Float_t         JetEta[18];   //[NJets]
   Float_t         JetPhi[18];   //[NJets]
   Float_t         EleE[25];
   Float_t         ElePx[25];
   Float_t         ElePy[25];
   Float_t         ElePz[25];
   Float_t         ElePt[25];
   Float_t         EleEt[25];
   Float_t         EleEta[25];
   Float_t         ElePhi[25];
   Float_t         PhE[25];
   Float_t         PhPx[25];
   Float_t         PhPy[25];
   Float_t         PhPz[25];
   Float_t         PhPt[25];
   Float_t         PhEt[25];
   Float_t         PhEta[25];
   Float_t         PhPhi[25];
   Float_t         MuE[25];
   Float_t         MuPx[25];
   Float_t         MuPy[25];
   Float_t         MuPz[25];
   Float_t         MuPt[25];
   Float_t         MuEt[25];
   Float_t         MuEta[25];
   Float_t         MuPhi[25];
   Float_t         MuPFdBiso[25];
   Float_t         ST;
   Float_t         mBH;
   Float_t         Met;
   Float_t         MetPhi;
   Float_t         Sphericity;
   Float_t         Jet[4];
   Float_t         Ele[4];
   Float_t         Mu[4];
   Float_t         Ph[4];
   Int_t           NPV;
   Int_t           NTracks;
   Int_t           NElectrons;
   Int_t           NPhotons;
   Int_t           NMuons;
   Char_t          NoScrap;
   Int_t           Multiplicity;
   Char_t          isLeptonPhoton;
   Char_t          isEleChannel;
   Char_t          isMuChannel;
   Char_t          isPhChannel;
   Float_t         ResJetEta;
   Float_t         ResJetPhi;
   Float_t         ResJetM;
   Float_t         ResJetPt;
   Float_t         ResJetEt;
   Float_t         ResEleEta;
   Float_t         ResElePhi;
   Float_t         ResEleM;
   Float_t         ResElePt;
   Float_t         ResPhEta;
   Float_t         ResPhPhi;
   Float_t         ResPhM;
   Float_t         ResPhPt;
   Float_t         ResMuEta;
   Float_t         ResMuPhi;
   Float_t         ResMuM;
   Float_t         ResMuPt;
   Float_t         ResLepEta;
   Float_t         ResLepPhi;
   Float_t         ResLepM;
   Float_t         ResLepPt;
   Float_t         ResObjEta;
   Float_t         ResObjPhi;
   Float_t         ResObjM;
   Float_t         ResObjPt;
   Int_t           runno;
   Int_t           evtno;
   Int_t           lumiblock;
   Int_t           isRealData;
   Bool_t          firedHLT_PFHT800_v2;
   Bool_t          passed_CSCTightHaloFilter;
   Bool_t          passed_goodVertices;
   Bool_t          passed_eeBadScFilter;
   // function to calculate dR between two objects
   float dR(float eta1, float phi1, float eta2, float phi2) {
     return std::sqrt( ( eta1 - eta2 )*( eta1 - eta2 ) + std::pow(TMath::ATan2(TMath::Sin( phi1 - phi2), TMath::Cos(phi1-phi2)),2) );
   }

   // List of branches
   TBranch        *b_NJets;   //!
   TBranch        *b_JetE;   //!
   TBranch        *b_JetPx;   //!
   TBranch        *b_JetPy;   //!
   TBranch        *b_JetPz;   //!
   TBranch        *b_JetPt;   //!
   TBranch        *b_JetEt;   //!
   TBranch        *b_JetEta;   //!
   TBranch        *b_JetPhi;   //!
   TBranch        *b_EleE;   //!
   TBranch        *b_ElePx;   //!
   TBranch        *b_ElePy;   //!
   TBranch        *b_ElePz;   //!
   TBranch        *b_ElePt;   //!
   TBranch        *b_EleEt;   //!
   TBranch        *b_EleEta;   //!
   TBranch        *b_ElePhi;   //!
   TBranch        *b_PhE;   //!
   TBranch        *b_PhPx;   //!
   TBranch        *b_PhPy;   //!
   TBranch        *b_PhPz;   //!
   TBranch        *b_PhPt;   //!
   TBranch        *b_PhEt;   //!
   TBranch        *b_PhEta;   //!
   TBranch        *b_PhPhi;   //!
   TBranch        *b_MuE;   //!
   TBranch        *b_MuPx;   //!
   TBranch        *b_MuPy;   //!
   TBranch        *b_MuPz;   //!
   TBranch        *b_MuPt;   //!
   TBranch        *b_MuEt;   //!
   TBranch        *b_MuEta;   //!
   TBranch        *b_MuPhi;   //!
   TBranch        *b_ST;   //!
   TBranch        *b_mBH;   //!
   TBranch        *b_Met;   //!
   TBranch        *b_MetPhi;   //!
   TBranch        *b_Sphericity;   //!
   TBranch        *b_JetArr;   //!
   TBranch        *b_EleArr;   //!
   TBranch        *b_MuArr;   //!
   TBranch        *b_PhArr;   //!
   TBranch        *b_NPV;   //!
   TBranch        *b_NTracks;   //!
   TBranch        *b_NElectrons;   //!
   TBranch        *b_NPhotons;   //!
   TBranch        *b_NMuons;   //!
   TBranch        *b_NoScrap;   //!
   TBranch        *b_Multiplicity;   //!
   TBranch        *b_isLeptonPhoton;   //!
   TBranch        *b_isEleChannel;   //!
   TBranch        *b_isMuChannel;   //!
   TBranch        *b_isPhChannel;   //!
   TBranch        *b_ResJetEta;   //!
   TBranch        *b_ResJetPhi;   //!
   TBranch        *b_ResJetM;   //!
   TBranch        *b_ResJetPt;   //!
   TBranch        *b_ResJetEt;   //!
   TBranch        *b_ResEleEta;   //!
   TBranch        *b_ResElePhi;   //!
   TBranch        *b_ResEleM;   //!
   TBranch        *b_ResElePt;   //!
   TBranch        *b_ResPhEta;   //!
   TBranch        *b_ResPhPhi;   //!
   TBranch        *b_ResPhM;   //!
   TBranch        *b_ResPhPt;   //!
   TBranch        *b_ResMuEta;   //!
   TBranch        *b_ResMuPhi;   //!
   TBranch        *b_ResMuM;   //!
   TBranch        *b_ResMuPt;   //!
   TBranch        *b_ResLepEta;   //!
   TBranch        *b_ResLepPhi;   //!
   TBranch        *b_ResLepM;   //!
   TBranch        *b_ResLepPt;   //!
   TBranch        *b_ResObjEta;   //!
   TBranch        *b_ResObjPhi;   //!
   TBranch        *b_ResObjM;   //!
   TBranch        *b_ResObjPt;   //!
   TBranch        *b_runno;   //!
   TBranch        *b_evtno;   //!
   TBranch        *b_lumiblock;   //!
   TBranch        *b_isRealData;   //!
   TBranch        *b_firedHLT_PFHT400_v1;   //!
   TBranch        *b_firedHLT_PFHT475_v2;   //!
   TBranch        *b_firedHLT_PFHT600_v2;   //!
   TBranch        *b_firedHLT_PFHT650_v2;   //!
   TBranch        *b_firedHLT_PFHT800_v2;   //!
   TBranch        *b_passed_CSCTightHaloFilter ;
   TBranch        *b_passed_goodVertices       ;
   TBranch        *b_passed_eeBadScFilter      ;
   TBranch        *b_MuPFdBiso;
   FirstBHMacro(TTree *tree=0);
   virtual ~FirstBHMacro();
   virtual Int_t    Cut(Long64_t entry);
   virtual Int_t    GetEntry(Long64_t entry);
   virtual Long64_t LoadTree(Long64_t entry);
   virtual void     Init(TTree *tree);
   virtual void     Loop(TString name, float weight, std::string jecUnc);
   virtual Bool_t   Notify();
   virtual void     Show(Long64_t entry = -1);
   float JecUnc(double jetPt, double jetEta, std::string jecUnc);
   void fillJECUncVector();
   
private:
   std::ifstream file_;
   std::vector<double> v_jecUnc_etaBinEdge_;
   std::vector<double> v_jecUnc_pTBinEdge_;
   std::vector<std::vector<double> > v_v_jecUncUp_;  
   std::vector<std::vector<double> > v_v_jecUncDn_;
};

#endif

#ifdef FirstBHMacro_cxx
FirstBHMacro::FirstBHMacro(TTree *tree) : fChain(0) 
{
// if parameter tree is not specified (or zero), connect the file
// used to generate this class and read the Tree.
   if (tree == 0) {
      TFile *f = (TFile*)gROOT->GetListOfFiles()->FindObject("ntuple_output_1.root");
      //TFile *f = (TFile*)gROOT->GetListOfFiles()->FindObject("/afs/cern.ch/work/s/sapta/private/BlackHoleAnalysis/CMSSW_7_4_14/src/QCD_HT-1000_1500_25ns.root"); 
      if (!f || !f->IsOpen()) {
         f = new TFile("ntuple_output_1.root");
         //f = new TFile("/afs/cern.ch/work/s/sapta/private/BlackHoleAnalysis/CMSSW_7_4_14/src/QCD_HT-1000_1500_25ns.root");
      }
      TDirectory * dir = (TDirectory*)f->Get("ntuple_output_1.root:/bhana");
      //TDirectory * dir = (TDirectory*)f->Get("/afs/cern.ch/work/s/sapta/private/BlackHoleAnalysis/CMSSW_7_4_14/src/QCD_HT-1000_1500_25ns.root:/bhana");
      dir->GetObject("t",tree);
   }
   Init(tree);
}

FirstBHMacro::~FirstBHMacro()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
}

Int_t FirstBHMacro::GetEntry(Long64_t entry)
{
// Read contents of entry.
   if (!fChain) return 0;
   return fChain->GetEntry(entry);
}
Long64_t FirstBHMacro::LoadTree(Long64_t entry)
{
// Set the environment to read one entry
   if (!fChain) return -5;
   Long64_t centry = fChain->LoadTree(entry);
   if (centry < 0) return centry;
   if (fChain->GetTreeNumber() != fCurrent) {
      fCurrent = fChain->GetTreeNumber();
      Notify();
   }
   return centry;
}

void FirstBHMacro::Init(TTree *tree)
{
   if (!tree) return;
   fChain = tree;
   fCurrent = -1;
   fChain->SetMakeClass(1);

   fChain->SetBranchAddress("NJets", &NJets, &b_NJets);
   fChain->SetBranchAddress("JetE", JetE, &b_JetE);
   fChain->SetBranchAddress("JetPx", JetPx, &b_JetPx);
   fChain->SetBranchAddress("JetPy", JetPy, &b_JetPy);
   fChain->SetBranchAddress("JetPz", JetPz, &b_JetPz);
   fChain->SetBranchAddress("JetPt", JetPt, &b_JetPt);
   fChain->SetBranchAddress("JetEt", JetEt, &b_JetEt);
   fChain->SetBranchAddress("JetEta", JetEta, &b_JetEta);
   fChain->SetBranchAddress("JetPhi", JetPhi, &b_JetPhi);
   fChain->SetBranchAddress("EleE", EleE, &b_EleE);
   fChain->SetBranchAddress("ElePx", ElePx, &b_ElePx);
   fChain->SetBranchAddress("ElePy", ElePy, &b_ElePy);
   fChain->SetBranchAddress("ElePz", ElePz, &b_ElePz);
   fChain->SetBranchAddress("ElePt", ElePt, &b_ElePt);
   fChain->SetBranchAddress("EleEt", EleEt, &b_EleEt);
   fChain->SetBranchAddress("EleEta", EleEta, &b_EleEta);
   fChain->SetBranchAddress("ElePhi", ElePhi, &b_ElePhi);
   fChain->SetBranchAddress("PhE", PhE, &b_PhE);
   fChain->SetBranchAddress("PhPx", PhPx, &b_PhPx);
   fChain->SetBranchAddress("PhPy", PhPy, &b_PhPy);
   fChain->SetBranchAddress("PhPz", PhPz, &b_PhPz);
   fChain->SetBranchAddress("PhPt", PhPt, &b_PhPt);
   fChain->SetBranchAddress("PhEt", PhEt, &b_PhEt);
   fChain->SetBranchAddress("PhEta", PhEta, &b_PhEta);
   fChain->SetBranchAddress("PhPhi", PhPhi, &b_PhPhi);
   fChain->SetBranchAddress("MuE", MuE, &b_MuE);
   fChain->SetBranchAddress("MuPx", MuPx, &b_MuPx);
   fChain->SetBranchAddress("MuPy", MuPy, &b_MuPy);
   fChain->SetBranchAddress("MuPz", MuPz, &b_MuPz);
   fChain->SetBranchAddress("MuPt", MuPt, &b_MuPt);
   fChain->SetBranchAddress("MuEt", MuEt, &b_MuEt);
   fChain->SetBranchAddress("MuEta", MuEta, &b_MuEta);
   fChain->SetBranchAddress("MuPhi", MuPhi, &b_MuPhi);
   fChain->SetBranchAddress("ST", &ST, &b_ST);
   fChain->SetBranchAddress("mBH", &mBH, &b_mBH);
   fChain->SetBranchAddress("Met", &Met, &b_Met);
   fChain->SetBranchAddress("MetPhi", &MetPhi, &b_MetPhi);
   fChain->SetBranchAddress("Sphericity", &Sphericity, &b_Sphericity);
   fChain->SetBranchAddress("Jet", Jet, &b_JetArr);
   fChain->SetBranchAddress("Ele", Ele, &b_EleArr);
   fChain->SetBranchAddress("Mu", Mu, &b_MuArr);
   fChain->SetBranchAddress("Ph", Ph, &b_PhArr);
   fChain->SetBranchAddress("NPV", &NPV, &b_NPV);
   fChain->SetBranchAddress("NTracks", &NTracks, &b_NTracks);
   fChain->SetBranchAddress("NElectrons", &NElectrons, &b_NElectrons);
   fChain->SetBranchAddress("NPhotons", &NPhotons, &b_NPhotons);
   fChain->SetBranchAddress("NMuons", &NMuons, &b_NMuons);
   fChain->SetBranchAddress("NoScrap", &NoScrap, &b_NoScrap);
   fChain->SetBranchAddress("Multiplicity", &Multiplicity, &b_Multiplicity);
   fChain->SetBranchAddress("isLeptonPhoton", &isLeptonPhoton, &b_isLeptonPhoton);
   fChain->SetBranchAddress("isEleChannel", &isEleChannel, &b_isEleChannel);
   fChain->SetBranchAddress("isMuChannel", &isMuChannel, &b_isMuChannel);
   fChain->SetBranchAddress("isPhChannel", &isPhChannel, &b_isPhChannel);
   fChain->SetBranchAddress("ResJetEta", &ResJetEta, &b_ResJetEta);
   fChain->SetBranchAddress("ResJetPhi", &ResJetPhi, &b_ResJetPhi);
   fChain->SetBranchAddress("ResJetM", &ResJetM, &b_ResJetM);
   fChain->SetBranchAddress("ResJetPt", &ResJetPt, &b_ResJetPt);
   fChain->SetBranchAddress("ResJetEt", &ResJetEt, &b_ResJetEt);
   fChain->SetBranchAddress("ResEleEta", &ResEleEta, &b_ResEleEta);
   fChain->SetBranchAddress("ResElePhi", &ResElePhi, &b_ResElePhi);
   fChain->SetBranchAddress("ResEleM", &ResEleM, &b_ResEleM);
   fChain->SetBranchAddress("ResElePt", &ResElePt, &b_ResElePt);
   fChain->SetBranchAddress("ResPhEta", &ResPhEta, &b_ResPhEta);
   fChain->SetBranchAddress("ResPhPhi", &ResPhPhi, &b_ResPhPhi);
   fChain->SetBranchAddress("ResPhM", &ResPhM, &b_ResPhM);
   fChain->SetBranchAddress("ResPhPt", &ResPhPt, &b_ResPhPt);
   fChain->SetBranchAddress("ResMuEta", &ResMuEta, &b_ResMuEta);
   fChain->SetBranchAddress("ResMuPhi", &ResMuPhi, &b_ResMuPhi);
   fChain->SetBranchAddress("ResMuM", &ResMuM, &b_ResMuM);
   fChain->SetBranchAddress("ResMuPt", &ResMuPt, &b_ResMuPt);
   fChain->SetBranchAddress("ResLepEta", &ResLepEta, &b_ResLepEta);
   fChain->SetBranchAddress("ResLepPhi", &ResLepPhi, &b_ResLepPhi);
   fChain->SetBranchAddress("ResLepM", &ResLepM, &b_ResLepM);
   fChain->SetBranchAddress("ResLepPt", &ResLepPt, &b_ResLepPt);
   fChain->SetBranchAddress("ResObjEta", &ResObjEta, &b_ResObjEta);
   fChain->SetBranchAddress("ResObjPhi", &ResObjPhi, &b_ResObjPhi);
   fChain->SetBranchAddress("ResObjM", &ResObjM, &b_ResObjM);
   fChain->SetBranchAddress("ResObjPt", &ResObjPt, &b_ResObjPt);
   fChain->SetBranchAddress("runno", &runno, &b_runno);
   fChain->SetBranchAddress("evtno", &evtno, &b_evtno);
   fChain->SetBranchAddress("lumiblock", &lumiblock, &b_lumiblock);
   fChain->SetBranchAddress("isRealData", &isRealData, &b_isRealData);
   fChain->SetBranchAddress("firedHLT_PFHT800_v2", &firedHLT_PFHT800_v2, &b_firedHLT_PFHT800_v2);
   fChain->SetBranchAddress("passed_CSCTightHaloFilter", &passed_CSCTightHaloFilter, &b_passed_CSCTightHaloFilter);
   fChain->SetBranchAddress("passed_goodVertices", &passed_goodVertices, &b_passed_goodVertices);
   fChain->SetBranchAddress("passed_eeBadScFilter", &passed_eeBadScFilter, &b_passed_eeBadScFilter);
   fChain->SetBranchAddress("MuPFdBiso", &MuPFdBiso, &b_MuPFdBiso);
   Notify();
}

Bool_t FirstBHMacro::Notify()
{
   return kTRUE;
}

void FirstBHMacro::Show(Long64_t entry)
{
   if (!fChain) return;
   fChain->Show(entry);
}
Int_t FirstBHMacro::Cut(Long64_t entry)
{
   return 1;
}

void FirstBHMacro::fillJECUncVector()
{
  ifstream file_;
  file_.open("/afs/cern.ch/user/s/sapta/BlackHoleAnalysis/CMSSW_7_4_5/src/AnalysisScripts/QCDTest_SouvikParametrization/Summer15_25nsV6_MC_Uncertainty_AK4PFchs.txt");
  std::cout<<"opened file"<<std::endl;
 
  unsigned int i_eta=0;
  bool first=true;
  std::string s;
  while (!file_.eof() && i_eta<40)
  {
    getline(file_, s);
    std::stringstream ss(s);
    std::vector<std::string> line;
    while (ss)
    {
      std::string number;
      if (!getline(ss, number, ' ')) break;
      line.push_back(number);
    }
    
    double etaBinEdge=atof(line.at(1).c_str());
    v_jecUnc_etaBinEdge_.push_back(etaBinEdge);
   
    std::vector <double> v_jecUncUp;
    std::vector <double> v_jecUncDn; 
    for(unsigned int i=0; i<=43; ++i)
    {
      double pTBinEdge = atof(line.at(3*i+3).c_str());
      double jecUp = atof(line.at(3*i+4).c_str());
      double jecDn = atof(line.at(3*i+5).c_str());
      if (first) v_jecUnc_pTBinEdge_.push_back(pTBinEdge);
      v_jecUncUp.push_back(jecUp);
      v_jecUncDn.push_back(jecDn);
    }
    v_v_jecUncUp_.push_back(v_jecUncUp);
    v_v_jecUncDn_.push_back(v_jecUncDn);
    
    first=false;
    ++i_eta;
  }
  
}

Float_t FirstBHMacro::JecUnc(double jetpT, double jetEta, std::string jecUnc)
{
  if (jetpT<10.0 || fabs(jetEta)>5.4) {return -999;}

  double corr=-999;
  unsigned int i_eta=0;
  while (corr==-999 && i_eta<40)
  {
    if (jetEta < v_jecUnc_etaBinEdge_.at(i_eta))
    {
      unsigned int i_pT=0;
      while (corr==-999 && i_pT<43)
      {
        if (jetpT < v_jecUnc_pTBinEdge_.at(i_pT+1))
        {
          if (jecUnc=="JecUp") corr = v_v_jecUncUp_.at(i_eta).at(i_pT);
          if (jecUnc=="JecDown") corr = v_v_jecUncDn_.at(i_eta).at(i_pT);
          if (jecUnc=="Default") corr = 0.0;
        }
        else if (jetpT >= v_jecUnc_pTBinEdge_.at(43))
        {
          if (jecUnc=="JecUp") corr = v_v_jecUncUp_.at(i_eta).at(43);
          if (jecUnc=="JecDown") corr = v_v_jecUncDn_.at(i_eta).at(43);
          if (jecUnc=="Default") corr = 0.0;
        }
        ++i_pT;
      }
    }
    ++i_eta;
  }
  
  return corr;
}
/*
void FirstBHMacro::openJECFile()
{
  file_.open("/afs/cern.ch/user/s/sapta/BlackHoleAnalysis/CMSSW_7_4_5/src/AnalysisScripts/Summer15_25nsV6_MC_Uncertainty_AK4PFchs.txt");
}


Float_t FirstBHMacro::JecUnc(double jetPt, double jetEta, std::string jecUnc)
{
  if (jetPt<10.0 || fabs(jetEta)>5.4) return -999;

  float jetEtalow;
  float jetEtahigh;
  float corr=-999;

  std::string s;
  while (!file_.eof() && corr==-999)
  {
    if (!getline(file_, s)) break;

    std::stringstream ss(s);
    std::vector<std::string> line;
    while (ss)
    {
      std::string number;
      if (!getline(ss, number, ' ')) break;
      line.push_back(number);
    }
    jetEtalow = atof(line.at(0).c_str());
    jetEtahigh = atof(line.at(1).c_str());
    if(jetEta>=jetEtalow && jetEta<jetEtahigh)
    {
      corr = -999;
      int i=0;
      while (i<43)
      {
        if ((jetPt>=atof(line.at(3*i+3).c_str()) && jetPt<=atof(line.at(3*i+6).c_str())))
        {
          if(jecUnc=="JecUp") corr = atof(line.at(3*i+4).c_str());
          if(jecUnc=="JecDown") corr = atof(line.at(3*i+5).c_str());
          if(jecUnc=="Default") corr = 0.0;
        }
      else if (jetPt>=atof(line.at(132).c_str()))
        {
          if(jecUnc=="JecUp") corr = atof(line.at(133).c_str());
          if(jecUnc=="JecDown") corr = atof(line.at(134).c_str());
          if(jecUnc=="Default") corr = 0.0;
        }
        ++i;
      }

    }

  }

  file_.clear();
  file_.seekg(0, ios::beg);
  return corr;
}
*/
#endif // #ifdef FirstBHMacro_cxx
