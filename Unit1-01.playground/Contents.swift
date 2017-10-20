
// Created by: Kay Lin
// Created on: 20th-Oct-2017
// Created for: ICS3U
// This program displays the school name and their mascot


import PlaygroundSupport
import UIKit

class ViewController : UIViewController, UITextFieldDelegate {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var motherTeresaButton : UIButton!
    var stJoeButton : UIButton!
    var stMarkButton : UIButton!
    var schoolNameLabel : UILabel!
    var mascotNameLabel : UILabel!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        // Mother Teresa HS
        motherTeresaButton = UIButton()
        motherTeresaButton.setTitle("Mother Teresa HS", for: .normal)
        motherTeresaButton.setTitleColor(.blue, for: .normal)
        motherTeresaButton.addTarget(self, action: #selector(MTHS), for: .touchUpInside)
        view.addSubview(motherTeresaButton)
        motherTeresaButton.translatesAutoresizingMaskIntoConstraints = false
        motherTeresaButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        motherTeresaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // St.Joe HS
        stJoeButton = UIButton()
        stJoeButton.setTitle("St.Joe", for: .normal)
        stJoeButton.setTitleColor(.blue, for: .normal)
        stJoeButton.addTarget(self, action: #selector(STJOE), for: .touchUpInside)
        view.addSubview(stJoeButton)
        stJoeButton.translatesAutoresizingMaskIntoConstraints = false
        stJoeButton.topAnchor.constraint(equalTo: motherTeresaButton.bottomAnchor, constant: 20).isActive = true
        stJoeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // St.Mark HS
        stMarkButton = UIButton()
        stMarkButton.setTitle("St.Mark", for: .normal)
        stMarkButton.setTitleColor(.blue, for: .normal)
        stMarkButton.addTarget(self, action: #selector(STMARK), for: .touchUpInside)
        view.addSubview(stMarkButton)
        stMarkButton.translatesAutoresizingMaskIntoConstraints = false
        stMarkButton.topAnchor.constraint(equalTo: stJoeButton.bottomAnchor, constant: 20).isActive = true
        stMarkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
            // schoolNameLabel
        schoolNameLabel = UILabel()
        schoolNameLabel.textAlignment = .center
        view.addSubview(schoolNameLabel)
        schoolNameLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        schoolNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
            // mascotNameLabel
        mascotNameLabel = UILabel()
        mascotNameLabel.textAlignment = .center
        view.addSubview(mascotNameLabel)
        mascotNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mascotNameLabel.topAnchor.constraint(equalTo: schoolNameLabel.bottomAnchor, constant: 20).isActive = true
        mascotNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    func MTHS() {
        schoolNameLabel.text = "Mother Teresa HS"
        mascotNameLabel.text = "Titans"
    }
    func STJOE() {
        schoolNameLabel.text = "St.Joe HS"
        mascotNameLabel.text = "Jaguars"
    }
    func STMARK() {
        schoolNameLabel.text = "St.Mark HS"
        mascotNameLabel.text = "Lions"
    }
    
    
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


