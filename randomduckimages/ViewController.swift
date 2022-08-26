//
//  ViewController.swift
//  randomduckimages
//
//  Created by Emre Taner  Çetinkaya on 17.08.2022.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
      getRandomImages()
        
       
                }
    
    @IBAction func clickButton(_ sender: Any) {
        
        getRandomImages()
    }
    func getRandomImages() {
        
        AF.request("https://random-d.uk/api/random", method: .get).response { response in
            switch response.result {
                    case .success:
                        print("Validation Successful")

                        if let json = response.data {
                            do{
                                let data = try JSON(data: json)
                                let str = data["url"]
                               
                                let url = URL(string: str.rawValue as! String)
                                
                                self.imageView.kf.setImage(with: url)
                               
                               
                                
                            }
                            catch{
                            print("JSON Error")
                            }

                        }
                    case .failure(let error):
                        print(error)
                    }
       
    }
        
        
    }


}
    


    

