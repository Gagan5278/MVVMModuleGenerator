//
//  ___HEADERFILE___
//
import Foundation

class ___VARIABLE_productName:identifier___ViewModel {

    // MARK: - Closures
    
    // Through these closures, our view model will execute code while some events will occure
    // They will be set up by the view controller
    var closure1: (()->())?
    var closure2: (()->())?
    var updateLoadingStatusClosure: (()->())?
    
    
    // MARK: - Properties
    
    // Add here a property containing info and set a property observe
    // Example:
    /*
    // The collection that will contain our data
    private var pictures: [Picture] = [Picture]() {
        didSet {
            self.reloadTableViewClosure?()
        }
    }
    */
    
    var isLoading: Bool = false {
        didSet {
            self.updateLoadingStatusClosure?()
        }
    }
    
    // MARK: - Constructor
    
    // Add here a custom constructor
    
    // MARK: - Fetching functions
    
    func fetchData() {
        self.isLoading = true
        
        // Do something
        
        //When done:
        self.isLoading = false
    }
}
