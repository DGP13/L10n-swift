//
//  UINavigationItem+l10n.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 30.07.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import UIKit

public extension UINavigationItem {

    @IBInspectable
    @available(*, unavailable, message: "This property is reserved for Interface Builder.")
    var l10nTitle: String {
        get { fatalError() }
        set { self.title = L10n.shared.string(for: newValue) }
    }

    @IBInspectable
    @available(*, unavailable, message: "This property is reserved for Interface Builder.")
    var l10nPrompt: String {
        get { fatalError() }
        set { self.prompt = L10n.shared.string(for: newValue) }
    }

    @IBInspectable
    @available(*, unavailable, message: "This property is reserved for Interface Builder.")
    var l10nBackButton: String {
        get { fatalError() }
        set {
            if self.backBarButtonItem == nil {
                self.backBarButtonItem = UIBarButtonItem()
            }
            self.backBarButtonItem?.title = L10n.shared.string(for: newValue)
        }
    }
}
