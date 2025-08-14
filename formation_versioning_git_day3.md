
# Jour 3 – Outils avancés et workflows d’équipe

## Table des matières générale des trois jours (rappel)

| Jour | Contenu | Durée |
|------|---------|-------|
| **Jour 1** | Introduction au versionning : Installation de Git, création d’un dépôt local, premiers commits, historique, dépôt distant, synchronisation. | 7 h |
| **Jour 2** | Branches, fusions et collaboration : Branches locales/distantes, fusions, conflits, tags, mini-projet collaboratif. | 7 h |
| **Jour 3** | Outils avancés et workflows d’équipe : Hooks, CI/CD, pull requests, sous-modules, projet final, quiz. | 7 h |

---

## Séquence 3.1 (1h) – Les Git Hooks

### Objectifs pédagogiques
- Comprendre ce qu’est un hook dans Git.
- Être capable de créer un pre-commit hook simple.
- Identifier les cas d’usage professionnels des hooks.

### Qu’est-ce que c’est ?
Un *hook* est un script déclenché automatiquement à un moment précis du cycle Git : avant un commit (pre-commit), après une fusion (post-merge), etc.

### À quoi ça sert ?
À automatiser des tâches comme les tests, la vérification de code, ou empêcher des erreurs de commit.

### Comment on fait ?
- Créer un fichier `pre-commit` dans le dossier `.git/hooks/`.
- Le rendre exécutable : `chmod +x .git/hooks/pre-commit`.
- Écrire un script de vérification de syntaxe ou blocage de mots interdits.

### Exemple
```bash
#!/bin/bash
if grep -q "console.log" *.js; then
  echo "❌ Console.log détecté !"
  exit 1
fi
```

### Exercice
Créer un hook `pre-commit` qui empêche le commit si le mot "FIXME" est présent dans un fichier `.txt`.

---

## Séquence 3.2 (1h30) – Intégration continue (CI/CD)

### Objectifs pédagogiques
- Comprendre ce qu’est la CI/CD.
- Utiliser GitHub Actions pour automatiser des tests.
- Distinguer les étapes build/test/deploy.

### Qu’est-ce que c’est ?
La CI/CD (Intégration Continue / Déploiement Continu) est une pratique d’automatisation des tests et de la mise en production à chaque modification du code.

### À quoi ça sert ?
Assurer la qualité du code, livrer plus rapidement et éviter les régressions.

### Comment on fait ?
- Créer un fichier `.github/workflows/test.yml`
- Ajouter un job simple : `npm install` puis `npm test`

### Exercice
Créer un dépôt GitHub contenant un fichier `.js` avec un test automatisé. Créer un workflow CI avec GitHub Actions.

---

## (suite dans le fichier)
