//
//  ViewController.swift
//  App
//
//  Created by Pham Hoang Hai on 24/9/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Auto layout, grids, variables, and unit scale are not yet supported
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 258, height: 72)
        view.textColor = UIColor(red: 1, green: 0.961, blue: 0.878, alpha: 1)
        view.font = UIFont(name: "Poppins-Medium", size: 48)
        // Line height: 72 pt
        // (identical to box height)
        view.text = "BugetBites"

        var parent = self.view!
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false    }


}

