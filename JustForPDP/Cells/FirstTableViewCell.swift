//
//  FirstTableViewCell.swift
//  JustForPDP
//
//  Created by Samandar on 27/04/24.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    
    //MARK: Properties
    
    var profileImageView = UIImageView()
    var namelabel = UILabel()
    var commentlabel = UILabel()
    var postimageview = UIImageView()
    var firstStackView = UIStackView()
    var secondStackView = UIStackView()
    
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //addingPropertiesToCell
        addingViews()
        
        //CustomizingViews
        customizingViews()
        
        //Setting Constrains
        settingCons()
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: MethodsOfView
    
    func addingViews() {
        
        firstStackView.addArrangedSubview(namelabel)
        firstStackView.addArrangedSubview(commentlabel)
        
        secondStackView.addArrangedSubview(profileImageView)
        secondStackView.addArrangedSubview(firstStackView)
        
        addSubview(profileImageView)
        addSubview(firstStackView)
        addSubview(secondStackView)
        addSubview(postimageview)
        
        
    }
    

    func customizingViews() {
        
        firstStackView.axis = .vertical
        firstStackView.alignment = .leading
        firstStackView.spacing = 10
        
        secondStackView.axis = .horizontal
        secondStackView.spacing = 15
        
        
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = 30
        profileImageView.clipsToBounds = true
        
        
        namelabel.tintColor = .black
        namelabel.numberOfLines = 1
        namelabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        
        commentlabel.tintColor = .gray
        commentlabel.numberOfLines = 0
        commentlabel.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        
        postimageview.contentMode = .scaleAspectFill
        postimageview.layer.cornerRadius = 15
        postimageview.clipsToBounds = true
    }
    
    
    func settingCons() {
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        namelabel.translatesAutoresizingMaskIntoConstraints        = false
        commentlabel.translatesAutoresizingMaskIntoConstraints     = false
        postimageview.translatesAutoresizingMaskIntoConstraints    = false
        firstStackView.translatesAutoresizingMaskIntoConstraints   = false
        secondStackView.translatesAutoresizingMaskIntoConstraints  = false
        
        
        NSLayoutConstraint.activate([
        
            namelabel.leadingAnchor.constraint(equalTo: firstStackView.leadingAnchor),
            namelabel.trailingAnchor.constraint(equalTo: firstStackView.trailingAnchor),
            namelabel.heightAnchor.constraint(equalToConstant: 20),
            
            commentlabel.leadingAnchor.constraint(equalTo: firstStackView.leadingAnchor),
            commentlabel.trailingAnchor.constraint(equalTo: firstStackView.trailingAnchor),
            
            profileImageView.topAnchor.constraint(equalTo: secondStackView.topAnchor),
            profileImageView.bottomAnchor.constraint(equalTo: secondStackView.bottomAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 60),
            
           // profileImageView.leadingAnchor.constraint(equalTo: secondStackView.leadingAnchor,constant: 50),
          
            
            firstStackView.topAnchor.constraint(equalTo: secondStackView.topAnchor),
            firstStackView.bottomAnchor.constraint(equalTo: secondStackView.bottomAnchor),
            firstStackView.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor,constant: 20),
            
            secondStackView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            secondStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            secondStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            secondStackView.heightAnchor.constraint(equalToConstant: 60),
            
            postimageview.topAnchor.constraint(equalTo: secondStackView.bottomAnchor, constant: 20),
            postimageview.leadingAnchor.constraint(equalTo: leadingAnchor),
            postimageview.trailingAnchor.constraint(equalTo: trailingAnchor),
            postimageview.bottomAnchor.constraint(equalTo: bottomAnchor)
            
            
        
        
        ])
        
       
        
        
        
        
        
        
        
        
    }
    
    
    
    
    //MARK: Methods of Content
    
    
    func addPostContents(profileImageName: String, name: String, comment: String, postImageName: String) {
        self.profileImageView.image = UIImage(named: profileImageName)
        self.namelabel.text = name
        self.commentlabel.text = comment
        self.postimageview.image = UIImage(named: postImageName)
        
    }
    
    
}
