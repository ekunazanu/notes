A distributed version control system — used for tracking versions, or snapshots, of files and folders, in a decentralized manner.

If Git is initialized in a directory, it tracks all the files in the same directory as well as all its subdirectories recursively. Files or directories specified in a `.gitignore` plaintext file will not be tracked. Multiple `.gitignore` files can be specified — each `.gitignore ` of a directory will ignore all files in the same directory level as well as all the other subdirectories recursively.

* Files are tracked by finding the changes between different versions of the files and storing them as special objects, called commits.
* In Git, all the files (or more accurately, the state of all the files) as visible on the current filesystem is called the current working tree.
* Commits can be created by adding files from the working tree to a temporary 'staging' area and then creating a snapshot of the staging area (which contains the changes between file versions) to create a commit.
* Each commit is identified by a hash (ID), and stores information such as a commit message, the name and email of the author of the commit, a timestamp, changes to files, the previous commit(s), etc.
* Two commits can point to the same parent commit, and vice versa. It becomes useful when during branching and merging branches.
* A branch or tag is a pointer to a commit, and since commits points to other (previous) commits, branches and tags represent a chain of commits. A tag generally points to a fixed commit, while branches generally point to the most recent commits, as new commits are added.
* Another pointer called the HEAD, points to a branch (or a commit ID, in the detached state). The HEAD determines the current state or versions of files in the repository (not necessarily the same as the working tree).
* Branches can be merged; there are different ways to merge branches:
	* 'Normal' merges create an extra merge commit when merging branches.
	* Fast forward merges merge by just shifting the branch pointer to the other branch. It is possibly only with a linear commit history.
	* Rebase merges changes by re-basing the commits onto the commit from the other branch.
* The directory where git is initialized — the entire set of commits, branches, tags, etc — form a git repository.
* Git repositories can be cloned. The repositories outside of the local scope are referred to as remote repositories.
* People can modify their own (clone of a) repository and then push and fetch changes from remote repositories to periodically keep the all the repositories in sync, while having their own commits and branches alongside.

## Frequently Used Commands

* `git init [directory]` — Initialize a git repository in the current directory, or in the specified directory.
	* `git init -b <branch> [directory]` to specify a branch name. Otherwise defaults to `main` or `master`.
* `git add <filenames>` — Add files to the staging area.
	* `git add -p <filename>` to (interactively) add partial chunks to the staging area.
* `git commit` — Creates a commit. The commit message has to be written in the editor that opens. All the uncommented lines are the commit message.
	* `git commit -m <commit message> [-m <Longer descriptive message>]` to write the message directly without opening an editor.
	* `git commit --amend` amends or edits the existing commit instead of creating a new one, while `git diff --amend --no-edit` also keeps the same commit message.
	* `git commit -S` can be used to sign commits with a cryptographic key.
* `git diff <object1> [object2]` — Show differences between files, branches, commits or other objects. If the second parameter is not specified, the commit or file from HEAD is generally considered.
	* `git diff --staged <object1>` shows differences between the staged area and another (HEAD) commit.
	* `git diff --compact-summary` and `git diff --stat` shows compact summaries of differences.
* `git log [object]` — Shows a chain of commits from the HEAD commit, or from a specific commit or branch, if specified. If a file or directory is specified, a log of commits that reference the specified file or directory are shown.
	* `git log --all` shows all commits from all branches.
	* `git log --graph`draws a graph alongside the commit log to make it easier to see when commits (branches) diverge and merge.
	* `git log --compact-summary` shows compact summaries alongside the commit log.
* `git show [commit]` — Shows information about a specific commit, or the HEAD commit if not specified.
* `git restore <filenames>` — Restores the files of working tree to the state from the existing (HEAD pointing) commit.
	* `git restore --staged <filenames>` restores the files of working tree to the state from the staged area.
	* `git restore -p <filenames>` restores the files in partially in patches, similar to `git add -p <filenames>`.
