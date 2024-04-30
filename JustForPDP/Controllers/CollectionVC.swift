//
//  CollectionVC.swift
//  JustForPDP
//
//  Created by Samandar on 30/04/24.
//

import UIKit

class CollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    
    //MARK: Data Properties
    private var posts: [Post] = []

    
    
    //MARK: View Properties
    
    private var collectionview: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let collectionV = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        return collectionV
    }()
    
    
    
    //MARK: Func Viewdidload
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //view and data settings
        settingMainViewAndData()
        
        //adding collection view and registering cell and lingking it to VC, giving frame to cells
        settingAndAddingCV()
        
        
        //setiing constraints
        settingConstrains()
    }
    
    
    
    
    
    
    //MARK: View Methods
    
    func settingMainViewAndData() {
        
        title = "Posts"
        
        posts = Post.initialPosts
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .done, target: self, action: #selector(logoutFunc))
    }
    
    func settingAndAddingCV() {
        //adding CV to View
        
        view.addSubview(collectionview)
        
        
       //linking to VC
        collectionview.delegate = self
        collectionview.dataSource = self
        
       //linking with cell
        collectionview.register(FirstCollectionViewCell.self, forCellWithReuseIdentifier: FirstCollectionViewCell.identity)
        
        //setting cell frame //->Done by special function
        
        
    }
    
    
    //MARK: SettingConstrains
    
    func settingConstrains() {
        
        collectionview.setIntowithConst(into: view)
        
    }
    
    
    
    
    
    //MARK: CollectionView special Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionview.dequeueReusableCell(withReuseIdentifier: FirstCollectionViewCell.identity, for: indexPath) as? FirstCollectionViewCell else {
            fatalError("Your connection between cell and CollectionVC is wrong")
        }
         let post = posts[indexPath.row]
        
        
        cell.setImage(imageName: post.imageName)
        
        return cell
    }
    
   
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.width / 3 - 20, height: 100)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 10
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacingBetweenCells: CGFloat = 10 // Adjust the spacing between cells as needed
        let numberOfColumns: CGFloat = 3 // Adjust the number of columns as needed
        
        // Calculate the width of each cell based on the number of columns and spacing
        let cellWidth = (collectionView.bounds.width - (numberOfColumns - 1) * spacingBetweenCells) / numberOfColumns
        
        // Return the size for the cell
        return CGSize(width: cellWidth, height: 100) // Adjust the height as needed
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 10 // Adjust the spacing between cells as needed, should be consistent with the spacing used in sizeForItemAt
//    }

    
    //MARK: Actions
    
    @objc func logoutFunc() {
        
        let alertVC = UIAlertController(title: "Log out", message: "Do you want to log out?", preferredStyle: .alert)
        
        alertVC.addAction(UIAlertAction(title: "No", style: .cancel))
        
        alertVC.addAction(UIAlertAction(title: "Yes", style: .default,handler: { alertACT in
            
            UIViewController.scenedelegete.callSignInVC()
            
            
        }))
        
        present(alertVC, animated: true)
    }
    
    
}
