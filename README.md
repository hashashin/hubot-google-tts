# hubot-google-tts [![Build Status](https://img.shields.io/travis/hashashin/hubot-google-tts.svg?maxAge=2592000&style=flat-square)](https://travis-ci.org/hashashin/hubot-google-tts) [![npm](https://img.shields.io/npm/v/hubot-google-tts.svg?maxAge=2592000&style=flat-square)](https://www.npmjs.com/package/hubot-google-tts)

Makes hubot talk

See [`src/google-tts.coffee`](src/google-tts.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-google-tts --save`

Then add **hubot-google-tts** to your `external-scripts.json`:

```json
["hubot-google-tts"]
```

## Sample Interaction

```
user1>> hubot say hello en
hubot>> https://translate.google.com/translate_tts?ie=...
```
