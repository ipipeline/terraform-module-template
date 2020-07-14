# Table of Contents
* [Why to fork a public module](#why-to-fork-a-public-module)
* [What to consider when forking a public module](#what-to-consider-when-forking-a-public-module)
* [How to fork a public module/repo](#how-to-fork-a-public-repo)
* [Keeping a forked module current](#keeping-a-forked-module-current)
* [Contributing to forked modules](#contributing-to-forked-modules)
* [Roles & Permissions](#roles--permissions)

# Why to fork a public module
* There are well established and widely used Terraform modules being maintained by the Terraform community that can be consumed in order to let iPipeline focus on building value in our Terraform code where we differentiate ourselves. (aka. "don't reinvent the wheel")


# What to consider when forking a public module
## HashiCorp Verified Modules
It is recommended to consume HashiCorp [Verified modules](https://www.terraform.io/docs/registry/modules/verified.html) when possible. Verified modules are actively maintained by contributors to stay up-to-date and compatible with both Terraform and their respective providers.  The blue verification badge appears next to modules that are verified.
### HashiCorp Official
* Official modules owned and maintained by HashiCorp.
### Partners
* Partner modules are owned and maintained by a technology company that has gone through the HashiCorp partner provider process and maintains a direct connection to HashiCorp.
### Licensing
* HashiCorp does not review the licensing the modules are published under. Please see the [licensing considerations](#licensing) below.

## Other Modules
### Trusted Author(s)
* Forking modules mitigates much of the risk consuming open source code as ultimately we are in control of the code we use, but it still advisable to fork repositories from reputable authors.
### Licensing
* It is important to consider licenses under which modules are distributed.  Certain licenses may impose limitations or requirements (such as requiring derivative code to be shared).  Some licenses have already been reviewed and determined acceptable, and others should be avoided.  Any module distributed under a model not listed here should not be used until it has been reviewed with iPipeline's legal team.

* Modules distributed under the following licenses **may** be utilized without review:
  * LGPL
  * MIT
  * Apache
  * BSD

* Modules distributed under the following licenses **cannot** be used:
  * GPL

### Actively Maintained
* It is important to consume open source modules that are actively maintained by the community. Using the pulse insights in GitHub over the past month is a good view into the recent activity on a module


# How to fork a public repo
* Send an email to git-admins@ipipeline.com requesting that they fork a specific public repository into the iPipeline GitHub account.
* Name of the repo should be the same as the public repo.
* List of GitHub Member usernames who should be granted the [Admin role](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization) in the repo.
* Repo Admins should configure the repo with the same branch protection as would have been created if the repo was created from the terraform-module-template repo. This will ensure iPipeline internal contributions are via branches.


# Keeping a forked module current
* It is important to still define repo owners and code contributors for forked repos. These individuals will be responsible for keeping the forked repo in sync with the upstream repo.
* It is recommended to routinely [sync](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork) the forked/master branch with upstream/master branch. This brings your fork's master branch into sync with the upstream repository, without losing your local changes.


# Contributing to forked modules 
* How to contribute to upstrem repos is defined in the upstream repo. The most [common contribution model](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/allowing-changes-to-a-pull-request-branch-created-from-a-fork) is to create a pull request from a branch in the forked repo to the upstream repo.


# Roles & Permissions
See [Roles & Permissions](/MODULE_MAINTAINER_GUIDELINES.md#roles--permissions) in the MODULE_MAINTAINER_GUIDELINES.md.
