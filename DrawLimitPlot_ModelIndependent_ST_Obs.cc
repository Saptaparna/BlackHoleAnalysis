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

void DrawLimitPlot_ModelIndependent_ST_Obs()
{
  double ST_array[]={2600, 3000, 3500, 4000, 4500, 5000, 5500, 5600, 5700, 5800};//, 6500, 7000};
  double array1 = 1.00/1.28;
  double array2 = 1.00/1.28;
  double array3 = 1.00/1.28;
  double array4 = 1.00/1.28;
  double array5 = 1.00/1.28;
  double array6 = 1.00/1.28;
  double array7 = 1.00/1.28;
  double array8 = 1.00/1.28;
  double array9 = 1.00/1.28;
  double array10 = 1.00/1.28;
  /*double array1 = 5.75/10000.0;
  double array2 = 5.73/10000.0;
  double array3 = 5.67/10000.0;
  double array4 = 5.53/10000.0;
  double array5 = 5.21/10000.0;
  double array6 = 4.66/10000.0;
  double array7 = 3.73/10000.0;
  double array8 = 3.50/10000.0;
  double array9 = 3.25/10000.0;
  double array10 = 3.00/10000.0;
  double array1 = 8.860/10000.0;
  double array2 = 8.800/10000.0;
  double array3 = 8.650/10000.0;
  double array4 = 8.370/10000.0;
  double array5 = 7.800/10000.0;
  double array6 = 6.920/10000.0;
  double array7 = 5.470/10000.0;
  double array8 = 3.670/10000.0;
  double array9 = 1.300/10000.0;
  double array10 = 0.0260/10000.0;
  double xsec_theory_array[] = {array1, array2, array3, array4, array5, array6, array7, array8};//, array9, array10};  
//double xsec_theory_array[] = {5.843e-02, 5.8070e-02, 5.7062e-02, 5.5200e-02, 5.1462e-02, 4.5712e-02, 3.615e-02, 2.4223e-02};
  //double xsec_theory_array[] = {7.479e-02, 7.433e-02, 7.304e-02, 7.0656e-02, 6.5872e-02, 5.8512e-02, 4.6276e-02, 3.1004e-02};
  //double xsec_theory_array[] = {0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92};//, 0.92, 0.92}; 
  */
  double xsec_theory_array[] = {array1, array2, array3, array4, array5, array6, array7, array8, array9, array10}; 
  std::vector<double> ST(ST_array, ST_array+sizeof(ST_array)/sizeof(double));
  std::vector<double> xsec_theory(xsec_theory_array, xsec_theory_array+sizeof(xsec_theory_array)/sizeof(double));
  std::vector<double> xsec;
  std::vector<double> obs;
  std::vector<double> expNeg2, expNeg1, expPos1, expPos2;
  
  for (unsigned int i_ST=0; i_ST<ST.size(); ++i_ST)
  {
    std::string ST_string=itoa(ST.at(i_ST));
    std::string filename="realistic-counting-experiment_ST"+ST_string+"_BHMI.log";
    std::ifstream file(filename.c_str(), ios::in);
 
    std::string line;
    getline(file, line);
    getline(file, line);
    getline(file, line);
//    getline(file, line);
//    getline(file, line);

    getline(file, line); double d_obs=atof(line.substr(line.find("<")+1).c_str())*xsec_theory.at(i_ST); obs.push_back(d_obs);
    getline(file, line); double d_xsecNeg2=atof(line.substr(line.find("<")+1).c_str())*xsec_theory.at(i_ST);
    getline(file, line); double d_xsecNeg1=atof(line.substr(line.find("<")+1).c_str())*xsec_theory.at(i_ST);
    getline(file, line); double d_xsec=atof(line.substr(line.find("<")+1).c_str())*xsec_theory.at(i_ST); xsec.push_back(d_xsec);
    getline(file, line); double d_xsecPos1=atof(line.substr(line.find("<")+1).c_str())*xsec_theory.at(i_ST);
    getline(file, line); double d_xsecPos2=atof(line.substr(line.find("<")+1).c_str())*xsec_theory.at(i_ST);

    expNeg2.push_back(d_xsec-d_xsecNeg2);
    expNeg1.push_back(d_xsec-d_xsecNeg1);
    expPos1.push_back(d_xsecPos1-d_xsec);
    expPos2.push_back(d_xsecPos2-d_xsec);
    
    if (ST_string=="2500" ||
        ST_string=="3000" ||
        ST_string=="3500" ||
        ST_string=="4000" || ST_string=="4500" || ST_string=="5000" || ST_string=="5500" || ST_string=="5600" || ST_string=="5700" || ST_string=="5800")
         std::cout<<ST_string<<" & "<<d_obs<< " & "<<d_xsec<<" & "<<d_xsecNeg1<<" & "<<d_xsecPos1<<" & "<<d_xsecNeg2<<" & "<<d_xsecPos2<<" \\\\ "<<std::endl;
    
  }
  
  TStyle *tdrStyle=setTDRStyle();
  tdrStyle->cd();
  tdrStyle->SetPadLeftMargin(0.14);
  tdrStyle->SetTitleYOffset(1.6);
  
  TCanvas *c_xsec=new TCanvas("c_xsec", "c_xsec", 700, 700);
  c_xsec->SetLogy();
  TGraph *g_xsec=new TGraph(ST.size(), &ST[0], &xsec[0]);
  g_xsec->SetTitle("; ST [GeV]; #sigma(ST > ST_{min}) X A(fb)");
  g_xsec->SetLineWidth(2);
  g_xsec->SetLineStyle(2);
  TGraphAsymmErrors *g_xsec_1sigma=new TGraphAsymmErrors(ST.size(), &ST[0], &xsec[0], 0, 0, &expNeg1[0], &expPos1[0]);
  g_xsec_1sigma->SetLineColor(kGreen);
  g_xsec_1sigma->SetFillColor(kGreen);
  TGraphAsymmErrors *g_xsec_2sigma=new TGraphAsymmErrors(ST.size(), &ST[0], &xsec[0], 0, 0, &expNeg2[0], &expPos2[0]);
  g_xsec_2sigma->SetLineColor(kYellow);
  g_xsec_2sigma->SetFillColor(kYellow);
  g_xsec->SetMaximum(1000.0); g_xsec->SetMinimum(1.0);
  g_xsec->Draw("AL");
  g_xsec_2sigma->Draw("3");
  g_xsec_1sigma->Draw("3");
  g_xsec->Draw("L");
  TGraph *g_obs=new TGraph(ST.size(), &ST[0], &obs[0]);
  g_obs->SetLineWidth(2);
  g_obs->SetLineStyle(1);
  g_obs->SetMarkerStyle(20);
  g_obs->Draw("LP SAME");
  TLatex* text1 = new TLatex(1.10061,18.08044,"CMS Preliminary, 1.28 fb^{-1} at #sqrt{s} = 13 TeV");
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
  leg->SetHeader("Multiplicity >= 5");
  leg->AddEntry(g_xsec, "Expected upper limit", "L");
  leg->AddEntry(g_xsec_1sigma, "Expected #pm 1 #sigma", "F");
  leg->AddEntry(g_xsec_2sigma, "Expected #pm 2 #sigma", "F");
  leg->AddEntry(g_obs, "Observed Upper Limit", "LP");
  leg->Draw();
  
  c_xsec->SaveAs("c_xsec_ModelIndependent_ST.png");
  c_xsec->SaveAs("c_xsec_ModelIndependent_ST.pdf");

}    
