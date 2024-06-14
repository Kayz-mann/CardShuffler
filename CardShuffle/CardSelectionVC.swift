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
        configureStopButton()
        configureResetButton()
        configureRulesButton()
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
    
    func configureStopButton() {
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        //onPress of rules button present Rules screen
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    //animated modal presentation of Rules screen
    @objc func presentRulesVC() {
        present(RulesVC(), animated: true)
    }

    

}
