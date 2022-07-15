DIFF_OPTS=

clean-up: clean-up-manuscript clean-up-revision clean-up-diff

clean-up-auxiliary-files: clean-up-manuscript-auxiliary-files clean-up-revision-auxiliary-files clean-up-diff-auxiliary-files	

clean-up-manuscript: clean-up-manuscript-auxiliary-files
	rm -f manuscript.bcf manuscript.pdf manuscript.run.xml manuscript.synctex.gz

clean-up-manuscript-auxiliary-files:
	rm -f manuscript.aux manuscript.fdb_latexmk manuscript.fls manuscript.log manuscript.bbl manuscript.blg manuscript.out

clean-up-revision: clean-up-revision-auxiliary-files
	rm -f revision.bcf revision.pdf revision.run.xml revision.synctex.gz

clean-up-revision-auxiliary-files:
	rm -f revision.aux revision.fdb_latexmk revision.fls revision.log revision.bbl revision.blg revision.out

clean-up-diff: clean-up-diff-auxiliary-files
	rm -f diff.bcf diff.pdf diff.run.xml diff.synctex.gz

clean-up-diff-auxiliary-files:
	rm -f diff.aux diff.fdb_latexmk diff.fls diff.log diff.bbl diff.blg diff.out

latexdiff: diff.tex
	latexdiff $(DIFF_OPTS) manuscript/abstract.tex revision/abstract.tex > diff/abstract.tex
	latexdiff $(DIFF_OPTS) manuscript/acronym.tex revision/acronym.tex > diff/acronym.tex
	latexdiff $(DIFF_OPTS) manuscript/introduction.tex revision/introduction.tex > diff/introduction.tex
	latexdiff $(DIFF_OPTS) manuscript/material-method.tex revision/material-method.tex > diff/material-method.tex
	latexdiff $(DIFF_OPTS) manuscript/result.tex revision/result.tex > diff/result.tex
	latexdiff $(DIFF_OPTS) manuscript/discussion.tex revision/discussion.tex > diff/discussion.tex
	latexdiff $(DIFF_OPTS) manuscript/conclusion.tex revision/conclusion.tex > diff/conclusion.tex
	latexdiff $(DIFF_OPTS) manuscript/acknowledgements.tex revision/acknowledgements.tex > diff/acknowledgements.tex
	latexdiff $(DIFF_OPTS) manuscript/conflicts-of-interest.tex revision/conflicts-of-interest.tex > diff/conflicts-of-interest.tex
	latexdiff $(DIFF_OPTS) manuscript/supplementary-material.tex revision/supplementary-material.tex > diff/supplementary-material.tex
