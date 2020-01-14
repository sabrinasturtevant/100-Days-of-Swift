//
//  DetailViewController.swift
//  Project1
//
//  Created by Sabrina Sturtevant on 12/25/19.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var selectedPictureNumber = 0
        var totalPics = 0
        
        title = "This image is \(selectedImage)"

        
        navigationItem.largeTitleDisplayMode = .never
        

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
            
        
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        }
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    
    @objc func shareTapped() {
    let items = ["This app is awesome"]
    let ac = UIActivityViewController(activityItems: [items], applicationActivities: [])
    ac.popoverPresentationController?.barButtonItem =         navigationItem.rightBarButtonItem
        
        self.present(ac, animated: true)
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
