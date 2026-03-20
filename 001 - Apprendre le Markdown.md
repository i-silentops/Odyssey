## Introduction

![Logo Markdown en blanc sur fond bleu](/Ressources/001-01.jpg)

Markdown est un langage de balisage léger créé par [John Gruber](https://fr.wikipedia.org/wiki/John_Gruber) et [Aaron Swartz](https://fr.wikipedia.org/wiki/Aaron_Swartz) en 2004.  
Son but est d'offrir une syntaxe **facile à lire et à écrire**. Un document formaté selon Markdown devrait pouvoir être publié comme tel, en texte, sans donner l’impression qu’il a été marqué par des balises ou des instructions de formatage.

Un document rédigé en Markdown **peut être converti facilement en HTML**. On obtient ainsi un document qui peut comporter des liens, des listes, des images, du formatage de texte (gras, italique), une hiérarchie de titres (h1, h2,...h6), et même des blocs de code avec une coloration de la syntaxe.

Son extension est le `.md`. Tu peux t’en servir à de nombreuses occasions, notamment pour rédiger de la documentation. Par exemple, lorsque tu arrives sur un dépôt sur Github, le texte que tu vois en premier correspond au contenu du fichier README.md rédigé en Markdown. C’est pour cette raison que Github t’incite à en renseigner un lors de la création d’un dépôt.

Autre exemple, le contenu de cette quête a été rédigé par l’un de tes formateurs en Markdown!  
Odyssey, parcourt le *code* markdown enregistré pour le convertir en [HTML](https://developer.mozilla.org/fr/docs/Web/HTML).  
Les feuilles de style [CSS](https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/CSS_basics) et ton navigateur finisse de faire le travail pour afficher cette quête de façon plus élégante.  
L’avantage, c’est qu’à partir d’une syntaxe simple et standardisée, facile à rédiger, il est possible d’en ressortir un contenu mis en forme de manière homogène sur les différentes pages, parfaitement intégré à la plateforme.

Voici cette introduction en Markdown, telle que son auteur l'a écrite:

```markdown
1 # Introduction
2
3 ![Logo Markdown en blanc sur fond bleu](https://www.markdownguide.org/assets/images/markdown-guide-og.jpg)
4
5 Markdown est un langage de balisage léger créé par [John Gruber](https://fr.wikipedia.org/wiki/John_Gruber) et [Aaron Swartz](https://fr.wikipedia.org/wiki/Aaron_Swartz) en 2004.
6 Son but est d'offrir une syntaxe **facile à lire et à écrire**. Un document formaté selon Markdown devrait pouvoir être publié comme tel, en texte, sans donner l’impression qu’il a été marqué par des balises ou des instructions de formatage.
7 
8 Un document rédigé en Markdown **peut être converti facilement en HTML**. On obtient ainsi un document qui peut comporter des liens, des listes, des images, du formatage de texte (gras, italique), une hiérarchie de titres (h1, h2,...h6), et même des blocs de code avec une coloration de la syntaxe.
9
10 Son extension est le \`.md\`. Tu peux t’en servir à de nombreuses occasions, notamment pour rédiger de la documentation. Par exemple, lorsque tu arrives sur un dépôt sur Github, le texte que tu vois en premier correspond au contenu du fichier README.md rédigé en Markdown. C’est pour cette raison que Github t’incite à en renseigner un lors de la création d’un dépôt.
11
12 Autre exemple, le contenu de cette quête a été rédigé par l’un de tes formateurs en Markdown !
13 Odyssey, parcourt le *code* markdown enregistré pour le convertir en [HTML](https://developer.mozilla.org/fr/docs/Web/HTML).
14 Les feuilles de style [CSS](https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/CSS_basics) et ton navigateur finisse de faire le travail pour afficher cette quête de façon plus élégante.
15 L’avantage, c’est qu’à partir d’une syntaxe simple et standardisée, facile à rédiger, il est possible d’en ressortir un contenu mis en forme de manière homogène sur les différentes pages, parfaitement intégré à la plateforme.
16 
17 Voici cette introduction en Markdown, telle que son auteur l'a écrite :
```

Il est possible d'écrire en Markdown sur de nombreux sites web:

- [GitHub](https://github.com/): le README, les commentaires (de Pull Request par exemple), les Issues, les gists, etc.
- [StackOverflow](https://stakoverflow.com/): dans les questions / réponses
- [Discourse](https://www.discourse.org/): dans les discussions
- [Ghost](https://ghost.org/) pour écrire des articles de blog
- et bien d'autres...

#### Objectifs

- Comprendre l'utilité de Markdown
- Structurer un texte grâce à la syntaxe Markdown

### Découvrir la syntaxe

**Learn Markdown**  
Remets-en une couche avec cette introduction à la syntaxe.  
https://gitbookio.gitbooks.io/markdown/content/  


**Dillinger**  
Un éditeur de texte qui génère une prévisualisation du Markdown en HTML. Un bon moyen de s'amuser et d'expérimenter avec la syntaxe.  
https://dillinger.io/  

**Markdown tutorial**  
https://markdowntutorial.com/  


### Les références

Une liste de liens à garder sous le coude et à consulter en cas de doute.  
  
**Markdown Cheatsheet**  
Une antisèche sur la syntaxe Markdown.  
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet  
  
**Github Flavored markdown**  
Le guide officiel d'introduction au Markdown rédigé par Github. Avec quelques spécificités de la version de Markdown utilisée sur Github.  
https://guides.github.com/features/mastering-markdown/  


## Challenge

### Rédiger un CV en MarkDown

À partir des ressources ci-dessus, rédige un mini CV avec les rubriques suivantes:

```shell
* Présentation
* Formation
* Expérience professionnelle
* Hobbies
```

Prépare bien ce mini CV, il peut te servir de premier jet pour la rédaction de ton futur CV, beaucoup plus travaillé, que tu enverras aux entreprises lors de ta prochaine recherche de stage.

### Critères de validation

- Ton CV est disponible sur github,
- Le CV contient a minima:

les rubriques demandées:

Présentation;Formation;Expérience professionnelle;Hobbies;des liens vers des URLs extérieures,une photo de profil (hébergée sur Github, ou non),du texte en gras (nom d’entreprises ou d’écoles),du texte en italique (description des postes en expériences professionnelles).
