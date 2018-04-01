import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rice = food(name: "Rice")
        let beans = food(name: "Beans")
        let salad = food(name: "Salad")
        
        rice.eatWith = beans
        beans.eatWith = salad
        salad.eatWith = rice
        
        print("ViewDidLoad Complete")
    }

}

class food {
    var name:String!
    weak var eatWith:food?
    
    init(name:String) {
        self.name = name
        print("\(self.name) is allocated")
    }
    
    deinit {
        print("\(self.name) is released")
    }
}



