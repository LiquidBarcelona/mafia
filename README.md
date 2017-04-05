# Web Code Test #

L'FBI porta capturant membres de la mafia siciliana desde 1985. Basat
en prèvies investigacions sabem con funciona la mafia quan succeix un
d'aquests esdeveniments.

Quan un membre de la mafia és empresonat, temporalment desapareix de
l'organització i tots els seus subordinats son inmediatament reubicats
i passen a treballar per al capo que porta més temps a l'organització
i que està al mateix nivell que a l'anterior membre.

## Es demana: ##

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


# NOTES:#

- El projecte està configurat per respondre a la url http://localhost/mafia
Si es desitja canviar d'ubicació, s'haurán de modificar els links de les vistes.
El projecte está pensat per funcionar amb apache i ha de tenir activada la extensió mod_rewrite

- El dump de la base de dades MySQL és a utils/dump.sql

- A config/config.php s'han de setejar les credencials de la base de dades.

- S'ha utilitzat el gestor de dependències composer (https://getcomposer.org/), per tant
 un cop descarregat el codi s'haurà d'inicialitzar el projecte fent un composer update
 
- El framework PHP utilitzat és Slim. Un micro framework senzill i lleuger.
 
- Tot el codi és a index.php, i les vistes son a views 