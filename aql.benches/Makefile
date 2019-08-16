# FILE. . . . . /home/hak/hlt/src/hlt/language/jaccapps/aql/benches/Makefile
# EDIT BY . . . Hassan Ait-Kaci
# ON MACHINE. . Hp-Dv7
# STARTED ON. . Thu Oct 18 03:18:04 2012

# Last modified on Fri Oct 19 17:11:08 2012 by hak

########################################################################

HLT_HOME	= ${WIN_HOME}/hlt
HLT_CLASSES	= ${HLT_HOME}/classes
JDOM_CLASSES	= ${HLT_CLASSES}/jdom.jar
SHARED_CLASSES	= ${HLT_CLASSES};${JDOM_CLASSES}
AQL_CLASSES	= ../classes
SHELL      	= bash
AWK   	   	= gawk
RM         	= \rm
MAIN       	= hlt.aql.Bench
CLASSES    	= ${SHARED_CLASSES};${AQL_CLASSES}
JAVA       	= java
DIFF       	= diff -b
SOURCES    	= $(wildcard [^,]*.aql)
CURRFILES  	= $(addsuffix .curr,$(notdir $(basename $(SOURCES))))
BENCHFILES 	= $(addsuffix .bench,$(notdir $(basename $(SOURCES))))
REFBENCH   	= refbench
STARS	   	= echo "**********************************************************************"

########################################################################
all: clean java $(CURRFILES) $(BENCHFILES) report
########################################################################
clean: 
	@$(RM) -rf *.curr
	@$(RM) -rf *.bench
	@$(RM) -rf .#*
	@$(RM) -rf ,*
########################################################################
java: clean
	@$(STARS)
	@echo "*** Testing sources: "$(SOURCES)
	@$(STARS)
	@$(JAVA) -classpath "$(CLASSES)" $(MAIN) $(SOURCES)
	@$(STARS)
########################################################################
%.bench: %.curr
	@echo "*** Checking" $< "output in" $@
	@cat $< | $(AWK) -f scr.gawk > $@
	@($(DIFF) $< $(REFBENCH)/$< > $@ || true) 
########################################################################
report:
	@$(STARS)
	@echo "*** Generating report.txt..."
	@$(RM) -rf report.txt
	@$(AWK) -f cat.gawk -v REPORT="*** Results of non-regression tests for AQL" $(BENCHFILES) > report.txt
	@$(STARS)
	@cat report.txt
########################################################################