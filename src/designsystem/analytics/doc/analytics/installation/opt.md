## Opt
L’instance de Opt est accessible depuis
`window.designsystem.analytics.opt`

Elle permet de gérer l’Opt-out lorsque l’utilisateur ne consent pas à la collecte de données.

Le Opt-Out complet empêche le chargement de la librairie JS eulerian ainsi que tous les appels EA_push qui pourraient être fait sur la page.

### PROPRIÉTÉS

#### isDisabled

_Boolean_

`window.designsystem.analytics.opt.isDisabled`

Retourne une valeur booléenne “true” pour un Opt-Out et “false” pour un Opt-In (par défaut).

alias de la fonction de l’API eulerian _EA_disabled()

* * *

### MÉTHODES

#### enable

`window.designsystem.analytics.opt.enable()`

Opt-in, la collecte de données est activée.

* * *

#### disable

`window.designsystem.analytics.opt.disable()`

Opt-out, la collecte de données est désactivée.

* * *

#### toggle

`window.designsystem.analytics.opt.toggle()`

Inverse le statut Opt-in / Opt-out
