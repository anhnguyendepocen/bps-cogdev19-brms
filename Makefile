main = brms-workshop
bibtex = mjandrews.bib

pdf:
	Rscript -e "rmarkdown::render('$(main).Rmd')"

clean:
	rm -f $(main).{log,tex}
	rm -rf $(main)_files

mrproper: clean
	rm -f $(main).pdf
	rm -f $(bibtex)

get_bibtex:
	wget --no-check-certificate --no-cache --no-cookies https://raw.githubusercontent.com/mark-andrews/bibtex/master/mjandrews.bib -O $(bibtex)

