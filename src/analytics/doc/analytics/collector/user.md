## class User

L’instance de User est accessible depuis

window.design-system.analytics.user

### CONFIGURATION

```javascript
<script>
    window.design-system = {
        analytics: {
            user: {
                connect: {
                    uid: '2446565', // user id - required when connected
                    email: 'rg6fgfdRfg445465dfFb', // encoded user email - required when connected
                    isNew: true, // user just registered
                },
                profile: 'visitor', // user profile
                language: 'fr',
                type: 'pro'
            },
        }
    };
</script>
```

### PROPRIÉTÉS

> **Note**
> Les noms entre parenthèses (EA: …) correspondent au nom des variables restituées dans le datalayer et envoyées à Eulerian.


##### uid

_String_ (EA: uid)

`window.design-system.analytics.user.uid`

getter permettant de lire la valeur de l’uid

Voir la méthode [connect](#connect)

* * *

##### email

_String_ (EA: email)

`window.design-system.analytics.user.email`

getter permettant de lire la valeur de l’email

Voir la méthode [connect](#connect)

* * *

##### isNew

_Boolean_ (EA: newcustomer)

`window.design-system.analytics.user.isNew`

getter permettant de savoir s’il s’agit d’un nouvel utilisateur

Voir la méthode [connect](#connect)

* * *

##### status

_String_ (EA: user\_login\_status)

`window.design-system.analytics.user.status`

propriété définissant l'état de l’utilisateur entre ces différents status :

* `anonymous` (anonyme)

* `connected` (connecté)

Les différentes valeurs sont énumérées dans l’objet `window.design-system.analytics.user.constructor.Status`

Voir la méthode [connect](#connect)

* * *

##### profile

_String_ (EA: profile)

`window.design-system.analytics.user.profile`

Défini la catégorie de profil de l’utilisateur

* * *

##### language

_String_ (EA: user\_language)

`window.design-system.analytics.user.language`

Langage de l’utilisateur au format ISO 639-1.

Par défaut, langage du navigateur

* * *

##### type

_String_ (EA: user\_type)

`window.design-system.analytics.user.type`

Défini le type d’utilisateur parmi les valeurs suivantes :

* `professional` (pro)

* `individual` (part)

Les différentes valeurs sont énumérées dans l’objet `window.design-system.analytics.user.constructor.Type`

* * *

### MÉTHODES

##### reset (clear = false)

`window.design-system.analytics.user.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *

##### connect (uid, email, isNew = false)

`window.design-system.analytics.page.connect(uid, email, isNew)`

Permet de renseigner un utilisateur connecté

* `uid` : Ce paramètre doit être renseigné avec l'identifiant client de l'internaute que Eulérian utilise
comme
clé de recoupement pour consolider son historique de navigation quelque soit le device utilisé. Grâce à
l'ajout de
ce paramètre nous serons en mesure de reconstituer tous les leviers marketing activés depuis son mobile, sa
tablette et ses différents terminaux. En outre, ce paramètre nous permet de fournir des données plus fiables
pour
certaines métriques comme le visiteur unique ou la visite.Implémentation
Vous pouvez renseigner le paramètre chaque fois que l'internaute est loggé. Le uid n'a besoin d'être fourni
qu'une
fois par session mais rien ne vous empêche de le passer sur toutes les pages. (Pour rappel, vous pouvez nous
envoyer ne valeur vide).
**ATTENTION** : l'uid ne doit pas correspondre à un identifiant de session ou à un identifiant temporaire.
Il ne
peut pas être commun pour plusieurs internautes, ou différent pour le même internaute.

* `email` : Email de l'utilisateur hashé en SHA256

* `isNew` : dans le cas d'un utilisateur venant juste de s'enregistrer, passer la valeur du paramètre à true

l’action de connection change la valeur de la propriété `status` de la valeur `anonymous` à `connected`

* * *
