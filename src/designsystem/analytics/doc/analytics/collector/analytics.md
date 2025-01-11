## class Analytics

L’instance d’Analytics est accessible depuis `window.designsystem.analytics`

### PROPRIÉTÉS

##### page

_Page_

`window.designsystem.analytics.page`

Getter qui retourne l’instance de [Page](page.md)

* * *

##### site

_Site_

`window.designsystem.analytics.site`

Getter qui retourne l’instance de [Site](site.md)

* * *

##### user

_User_

`window.designsystem.analytics.user`

Getter qui retourne l’instance de [User](user.md)

* * *


##### search

_Search_

`window.designsystem.analytics.search`

Getter qui retourne l’instance de [Search](search.md)

* * *

##### funnel :

_Funnel_

`window.designsystem.analytics.funnel`

Getter qui retourne l’instance de [Funnel](funnel.md)

* * *

##### cmp

_ConsentManagerPlatform_

`window.designsystem.analytics.cmp`

Getter qui retourne l’instance de [ConsentManagerPlatform](cmp.md)

* * *

##### opt

_Opt_

`window.designsystem.analytics.opt`

Getter qui retourne l’instance de [Opt](opt.md)

##### isReady

_Boolean_

`window.designsystem.analytics.isReady`

Getter qui retourne l'état de l'API, à savoir `true` quand elle est prête à être utilisée.

* * *

##### readiness

_Promise_

`window.designsystem.analytics.readiness`

Getter qui retourne une Promise permettant de se synchroniser sur l'API, lorsque celle-ci est prête à être utilisée.

    window.designsystem.analytics.readiness.then(() => { // start }, () => { // error } );

* * *

##### collection

_String_

`window.designsystem.analytics.collection`

Getter qui retourne le mode de récolte des données de la page. Défini dans la configuration (voir propriété `collection` de la [configuration](../installation/configuration.md#collection))

* `manual` : Les données de pages ne sont pas envoyées. Attend l’execution de la fonction `collect()`.

* `load` : Les données de page sont envoyées automatiquement au chargement de la page. (par défaut)

* `full` : Les données sont envoyées à chaque changement de path dans l’URL, permettant le support des “Single-page
  application” (par défaut si designsystem en mode ‘vue’, ‘react’ ou ‘angular’)
  
* `hash` : Les données sont envoyées à chaque changement de hash dans l'URL

* * *

##### isActionEnabled

_Boolean_

`window.designsystem.analytics.isActionEnabled`

Permet d’activer / désactiver la mesure d'audience des actions.

* Par défaut, la mesure d'audience des actions est désactivée.

Défini dans la configuration (voir propriété `isActionEnabled` de la [configuration](../installation/configuration.md))

* * *

##### isDebugging

_Boolean_

`window.designsystem.analytics.isDebugging`

Permet d’activer / désactiver le debug Eulerian.

⚠️ le debug Eulerian reste persistant sur la page par le biais du LocalStorage jusqu'à désactivation.

* * *

### MÉTHODES

##### push (type, layer)

`window.designsystem.analytics.push(type, layer)`

Alias de la fonction EA\_push d’Eulerian via le package. (voir doc Eulerian [https://eulerian.wiki/doku.php?id=fr:quickonboarding:installation:tag\_installation\_guide#types\_d\_appels](https://eulerian.wiki/doku.php?id=fr:quickonboarding:installation:tag_installation_guide#types_d_appels))

* * *

##### reset (clear = false)

`window.designsystem.analytics.reset(clear)`

Permet de remettre les données dans l'état d’origine de la configuration.

Si le paramètre `clear = true` => toutes les données sont remises en état indéfini.

* * *

###### collect {#collect}

`window.designsystem.analytics.collect()`

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
designsystem.analytics.readiness.then(() => { // l'API analytics est prête à l'utilisation
    designsystem.analytics.isDebugging = true; // active le debugging eulerian
    designsystem.analytics.reset(); // remet les données à l'état de configuration
    designsystem.analytics.user.connect('USER\_ID', 'ENCRYPTED\_EMAIL', true);
    designsystem.analytics.page.path = 'my/virtual/page';
    designsystem.analytics.page.isError = true;
    designsystem.analytics.page.template = 'page404';
    designsystem.analytics.collect(); // envoie les données
});
```
