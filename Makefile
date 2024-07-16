# ClubSimulation Makefile
# Tshembho XIvambu
# 2023 Aug 26

JC = javac
JFLAGS = -g

SRCDIR = src
BINDIR = bin
JFLAGS = -g
JC = javac
SRCDIR = src
BINDIR = bin
DATADIR = data


CLASSES := $(shell find $(SRCDIR)/clubSimulation -name "*.java")

default: classes

classes:
	$(JC) $(JFLAGS) -cp $(BINDIR) $(CLASSES) -d $(BINDIR)

clean:
	$(RM) $(BINDIR)/clubSimulation/*.class

run:
	java -cp $(BINDIR) clubSimulation.ClubSimulation $(ARGS)