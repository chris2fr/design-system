## class Analytics

L’instance d’Analytics est accessible depuis `window.webfastoche.analytics`

### PROPRIÉTÉS

##### page

_Page_

`window.webfastoche.analytics.page`

Getter qui retourne l’instance de [Page](page.md)

* * *

##### site

_Site_

`window.webfastoche.analytics.site`

Getter qui retourne l’instance de [Site](site.md)

* * *

##### user

_User_

`window.webfastoche.analytics.user`

Getter qui retourne l’instance de [User](user.md)

* * *


##### search

_Search_

`window.webfastoche.analytics.search`

Getter qui retourne l’instance de [Search](search.md)

* * *

##### funnel :

_Funnel_

`window.webfastoche.analytics.funnel`

Getter qui retourne l’instance de [Funnel](funnel.md)

* * *

##### cmp

_ConsentManagerPlatform_

`window.webfastoche.analytics.cmp`

Getter qui retourne l’instance de [ConsentManagerPlatform](cmp.md)

* * *

##### opt

_Opt_

`window.webfastoche.analytics.opt`

Getter qui retourne l’instance de [Opt](opt.md)

##### isReady

_Boolean_

`window.webfastoche.analytics.isReady`

Getter qui retourne l'état de l'API, à savoir `true` quand elle est prête à être utilisée.

* * *

##### readiness

_Promise_

`window.webfastoche.analytics.readiness`

Getter qui retourne une Promise permettant de se synchroniser sur l'API, lorsque celle-ci est prête à être utilisée.

    window.webfastoche.analytics.readiness.then(() => { // start }, () => { // error } );

* * *

##### collection

_String_

`window.webfastoche.analytics.collection`

Getter qui retourne le mode de récolte des données de la page. Défini dans la configuration (voir propriété `collection` de la [configuration](../installation/configuration.md#collection))

* `manual` : Les données de pages ne sont pas envoyées. Attend l’execution de la fonction `collect()`.

* `load` : Les données de page sont envoyées automatiquement au chargement de la page. (par défaut)

* `full` : Les données sont envoyées à chaque changement de path dans l’URL, permettant le support des “Single-page
  application” (par défaut si webfastoche en mode ‘vue’, ‘react’ ou ‘angular’)
  
* `hash` : Les données sont envoyées à chaque changement de hash dans l'URL

* * *

##### isActionEnabled

_Boolean_

`window.webfastoche.analytics.isActionEnabled`

Permet d’activer / désactiver la mesure d'audience des actions.

* Par défaut, la mesure d'audience des actions est désactivée.

Défini dans la configuration (voir propriété `isActionEnabled` de la [configuration](../installation/configuration.md))

* * *

##### isDebugging

_Boolean_

`window.webfastoche.analytics.isDebugging`

Permet d’activer / désactiver le debug Eulerian.

⚠️ le debug Eulerian reste persistant sur la page par le biais du LocalStorage jusqu'à désactivation.

* * *

### MÉTHODES

##### push (type, layer)

`window.webfastoche.analytics.push(type, layer)`

Alias de la fonction EA\_push d’Eulerian via le package. (voir doc Eulerian [https://eulerian.wiki/doku.php?id=fr:quickonboarding:installation:tag\_installation\_guide#types\_d\_appels](https://eulerian.wiki/doku.php?id=fr:quickonboarding:installation:tag_installation_guide#types_d_appels))

* * *

##### reset (clear = false)

`window.webfastoche.analytics.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *

###### collect {#collect}

`window.webfastoche.analytics.collect()`

Envoie au collector le datalayer constitué par l’ensemble des données consolidées depuis :

* Page

* Site

* User

* Search

* Funnel

* * *

### USAGE

> **Note**
> Le package Analytics repose sur 2 principes de fonctionnement pour traquer les pages :
> * Par le biais de la configuration, il est possible de définir toutes les données qui seront envoyées au chargement de la page (via le mode automatique)
> * Par le biais de l’API, on peut définir toutes les données propriété par propriété pour ensuite envoyer l’ensemble grâce à la méthode **collect**


```javascript
webfastoche.analytics.readiness.then(() => { // l'API analytics est prête à l'utilisation
    webfastoche.analytics.isDebugging = true; // active le debugging eulerian
    webfastoche.analytics.reset(); // remet les données à l'état de configuration
    webfastoche.analytics.user.connect('USER\_ID', 'ENCRYPTED\_EMAIL', true);
    webfastoche.analytics.page.path = 'my/virtual/page';
    webfastoche.analytics.page.isError = true;
    webfastoche.analytics.page.template = 'page404';
    webfastoche.analytics.collect(); // envoie les données
});
```
