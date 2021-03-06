//
//  MusicListVC.swift
//  SegueChangeScreensExample1
//
//  Created by Gary Singh on 12/28/16.
//  Copyright © 2016 AmanGarry. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil )
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Testing data passed in Segue"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    

}
