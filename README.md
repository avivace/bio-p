# bio-p
## Input
[Qui](https://github.com/GFA-spec) viene descritto il formato di file GFA che è utilizzato per rappresentare grafi di sequenziamento.
Per questi file esiste la libreria [RGFA](https://github.com/ggonnella/RGFA).

Utilizzare questa libreria per creare un programma che riceve in ingresso due file in formato GFA e calcola se i due grafi corrispondono allo stesso grafo (perchè i vertici/archi sono presenti in ordine differente).

## Resources

- [Assembly Graph examples](https://github.com/sjackman/assembly-graph)
- [First update on GFA](http://lh3.github.io/2014/07/23/first-update-on-gfa/)

## Using
`ruby main.rb ex1.gfa ex2.gfa` Checks if `ex1.gfa` and `ex2.gfa` are the same graph, just with different sequences and links definition order in the files.