# rescript-email-validator

![Node.js CI](https://github.com/daysv/rescript-email-validator/actions/workflows/node.js.yml/badge.svg)

[ReScript](https://rescript-lang.org/docs/manual/latest/api) version for [email-validator](https://github.com/manishsaraan/email-validator). 

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
You can find usage examples in the [test](https://github.com/dayjs/rescript-email-validator/tree/main/test) folder

```
EmailValidator.validate("test@email.com") // true
```

:neutral_face:

![validate-Email.jpg](https://user-images.githubusercontent.com/7411098/174985983-37587d16-08bd-4115-ac78-3aad19ba403a.jpg)