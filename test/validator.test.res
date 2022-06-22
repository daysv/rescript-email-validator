open Zora

zoraBlock("Should Be Valid", t => {
  t->equal(EmailValidator.validate("test@example.com"), true, "Should be true")
  t->equal(EmailValidator.validate("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@letters-in-local.org"), true, "Should be true")
})

zoraBlock("Should Be Invalid", t => {
  t->equal(EmailValidator.validate("\"quoted\"@sld.com"), false, "Should be false")
  t->equal(EmailValidator.validate("missing-sld@.com"), false, "Should be false")
})