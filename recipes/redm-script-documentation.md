# Recette — Documenter un script RedM

Cette recette sert à créer une page `docs/RedM/<slug>.md` à partir du code d'un script, dans le style des docs récentes de Jump On Studios. La recette est en français ; la documentation produite est en anglais, comme les pages existantes.

## Lancer une génération

Copier cette consigne et renseigner les chemins :

```text
Applique la recette recipes/redm-script-documentation.md pour documenter ce script RedM.

Sources du script : <chemin du dossier ou du dépôt>
Branche/version du script : <branche, tag ou version à documenter>
Nom de la ressource : <nom exact, par exemple jo_housing>
Page à créer : docs/RedM/<slug-de-la-page>.md
ScriptConfig scriptPath : redm/<slug-produit>
URL boutique : <URL si connue>
URL de vidéo intégrable : <URL si connue>
Script parent / add-ons concernés : <si applicable>

Lis le code et les commentaires de configuration, puis crée la page en anglais.
Prends les docs récentes citées dans la recette comme références de structure.
La configuration doit être affichée par ScriptConfig : ne recopie pas les
fichiers, leurs commentaires, les listes d'options ou les clés de traduction.
Documente les parcours utilisateur et l'API publique réellement disponibles.
Vérifie les signatures, les liens et le rendu. Signale les informations
manquantes dans ton compte rendu et poursuis ce qui peut être établi.
```

Les seuls éléments indispensables pour commencer sont les sources du script et la version visée. Les noms, dépendances et interfaces doivent être déduits du code quand c'est possible. Une URL commerciale absente ne doit pas bloquer la rédaction du reste.

## Références et patterns retenus

Proposition établie le 8 octobre 2026 après parcours des 28 pages de `docs/RedM` sur `main` et de `docs/RedM/boats.md` sur la branche locale `boat-doc`.

| Référence à privilégier | Ce qu'elle apporte |
| --- | --- |
| `boat-doc:docs/RedM/boats.md` | Présentation synthétique, prérequis précis, étapes utilisateur, contrôles, FAQ, contrats de hooks et snippets. Lecture sans changer de branche : `git show boat-doc:docs/RedM/boats.md`. |
| [Clothing Store](../docs/RedM/clothing-store.md) | Séparation magasins / garde-robes, commandes et adaptations par framework. |
| [Mannequin](../docs/RedM/clothing-store-mannequin.md) | Parcours vendeur / acheteur, dépendance au parent, persistance et intégrations concrètes. |
| [Premade Outfits](../docs/RedM/clothing-store-outfits.md), [Colorways](../docs/RedM/clothing-store-colorways.md), [NPC Clothes](../docs/RedM/npc-clothes.md) | Pages d'add-ons, liens vers le parent, conditions d'accès et limites fonctionnelles. |
| [Housing](../docs/RedM/housing.md) | Parcours admin / joueur, variantes de fonctionnement, galerie, FAQ et nombreux hooks. |
| [Hairdresser](../docs/RedM/hairdresser.md) et ses add-ons [Coloring](../docs/RedM/hairdresser-coloring.md), [Makeup](../docs/RedM/hairdresser-makeup.md), [NPC](../docs/RedM/hairdresser-npc.md) | Usage par menus, fonctionnalités conditionnelles, commandes et interactions entre add-ons. |

Le socle commun est : **présentation → Installation → Usage → Configuration → For developers**. FAQ, galerie, compatibilité et snippets s'ajoutent selon le script. Les titres principaux sont numérotés ; leur numérotation suit les sections effectivement présentes.

Les références donnent le style. **Le code de la version documentée fait foi pour les faits.** Ne pas reprendre automatiquement les versions minimales, touches, noms de hooks ou instructions de framework d'un autre script.

Quelques écarts existants ne sont pas à reproduire : copies de configs, inventaires de clés `Lang.*`, longs rappels sur les hooks, sections vides, numéros répétés et liens vers d'anciennes sections de configuration supprimées. La page Boats contient aussi des URL provisoires ; vérifier les liens avant de les réutiliser.

## Règle centrale : laisser la configuration à ScriptConfig

La section de configuration standard tient en ceci :

```md
## 3. Configuration

<ScriptConfig scriptPath="redm/housing" />
```

Remplacer `redm/housing` par le chemin API du produit documenté.

### Ce que fait le composant

L'implémentation se trouve dans [ScriptConfig.vue](../docs/.vitepress/theme/components/ScriptConfig.vue). Il est enregistré globalement par le [thème](../docs/.vitepress/theme/index.js) : aucun import n'est nécessaire dans une page Markdown.

Au montage de la page dans le navigateur, le composant appelle `https://jumpon-studios.com/api/scripts/config/<scriptPath>`. Il attend `success: true` et une liste `files` dont chaque entrée contient `path`, `fileName` et `content`.

