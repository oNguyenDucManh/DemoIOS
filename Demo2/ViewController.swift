//
//  ViewController.swift
//  Demo2
//
//  Created by Digital on 4/9/19.
//  Copyright © 2019 Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let bearImageView: UIImageView = {
        let imageView =  UIImageView(image: UIImage(named: "bear_first"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView;
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attrText = NSMutableAttributedString(string: "Join us today in our for fun and games!",attributes:
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)]
        )
        attrText.append(NSAttributedString(string: "\n\nCong hoa xa hoi chu nghia Viet Nam, doc lap tu do hanh phuc",attributes:
            [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13),
             NSAttributedString.Key.foregroundColor : UIColor.gray]
        ))
        textView.attributedText = attrText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(descriptionTextView)
//        imageView.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        
        setupLayout()
        
    }

    private func setupLayout(){
        let topFrame = UIView()
        view.addSubview(topFrame)
        topFrame.translatesAutoresizingMaskIntoConstraints = false
        topFrame.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topFrame.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topFrame.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topFrame.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier:0.5).isActive = true
        
        topFrame.addSubview(bearImageView)
        bearImageView.centerXAnchor.constraint(equalTo: topFrame.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topFrame.centerYAnchor).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topFrame.heightAnchor, multiplier: 0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topFrame.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}

