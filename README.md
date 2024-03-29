# rescript-email-validator
 [![npm version](https://img.shields.io/npm/v/rescript-email-validator.svg?style=flat)](https://www.npmjs.com/package/rescript-email-validator)
 [![Build Status](https://app.travis-ci.com/daysv/rescript-email-validator.svg?branch=master)](https://app.travis-ci.com/daysv/rescript-email-validator)

[Rescript](https://rescript-lang.org/docs/manual/latest/api) bindings for [email-validator](https://github.com/manishsaraan/email-validator). 

## Install
```
yarn add rescript-email-validator
or
npm install rescript-email-validator
```
Add `rescript-email-validator` to `bs-dependencies`
```
"bs-dependencies": [
    ...
    "rescript-email-validator"
  ],
```

## Example
You can find usage exmples in the [test](https://github.com/dayjs/rescript-email-validator/tree/main/test) folder

```
EmailValidator.validate("test@email.com") // true
```

Check [email-validator documentation](https://github.com/manishsaraan/email-validator) for available props.


:neutral_face:

![validate-Email.jpg](https://user-images.githubusercontent.com/7411098/174985983-37587d16-08bd-4115-ac78-3aad19ba403a.jpg)
