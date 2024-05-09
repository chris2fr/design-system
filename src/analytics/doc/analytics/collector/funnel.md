## class Funnel

L’instance de Funnel est accessible depuis

`window.sifacile.analytics.funnel`

### CONFIGURATION

```javascript
<script>
    window.sifacile = {
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

`window.sifacile.analytics.funnel.id`

Identifiant du parcours / formulaire multi-étape

* * *

##### type

_String_ (EA: funnel\_type)

`window.sifacile.analytics.funnel.type`

Type de parcours / formulaire

* * *

##### name

_String_ (EA: funnel\_name)

`window.sifacile.analytics.funnel.name`

Nom du parcours/formulaire si besoin de précision.

* * *

##### step

_String_ (EA: funnel\_step\_name)

`window.sifacile.analytics.funnel.step`

Nom de l'étape du parcours/formulaire.

* * *

##### current

_Int_ (EA: funnel\_step\_number)

`window.sifacile.analytics.funnel.current`

Numéro de l'étape en cours dans le parcours/formulaire.

* * *

##### total

_Int_ (EA: funnel\_step\_max)

`window.sifacile.analytics.funnel.total`

Nombre d’étapes maximum dans le parcours/formulaire.

* * *

##### objective

_String_ (EA: funnel\_objective)

`window.sifacile.analytics.funnel.objective`

Objectif du parcours/formulaire.

* * *

##### error

_String_ (EA: funnel\_error)

`window.sifacile.analytics.funnel.error`

Type d’erreur d’un parcours/formulaire.

* * *

### MÉTHODES

##### reset (clear = false)

`window.sifacile.analytics.funnel.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *
