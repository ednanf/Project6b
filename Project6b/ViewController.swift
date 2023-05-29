//
//  ViewController.swift
//  Project6b
//
//  Created by Ednan R. Frizzera Filho on 29/05/23.
//
// VISUAL FORMAT LANGUAGE

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()                                          // UIKit type that shows static text on the screen.
        label1.translatesAutoresizingMaskIntoConstraints = false        // This means we will have to make constraints by hand.
        label1.backgroundColor = .red                                   // Sets the label1's background color.
        label1.text = "THESE"                                           // Sets the label1's text.
        label1.sizeToFit()                                              // Makes sure the label will take just enough spacet o display the text.
        
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
        label4.text = "AWSOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        // This will place the labels on screen.
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        // This creates a dictionary with labels as its values. To access label 1, all we need to do is use viewsDisctionary["label1].
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        // Sets horizontal constraints:
        // This could be written as a loop.
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label1]|", options: [], metrics: nil, views: viewsDictionary))        // The H: means we are defining a horizontal layout;
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label2]|", options: [], metrics: nil, views: viewsDictionary))        // The | means "the edge of view";
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label3]|", options: [], metrics: nil, views: viewsDictionary))        // [label1] is a visual way of saying "put label1 here."
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label4]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label5]|", options: [], metrics: nil, views: viewsDictionary))
        
        // Sets vertical constraints.
        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1]-[label2]-[label3]-[label4]-[label5]", options: [], metrics: nil, views: viewsDictionary))        // - means "space," which by default is 10pt.
    }


}

