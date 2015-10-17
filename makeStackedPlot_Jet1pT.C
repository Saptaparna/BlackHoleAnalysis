#include "TH1.h"
#include "TTree.h"
#include "TKey.h"
#include "Riostream.h"
#include <TCanvas.h>
#include <TLatex.h>
#include "TGraphErrors.h"
#include "TLegend.h"
#include <TPad.h>
#include <sstream>
#include "TVectorD.h"
#include "TGraph.h"

using std::string;
using std::cout;
using std::endl;
using std::istringstream;

void makeStackedPlot_Jet1pT(){

  gROOT->SetStyle("Plain");
  gStyle->SetErrorX(0);

  TCanvas c1("c1","Stacked Histogram",10,10,700,800);
  TPad *p_2=new TPad("p_2", "p_2", 0, 0, 1, 0.35);
  TPad *p_1=new TPad("p_1", "p_1", 0, 0.35, 1, 1);
  p_1->SetBottomMargin(0.005);
  p_1->SetFillStyle(4000);
  p_1->SetFrameFillColor(0);
  p_2->SetFillStyle(4000);
  p_2->SetFrameFillColor(0);
  p_1->SetLogy();
  p_1->Draw();
  p_2->Draw();
  p_1->cd();

  double qcd_100_200 = 27540000.0*209.0/80093092.0;
  double qcd_200_300 = 1735000.0*209.0/18717349.0;
  double qcd_300_500 = 366800.0*209.0/20086103.0;
  double qcd_500_700 = 29370.0*209.0/19542847.0;
  double qcd_700_1000 = 6524.0*209.0/15011016.0;
  double qcd_1000_1500 = 1064.0*209.0/4963895.0;
  double qcd_1500_2000 = 121.5*209.0/3848411.0;
  double qcd_2000_inf =  25.4*209.0/1961774.0;

  THStack hs("hs","Jet pT > 50 GeV");

  TFile* file0 = TFile::Open("output_QCD_HT_100_200.root");
  TH1F *h0 = (TH1F*)file0->Get("general/jet_pT50");
  h0->Rebin(1);
  h0->GetXaxis()->SetRangeUser(0, 300);
  h0->Scale(qcd_100_200); 
  h0->SetFillColor(kYellow);
  h0->Draw();
  hs.Add(h0);

  TFile* file1 = TFile::Open("output_QCD_HT_200_300.root");
  TH1F *h1 = (TH1F*)file1->Get("general/jet_pT50");
  h1->Rebin(1);
  h1->GetXaxis()->SetRangeUser(0, 300);
  h1->Scale(qcd_200_300);
  h1->SetFillColor(kYellow);
  h1->Draw();
  hs.Add(h1);

  TFile* file2 = TFile::Open("output_QCD_HT_300_500.root");
  TH1F *h2 = (TH1F*)file2->Get("general/jet_pT50");
  h2->Rebin(1);
  h2->GetXaxis()->SetRangeUser(0, 300);
  h2->Scale(qcd_300_500);
  h2->SetFillColor(kYellow);
  h2->Draw();
  hs.Add(h2);

  TFile* file3 = TFile::Open("output_QCD_HT_500_700.root");
  TH1F *h3 = (TH1F*)file3->Get("general/jet_pT50");
  h3->Rebin(1);
  h3->GetXaxis()->SetRangeUser(0, 300);
  h3->Scale(qcd_500_700);
  h3->SetFillColor(kYellow);
  h3->Draw();
  hs.Add(h3);

  TFile* file4 = TFile::Open("output_QCD_HT_700_1000.root");
  TH1F *h4 = (TH1F*)file4->Get("general/jet_pT50");
  h4->Rebin(1);
  h4->GetXaxis()->SetRangeUser(0, 300);
  h4->Scale(qcd_700_1000);
  h4->SetFillColor(kYellow);
  h4->Draw();
  hs.Add(h4);

  TFile* file5 = TFile::Open("output_QCD_HT_1000_1500.root");
  TH1F *h5 = (TH1F*)file5->Get("general/jet_pT50");
  h5->Rebin(1);
  h5->GetXaxis()->SetRangeUser(0, 300);
  h5->Scale(qcd_1000_1500);
  h5->SetFillColor(kYellow);
  h5->Draw();
  hs.Add(h5);

  TFile* file6 = TFile::Open("output_QCD_HT_1500_2000.root");
  TH1F *h6 = (TH1F*)file6->Get("general/jet_pT50");
  h6->Rebin(1);
  h6->GetXaxis()->SetRangeUser(0, 300);
  h6->Scale(qcd_1500_2000);
  h6->SetFillColor(kYellow);
  h6->Draw();
  hs.Add(h6);

  TFile* file7 = TFile::Open("output_QCD_HT_2000_inf.root");
  TH1F *h7 = (TH1F*)file7->Get("general/jet_pT50");
  h7->Rebin(1);
  h7->GetXaxis()->SetRangeUser(0, 300);
  h7->Scale(qcd_2000_inf);
  h7->SetFillColor(kYellow);
  h7->Draw();
  hs.Add(h7);

  hs.Draw("HIST");
  hs.SetMaximum(100000000.0);
  hs.SetMinimum(0.1);
  hs.GetXaxis()->SetRangeUser(0, 300);
  hs.GetXaxis()->SetTitle("Jet pT > 50 (GeV)");
  hs.GetXaxis()->SetLabelSize(0.02);
  hs.GetXaxis()->SetTitleSize(0.02);

  TFile* data = TFile::Open("histo_data_All.root");
  TH1F *h8 = (TH1F*)data->Get("general/jet_pT50");
  h8->Rebin(1);
  h8->SetLineColor(kBlack);
  h8->SetMarkerStyle(20);
  h8->SetMarkerSize(1.0);
  h8->GetXaxis()->SetRangeUser(0, 300);
  h8->Draw("SAME E");

  c1.SaveAs("h_Stacked_Jet1pT.pdf");
  c1.SaveAs("h_Stacked_Jet1pT.png");

}
