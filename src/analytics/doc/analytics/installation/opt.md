## Opt
L’instance de Opt est accessible depuis
`window.design-system.analytics.opt`

Elle permet de gérer l’Opt-out lorsque l’utilisateur ne consent pas à la collecte de données.

Le Opt-Out complet empêche le chargement de la librairie JS eulerian ainsi que tous les appels EA_push qui pourraient être fait sur la page.

### PROPRIÉTÉS

#### isDisabled

_Boolean_

`window.design-system.analytics.opt.isDisabled`

Retourne une valeur booléenne “true” pour un Opt-Out et “false” pour un Opt-In (par défaut).

alias de la fonction de l’API eulerian _EA_disabled()

* * *

### MÉTHODES

#### enable

`window.design-system.analytics.opt.enable()`

Opt-in, la collecte de données est activée.

* * *

#### disable

`window.design-system.analytics.opt.disable()`

Opt-out, la collecte de données est désactivée.

* * *

#### toggle

`window.design-system.analytics.opt.toggle()`

Inverse le statut Opt-in / Opt-out
