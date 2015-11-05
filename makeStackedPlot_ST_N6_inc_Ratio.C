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
#include "tdrstyle.C"

using std::string;
using std::cout;
using std::endl;
using std::istringstream;

void makeStackedPlot_ST_N6_inc_Ratio(){

  setTDRStyle();

  gROOT->SetStyle("Plain");
  gStyle->SetErrorX(0);

  TCanvas c1("c1","Stacked Histogram",10,10,700,800);
  TPad *p_2=new TPad("p_2", "p_2", 0, 0, 1, 0.25);
  TPad *p_1=new TPad("p_1", "p_1", 0, 0.25, 1, 1);
  p_1->SetTopMargin(0.05);
  p_1->SetBottomMargin(0.0);
  p_1->SetFillStyle(4000);
  p_1->SetFrameFillColor(0);
  p_2->SetTopMargin(0.0); 
  p_2->SetFillStyle(4000); 
  p_2->SetBottomMargin(0.25); 
  p_2->SetFrameFillColor(0); 
  p_1->SetLogy();
  p_1->Draw();
  p_2->Draw();
  p_1->cd();

  double qcd_100_200 = 27540000.0*209.0/81703728.0;
  double qcd_200_300 = 1735000.0*209.0/18718905.0;
  double qcd_300_500 = 366800.0*209.0/20278243.0;
  double qcd_500_700 = 29370.0*209.0/19664159.0;
  double qcd_700_1000 = 6524.0*209.0/15356448.0;
  double qcd_1000_1500 = 1064.0*209.0/4963895.0;
  double qcd_1500_2000 = 121.5*209.0/3868886.0;
  double qcd_2000_inf =  25.4*209.0/1961774.0;

/*  double qcd_100_200 = 27540000.0*209.0/80093092.0;
  double qcd_200_300 = 1735000.0*209.0/18717349.0;
  double qcd_300_500 = 366800.0*209.0/20086103.0;
  double qcd_500_700 = 29370.0*209.0/19542847.0;
  double qcd_700_1000 = 6524.0*209.0/15011016.0;
  double qcd_1000_1500 = 1064.0*209.0/4963895.0;
  double qcd_1500_2000 = 121.5*209.0/3848411.0;
  double qcd_2000_inf =  25.4*209.0/1961774.0;
*/

  THStack hs("hs","ST_N6_inc [GeV]");

  TFile* file0 = TFile::Open("output_QCD_HT_100_200.root");
  TH1F *h0 = (TH1F*)file0->Get("AllST/ST_N6_inc");
  h0->Sumw2();
  h0->Rebin(2);
  h0->GetXaxis()->SetRangeUser(1000, 5500);
  h0->Scale(qcd_100_200); 
  h0->SetLineColor(kYellow);
  h0->SetFillColor(kYellow);
  h0->Draw();
  hs.Add(h0);

  TFile* file1 = TFile::Open("output_QCD_HT_200_300.root");
  TH1F *h1 = (TH1F*)file1->Get("AllST/ST_N6_inc");
  h1->Sumw2();
  h1->Rebin(2);
  h1->GetXaxis()->SetRangeUser(1000, 5500);
  h1->Scale(qcd_200_300);
  h1->SetLineColor(kYellow);
  h1->SetFillColor(kYellow);
  h1->Draw();
  hs.Add(h1);

  TFile* file2 = TFile::Open("output_QCD_HT_300_500.root");
  TH1F *h2 = (TH1F*)file2->Get("AllST/ST_N6_inc");
  h2->Sumw2();
  h2->Rebin(2);
  h2->GetXaxis()->SetRangeUser(1000, 5500);
  h2->Scale(qcd_300_500);
  h2->SetLineColor(kYellow);
  h2->SetFillColor(kYellow);
  h2->Draw();
  hs.Add(h2);

  TFile* file3 = TFile::Open("output_QCD_HT_500_700.root");
  TH1F *h3 = (TH1F*)file3->Get("AllST/ST_N6_inc");
  h3->Sumw2();
  h3->Rebin(2);
  h3->GetXaxis()->SetRangeUser(1000, 5500);
  h3->Scale(qcd_500_700);
  h3->SetLineColor(kYellow);
  h3->SetFillColor(kYellow);
  h3->Draw();
  hs.Add(h3);

  TFile* file4 = TFile::Open("output_QCD_HT_700_1000.root");
  TH1F *h4 = (TH1F*)file4->Get("AllST/ST_N6_inc");
  h4->Sumw2();
  h4->Rebin(2);
  h4->GetXaxis()->SetRangeUser(1000, 5500);
  h4->Scale(qcd_700_1000);
  h4->SetLineColor(kYellow);
  h4->SetFillColor(kYellow);
  h4->Draw();
  hs.Add(h4);

  TFile* file5 = TFile::Open("output_QCD_HT_1000_1500.root");
  TH1F *h5 = (TH1F*)file5->Get("AllST/ST_N6_inc");
  h5->Sumw2();
  h5->Rebin(2);
  h5->GetXaxis()->SetRangeUser(1000, 5500);
  h5->Scale(qcd_1000_1500);
  h5->SetLineColor(kYellow);
  h5->SetFillColor(kYellow);
  h5->Draw();
  hs.Add(h5);

  TFile* file6 = TFile::Open("output_QCD_HT_1500_2000.root");
  TH1F *h6 = (TH1F*)file6->Get("AllST/ST_N6_inc");
  h6->Sumw2();
  h6->Rebin(2);
  h6->GetXaxis()->SetRangeUser(1000, 5500);
  h6->Scale(qcd_1500_2000);
  h6->SetLineColor(kYellow);
  h6->SetFillColor(kYellow);
  h6->Draw();
  hs.Add(h6);

  TFile* file7 = TFile::Open("output_QCD_HT_2000_inf.root");
  TH1F *h7 = (TH1F*)file7->Get("AllST/ST_N6_inc");
  h7->Sumw2();
  h7->Rebin(2);
  h7->GetXaxis()->SetRangeUser(1000, 5500);
  h7->Scale(qcd_2000_inf);
  h7->SetLineColor(kYellow);
  h7->SetFillColor(kYellow);
  h7->Draw();
  hs.Add(h7);

  hs.Draw("HIST");
  hs.SetMaximum(1000000.0);
  hs.SetMinimum(0.1);
  hs.GetXaxis()->SetRangeUser(1000, 5500);
  hs.SetTitle("");
  hs.GetYaxis()->SetTitle("Events/100 GeV");
  hs.GetXaxis()->SetLabelSize(0.04);
  hs.GetXaxis()->SetTitleSize(0.04);

  TFile* data = TFile::Open("histo_data_All.root");
  TH1F *h8 = (TH1F*)data->Get("AllST/ST_N6_inc");
  h8->Sumw2();
  h8->Rebin(2);
  h8->SetLineColor(kBlack);
  h8->SetMarkerStyle(20);
  h8->SetMarkerSize(1.0);
  h8->GetXaxis()->SetRangeUser(1000, 5500);
  h8->Draw("SAME E");

  TH1F *h_AllMC=(TH1F*)h8->Clone("h_AllMC");
  h_AllMC->Reset();
  h_AllMC->Add(h0);
  h_AllMC->Add(h1);
  h_AllMC->Add(h2);
  h_AllMC->Add(h3);
  h_AllMC->Add(h4);
  h_AllMC->Add(h5);
  h_AllMC->Add(h6);
  h_AllMC->Add(h7);

  TH1F *h_AllMC_Unc=(TH1F*)h_AllMC->Clone("h_AllMC_Unc");
  for (int ibin = 1; ibin < h_AllMC_Unc->GetNbinsX()+1; ibin++){

  double uncStat = 0;
  double uncSyst = 0;
  double uncTot  = 0;
  uncStat += h0->GetBinError(ibin)*h0->GetBinError(ibin) + h1->GetBinError(ibin)*h1->GetBinError(ibin) + h2->GetBinError(ibin)*h2->GetBinError(ibin) + h3->GetBinError(ibin)*h3->GetBinError(ibin) + h4->GetBinError(ibin)*h4->GetBinError(ibin) + h5->GetBinError(ibin)*h5->GetBinError(ibin) + h6->GetBinError(ibin)*h6->GetBinError(ibin) +  h7->GetBinError(ibin)*h7->GetBinError(ibin);
  uncSyst += h0->GetBinContent(ibin)*h0->GetBinContent(ibin)*0.15*0.15 + h1->GetBinContent(ibin)*h1->GetBinContent(ibin)*0.15*0.15 + h2->GetBinContent(ibin)*h2->GetBinContent(ibin)*0.15*0.15 + h3->GetBinContent(ibin)*h3->GetBinContent(ibin)*0.15*0.15 + h4->GetBinContent(ibin)*h4->GetBinContent(ibin)*0.15*0.15 + h5->GetBinContent(ibin)*h5->GetBinContent(ibin)*0.15*0.15 + h6->GetBinContent(ibin)*h6->GetBinContent(ibin)*0.15*0.15 + h7->GetBinContent(ibin)*h7->GetBinContent(ibin)*0.15*0.15 + h8->GetBinContent(ibin)*h8->GetBinContent(ibin)*0.15*0.15;

  uncTot = sqrt(uncStat + uncSyst);
  h_AllMC_Unc->SetBinError(ibin, uncTot);

}

  gStyle->SetHatchesLineWidth(4);
  gStyle->SetErrorX(0.5);
  h_AllMC_Unc->SetFillStyle(3005);
  h_AllMC_Unc->SetFillColor(1);
  h_AllMC_Unc->SetMarkerStyle(1);
  h_AllMC_Unc->Draw("SAME E2");

  TLegend *leg1 = new TLegend(0.65,0.38,0.90,0.80,NULL,"brNDC");
  leg1->SetBorderSize(0);
  leg1->SetTextSize(0.03);
  leg1->SetLineColor(1);
  leg1->SetLineStyle(0);
  leg1->SetLineWidth(1);
  leg1->SetFillColor(10);
  leg1->SetFillStyle(0);
  leg1->AddEntry(h0,"QCD MC","f");
  leg1->AddEntry(h8,"Data","lp");
  leg1->Draw();

  TLatex* text1 = new TLatex(1.10061,18.08044,"CMS Preliminary, 2015D 209 pb^{-1} at #sqrt{s} = 13 TeV");
  text1->SetNDC();
  text1->SetTextAlign(13);
  text1->SetX(0.15);
  text1->SetY(0.88);
  text1->SetTextFont(42);
  text1->SetTextSizePixels(20);
  text1->Draw();

  p_2->cd();
  p_2->SetGridy();

  TH1F *h_ratio=(TH1F*)h8->Clone("h_ratio");
  h_ratio->SetLabelSize(0.05);
  h_ratio->SetTitleSize(0.10);
  h_ratio->SetTitle("; #bf{ST (all objects) with N >= 6 [GeV]}");
  h_ratio->GetXaxis()->SetTitleOffset(1.1);
  h_ratio->GetXaxis()->SetTitleSize(0.10);
  h_ratio->GetYaxis()->SetTitleOffset(0.4);
  h_ratio->GetYaxis()->SetTitleSize(0.10);
  h_ratio->GetYaxis()->SetLabelSize(0.07);
  h_ratio->GetYaxis()->SetTitle("Data/MC Ratio  ");
  h_ratio->SetStats(kFALSE);
  h_ratio->Divide(h_AllMC);
  h_ratio->SetLineColor(kBlack);
  h_ratio->SetMarkerStyle(20);
  h_ratio->SetLabelSize(0.10);
  h_ratio->GetYaxis()->SetNdivisions(505);
  h_ratio->SetMinimum(-0.5);
  h_ratio->SetMaximum(2.5);
  h_ratio->GetXaxis()->SetRangeUser(1000, 5500);
  h_ratio->Draw();

  TF1 *fit_ratio = new TF1("fit_ratio","[0]*x + [1]", 1000, 5500);
  fit_ratio->SetParLimits(0,0.0,0.00001);
  fit_ratio->SetParLimits(1,0.0, 1.2);
  fit_ratio->SetLineColor(kRed);
  fit_ratio->SetLineWidth(3);
  h_ratio->Fit("fit_ratio", "", "", 1000, 5500);

  TH1F *h_ratio_Unc=(TH1F*)h_ratio->Clone("h_ratio_Unc");
  for (int ibin = 1; ibin < h_ratio_Unc->GetNbinsX()+1; ibin++){
  h_ratio_Unc->SetBinError(ibin, (h_ratio->GetBinContent(ibin)*h_AllMC_Unc->GetBinError(ibin))/h_AllMC->GetBinContent(ibin));
  }

  gStyle->SetHatchesLineWidth(4);
  gStyle->SetErrorX(0.5);
  h_ratio_Unc->SetFillStyle(3005);
  h_ratio_Unc->SetFillColor(1);
  h_ratio_Unc->SetMarkerStyle(1);
  h_ratio_Unc->Draw("SAME E2");

  c1.SaveAs("h_Stacked_ST_N6_inc.pdf");
  c1.SaveAs("h_Stacked_ST_N6_inc.png");

}
