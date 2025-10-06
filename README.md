<header>

<!--
  <<< Author notes: Course header >>>
  Include a 1280×640 image, course title in sentence case, and a concise description in emphasis.
  In your repository settings: enable template repository, add your 1280×640 social image, auto delete head branches.
  Add your open source license, GitHub uses MIT license.
-->

# Resolve merge conflicts

_Learn why conflicts happen and how to resolve them._

</header>

## Step 1: Create a merge conflict

_Bienvenue dans le tutoriel de résolution des conflits de merge! :wave:_

Les **conflits de merge** se produisent lorsque des modifications sont apportées aux mêmes lignes d'un fichier par différentes branches. Git ne peut pas automatiquement déterminer quelle version conserver, donc il nous demande de décider manuellement.

### :keyboard: Activity: Créer votre première branche

Pour commencer, nous allons créer une situation où un conflit de merge peut survenir:

1. Créez une nouvelle branche appelée `my-resume` depuis la branche principale.
2. Éditez le fichier `resume.md` pour ajouter vos propres informations.
3. Commitez vos changements sur la branche `my-resume`.
4. Créez une pull request vers `main`.

Pendant que vous travaillez sur votre branche, nous allons aussi modifier `resume.md` sur la branche `main` pour créer un conflit intentionnellement.

---

## Step 2: Resolve a merge conflict

_Good start! Now let's look deeper at a merge conflict! :mag:_

This can be intimidating, but have no fear, Git is smart when it comes to merging! Git only needs a human to decide how to [resolve the conflict](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line). Sometimes, the best way to resolve a merge conflict is to add content that's from both branches, or even something that isn't on either! This is why Git needs a human to look at the code and make the proper fixes.

### :keyboard: Activity: Resolve a merge conflict

1. Open the pull request that you just created; we created a conflict for you. Have no fear!
2. At the bottom of the page, under "This branch has conflicts that must be resolved", click the **Resolve conflicts** button.
3. Look for the highlighted sections that begin with conflict markers.
4. Remove the changes made on the main branch that you do not want to keep.
5. Remove all conflict markers (`<<<<<<< my-resume`, `=======`, `>>>>>>> main`).
6. Click **Mark as resolved**.
7. Click **Commit merge**.
8. Wait a few seconds and refresh. [GitHub Actions](https://docs.github.com/en/actions) will automatically progress to the next step.

---

## Step 3: Create your own conflict

_Good job! You've solved a merge conflict! :tada:_

Resolving a conflict doesn't automatically merge the pull request in GitHub. Instead, it stores the resolution of the conflict in a merge commit and allows you and your team to keep working. To resolve a conflict, GitHub performs what is known as a _reverse merge_. This means that the changes from the `main` branch were merged into your `my-resume` branch. With a reverse merge, only the `my-resume` branch is updated. This allows you to test the resolved changes on your branch before you merge it into `main`.

Now, let's get a little evil. (It's for educational purposes!)

### :keyboard: Activity: Create your own conflict

We went ahead and added a new file called `references.md` and pushed that change to `main`, without updating your `my-resume` branch.

1. Browse to the `my-resume` branch.
2. Click the `Add file` dropdown menu and then on `Create new file`.
3. Create a file named `references.md`.
4. Enter some text that conflicts with what we added for `references.md` in the `main` branch.
5. Scroll to the bottom of the page and enter a commit message for your change.
6. Click the **Commit new file** button, making sure the "Commit directly to the `my-resume` branch" option is selected.
7. Wait about 20 seconds then refresh this page. [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.

---

### Types de conflits courants

1. **Conflits de contenu** - Modifications sur les mêmes lignes.
2. **Conflits de suppression/modification** - Un côté supprime, l'autre modifie.
3. **Conflits de renommage** - Fichiers renommés différemment.
4. **Conflits binaires** - Images ou autres fichiers non-texte.

### Bonnes pratiques pour éviter les conflits

- **Communication d'équipe**: Coordonnez-vous avant de modifier les mêmes fichiers.
- **Commits fréquents**: Faites des commits plus petits et plus fréquents.
- **Branches courtes**: Gardez vos branches à jour avec `main`.
- **Revue de code**: Utilisez les pull requests pour revue collaborative.

---

## Step 4: Finalisation et résumé

_Excellent travail! Vous maîtrisez maintenant la résolution de conflits de merge! :sparkles:_

### Ce que vous avez appris

✅ Comment identifier les marqueurs de conflit Git  
✅ Résoudre des conflits dans l'interface GitHub  
✅ Comprendre les différents types de conflits  
✅ Appliquer les bonnes pratiques pour minimiser les conflits  

### Prochaines étapes

- Pratiquez sur vos propres projets
- Explorez les outils de merge avancés (VS Code, GitKraken, etc.)
- Apprenez les commandes Git en ligne de commande pour la résolution de conflits
- Découvrez les workflows Git collaboratifs (GitFlow, GitHub Flow)

### Ressources additionnelles

- [Documentation officielle Git sur les conflits](https://git-scm.com/docs/git-merge#_how_conflicts_are_presented)
- [Guide GitHub sur la collaboration](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests)
- [Stratégies de résolution de conflits avancées](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts)

<footer>

---

Get help: [Post in our discussion board](https://github.com/orgs/skills/discussions/categories/resolve-merge-conflicts) &bull; [Review the GitHub status page](https://www.githubstatus.com/)

&copy; 2023 GitHub &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [MIT License](https://gh.io/mit)

</footer>
