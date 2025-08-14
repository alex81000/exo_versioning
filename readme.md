# Exercices de versioning #

Une fois le repo clôné, on va vouloir récuperer toutes les branches.
Pour les voir : 

```
git branch -r
```

On peut changer de branche localement :

    git switch {nom de la branche}

Ou récuperer la branche distante directement

    git switch origin {nom de la branche}

**Si une branche existe en ligne elle n'existe pas pour autant localement**

il faut la *pull* depuis l'origine pour avoir accès à la branche disponible en ligne

    git pull origin {nom_de_la_branche}

