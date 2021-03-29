//
//  MusicViewController.swift
//  SWU
//
//  Created by Guillaume Savin on 29/03/2021.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    var song : SWMusics?
    var audioPlayer = AVAudioPlayer()
    var isPlaying = false
    
    @IBOutlet weak var titleSong: UILabel!
    @IBOutlet weak var lengthSong: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBAction func playSong(_ sender: Any) {
        if isPlaying {
            playBtn.setImage(UIImage.init(systemName: "play.fill"), for: .normal)
            audioPlayer.pause()
            isPlaying = false
        } else {
            playBtn.setImage(UIImage.init(systemName: "pause.fill"), for: .normal)
            audioPlayer.play()
            isPlaying = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleSong.text = song?.title
        lengthSong.text = song?.length
        
        if let path = Bundle.main.path(forResource: song?.title, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("Cannot load file song")
            }
        } else {
            print("Cannot find file song")
        }
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
