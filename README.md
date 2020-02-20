# vue-lib

## Backup npm dependencies
This project can download and upload them to a nexus repository
run the following to download the npm tgz files
> ./generateRepos.sh  

to upload the files set the environment variable $NEXUS_PWD for your admin password to upload to the repository 'npm'
> cd repos   
./upload.sh

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Run your unit tests
```
npm run test:unit
```
