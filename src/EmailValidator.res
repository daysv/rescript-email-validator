@genType
let reg_exp = %re("/^[-!#$%&'*+\/0-9=?A-Z^_a-z`{|}~](\.?[-!#$%&'*+\/0-9=?A-Z^_a-z`{|}~])*@[a-zA-Z0-9](-*\.?[a-zA-Z0-9])*\.[a-zA-Z](-?[a-zA-Z0-9])+$/");

@genType
let validate = (email: option<string>): bool => {
    switch email { 
        | Some(email) => {
            let emailParts = email -> String.split("@");
            switch emailParts {
                | [account, address] if account -> String.length <= 64 && address -> String.length <= 255 =>  {
                    address -> String.split(".") -> Array.every(part => part -> String.length <= 63)
                     && reg_exp -> Re.test(email)
                }
                | _ => false
            }
        }
        | None => false
    }
}