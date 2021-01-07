//
//  RxProperty.swift
//
//  Created by bartlomiej.bocian on 07/01/2021.
//

import RxCocoa
import RxSwift

@propertyWrapper
final class RxProperty<Element> {
    private let behaviorRelay: BehaviorRelay<Element>
    
    var wrappedValue: Driver<Element> { return behaviorRelay.asDriver() }
    var projectedValue: BehaviorRelay<Element> { return behaviorRelay }
    
    init(_ value: Element) {
        behaviorRelay = BehaviorRelay(value: value)
    }
}