Il affiche les fichiers renvoyés dans des onglets, avec leur contenu complet, leurs commentaires, la coloration Lua et un bouton de copie. Il ne lit pas le dossier local du script ni celui du dépôt de documentation.

Il choisit automatiquement les consignes affichées :

- Si un chemin contient `_default.lock`, il présente `config/_default.lock/`, `config/custom/` et les étapes de personnalisation.
- Sinon, il présente `config.lua`, `overwriteConfig.lua` et les étapes de surcharge.

Ces consignes sont déjà incluses dans le composant. Ne pas les réécrire dans la page du script. Pour un approfondissement utile, faire un lien vers les pages communes [config folder](../docs/DeveloperResources/scripts-configuration/config-folder.md), [overwriteConfig](../docs/DeveloperResources/scripts-configuration/overwrite-config.md) ou [overwriteLang](../docs/DeveloperResources/scripts-configuration/overwrite-lang.md), selon le système réellement utilisé.

### Ce qu'on écrit autour

| Situation | Traitement |
| --- | --- |
| Liste des fichiers, options, types, valeurs par défaut ou commentaires de config | Laisser `ScriptConfig` les afficher. |
| Liste des clés de traduction ou procédure générique de personnalisation | Laisser les fichiers et les pages communes l'expliquer. |
| Parcours joueur dépendant d'une option | Expliquer le comportement dans Usage ; citer la clé seulement si elle aide à comprendre la condition. |
| Interaction entre plusieurs réglages ou priorité difficile à déduire des commentaires | Ajouter une courte explication ciblée après le composant, seulement si elle apporte une information absente des configs. |
| Intégration avec un autre script, inventaire ou framework | Donner les étapes dans Installation ou un snippet dans For developers. |
| Donnée manquante côté API | Signaler le problème dans le compte rendu ; conserver le bloc prévu sans fabriquer une copie statique des configs. |

Exemple acceptable dans Usage : « Only the owner can open storage when owner-only access is enabled. » Un tableau de toutes les clés de stockage avec leurs valeurs par défaut ferait doublon.

### Vérifier le bon scriptPath

Le nom de la ressource, le nom de la page et le slug API peuvent être différents :

| Ressource | Page | `scriptPath` |
| --- | --- | --- |
| `jo_clothingstore_outfits` | `clothing-store-outfits.md` | `redm/premade-outfits` |
| `jo_clothingstore_colorways` | `clothing-store-colorways.md` | `redm/clothes-colorways` |
| `kd_stable` | `stable.md` | `redm/horse-stable` |

Vérifier la réponse API et sa correspondance avec le script. Un build réussi ne valide pas cet appel, qui se fait dans le navigateur.

Au 8 octobre 2026, les endpoints de Housing, Clothing Store et Hairdresser renvoient bien des fichiers au format attendu. `redm/boats`, utilisé dans la branche `boat-doc`, renvoie HTTP 404 : la disponibilité du composant doit être vérifiée indépendamment de la qualité du Markdown. Ces observations ne dispensent pas d'une nouvelle vérification à la génération suivante.

## Recette de rédaction

### 1. Lire et établir les faits

- Lire `fxmanifest.lua`, les éventuels README, dépendances, configurations commentées, fichiers de langue et code client / serveur / partagé de la version visée.
- Identifier les ressources à installer et leur ordre de démarrage, la version minimale de `jo_libs` si elle est définie, les items à créer et le mode d'initialisation SQL.
- Suivre les parcours : accès au script, menus, achat, prévisualisation, validation, annulation, sauvegarde, suppression et conditions de refus selon les fonctionnalités présentes.
- Recenser commandes, exports, événements publics, actions et filtres ; vérifier leurs appels et leurs arguments dans le code, pas uniquement leur déclaration.
- Distinguer les fonctionnalités incluses, celles fournies par un add-on et celles qui demandent une intégration externe.

Pour les hooks, rechercher notamment `registerAction`, `registerFilter`, `jo.hook`, `doActions` et `applyFilters`, puis suivre les appels indirects éventuels. Pour les exports et événements, lire aussi leurs usages. Un événement réseau interne n'est pas automatiquement une API à conseiller aux intégrateurs.

### 2. Construire la page

