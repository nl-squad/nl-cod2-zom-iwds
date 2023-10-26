# 📦 nl-cod2-zom-iwds

This is a repository of the client-side part of one of the most popular servers in CoD2 - `nL.Zombies*. It includes the .iwd files, configurations, and a part of server scripts.

# 🚢 Restart, stop, pack .iwds, save logs

Use defined **GitHub Actions** or use local [nl-cli-tool](https://github.com/nl-squad/nl-cli-tool) commands: `mynl restart`, `mynl stop`, `mynl pack`, `mynl mapres`, `mynl logs follow`

# 🚀 Versioning and deployment

1. Any push of the main branch results in automatic deployment to the Dev server
2. If you want to deploy the current version to the **Public** server you can launch the defined GitHub Action
3. Git tags are used to mark which commit is the one that was announced on Discord as any given version to players.

# 🏠 Local deployment

1. Deploy local version to dev server `mynl pack && mynl deploy`
2. Deploy local version to public server `mynl pack && PROFILE=public mynl deploy`
