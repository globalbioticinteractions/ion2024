[![GloBI Review by Elton](../../actions/workflows/review.yml/badge.svg)](../../actions/workflows/review.yml) [![GloBI](https://api.globalbioticinteractions.org/interaction.svg?accordingTo=globi:globalbioticinteractions/ion2024&refutes=true&refutes=false)](https://globalbioticinteractions.org/?accordingTo=globi:globalbioticinteractions/ion2024)

# Methods

The author M.C. Ion shared a crayfish pathogen dataset suited for open access as an excel xlsx file [GloBI_interactions.xlsx](https://github.com/user-attachments/files/17749361/GloBI_interactions.xlsx) in https://github.com/globalbioticinteractions/globalbioticinteractions/issues/1023#issuecomment-2476396853 on 2024-11-14 (14-Nov-2024).  

This resource was tracked using [Preston](https://github.com/bio-guoda/preston), a biodiversity data tracker using:

```
preston track https://github.com/user-attachments/files/17749361/GloBI_interactions.xlsx
```

Following, the tracked xlsx file version was transformed into a tsv file using:

```bash
cat xlsx2tsv.sh | preston bash
```

The provenance logs of these tracking and processing events are stored in [data/](./data/). A copy of the data transformation script xslx2tsv.sh is shown below, as extracted using:

```bash
preston cat hash://sha256/ba230547a13ddebdea3fea15868fe593d1fd95705c375c6a27bd5c7d2691aba8
```

producing:

```bash
#!/bin/bash
#
# transforms a version of the first xslx resource found into tsv stream 
#

preston ls\
 | grep hasVersion\
 | grep xlsx\
 | head -1\
 | preston xlsx-stream\
 | mlr --ijson --otsvlite cat
```

and resulted in [ion2024-crayfish-pathogen.tsv](./ion2024-crayfish-pathogen.tsv) with content id [```hash://sha256/5db7a5efba64aec29f9bd4356e9ff1765c61858bfc33e792e21e289508dcec38```](5d/b7/5db7a5efba64aec29f9bd4356e9ff1765c61858bfc33e792e21e289508dcec38) as described in provenance log with content id [```hash://sha256/5e95f53f219f3470eecd3eafb5b74fcaa04c08142b27102fabe393399ebd887f```](data/5e/95/5e95f53f219f3470eecd3eafb5b74fcaa04c08142b27102fabe393399ebd887f).

Following, [```globi.json```](./globi.json) was created to help Global Biotic Interactions (GloBI, https://globalbioticinteractions.org) index the dataset derived from: 

Ion MC, Bloomer CC, Bărăscu TI, Oficialdegui FJ, Shoobs NF, Williams BW, Scheers K, Clavero M, Grandjean F, Collas M, Baudry T, Loughman Z, Wright JJ, Ruokonen TJ, Chucholl C, Guareschi S, Koese B, Banyai ZM, Hodson J, Hurt M, Kaldre K, Lipták B, Fetzner JW, Cancellario T, Weiperth A, Birzaks J, Trichkova T, Todorov M, Balalaikins M, Griffin B, Petko ON, Acevedo-Alonso A, D’Elía G, Śliwińska K, Alekhnovich A, Choong H, South J, Whiterod N, Zorić K, Haase P, Soto I, Brady DJ, Haubrock PJ, Torres PJ, Şadrin D, Vlach P, Kaya C, Woo Jung S, Kim J, Vermeersch XHC, Bonk M, Guiaşu R, Harlioğlu MM, Devlin J, Kurtul I, Błońska D, Boets P, Masigol H, Cabe PR, Jussila J, Vrålstad T, Beresford DV, Reid SM, Patoka J, Strand DA, Tarkan AS, Steen F, Abeel T, Harwood M, Auer S, Kelly S, Giantsis IA, Maciaszek R, Alvanou MV, Aksu Ö, Hayes DM, Kawai T, Tricarico E, Chakandinakira A, Barnett ZC, Kudor ŞG, Beda AE, Vîlcea L, Mizeranschi AE, Neagul M, Licz A, Cotoarbă AD, Petrusek A, Kouba A, Taylor CA, Pârvulescu L. 2024. World of Crayfish™: a web platform towards real-time global mapping of freshwater crayfish and their pathogens. PeerJ 12:e18229 https://doi.org/10.7717/peerj.18229
