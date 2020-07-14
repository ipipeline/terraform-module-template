# Getting Started

## About GitHub Actions
GitHub Actions enable the automation and execution of software development workflows within a GitHub repository. To view the GitHub Actions configured for this repository, please see the [Quality of Code](module-maintainer-guidelines.md#quality-of-code) guideline.

## Configuring Workflow Actions
Terraform GitHub Actions only support running in a single working directory at a time. The working directory is set using the `tf_working_dir` input. By default, the working directory is set to `.` which refers to the root of the GitHub repository.

```yml
name: 'Terraform GitHub Actions'
on:
  pull_request:
    branches:
      - master
    paths-ignore:
      - '.github/**'
env:
  tf_working_dir: '.'
  tf_version: 'latest'
```

If the Terraform code for this module will live in the root of this repository, there are no further steps required to configure GitHub Actions.

GitHub Action YML files can be found at:
```
.github/workflows/checkov.yml
.github/workflows/terraform_docs.yml
.github/workflows/terraform_github_actions.yml
```

### Single Terraform Working Directory
If you need to run the Terraform GitHub Actions in a single, non-root directory, you will need to set the `tf_working_dir` input to the Terraform code directory. 

**Note**: This will need to be done in all of the YML Action files located in the `.github/workflows` directory. 

**Example**: If the Terraform code can be found under `example/terraform/directory`, the updated `tf_working_dir` input for the `terraform_github_actions.yml` Action would look similar to this

```yml
name: 'Terraform GitHub Actions'
on:
  pull_request:
    branches:
      - master
    paths-ignore:
      - '.github/**'
env:
  tf_working_dir: 'example/terraform/directory'
  tf_version: 'latest'
```

### Multiple Terraform Working Directories
If you need to run the Terraform GitHub Actions in multiple directories, you have to create separate jobs for each working directory and replace the `tf_working_dir` input with the path to the working directory per job.

**Note**: This will need to be done in all of the YML Action files located in the `.github/workflows` directory.

**Example**: If the Terraform code can be found under `example/terraform/directory1` and `example/terraform/diretory2`, the updated `terraform_github_actions.yml` Action would look similar to this

```yml
name: 'Terraform GitHub Actions'
on:
  pull_request:
    branches:
      - master
    paths-ignore:
      - '.github/**'
env:
  tf_version: 'latest'
jobs:
  directory1:
    name: 'Terraform GitHub Actions (directory1)'
    runs-on: ubuntu-latest
    steps:
      - name: 'Checkout'
        uses: actions/checkout@master
      - name: 'Terraform Format'
        uses: hashicorp/terraform-github-actions@master
        with:
          tf_actions_version: ${{ env.tf_version }}
          tf_actions_subcommand: 'fmt'
          tf_actions_working_dir: 'example/terraform/directory1'
          tf_actions_comment: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      - name: 'Terraform Init'
        uses: hashicorp/terraform-github-actions@master
        with:
          tf_actions_version: ${{ env.tf_version }}
          tf_actions_subcommand: 'init'
          tf_actions_working_dir: 'example/terraform/directory1'
          tf_actions_comment: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      - name: 'Terraform Validate'
        uses: hashicorp/terraform-github-actions@master
        with:
          tf_actions_version: ${{ env.tf_version }}
          tf_actions_subcommand: 'validate'
          tf_actions_working_dir: 'example/terraform/directory1'
          tf_actions_comment: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
  directory2:
    name: 'Terraform GitHub Actions (directory2)'
    runs-on: ubuntu-latest
    steps:
      - name: 'Checkout'
        uses: actions/checkout@master
      - name: 'Terraform Format'
        uses: hashicorp/terraform-github-actions@master
        with:
          tf_actions_version: ${{ env.tf_version }}
          tf_actions_subcommand: 'fmt'
          tf_actions_working_dir: 'example/terraform/directory2'
          tf_actions_comment: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      - name: 'Terraform Init'
        uses: hashicorp/terraform-github-actions@master
        with:
          tf_actions_version: ${{ env.tf_version }}
          tf_actions_subcommand: 'init'
          tf_actions_working_dir: 'example/terraform/directory2'
          tf_actions_comment: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      - name: 'Terraform Validate'
        uses: hashicorp/terraform-github-actions@master
        with:
          tf_actions_version: ${{ env.tf_version }}
          tf_actions_subcommand: 'validate'
          tf_actions_working_dir: 'example/terraform/directory2'
          tf_actions_comment: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
