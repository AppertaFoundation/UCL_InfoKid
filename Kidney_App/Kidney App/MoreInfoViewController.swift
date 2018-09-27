//
//  MoreInfoViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 13/04/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myWebView.loadRequest(URLRequest(url: URL(string: "https://www.google.co.uk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwj88q-ohaLTAhXJWhoKHR1RBpIQFggjMAA&url=http%3A%2F%2Fwww.infokid.org.uk%2F&usg=AFQjCNFadp7x9_FHVvLRHU4kDN6aR8cofg&sig2=grozSWBWA5Ys8kee6vcO9g&bvm=bv.152180690,d.d2s")!))    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
