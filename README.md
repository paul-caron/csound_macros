# Csound Macros
Score macros that can make life easier for programming music scores for csound.

## Include The Macros
Simply include the macros with a similar line of code at the top of the score file

```
#include "frequencies_macros.sco" ; includes the notes frequencies
#include "lengths_macros.sco" ; include the notes lengths
```

## Use The Macros

The macros contain definitions for musical notes and can be used in the score as such:

```
i 1 0 1 $A4. ; assuming that p4 is a frequency parameter for instrument 1, then it will play A4 (440Hz)
i 1 1 $Quarter. 440 ; p3 being the length of the note with default of 60bpm.
```
