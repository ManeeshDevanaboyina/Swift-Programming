//
//  ItemInfoViewController.swift
//  Devanaboyina_GroceryApp
//
//  Created by Devanaboyina,Maneesh on 4/12/22.
//

import UIKit

class ItemInfoViewController: UIViewController {

   
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    var info : GroceryItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = info?.itemName
        let picture = info?.itemImage
        itemInfoOutlet.isHidden = true
      
        itemImageViewOutlet.image = UIImage(named: picture!)
        let OriginalImage = itemImageViewOutlet.frame
        let newFrame = CGRect(
        x: itemImageViewOutlet.frame.origin.x + 20,
        y: itemImageViewOutlet.frame.origin.y + 20,
        width: itemImageViewOutlet.frame.width - 20,
        height: itemImageViewOutlet.frame.height - 20)
        itemImageViewOutlet.frame = newFrame
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 60, animations: {
                        self.itemImageViewOutlet.frame = OriginalImage
                    })
            
        }
    
    
    @IBAction func showItemInfoAction(_ sender: Any) {
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text = info!.itemInfo
    }


}
