# nl-cod2-zom-blanco

`blanco/` scripts for nl-cod2-zom

# Generating new iwds

## Unix
```sh
mynl pack
```

# Deploy and restart server

## Unix
```sh
mynl deploy && mynl restart
```

# Versioning and branching

**main** branch is the latest changes that we produce. Containing version that is going to be introduced soon to the public.

**public** branch is the stable version that is currently run on public server.

Git tags are used to mark which commit is the one that was announced as given version to players.

If we need a hotfix on public server then we create branch **hotfix/some-name** and merge it public.

To release new version we merge main to public and tag it using git tag.

# Generating weapon files

## Unix
```sh
(cd weapons && ./generate.sh)
```

## Windows
```bash
(cd weapons && ./generate.ps1)
```