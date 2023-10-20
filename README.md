# nl-cod2-zom-blanco

`blanco/` scripts for nl-cod2-zom

# Generating new iwds

```sh
mynl pack
```

# Versioning and branching

**main** branch is the latest changes that we produce. Latest commit is the version running on dev server, not on the public one.

Git tags are used to mark which commit is the one that was announced as given version to players.

# Deployment

1. Any push of main branch results in automatic deployment to Dev server
2. If you want to deploy the current version to the **Public** server you can launch the defined GitHub Action

# Local deployment

1. Deploy local version to dev server `mynl pack && mynl deploy`
2. Deploy local version to public server `mynl pack && PROFILE=public mynl deploy`

# Restart, stop, save logs

Use defined **GitHub Actions** or use local [nl-cli-tool](https://github.com/nl-squad/nl-cli-tool) commands: `mynl restart`, `mynl stop`, `mynl mapres`, `mynl logs follow`

