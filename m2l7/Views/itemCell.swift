//
//  itemCell.swift
//  m2l7
//
//  Created by AndreyM on 13.10.2026.
//
import UIKit


class ItemCell : UITableViewCell {
    
    private lazy var contentCellView : UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemGray5
        $0.layer.cornerRadius = 15
        return $0
    }(UIView())
    

    private lazy var avatarImageView : UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.image = .avatar
        $0.layer.cornerRadius = 25
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    
    private lazy var userNameLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.text = "User name"
        $0.font = .systemFont(ofSize: 18)
        return $0
    }(UILabel())
    
    
    private lazy var cellImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.image = .content
        $0.layer.cornerRadius = 15
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    private lazy var dateLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.text = "13.10.2026"
        $0.font = .systemFont(ofSize: 15, weight: .bold)
        return $0
    }(UILabel())
    
    private lazy var contentLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.text = "lorsdfasdfkasdfk sadfkk asdf safd asfd fsadafs d afsda fsdfas dafsd fsa d asddfasdf sadffs adsaf dafsda fsda fsdasfdas fd fasdsfadafsdfsdasdf  fsad fsad fdsa fasd fads fdsa adfs fadsa fds fdasfd asfasd f dsa fasdfsd afsa d fdsaf dsaf sd afsd afsd fdsa fasd afsd afds fasd afsd"
        $0.numberOfLines = 0
        return $0
    }(UILabel())


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print("create cell")
    }
    
    
    func setupCell(item: MockData){
        
        cellImageView.image = UIImage(named: item.imageContent)
        avatarImageView.image = UIImage(named: item.avatar)
        userNameLabel.text = item.name
        dateLabel.text = item.now.formatted(date: .abbreviated, time: .shortened)
        contentLabel.text = item.content
        
        
        
        contentView.addSubview(contentCellView)
        contentView.addSubview(cellImageView)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(userNameLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(contentLabel)
    
    
    NSLayoutConstraint.activate([
        
        //view
        contentCellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
        contentCellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        contentCellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
        contentCellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
//            contentCellView.heightAnchor.constraint(equalToConstant: 350),
        
        //avatar
        avatarImageView.leadingAnchor.constraint(equalTo: contentCellView.leadingAnchor, constant: 12),
        avatarImageView.topAnchor.constraint(equalTo: contentCellView.topAnchor, constant: 12),
        avatarImageView.heightAnchor.constraint(equalToConstant: 50),
        avatarImageView.widthAnchor.constraint(equalToConstant: 50),
        
        //UserName
        userNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 12),
        userNameLabel.topAnchor.constraint(equalTo: contentCellView.topAnchor, constant: 25),
        userNameLabel.trailingAnchor.constraint(equalTo: contentCellView.trailingAnchor, constant: -12),
        
        
        //image
        cellImageView.leadingAnchor.constraint(equalTo: contentCellView.leadingAnchor, constant: 12),
        cellImageView.trailingAnchor.constraint(equalTo: contentCellView.trailingAnchor, constant: -12),
        cellImageView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10),
        cellImageView.heightAnchor.constraint(equalToConstant: 175),
        
        //date
        dateLabel.leadingAnchor.constraint(equalTo: contentCellView.leadingAnchor, constant: 12),
        dateLabel.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 10),
        dateLabel.trailingAnchor.constraint(equalTo: contentCellView.trailingAnchor, constant: -12),
        
        
        //content
        contentLabel.leadingAnchor.constraint(equalTo: contentCellView.leadingAnchor, constant: 12),
        contentLabel.topAnchor.constraint(equalTo: dateLabel.topAnchor, constant: 20),
        contentLabel.trailingAnchor.constraint(equalTo: contentCellView.trailingAnchor, constant: -12),
        contentLabel.bottomAnchor.constraint(equalTo: contentCellView.bottomAnchor, constant: -10)
        
    ])
    
}
    
    required init?(coder : NSCoder) {
        fatalError("error")
    }
    
}
