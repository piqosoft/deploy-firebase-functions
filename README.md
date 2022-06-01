# Deploy Firebase Functions to Deploy Targets

A GitHub Action to deploy to Firebase Functions to a specific [target](https://firebase.google.com/docs/cli/targets). Specify a 'target' by using the <key, value> set in your `firebaserc` file. For example:

```
{
  "projects": {
    "default": "production project id",
    "development": "development project id"
  }
}
```

Then, specify a value (as inidicated below in the example workflow) or none for default.

### Example workflow

```
name: Firebase
on:
  push:
    branches:
    - main
jobs:
  main:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - name: Check out code
      uses: actions/checkout@v2

    - name: Deploy to Firebase
      uses: afgallo/deploy-firebase-functions@1.0.0
      env:
        FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
        TARGET: default
```