| Section | Contenu attendu |
| --- | --- |
| Présentation | Un H1 avec une icône cohérente, le nom exact de la ressource, puis une ou deux phrases sur ce que le script permet. Pour un add-on, lien vers le parent. Onglets BUY / PREVIEW si les URL sont connues. |
| Installation | Compatibilité vérifiée, prérequis, téléchargement, dossiers à placer et bloc `cfg` avec l'ordre des `ensure`. Ajouter SQL, items ou adaptations framework seulement s'ils sont nécessaires. |
| Usage | Des parcours concrets : où aller, comment ouvrir, quoi sélectionner, comment confirmer et quel résultat attendre. Mentionner les refus, différences de rôle et comportements conditionnels utiles. |
| Configuration | Le bloc `ScriptConfig`. Ajouter uniquement les explications complémentaires justifiées par la règle précédente. |
| FAQ, facultative | Problème observable → cause vérifiée → solution. Utiliser `:::details` et renvoyer vers l'Usage ou l'API plutôt que répéter des paragraphes entiers. |
| For developers, si une API publique existe | Actions, filtres, événements, exports réellement présents, puis snippets utiles. Omettre les sous-sections sans contenu. |
| Galerie / Compatibilité / Add-ons, facultatives | Uniquement si elles aident à utiliser le script. Réutiliser les composants ou snippets existants quand ils conviennent. |

Écrire Usage avec des sous-titres `###` pour quelques parcours simples, ou avec `:::: tabs` / `::: tab` pour des parcours distincts, comme dans Clothing Store, Hairdresser et Boats. Pour une procédure, préférer une liste numérotée ; pour des fonctionnalités ou choix parallèles, une liste à puces.

Les commandes et une petite table des contrôles par contexte sont utiles à l'utilisateur. Vérifier les touches dans le code, indiquer qu'elles sont les valeurs par défaut et éviter de transformer cette table en inventaire de `Config.keys`.

### 3. Documenter chaque contrat d'API

Pour chaque entrée publique :

1. Titre `####` avec le badge `Client`, `Server` ou `Shared` et le nom exact, casse comprise.
2. Une phrase sur son rôle et le moment où elle intervient : avant / après paiement, sauvegarde, validation ou ouverture, selon le code.
3. Exemple Lua minimal avec les paramètres dans l'ordre exact, leur type, les champs de table nécessaires et le retour attendu.
4. Si nécessaire, préciser les valeurs `nil` / `false`, les variantes de contexte et les limites des permissions.

Une action ne fournit pas de valeur de remplacement. Un filtre doit retourner le type attendu et un exemple de restriction doit préserver les refus déjà établis. Ne pas présenter `return true` comme un contournement universel des validations. Si une action et un filtre ont le même nom, expliquer leur ordre et leurs contrats distincts.

Regrouper les entrées par catégorie et, au sein de chaque catégorie, les classer par nom pour faciliter la recherche. Les introductions restent courtes et renvoient à `/DeveloperResources/actions`, `/DeveloperResources/filters` ou `/DeveloperResources/hooks`.

Un snippet d'intégration précise où placer le code, de quel côté il s'exécute, les dépendances et le résultat. Il doit employer une API vérifiée. Ne pas copier un fichier interne complet pour illustrer quelques lignes utiles.

### 4. Adapter les add-ons

- Lier le script parent dans la présentation et rappeler la dépendance dans Installation avec `::: warning`.
- Montrer l'add-on démarré après le parent ; renvoyer à l'installation du parent pour ses propres prérequis.
- Décrire les menus ou possibilités ajoutés, leurs conditions d'apparition et ce qui reste géré par le parent.
- Identifier la ressource qui possède chaque hook, notamment quand un hook du parent contrôle le comportement de l'add-on.
- Employer le `scriptPath` de l'add-on. S'il n'a aucune configuration, omettre cette section après vérification.
- Lier les add-ons complémentaires lorsqu'ils interviennent dans un parcours ; les présenter comme facultatifs si c'est le cas.

## Boilerplate de page

Les marqueurs `{{...}}` servent uniquement à la rédaction : les remplacer ou retirer les blocs concernés avant livraison. Les commentaires indiquent où adapter le modèle. Le squelette suppose un script utilisant `jo_libs` ; adapter Installation aux dépendances constatées. Les hooks ci-dessous sont des modèles de forme, pas une API supposée du futur script.

````md
---
outline: [2,4]
---

# {{ICON}} {{DISPLAY_NAME}}

Documentation related to the `{{RESOURCE_NAME}}` script.

{{ONE_OR_TWO_SENTENCES_ABOUT_THE_SCRIPT}}

<!-- Keep only tabs with verified URLs. -->
:::: tabs
::: tab BUY
[Buy the script]({{SHOP_URL}})
:::

::: tab PREVIEW
<iframe width="560" height="315" src="{{PREVIEW_EMBED_URL}}" title="RedM - {{DISPLAY_NAME}}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

{{VERIFIED_COMPATIBILITY_AND_REQUIRED_DEPENDENCIES}}

To install `{{RESOURCE_NAME}}`:

