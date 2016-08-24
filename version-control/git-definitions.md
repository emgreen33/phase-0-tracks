# Git Definitions

Instructions: Define each of the following Git concepts.

## What is version control? Why is it useful?
Version control in Git is the process of adding or changing code in files and then committing revisions. It's basically the management of changes to code. When changes are made the teams have access to a history of them, and in the unfortunate times when you need to correct mistakes you have the ability to revert files to previous states.  

As teams collaborate together on code it's common for mulitple versions of the same repository and code to be deployed and for developers to be working simultaneously on their local computers. It also allows for the team to easily track changes made and a way to revert back to earlier versions if an issue arises or if files are lost.   

## What is a branch and why would you use one?
A branch is a fork within your own repository, they diverge from the master to allow code to be worked on as multiple features at once, and can be merged with the master branch when complete. They are used when multiple developers are working simultaneously in a repository on certain parts of the code. Different companies and teams use them differently but usually they're usually are specific in their end goal, eg adding a cowboy hat to the octopus repository. Branches are used so the master branch isn't directly touched when making these changes until it is approved by team members who have checked (and double checked) changes and additions. 

## What is a commit? What makes a good commit message?
A commit creates a save point in Git after changes have been made to code, they should be made when you have reached a state you want to remember and have to fall back on. A good time to commit is when you have successfully completed a point in your code and are happy with the results.  

A good commit message is one that communicates context about the changes made to other developers (and themselves in the future looking back), and why they were made. Good commit messages allow those viewing code the ability to understand why changes were made a long time ago which is useful. A good commit message will also have good markup syntax, grammar and punctuation. 

## What is a merge conflict?
A merge conflict arises when your current branch and the branch you're trying to merge with have diverged. Basically, there have been commits in the current branch that are not present in the other branch or commits in the other branch that aren't in the current one. Git successfully merges when there are changes in only one side of the code (one branch), and merge conflicts are the result of differeces in both sides. If you (or a team member) have changed the same part of the code in two seperate branches that you try to merge, Git will relay the error message:
````$ git merge issue````
````CONFLICT (content): Merge conflict in <file-name>````
````Automatic merge failed; fix conflicts then commit the result.````
This pauses the merge process and requires the files to be resolved to fix the conflict. 

**Edit for mentioning a teachers name here**


