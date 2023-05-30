//
//  ViewController.swift
//  OanTuTi
//
//  Created by Minh Tan Vu on 29/05/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockButtonPressed(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "ResultVC") as! ResultViewController
        secondVC.modalPresentationStyle = .fullScreen
        
        let comImgName = secondVC.imageSet.randomElement()!
        secondVC.myImg = UIImage(named: "rock")!
        secondVC.comImg = UIImage(named: comImgName)!
        if comImgName == "rock" {
            secondVC.resultText = "DRAW"
        } else if comImgName == "paper" {
            secondVC.resultText = "LOSE"
        } else {
            secondVC.resultText = "WIN"
        }
        
        self.present(secondVC, animated: true)
        
    }
    
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "ResultVC") as! ResultViewController
        secondVC.modalPresentationStyle = .fullScreen
        
        let comImgName = secondVC.imageSet.randomElement()!
        secondVC.myImg = UIImage(named: "paper")!
        secondVC.comImg = UIImage(named: comImgName)!
        if comImgName == "rock" {
            secondVC.resultText = "WIN"
        } else if comImgName == "paper" {
            secondVC.resultText = "DRAW"
        } else {
            secondVC.resultText = "LOSE"
        }
        
        self.present(secondVC, animated: true)
    }
    
    @IBAction func scissorButtonPressed(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "ResultVC") as! ResultViewController
        secondVC.modalPresentationStyle = .fullScreen
        
        let comImgName = secondVC.imageSet.randomElement()!
        secondVC.myImg = UIImage(named: "scissor")!
        secondVC.comImg = UIImage(named: comImgName)!
        if comImgName == "rock" {
            secondVC.resultText = "LOSE"
        } else if comImgName == "paper" {
            secondVC.resultText = "WIN"
        } else {
            secondVC.resultText = "DRAW"
        }
        
        self.present(secondVC, animated: true)
    }
    
}

