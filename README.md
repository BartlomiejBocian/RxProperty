# RxProperty

Property wrapper for hiding BehaviorRelay and expose Driver instead.

# Example

`@RxProperty(false) var isLoading: Driver<Bool>`

Inside logic you can get component state using: 
 `$isLoading.accept(true)`
 
 In view:
 `isLoading.dive(...)`
