.PRECIOUS : %.tex

Rbases   := $(basename $(wildcard *.Rnw))
Rfiles   := $(foreach base, $(Rbases), $(base).R)
Rpdfs    := $(foreach base, $(Rbases), $(base).pdf)
Rtex     := $(foreach base, $(Rbases), \
		$(addprefix $(base), .aux .log .out .tex .toc))

%.tex : %.Rnw
	echo "library(knitr); knit(\"$<\")" | R --no-save --no-restore

%.R : %.Rnw
	echo "library(knitr); knit(\"$<\", tangle=TRUE)" | R --no-save --no-restore

%.pdf : %.Rnw
	echo "library(knitr); knit2pdf(\"$<\")" | R --no-save --no-restore

all: ${Rpdfs}

clean :
	rm -f ${Rfiles}
	rm -f ${Rtex}
	rm -f *~
	rm -rf figures