1. Download the latest required [`jo_libs`](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) release.
2. Unzip it and place the `jo_libs` folder in your resources folder.
3. Download `{{RESOURCE_NAME}}` from your [account](https://jumpon-studios.com/account).
4. Unzip it and place the resource folder in your resources folder.
5. Start the resources in this order in your `server.cfg`:

```cfg
ensure jo_libs
ensure {{RESOURCE_NAME}}
```

<!-- Add verified SQL / inventory / framework steps when required. -->

## 2. Usage

{{HOW_PLAYERS_ACCESS_THE_SCRIPT}}

### {{FIRST_USER_TASK}}

1. {{WHERE_TO_GO_OR_WHAT_TO_OPEN}}
2. {{WHAT_TO_SELECT_OR_DO}}
3. {{HOW_TO_CONFIRM}}

{{RESULT_AND_RELEVANT_CONDITIONS}}

### {{SECOND_USER_TASK}}

{{STEPS_AND_RESULT}}

## 3. Configuration

<ScriptConfig scriptPath="redm/{{PRODUCT_SLUG}}" />

<!-- Add only explanations not already provided by the config comments. -->

## 4. For developers

<!-- Remove this section if the script has no public API.
     Keep only API categories that actually exist. -->

### Actions

[Actions](/DeveloperResources/actions) run at specific points in the script. Their callbacks do not return a replacement value.

#### <Badge type="server" text="Server" /> {{ACTION_NAME}}

{{EXACT_TRIGGER_AND_OPERATION_ORDER}}

```lua
-- @param {{PARAMETER}} - {{TYPE_AND_MEANING}}
exports["{{RESOURCE_NAME}}"]:registerAction("{{ACTION_NAME}}", function({{PARAMETER}})
    -- Your code here
end)
```

### Filters

[Filters](/DeveloperResources/filters) synchronously control permissions or replace values. Return the value expected by each filter.

#### <Badge type="server" text="Server" /> {{FILTER_NAME}}

{{EXACT_PURPOSE_AND_CALL_CONTEXT}}

```lua
-- @param {{VALUE}} - {{TYPE_AND_MEANING}}
-- @return {{EXPECTED_TYPE_AND_MEANING}}
exports["{{RESOURCE_NAME}}"]:registerFilter("{{FILTER_NAME}}", function({{VALUE}})
    return {{VALUE}}
end)
```
````

Ajouter une FAQ avant For developers si elle est utile, puis renuméroter. Les événements, exports et snippets suivent le même niveau `###` dans For developers ; chaque entrée utilise `####`. Une galerie peut précéder Configuration, comme dans Housing.

Pour un add-on, remplacer la présentation par une phrase de ce type et adapter les étapes d'installation :

````md
Documentation related to the `{{ADDON_RESOURCE}}` add-on for the [{{PARENT_NAME}}]({{PARENT_PAGE}}) script.

## 1. Installation

::: warning
The [{{PARENT_NAME}}]({{PARENT_PAGE}}) script is required to use this add-on.
:::

Place `{{ADDON_RESOURCE}}` in your resources folder and start it after the parent:

```cfg
ensure {{PARENT_RESOURCE}}
ensure {{ADDON_RESOURCE}}
```

````

## Vérification et livraison

- [ ] Les noms, dépendances, contrôles, comportements et signatures correspondent à la version du script lue.
- [ ] Tous les points d'extension publics identifiés sont documentés ; les événements internes ne sont pas exposés comme une API sans justification.
- [ ] Configuration contient `ScriptConfig` et aucune copie ou liste d'options déjà expliquées dans les fichiers.
- [ ] Le `scriptPath` renvoie des fichiers du bon produit ; les onglets, commentaires et contenus s'affichent dans le navigateur.
- [ ] Les URL boutique / vidéo, liens internes, ancres et éventuels `<!--@include: ...-->` sont valides. Aucun marqueur `{{...}}` ne reste dans la page livrée.
- [ ] Les blocs `tabs`, `details`, `code-group` et les fences sont fermés. Titres et numérotation sont cohérents.
- [ ] Les catégories d'API absentes et les sections sans contenu sont retirées.
- [ ] Pour une nouvelle page destinée au site, ajouter l'entrée RedM dans [config.mjs](../docs/.vitepress/config.mjs), sous le parent pour un add-on : cette navigation est déclarée explicitement.
- [ ] Exécuter `npm run docs:build` après création de la page et modification de la navigation, puis inspecter la page avec `npm run docs:dev`. Un appel API en erreur reste un point à résoudre même si le build passe.

Livrer la page et les modifications de navigation nécessaires, avec un bref compte rendu des vérifications et des informations qui restent à obtenir. En présence d'une source absente, d'une API indisponible ou d'un lien inconnu, identifier précisément le point restant sans inventer son contenu.
