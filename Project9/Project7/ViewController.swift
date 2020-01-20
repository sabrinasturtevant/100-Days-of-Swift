//
//  ViewController.swift
//  Project7
//
//  Created by Sabrina Sturtevant on 1/9/20.
//  Copyright © 2020 Sabrina Sturtevant. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var petitions = [Petition]()

    override func viewDidLoad() {
        super.viewDidLoad()
        performSelector(inBackground: #selector(fetchJSON), with: nil)
    }
    
   @objc func fetchJSON() {
        let urlString: String
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sources", style: .plain, target: self, action: #selector(dataSource))
            
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        
        if let url = URL(string: urlString)  {
        if let data = try? Data(contentsOf: url) {
            parse(json: data)
                    return
                }
            }
    performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
    }
    
    
    @objc func dataSource() {
        
        let ac = UIAlertController(title: "This data comes from the We The People API of the Whitehouse.", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "ok", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
    
    @ objc func showError() {
            let ac = UIAlertController(title: "Loading Error", message: "Please check your connection", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default))
            present(ac, animated: true)
        }

    
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPositions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPositions.results
            
            tableView.performSelector(onMainThread: #selector(UITableView.reloadData), with: nil, waitUntilDone: false)

        } else {
            performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
        }

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let petition = petitions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = petition.title
        cell.detailTextLabel?.text = petition.body
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }


}

