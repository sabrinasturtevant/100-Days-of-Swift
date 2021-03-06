//
//  ViewController.swift
//  Project6b
//
//  Created by Sabrina Sturtevant on 1/6/20.
//  Copyright © 2020 Sabrina Sturtevant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
       
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        
//        let viewsDictionary = ["label1": label1, "label2": label2,"label3": label3, "label4": label4, "label5": label5]
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:  "|[label1]|", options: [], metrics: nil, views: viewsDictionary))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:  "|[label2]|", options: [], metrics: nil, views: viewsDictionary))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[label3]|", options: [], metrics: nil, views: viewsDictionary))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[label4]|", options: [], metrics: nil, views: viewsDictionary))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[label5]|", options: [], metrics: nil, views: viewsDictionary))
//
//        let metrics = ["labelHeight": 88]
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
//
        
        var previous: UILabel?
        
        
//        for label in [label1, label2, label3, label4, label5] {
//            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
//
//            if let previous = previous {
//                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
//            } else {
//                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
//            }
//
//            previous = label
//
//        }
        
        
        
    for label in [label1, label2, label3, label4, label5] {
        
    let guide = self.view.safeAreaLayoutGuide
    label1.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
        
        label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2, constant: 10).isActive = true
        
//        view.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5, constant: 50).isActive = true
        
        
     let leadingConstraint = label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        leadingConstraint.isActive = true
        
    
        
        let trailingConstraint = label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)

        trailingConstraint.isActive = true
        
         if let previous = previous {
            label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
                    } else {
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
                    }
        
            previous = label
        }
        
    }
    
//    extension UIView {
//        var guide = view.safeAreaLayoutGuide  {
//            if #available(iOS 11, *) {
//                return safeAreaLayoutGuide
//            } else {
//                return self
//            }
//        }
//    }
    
    

}


