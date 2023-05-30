//
//  ResultViewController.swift
//  OanTuTi
//
//  Created by Minh Tan Vu on 29/05/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var imageSet = ["rock", "paper", "scissor"]
    var rockImg = UIImage(named: "rock")
    var paperImg = UIImage(named: "paper")
    var scissorImg = UIImage(named: "scissor")
    var myImg = UIImage()
    var comImg = UIImage()
    var comImgName = String()
    var resultText = String()
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var comImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateUI()
    }
    
    @IBAction func rockButtonPressed(_ sender: UIButton) {
        myImg = rockImg!
        comImgName = imageSet.randomElement()!
        comImg = UIImage(named: comImgName)!
        if comImgName == "rock" {
            resultText = "DRAW"
        } else if comImgName == "paper" {
            resultText = "LOSE"
        } else {
            resultText = "WIN"
        }
        updateUI()
    }
    
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        myImg = paperImg!
        comImgName = imageSet.randomElement()!
        comImg = UIImage(named: comImgName)!
        if comImgName == "rock" {
            resultText = "WIN"
        } else if comImgName == "paper" {
            resultText = "DRAW"
        } else {
            resultText = "LOSE"
        }
        updateUI()
    }
    
    @IBAction func scissorButtonPressed(_ sender: UIButton) {
        myImg = scissorImg!
        comImgName = imageSet.randomElement()!
        comImg = UIImage(named: comImgName)!
        if comImgName == "rock" {
            resultText = "LOSE"
        } else if comImgName == "paper" {
            resultText = "WIN"
        } else {
            resultText = "DRAW"
        }
        updateUI()
    }
    
    func updateUI() {
        myImageView.image = myImg
        comImageView.image = comImg
        resultLabel.text = resultText
    }
}
