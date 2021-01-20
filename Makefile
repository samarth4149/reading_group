DOCS=index spring21

.PHONY : update
update : 
	@echo -n 'Copying to server...'
	@git add -u .
	@git commit -m "Updating webpage"
	@git push
	@echo ' done.'

%.html : %.jemdoc MENU
	jemdoc -o $@ $<

.PHONY : clean
clean :
	-rm *.html