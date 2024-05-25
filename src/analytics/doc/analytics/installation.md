## Installation

#### Au sein du cefran

Pour installer le système d’analytics, il suffit d’importer le fichier javascript :
`/dist/analytics/analytics.module.js` **après** `cefran.module.js`

Fonctionnalités disponibles :
- Intégration CMP
- Optout
- Collecte de pages
- Actions dans les composants
- Actions hors composants

Le script d’Eulerian est automatiquement chargé au sein du package, attention à ne pas l’insérer dans la page afin d'éviter les doublons.

> **⚠️ Important :** 
> Pour les versions du cefran inférieures à cefran-1.9.0 (minimum 1.3.0), il est nécessaire d’ajouter le fichier : `/dist/patch/patch.module.js` **avant** `cefran.module.js`

Il est préférable d'utiliser l'api dans ses dernières versions pour profiter des optimisations et correctifs

Analytics est un package à part, il n’est pas compris dans le fichier js global du cefran. Il n'est cependant pas totalement autonome et est dépendant du core du cefran (compris dans le fichier global du cefran)

#### Version standalone

Pour installer la version standalone du système d’analytics, il suffit d’importer le fichier javascript :
`/standalone/analytics/analytics.module.standalone.js`

Fonctionnalités disponibles :
- Intégration CMP
- Optout
- Collecte de pages
- ~~Actions dans les composants~~
- ~~Actions hors composants~~

Cette version permet d’effectuer la mesure d'audience sans dépendance au cefran et peut fonctionner de manière autonome.

> **⚠️ Important :**
> La mesure des actions n'est pas disponible dans cette version

#### Pour aller plus loin

Pour le fonctionnement du package Analytics, une configuration particulière du cefran est nécessaire :
[Configuration](installation/configuration.md)

Le package Analytics doit être lié à une plateforme de consentement et l'API propose des utilitaires à cet effet : [ConsentManagementPlatform](installation/cmp.md)

Afin de respecter la possibilité pour l'utilisateur de refuser la collecte de données, l'API implémente également l'Opt-out mis à disposition par Eulerian : [Opt](installation/opt.md)
