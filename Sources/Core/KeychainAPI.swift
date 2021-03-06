//
//  KeychainAPI.swift
//  OpenWallet
//
//  Created by Yehor Popovych on 3/7/19.
//  Copyright © 2019 Tesseract Systems, Inc. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

public protocol KeychainRequestMessageProtocol: RequestMessageProtocol {
    static var method: String { get }
    var method: String { get }
}

public extension OpenWalletError._Type {
    
    static let walletIsNotInitialized = OpenWalletError._Type(rawValue: "WALLET_IS_NOT_INITIALIZED")
}

public extension OpenWalletError {
    
    static let walletIsNotInitialized = OpenWalletError(
        type: .walletIsNotInitialized,
        message: "Wallet is not initialized."
    )
}

public extension OpenWalletAPI {
    static let keychain = OpenWalletAPI(rawValue: "keychain")
}
