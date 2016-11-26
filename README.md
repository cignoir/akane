# akane

A sample project of rails app depends on multiple mysql containers using docker-compose. 


## docker-compose
```
services
├ web 
│ └ rails5
├ db1
│ └ mysql5.7
└ db2
  └ mysql5.7
```

## Dependencies
* Rails5
* devise
* cancancan

## How to run
```
$ docker-compose run --rm bundle exec rails db:setup
$ docker-compose up -d
```
