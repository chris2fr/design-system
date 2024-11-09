## class Analytics

L’instance d’Analytics est accessible depuis `window.design-system.analytics`

### PROPRIÉTÉS

##### page

_Page_

`window.design-system.analytics.page`

Getter qui retourne l’instance de [Page](page.md)

* * *

##### site

_Site_

`window.design-system.analytics.site`

Getter qui retourne l’instance de [Site](site.md)

* * *

##### user

_User_

`window.design-system.analytics.user`

Getter qui retourne l’instance de [User](user.md)

* * *


##### search

_Search_

`window.design-system.analytics.search`

Getter qui retourne l’instance de [Search](search.md)

* * *

##### funnel :

_Funnel_

`window.design-system.analytics.funnel`

Getter qui retourne l’instance de [Funnel](funnel.md)

* * *

##### cmp

_ConsentManagerPlatform_

`window.design-system.analytics.cmp`

Getter qui retourne l’instance de [ConsentManagerPlatform](cmp.md)

* * *

##### opt

_Opt_

`window.design-system.analytics.opt`

Getter qui retourne l’instance de [Opt](opt.md)

##### isReady

_Boolean_

`window.design-system.analytics.isReady`

Getter qui retourne l'état de l'API, à savoir `true` quand elle est prête à être utilisée.

* * *

##### readiness

_Promise_

`window.design-system.analytics.readiness`

Getter qui retourne une Promise permettant de se synchroniser sur l'API, lorsque celle-ci est prête à être utilisée.

    window.design-system.analytics.readiness.then(() => { // start }, () => { // error } );

* * *

##### collection

_String_

`window.design-system.analytics.collection`

Getter qui retourne le mode de récolte des données de la page. Défini dans la configuration (voir propriété `collection` de la [configuration](../installation/configuration.md#collection))

* `manual` : Les données de pages ne sont pas envoyées. Attend l’execution de la fonction `collect()`.

* `load` : Les données de page sont envoyées automatiquement au chargement de la page. (par défaut)

* `full` : Les données sont envoyées à chaque changement de path dans l’URL, permettant le support des “Single-page
  application” (par défaut si design-system en mode ‘vue’, ‘react’ ou ‘angular’)
  
* `hash` : Les données sont envoyées à chaque changement de hash dans l'URL

* * *

##### isActionEnabled

_Boolean_

`window.design-system.analytics.isActionEnabled`

Permet d’activer / désactiver la mesure d'audience des actions.

* Par défaut, la mesure d'audience des actions est désactivée.

Défini dans la configuration (voir propriété `isActionEnabled` de la [configuration](../installation/configuration.md))

* * *

##### isDebugging

_Boolean_

`window.design-system.analytics.isDebugging`

Permet d’activer / désactiver le debug Eulerian.

⚠️ le debug Eulerian reste persistant sur la page par le biais du LocalStorage jusqu'à désactivation.

* * *

### MÉTHODES

##### push (type, layer)

`window.design-system.analytics.push(type, layer)`

Alias de la fonction EA\_push d’Eulerian via le package. (voir doc Eulerian [https://eulerian.wiki/doku.php?id=fr:quickonboarding:installation:tag\_installation\_guide#types\_d\_appels](https://eulerian.wiki/doku.php?id=fr:quickonboarding:installation:tag_installation_guide#types_d_appels))

* * *

##### reset (clear = false)

`window.design-system.analytics.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *

###### collect {#collect}

`window.design-system.analytics.collect()`

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
design-system.analytics.readiness.then(() => { // l'API analytics est prête à l'utilisation
    design-system.analytics.isDebugging = true; // active le debugging eulerian
    design-system.analytics.reset(); // remet les données à l'état de configuration
    design-system.analytics.user.connect('USER\_ID', 'ENCRYPTED\_EMAIL', true);
    design-system.analytics.page.path = 'my/virtual/page';
    design-system.analytics.page.isError = true;
    design-system.analytics.page.template = 'page404';
    design-system.analytics.collect(); // envoie les données
});
```