* `git branch [branch]` — Lists the current and other local branches. If a non-existing branch is specific as a parameter, a new branch (a new pointer) is created pointing to the HEAD commit.
	* `git branch -m <branch> [branch]` renames the current (HEAD pointing) branch to the new non-existing branch specified in the parameter. If a second parameter is specified, it renames the branch in the first parameter to the name in the second parameter.
	* `git branch -d <branch>` deletes a branch. Branches can only be deleted if they do not leave behind orphaned commits — eg. they can be deleted only after merging. `git branch -D <branch>` force deletes a branch. To delete a remote branch `git push origin -d branch` can be used.
	* `git branch -a` lists remote-tracking branches as well.
* `git switch <branch>` —  Moves the HEAD to a commit pointed by the specified branch.
	* `git switch --detach <commit>` moves the HEAD to any commit which is not necessarily pointed to by any branch.
* `git merge <branch>` — Merges the commits of a branch to the current (HEAD pointing) branch,  and creates a merge commit. Files edited on both branches can have merge conflicts, and need to be resolved manually — by editing the files and keeping only what is required in the final version. The merge conflict can be resolved by creating a merge commit `git commit -m <message>`.
	* `git merge --ff` performs a fast-forward merge. The branch pointer is moved forward to the other branch, and no extra merge commit is created.
* `git cherry-pick <commit>` —  Copies the content of the specified commit (that does not already exist in the current branch) into the current (HEAD pointing) branch.
* `git rebase <commit>` — Re-base the current (HEAD pointing) branch onto the specified commit or branch.
	* `git rebase -i <commit>` can be used to open an editor to interactively squash commits (replace `pick` with `squash`).
* `git remote` — Shows the aliases for saved remote repositories.
	* `git remote -v` shows the aliases along with the URL of the remote repositories.
	* `git remote add <alias> <url>` adds a new alias for a URL.
	* `git remote set-url <alias> <url>` edits the URL for an existing alias.
* `git fetch [remote] [branch]` — Fetched the specified remote branch to its corresponding remote tracking branch in the local repository. To sync, merge the remote tracking branch (usually named \[remote]/\[branch]) with the local branch. Might need resolving merge conflicts if there is diverging commit histories. Prefer using `fetch` and `merge` over `git pull`.
* `git push [remote] [branch]` — Pushes the specified local branch to its corresponding branch in a remote repository. Might need resolving merge conflicts if there is diverging commit histories.
* `git reflog` — Shows the reference log, which includes a log of commits, branches, deleted branches, and other miscellaneous objects.
* `git stash` — Can be used to stash the state of the current working tree.
	* `git stash pop` restores the stashed working tree. In case of multiple stashes, the most recent one is popped — like a stack, LIFO.
	* `git stash list` lists all the stashes in the stack.
* `git reset <commit>` — Moves the HEAD to a specific commit or branch.
	* `git reset --soft <commit>` only moves the HEAD.
	* `git reset --hard <commit>` moves the HEAD, as well as change the working tree to that specific commit
* `git revert <commit>` — Creates a commit that reverses the specific commit in the parameter.
* `git tag <tagname> [commit]` — Create a tag with the specified name at the HEAD commit or at the specified commit or branch. Tags can be used for [semantic versioning](https://semver.org/).
	* `git tag -d <tagname>` deletes the specified tag. To delete a remote tag, `git push origin -d tagname` can be used.
	* `git tag -n` shows the commit message pointed by tags.
	* `git tag --list` lists all the tags.
	* `git log --tags` shows tags alongside the commits log.
	* `git push <remote> <tagname>` pushes the tag to the specified remote. To push all tags, `git push origin --tags` can be used.

---

## References

* Brian "Beej" Hall — [Beej's Guide to Git](https://beej.us/guide/bggit/)

---

This page is a part of [Software Engineering](Software%20Engineering/Software%20Engineering%20Overview.md).