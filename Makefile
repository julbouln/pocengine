
OCAMLMAKEFILE = OCamlMakefile

PACKS=pocgame pociface zip

SOURCES = engine.ml
THREADS=yes
RESULT=pocengine

OCAMLBLDFLAGS=-noautolink -linkall -use-runtime ./pocenginerun
NO_CUSTOM=true

all: nc

pocenginerun:
	ocamlfind ocamlc -o pocenginerun -make-runtime -g -package pocgame,pociface,threads,zip -thread -linkpkg

include $(OCAMLMAKEFILE)