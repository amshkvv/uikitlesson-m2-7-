//
//  DetailsViewController.swift
//  m2l7
//
//  Created by AndreyM on 15.10.2026.
//

import UIKit

class DetailsViewController: UIViewController {

    var item : MockData
    
    init(item: MockData) {
        self.item = item
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var avatareImage : UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 45
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    private lazy var userNameLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.tintColor = .black
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 18, weight: .bold)
        return $0
    }(UILabel())
    
    private lazy var ImageView : UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 40
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    private lazy var contentLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = item.now.formatted(date: .abbreviated, time: .shortened)
        
        view.addSubview(avatareImage)
        view.addSubview(userNameLabel)
        view.addSubview(ImageView)
        view.addSubview(contentLabel)
        
        avatareImage.image = UIImage(named: item.avatar)
        userNameLabel.text = item.name
        ImageView.image = UIImage(named: item.imageContent)
        contentLabel.text = item.content
        
        
        NSLayoutConstraint.activate([
            avatareImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            avatareImage.heightAnchor.constraint(equalToConstant: 90),
            avatareImage.widthAnchor.constraint(equalToConstant: 90),
            avatareImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            
            userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 140),
            userNameLabel.topAnchor.constraint(equalTo: avatareImage.bottomAnchor, constant: 20),
            
            ImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ImageView.heightAnchor.constraint(equalToConstant: 200),
            ImageView.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 20),
            
            contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            contentLabel.topAnchor.constraint(equalTo: ImageView.bottomAnchor, constant: 20),
            
        ])
    }
}
