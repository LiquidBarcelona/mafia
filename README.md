L'FBI porta capturant membres de la mafia siciliana desde 1985. Basat
en prèvies investigacions sabem con funciona la mafia quan succeix un
d'aquests esdeveniments.

Quan un membre de la mafia és empresonat, temporalment desapareix de
l'organització i tots els seus subordinats son inmediatament reubicats
i passen a treballar per al capo que porta més temps a l'organització
i que està al mateix nivell que a l'anterior membre.

Es demana:

1) Fer el procés "empresonar" desde la taula de membres. Aquest
mètode, haurà de:
- Demanar confirmació via javascript: "Segur que desitja iniciar el
procés d'enpresonament?"
- Demanar a l'usuari els anys de condemna del membre de la mafia
- Esborrar de la taula "mafia_members" el membre empresonat i
copiar-lo a la taula "mafia_jail" amb els anys de condemna assignats
  - Re-assignar els seus sobordinats

2) Fer un procés que donats dos ids de membres de la màfia ens digui
quin está més amunt a l'organització