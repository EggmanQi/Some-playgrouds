import UIKit

enum PasswordError: Error {
case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 4 {
        throw PasswordError.short
    }

    if isNumeric(password) {
        throw PasswordError.obvious
    }

    return "OK"
}

func isNumeric(_ string: String) -> Bool {
    let decimalDigits = CharacterSet.decimalDigits
    return string.unicodeScalars.allSatisfy {decimalDigits.contains($0)}
}

do {
    let result = try checkPassword("123")
    print("Check passwod: \(result)")
} catch PasswordError.short {
    print("Your dick toooo short")
} catch PasswordError.obvious {
    print("Your boo boo toooo obvious")
} catch {
    print(error)
}

