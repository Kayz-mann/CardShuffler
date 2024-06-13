//
//  CardSelectionVC.swift
//  CardShuffle
//
//  Created by Balogun Kayode on 13/06/2024.
//

import UIKit

class CardSelectionVC: UIViewController {
    let cardImageView = UIImageView()
    let stopButton = CSButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton = CSButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton = CSButton(backgroundColor: .systemBlue, title: "Rules")



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()

        // Do any additional setup after loading the view.
    }
    
    func configureUI() {
        configureCardImageView()
    }
    
    func configureCardImageView() {
        //add an image element as you would drag in storyboard to screen
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        //postion the cardImageView in the screen by setting contraints heights and widths
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //marginTop ishh from the safe area view
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)

        ])
    }
    

}
