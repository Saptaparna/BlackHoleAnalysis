#include <TROOT.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include "TGraphAsymmErrors.h"
#include "TCanvas.h"
#include "TLegend.h"
#include "TFile.h"
#include "TLatex.h"
#include "TDRStyle.h"

std::string itoa(int i) 
{
  char res[4];
  sprintf(res, "%d", i);
  std::string ret(res);
  return ret;
}

void DrawLimitPlot_ModelIndependent_ST_FullCls()
{
  double ST_array[]={2600, 3000, 3500, 4000, 4500, 5000, 5500, 5500, 6000, 7000};//
  double array1 = 1.00/2.2;
  double array2 = 1.00/2.2;
  double array3 = 1.00/2.2;
  double array4 = 1.00/2.2;
  double array5 = 1.00/2.2;
  double array6 = 1.00/2.2;
  double array7 = 1.00/2.2;
  double array8 = 1.00/2.2;
  double array9 = 1.00/2.2;
  double array10 = 1.00/2.2;
  double xsec_theory_array[] = {array1, array2, array3, array4, array5, array6, array7, array8, array9, array10};
  std::vector<double> ST(ST_array, ST_array+sizeof(ST_array)/sizeof(double));
  std::vector<double> xsec_theory(xsec_theory_array, xsec_theory_array+sizeof(xsec_theory_array)/sizeof(double));
  std::vector<double> xsec;
  std::vector<double> obs;
  std::vector<double> expNeg2, expNeg1, expPos1, expPos2;
  std::vector<double> obs_fullCls;
  std::vector<double> exp_fullCls; 
 
  for (unsigned int i_ST=0; i_ST<ST.size(); ++i_ST)
  {
    std::string ST_string=itoa(ST.at(i_ST));

    std::string filename_Obs="realistic-counting-experiment_observed_"+ST_string+"_CL95.log";
    std::ifstream file_Obs(filename_Obs.c_str(), ios::in);
    std::string line_Obs;  

    getline(file_Obs, line_Obs); double d_obs_fullCls = atof(line_Obs.substr(line_Obs.find("<")+1).c_str())*xsec_theory.at(i_ST); obs_fullCls.push_back(d_obs_fullCls);
   
    std::string filename_Exp="realistic-counting-experiment_expected_"+ST_string+"_CL95.log"; 
    std::ifstream file_Exp(filename_Exp.c_str(), ios::in);
    std::string line_Exp;

    getline(file_Exp, line_Exp); double d_xsecNeg2=atof(line_Exp.substr(line_Exp.find("<")+1).c_str())*xsec_theory.at(i_ST);
    getline(file_Exp, line_Exp); double d_xsecNeg1=atof(line_Exp.substr(line_Exp.find("<")+1).c_str())*xsec_theory.at(i_ST);
    getline(file_Exp, line_Exp); double d_exp_fullCls = atof(line_Exp.substr(line_Exp.find("<")+1).c_str())*xsec_theory.at(i_ST); exp_fullCls.push_back(d_exp_fullCls); 
    getline(file_Exp, line_Exp); double d_xsecPos1=atof(line_Exp.substr(line_Exp.find("<")+1).c_str())*xsec_theory.at(i_ST);
    getline(file_Exp, line_Exp); double d_xsecPos2=atof(line_Exp.substr(line_Exp.find("<")+1).c_str())*xsec_theory.at(i_ST); 

    if (ST_string=="2600" || ST_string=="3000" || ST_string=="3500" || ST_string=="4000" || ST_string=="4500" || ST_string=="5000" || ST_string=="5500" || ST_string=="6000" || ST_string=="7000")    
    std::cout<<ST_string<<" & "<<d_obs_fullCls<< " & " << d_exp_fullCls << " & "<<d_xsecNeg1<<" & "<<d_xsecPos1<<" & "<<d_xsecNeg2<<" & "<<d_xsecPos2<<" \\\\ "<< std::endl; 

    expNeg2.push_back(d_exp_fullCls-d_xsecNeg2);
    expNeg1.push_back(d_exp_fullCls-d_xsecNeg1);
    expPos1.push_back(d_xsecPos1-d_exp_fullCls);
    expPos2.push_back(d_xsecPos2-d_exp_fullCls);  
  }
  
  TStyle *tdrStyle=setTDRStyle();
  tdrStyle->cd();
  tdrStyle->SetPadLeftMargin(0.14);
  tdrStyle->SetTitleYOffset(1.6);
  
  TCanvas *c_xsec=new TCanvas("c_xsec", "c_xsec", 700, 700);
  c_xsec->SetLogy();
  TGraph *g_xsec=new TGraph(ST.size(), &ST[0], &exp_fullCls[0]);
  g_xsec->SetTitle("; ST^{min} [GeV]; 95\% #sigma(ST > ST^{min}) X A(fb)");
  g_xsec->SetLineWidth(2);
  g_xsec->SetLineStyle(2);
  TGraphAsymmErrors *g_xsec_1sigma=new TGraphAsymmErrors(ST.size(), &ST[0], &exp_fullCls[0], 0, 0, &expNeg1[0], &expPos1[0]);
  g_xsec_1sigma->SetLineColor(kGreen);
  g_xsec_1sigma->SetFillColor(kGreen);
  TGraphAsymmErrors *g_xsec_2sigma=new TGraphAsymmErrors(ST.size(), &ST[0], &exp_fullCls[0], 0, 0, &expNeg2[0], &expPos2[0]);
  g_xsec_2sigma->SetLineColor(kYellow);
  g_xsec_2sigma->SetFillColor(kYellow);
  g_xsec->SetMaximum(5000.0); g_xsec->SetMinimum(0.1);
  g_xsec->Draw("AL");
  g_xsec_2sigma->Draw("3");
  g_xsec_1sigma->Draw("3");
  g_xsec->Draw("L");
  TGraph *g_obs=new TGraph(ST.size(), &ST[0], &obs_fullCls[0]);
  g_obs->SetLineWidth(2);
  g_obs->SetLineStyle(1);
  g_obs->SetMarkerStyle(20);
  g_obs->Draw("LP SAME");
  c_xsec->SetTicks(1, 1);
  TLatex* text1 = new TLatex(1.10061,18.08044,"CMS Preliminary, 2.2 fb^{-1} at #sqrt{s} = 13 TeV");
  text1->SetNDC();
  text1->SetTextAlign(10);
  text1->SetX(0.15);
  text1->SetY(0.90);
  text1->SetTextFont(42);
  text1->SetTextSize(0.03);
  text1->SetTextSizePixels(15);
  text1->Draw();
  TLegend *leg=new TLegend(0.45, 0.65, 0.90, 0.85);
  leg->SetFillStyle(1); leg->SetFillColor(kWhite); leg->SetLineColor(kWhite); leg->SetTextSize(0.04);
  leg->SetHeader("Multiplicity >= 3");
  leg->AddEntry(g_xsec, "Expected upper limit", "L");
  leg->AddEntry(g_xsec_1sigma, "Expected #pm 1 #sigma", "F");
  leg->AddEntry(g_xsec_2sigma, "Expected #pm 2 #sigma", "F");
  leg->AddEntry(g_obs, "Observed upper limit", "LP");
  leg->Draw();
  
  c_xsec->SaveAs("c_xsec_ModelIndependent_ST_Mul3.png");
  c_xsec->SaveAs("c_xsec_ModelIndependent_ST_Mul3.pdf");

}    

