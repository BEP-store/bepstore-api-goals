# BEPStore Goals Engine

## Install

To use this engine locally, you have to configure the host project (`bepstore-api`) to use your local copy:

```
cd /path/to/bepstore-api
bundle config local.bepstore-goals /path/to/bepstore-api-goals
```

To prevent bundler from complaining about the branch you are using execute:

```
bundle config disable_local_branch_check true
```
