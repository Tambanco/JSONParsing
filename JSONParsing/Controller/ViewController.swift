//
//  ViewController.swift
//  JSONParsing
//
//  Created by tambanco 🥳 on 08.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let urlOfPosts = "https://jsonplaceholder.typicode.com/posts"
    let urlOfJSONData = "https://jsonplaceholder.typicode.com/users"
    let geoJSONUrl = "https://raw.githubusercontent.com/Tambanco/GeoJSONPoligonSample/main/geoJSON.json"
    let pastaURL = "https://raw.githubusercontent.com/Tambanco/PastaJSON/main/pasta.json"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData(url: pastaURL)
//        fetchGeoData(url: geoJSONUrl)
    }
}

extension ViewController {
    func fetchData(url: String) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in

        guard let data = data else { return }
            print(data)

            do {
                let json = try JSONDecoder().decode([PastaModel].self, from: data)
                print(json)
            } catch {
                print(error.localizedDescription)
            }

        }.resume()
    }
}

//extension ViewController {
//    func fetchGeoData(url: String) {
//        guard let url = URL(string: url) else { return }
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//
//        guard let data = data else { return }
//            print(data)
//
//            do {
//                let json = try JSONDecoder().decode(GeoJSONData.self, from: data)
//                print(json)
//            } catch {
//                print(error.localizedDescription)
//            }
//
//        }.resume()
//    }
//}
