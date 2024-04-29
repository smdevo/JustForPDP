//
//  EightJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 27/04/24.
//


import UIKit

enum CellIdentity: String {
    case firstCell = "FirsCell"
    
    
}



class EightJustViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK: Views
    
    let tableView = UITableView()
    
    var contents: [User] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //settingView
        settingView()
        
        //connectTVtoVC
        settingTableView()
        
        //SettingConstraints
        settingConstraintsToViews()
        
        //getting Data
        gettingData()
    }
    
    //MARK: Methods
    
    
    func settingView() {
        title = "Posts"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: self, action: #selector(changeBackIntoSignInPage))
        
    }
    


    func settingTableView() {
        
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate   = self
        tableView.rowHeight = view.frame.height / 3
        //RegisteringTableviewToCell
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: CellIdentity.firstCell.rawValue)
    }
    
    
    func settingConstraintsToViews() {
        
        tableView.setIntowithConst(into: view)
        
    }
    
    
    func gettingData() {
        
        contents = User.staticUsers
        
        
    }
    
    
    
    //MARK: Actions
    
    @objc func changeBackIntoSignInPage() {
        
        //UIViewController.scenedelegete.callSignInVC()
        
        let alertLogoutC = UIAlertController(title: "Log out", message: "Do you want to Log out?", preferredStyle: .alert)
        
        alertLogoutC.addAction(UIAlertAction(title: "No", style: .cancel))
        
        alertLogoutC.addAction(UIAlertAction(title: "Yes",style: .default,handler: { action in
            UIViewController.scenedelegete.callSignInVC()
        }))
        
        present(alertLogoutC, animated: true)
        
    }
    
    
    
    
    //MARK: Table View Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentity.firstCell.rawValue, for: indexPath) as! FirstTableViewCell
        
        let user = contents[indexPath.row]
        
        cell.addPostContents(profileImageName: user.profileImageName, name: user.name, comment: user.comment, postImageName: user.postImageName)
        
        
        return cell
    }
    
   

}
