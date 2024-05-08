## class Funnel

L’instance de Funnel est accessible depuis

`window.dsfacile.analytics.funnel`

### CONFIGURATION

```javascript
<script>
    window.dsfacile = {
        analytics: {
            funnel: {
                id: 'id',
                type: 'type',
                name: 'name',
                step: 'step', // step name
                current: 2, // step number
                total: 7, // total number of steps
                objective: 'objective', // form objective
                error: 'email' // form's error type
            }
        }
    };
</script>
```

### PROPRIÉTÉS

> **Note**
> Les noms entre parenthèses (EA: …) correspondent au nom des variables restituées dans le datalayer et envoyées à Eulerian.


##### id

_String_ (EA: funnel\_id)

`window.dsfacile.analytics.funnel.id`

Identifiant du parcours / formulaire multi-étape

* * *

##### type

_String_ (EA: funnel\_type)

`window.dsfacile.analytics.funnel.type`

Type de parcours / formulaire

* * *

##### name

_String_ (EA: funnel\_name)

`window.dsfacile.analytics.funnel.name`

Nom du parcours/formulaire si besoin de précision.

* * *

##### step

_String_ (EA: funnel\_step\_name)

`window.dsfacile.analytics.funnel.step`

Nom de l'étape du parcours/formulaire.

* * *

##### current

_Int_ (EA: funnel\_step\_number)

`window.dsfacile.analytics.funnel.current`

Numéro de l'étape en cours dans le parcours/formulaire.

* * *

##### total

_Int_ (EA: funnel\_step\_max)

`window.dsfacile.analytics.funnel.total`

Nombre d’étapes maximum dans le parcours/formulaire.

* * *

##### objective

_String_ (EA: funnel\_objective)

`window.dsfacile.analytics.funnel.objective`

Objectif du parcours/formulaire.

* * *

##### error

_String_ (EA: funnel\_error)

`window.dsfacile.analytics.funnel.error`

Type d’erreur d’un parcours/formulaire.

* * *

### MÉTHODES

##### reset (clear = false)

`window.dsfacile.analytics.funnel.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *
