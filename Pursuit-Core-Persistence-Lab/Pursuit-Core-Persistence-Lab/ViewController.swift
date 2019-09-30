//
//  ViewController.swift
//  Pursuit-Core-Persistence-Lab
//
//  Created by Kary Martinez on 9/30/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var myPhotosTableView: UITableView!
    
    var myPhotos = [allPhotos]() {
        
        didSet {
           myPhotosTableView.reloadData()
    
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myPhotosTableView.delegate = self
        myPhotosTableView.dataSource = self
        loadData()
    }

//    var searchString: String? {
//        
//        didSet {
//            self.myPhotosTableView.reloadData()
//        }
//    }
//    var filteredPhotos: [allPhotos] {
//        get {
//            guard let searchString = searchString else {return myPhotos}
//            guard searchString != "" else {return myPhotos}
//            return allPhotos.getFilteredPhotosByName(arr: myPhotos, searchString:searchString)
//        }
//    }
    func loadData(){
        do {
           myPhotos = try allPhotosPersistenceHelper.manager.getPhotos()
        } catch {
            print(error)
        }
    }

}

extension ViewController: UITableViewDelegate {
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photo = myPhotos[indexPath.row]
        let cell = myPhotosTableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as! photosTableViewCell
        
        
        ImageHelper.shared.getImage(urlStr: photo.hits.webformatURL) { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let image):
                    cell.photoImage.image = image
                case .failure(let error):
                    print(error)
                }
            }
        }
        
        return cell
        
        
        
    }
    
    
}
//
//extension ViewController: UISearchBarDelegate {
//
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchString = searchText
//
//
//    }
//}
