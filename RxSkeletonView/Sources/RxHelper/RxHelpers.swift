//
//  RxHelpers.swift
//  RxSkeletonView
//
//  Created by Ron Daryl Magno on 03/10/2019.
//  Copyright © 2019 Ron Daryl Magno. All rights reserved.
//

import Foundation
import RxCocoa

// MARK: Error binding policies
func bindingError(_ error: Swift.Error) {
    let error = "Binding error: \(error)"
    #if DEBUG
        rxFatalError(error)
    #else
        print(error)
    #endif
}

func rxFatalError(_ lastMessage: @autoclosure () -> String, file: StaticString = #file, line: UInt = #line) -> Swift.Never  {
    // The temptation to comment this line is great, but please don't, it's for your own good. The choice is yours.
    fatalError(lastMessage(), file: file, line: line)
}
