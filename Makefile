report_card.db : general.csv grad_counts.csv
	csvs-to-sqlite $^ $@

general.csv : 2021-RC-Pub-Data-Set.xlsx
	in2csv --sheet General $< > $@

grad_counts.csv : raw/F564-Grad_Rate_by_School_R.xlsx
	in2csv --sheet Data $< > $@

2021-RC-Pub-Data-Set.xlsx :
	wget -O $@ https://www.isbe.net/_layouts/Download.aspx?SourceUrl=/Documents/2021-RC-Pub-Data-Set.xlsx


