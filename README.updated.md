<header>

<!--
  <<< Author notes: Course header >>>
  Include a 1280Ã—640 image, course title in sentence case, and a concise description in emphasis.
  In your repository settings: enable template repository, add your 1280Ã—640 social image, auto delete head branches.
  Add your open source license, GitHub uses MIT license.
-->

# Resolve merge conflicts

_Learn why conflicts happen and how to resolve them._

</header>

<!--
  <<< Author notes: Step 1 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

## Step 1: Create a merge conflict

_Bienvenue dans le tutoriel de rÃ©solution des conflits de merge! :wave:_

Les **conflits de merge** se produisent lorsque des modifications sont apportÃ©es aux mÃªmes lignes d'un fichier par diffÃ©rentes branches. Git ne peut pas automatiquement dÃ©terminer quelle version conserver, donc il nous demande de dÃ©cider manuellement.

### :keyboard: Activity: CrÃ©er votre premiÃ¨re branche

Pour commencer, nous allons crÃ©er une situation oÃ¹ un conflit de merge peut survenir:

1. CrÃ©ez une nouvelle branche appelÃ©e `my-resume` depuis la branche principale
2. Ã‰ditez le fichier `resume.md` pour ajouter vos propres informations
3. Commitez vos changements sur la branche `my-resume`
4. CrÃ©ez une pull request vers `main`

Pendant que vous travaillez sur votre branche, nous allons aussi modifier `resume.md` sur la branche `main` pour crÃ©er un conflit intentionnellement.

---

<!--
  <<< Author notes: Step 2 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 2: Resolve a merge conflict

_Good start! Now let's look deeper at a merge conflict! :mag:_

This can be intimidating, but have no fear, Git is smart when it comes to merging! Git only needs a human to decide how to [resolve the conflict](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line). Sometimes, the best way to resolve a merge conflict is to add content that's from both branches, or even something that isn't on either! This is why Git needs a human to look at the code and make the proper fixes.

### :keyboard: Activity: Resolve a merge conflict

1. Open the pull request that you just created, we created a conflict for you. Have no fear!
1. At the bottom of the page, under "This branch has conflicts that must be resolved", click the **Resolve conflicts** button.
1. Look for the highlighted sections that begins with `<<<<<<< my-resume` and ends with `>>>>>>> main`. These markers are added by Git to show you the content that is in conflict.
1. Remove the changes made on the main branch by deleting all of the content below the `=======` and above `>>>>>>> main`.
1. Next, remove the merge conflict markers by deleting the following lines:
   ```
   <<<<<<< my-resume
   =======
   >>>>>>> main
   ```
1. With the merge conflict markers removed, click **Mark as resolved**.
1. Finally, click **Commit merge**.
1. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.

<footer>

<!--
  <<< Author notes: Footer >>>
  Add a link to get support, GitHub status page, code of conduct, license link.
-->

---

Get help: [Post in our discussion board](https://github.com/orgs/skills/discussions/categories/resolve-merge-conflicts) &bull; [Review the GitHub status page](https://www.githubstatus.com/)

&copy; 2023 GitHub &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [MIT License](https://gh.io/mit)

</footer>

