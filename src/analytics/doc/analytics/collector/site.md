## class Site

L’instance de Site est accessible depuis

window.fastoche.analytics.site

### CONFIGURATION

```javascript
<script>
    window.fastoche = {
        analytics: {
            site: {
                environment: 'production', // by default development ['development', 'stage', 'production']
                entity: 'Ministère des armées', // Entity responsible for website
                language: '', // language of the website (ISO 639-1). default to html lang
                target: 'target', // site target
                type: 'type', // site type
                region: 'fastoche-IDF', // region of the website (ISO 3166-2:FR)
                department: 'fastoche-75', // department of the website (ISO 3166-2:FR)
                version: '1.0.0', // version of the website
            },
        }
    };
</script>
```

### PROPRIÉTÉS

> **Note**
> Les noms entre parenthèses (EA: …) correspondent au nom des variables restituées dans le datalayer et envoyées à Eulerian.


##### environment

_String_ (EA: site\_environment)

`window.fastoche.analytics.site.environment`

Défini l’environnement du site parmi :

* `development` (dev) (default)

* `production` (prod)

* `stage`

Les différentes valeurs sont énumérées dans l’objet `window.fastoche.analytics.site.constructor.Environment`

* * *

##### entity

_String_ (EA: site\_entity) (required)

`window.fastoche.analytics.site.entity`

Défini l'entité responsable du site **(obligatoire)**

* * *

##### language

_String_ (EA: site\_language)

`window.fastoche.analytics.site.language`

Défini la langue du site en ISO 639-1

Par défaut, reprend l’attribut lang sur la balise `<html>` de la page

* * *

##### target

_String_ (EA: site\_target)

`window.fastoche.analytics.site.target`

Défini l'objectif du site

* * *

##### type

_String_ (EA: site\_type)

`window.fastoche.analytics.site.type`

Défini le type de site

* * *

##### region

_String_ (EA: site\_region)

`window.fastoche.analytics.site.region`

Défini la région du site (pour les sites régionaux) au format
[ISO 3166-2:FR](https://fr.wikipedia.org/wiki/ISO_3166-2:FR#R.C3.A9gions_m.C3.A9tropolitaines)

* * *

##### department

_String_ (EA: site\_department)

`window.fastoche.analytics.site.department`

Défini le département du site (pour les sites départementaux) au format
[ISO 3166-2:FR](https://fr.wikipedia.org/wiki/ISO_3166-2:FR#D.C3.A9partements_m.C3.A9tropolitains_.2896.29)

* * *

##### version

_String_ (EA: site\_version)

`window.fastoche.analytics.site.version`

Défini la version du site

* * *

##### api

_String_ (EA: api\_version)

`window.fastoche.analytics.site.api`

Retourne la version de l’API fastoche, géré et injecté automatiquement par le script

* * *

### MÉTHODES

##### reset (clear = false)

`window.fastoche.analytics.site.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *
