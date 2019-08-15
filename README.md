# play1-dotenv
add load env file feature to playframework 1.x

## Why?
When you run a project with playframework and dockerize the project, you need extract the conf to env file. In dev mode, `play run` can't read env file and load it. so i updated [base.py](https://github.com/fivesmallq/play1-dotenv/commit/237fa65653c0f2ac3c2fa086149394d515a9a632#diff-193975138db3c5c6cac0e6ebdc82fe24) and add code to load env.


## Installation

```sh
curl -sfL https://raw.githubusercontent.com/fivesmallq/play1-dotenv/master/install.sh | sh -
```

## Test
In a playframework project. run `play run`, you will see log `try to load env file xxxx`

```sh
~        _            _
~  _ __ | | __ _ _  _| |
~ | '_ \| |/ _' | || |_|
~ |  __/|_|\____|\__ (_)
~ |_|            |__/
~
~ play! 1.4.4, https://www.playframework.com
~
~ try to load env file (/Users/fivesmallq/testplay/demo/.env)
~ Ctrl+C to stop
```



