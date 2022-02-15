//
//  MenuItemsCell.swift
//  Black Oak
//
//  Created by Yash Patel on 30/01/22.
//

import UIKit

class MenuItemsCell: UITableViewCell {

    @IBOutlet var item1Lbl:UILabel!
    @IBOutlet var item2Lbl:UILabel!
    @IBOutlet var item3Lbl:UILabel!
    @IBOutlet var item4Lbl:UILabel!
    @IBOutlet var item5Lbl:UILabel!
    @IBOutlet var item6Lbl:UILabel!
    @IBOutlet var item7Lbl:UILabel!
    @IBOutlet var item8Lbl:UILabel!

    @IBOutlet var item1ImgView:UIImageView!
    @IBOutlet var item2ImgView:UIImageView!
    @IBOutlet var item3ImgView:UIImageView!
    @IBOutlet var item4ImgView:UIImageView!
    @IBOutlet var item5ImgView:UIImageView!
    @IBOutlet var item6ImgView:UIImageView!
    @IBOutlet var item7ImgView:UIImageView!
    @IBOutlet var item8ImgView:UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(menus: [Menu]){
        item1Lbl.text  = menus[0].name
    }
}
