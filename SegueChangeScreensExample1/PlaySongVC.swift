//
//  PlaySongVC.swift
//  SegueChangeScreensExample1
//
//  Created by Gary Singh on 12/28/16.
//  Copyright © 2016 AmanGarry. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var SongTitleLabel: UILabel!
    
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong =  newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SongTitleLabel.text = _selectedSong
    }

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
