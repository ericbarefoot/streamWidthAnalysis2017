all:
	./smallStreamsAnalysis.R

figures/fig1_2_widthMap.pdf: fig1_2_widthMap.R
	./smallStreamsAnalysis.R --fig1_2

figures/fig3_distributions.pdf: fig3_distributions.R
	./smallStreamsAnalysis.R --fig3

figures/fig4_widthModel.pdf: fig4_widthModel.R
	./smallStreamsAnalysis.R --fig4

tables/EDtable1.csv:  EDtab1_EDtab2_catchment_attributes.R
	./smallStreamsAnalysis.R --EDtab1_2

tables/EDtable3_GOF.csv:  EDfig2_EDtab3_GOF.R
	./smallStreamsAnalysis.R --EDtab3_fig2

figures/EDfig2_GOF.pdf:  EDfig2_EDtab3_GOF.R
	./smallStreamsAnalysis.R --EDtab3_fig2

clean:
	rm -rf figures/*
	rm -rf tables/*

.PHONY: all clean
