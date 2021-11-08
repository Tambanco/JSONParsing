//
//  ViewController.swift
//  JSONParsing
//
//  Created by tambanco 🥳 on 08.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var json = [JSONData]()
    
    let urlOfPosts = "https://jsonplaceholder.typicode.com/posts"
    let urlOfJSONData = "https://jsonplaceholder.typicode.com/users"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData(url: urlOfJSONData)
    }


}

extension ViewController {
    func fetchData(url: String) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
        guard let data = data else { return }
            print(data)
            
            do {
                self.json = try JSONDecoder().decode([JSONData].self, from: data)
                print(self.json)
            } catch {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}
