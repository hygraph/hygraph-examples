import UIKit
import _Concurrency
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let api = APIService()

Task.init {
    let products = await api.listProducts()
    print(products)
}
