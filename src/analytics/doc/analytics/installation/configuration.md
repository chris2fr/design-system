## Configuration {#Configuration}

Il est nécessaire de configurer le package Analytics au sein de [la configuration de l’API sifacile](https://www.systeme-de-design.gouv.fr/comment-utiliser-le-sifacile/developpeurs/api-javascript)

La configuration doit être placée **avant** les fichiers `patch.module.js`, `sifacile.module.js` et `analytics.module.js`.

```javascript
<script>
    window.sifacile = {
        analytics: {
            domain: ' mon.domainedetracking.com',
            // collection: 'manual',
            // isActionEnabled: true,
            page: {
                template: 'article'
            },
            user: {
                // ...
            },
            site: {
                entity: 'Ministère des armées', // Entity responsible for website
            }
        }
    };
</script>
```

Les résultats de la fonction collect(), montrant les informations envoyées à Eulerian, sont affichés dans la console.
En mode production, les logs n'apparaissent pas dans la console. Il est alors possible de surcharger la configuration via le paramètre dans l'url : `?production=false`