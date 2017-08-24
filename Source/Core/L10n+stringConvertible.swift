//
//  L10n+stringConvertable.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 29.07.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

extension L10n: CustomStringConvertible {

    public var description: String {
        return "L10n(\(self.language))"
    }
}

extension L10n: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "L10n {"
            + "\n\tLanguage: \(self.language)"
            + "\n\tPreferred languages: \(self.preferredLanguages)"
            + "\n\tSupported languages: \(self.supportedLanguages)"
            + "\n\tBundle: \(self.bundle?.bundlePath ?? "nil")"
            + "\n\t}"
    }
}
