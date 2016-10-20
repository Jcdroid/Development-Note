# git reset, git checkout, git revert 区别 (译)

题记：团队中大多数成员使用 sourceTree 和 github 两款 git 工具，然而大家对于图形化工具提供的 reset,checkout,revert 功能点并不是很了解，甚至于混淆,然后凭借猜测去使用。功夫不负有心人，在尝试过多次冲突处理或分支开发的坑后，终于形成了自己的一套使用方式，可喜可贺。然而问题的解决方案的并不是效率最高的，内部的执行过程我们也不清楚，这对于一个自律的程序艺术家是无法接受的。基于这个问题，翻译这篇博客，为 git 中高级用户的 undo 操作提供参考。鼓励在熟悉命令行操作再通过图形化工具提高开发效率。水平有限，释疑为主，翻译为辅

Reset Checkout and Revert



原文地址：https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting

git reset, git checkout, git revert 命令是最有用的三条 git 命令。他们可以帮助你撤销 repo 的一些操作，并且前两条命令既可以用于 commit 级别，也可以用于 file 级别。

因为他们很相似，所以很容易混淆。这片文章，我们将比较他们的相同和不同之处。

阅读本文前需要了解 git repo 的三大 components，分别是 working directory(代码仓库) staged snapshot(快照:add的缓存库) commit history(commit历史) ，这将更好的帮助你理解这三条命令。

请输入图片描述

commit 级别的操作

传递给 git reset 和 git checkout的参数会决定命令的作用范围。当命令并不包括含一个文件路径时，命令作用于整个 commit。

Reset:

在 commit 级别上，git reset 命令移动 HEAD 到当前分支的一个 commit， 这可以用来撤销当前分支的一些 commit 。

例如，下面的命令会让 ｀hotfix｀ 分支回退两个 commits

git checkout hotfix
git reset HEAD~2

先前在 HEAD 之前的两次 commit 现在处在 HEAD 之后，这意味着他们在下一次 git 提交时被作为垃圾删掉，换句话说这两次提交会被抛弃。如下图所示：

请输入图片描述

git reset用于撤销未被提交到远端的改动。除了可以移动当前分支的HEAD，你可以通过不同的标记选择修改 staged snapshot 或者 working directory

--soft： staged snapshot 和 working directory 都未被改变 (建议在命令行执行后，再输入 git status 查看状态)

--mixed： staged snapshot 被更新， working directory 未被更改。【这是默认选项】（建议同上)

--hard： staged snapshot 和 working directory 都将回退。

--hard 很危险，它会直接回退你之前所有的修改，使用前，可以事先保存 commit id.

请输入图片描述

【这些标记经常和HEAD一起使用。例如，git reset --mixed HEAD可撤销所有缓存改动，但是保留他们在工作目录下。git reset --hard HEAD可彻底删除没有提交的改动。】

checkout

到现在为止，你应该已经熟悉 commit 级别的 git checkout 了。当你传送一个 branch name 名字时,你将更换当前的分支.

git checkout hotfix

上面的命令会切换 HEAD 到不同的分支，并且更新当前的 working directory 去匹配。因为会覆盖当前的本地更改，所以更换分支前git强制你彻底放弃或者提交存储当前的更改。不同于 git reset, git checkout 不会废弃任何分支或提交。

请输入图片描述

你也可以 checkout 到任何一次 commit，通过提供 commit Id 作为参数.

比如下面的命令。

git checkout HEAD~2/[commit id]

请输入图片描述

这对于 review repo 的某个 version 的代码很有用。然而，如果再次添加新的提交就无法返回原先的状态。因此，你应该在修改前总是创建一个新的分支。

Revert

git revert 命令通过创建一次新的 commit 来撤销一次 commit 所做出的修改。这种撤销的方式是安全的，因为它并不修改 commitm history, 比如下边的命令将会查出倒数第二次（即当前commit的往前一次）提交的修改，并创建一个新的提交，用于撤销当前提交的上一次 commit。

git checkout hotfix
git revert HEAD~2

如下图所示：

请输入图片描述

File 级别的操作

git reset 和 git checkout 命令同样可以接受一个可选的文件路径作为参数,这样可以将操作限制在一个单独的文件中。

Reset:

当调用一个文件路径时，git reset 命令会更新 staged snapshot 去匹配某次 commit。 下面的命令将会使文件回退一个 commit。

git reset HEAD~1 ［文件］（不建议使用）
请输入图片描述

【--soft、--mixed、--hard标记此时不起作用，会更新staged snapshot，但不更新working directory】

Checkout

git checkout 命令 和 git reset 类似，除了它会更新 working directory, 而不是 staged snapshot

如下命令将会更新 working directory 去匹配某次 commit

git checkout HEAD~1 [文件]
请输入图片描述

Summary:

| commands | scope | common user cases |
|---------- | -------- | ------------------|
| git reset | Commit | Discard commits in a private branch or throw away uncommited changes |
| git reset | File | Unstage a file |
| git checkot | Commit | switch between branches or inspect old snapshot |
| git checkout | File | Discard changes in the working directory |
| git revert | commit | Undo commits in a public branch |
| git revert | File | 不支持 |