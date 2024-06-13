//
//  CSButton.swift
//  CardShuffle
//
//  Created by Balogun Kayode on 13/06/2024.
//

import UIKit

class CSButton: UIButton {
    
    //override styling with how button should be structured -- rectangle
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //passing background color and title as prop issh
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
    
    
    
    func configure() {
        //border radius, font size and font weight set as default
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        //auto layout false
        translatesAutoresizingMaskIntoConstraints = false
    }

}
