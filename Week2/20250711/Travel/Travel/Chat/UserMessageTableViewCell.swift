//
//  UserMessageTableViewCell.swift
//  Travel
//
//  Created by Suji Jang on 7/20/25.
//

import UIKit

class UserMessageTableViewCell: UITableViewCell {

    @IBOutlet var dateDividerButton: UIButton!
    @IBOutlet private var messageBackgroundView: UIView!
    @IBOutlet private var messageLabel: UILabel!
    @IBOutlet private var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    private func configureUI() {
        backgroundColor = .clear
        
        messageBackgroundView.backgroundColor = .systemGray5
        messageBackgroundView.layer.borderColor = UIColor.systemGray2.cgColor
        messageBackgroundView.layer.borderWidth = 0.8
        messageBackgroundView.layer.cornerRadius = 14
        messageBackgroundView.clipsToBounds = true
        
        messageLabel.font = CustomFont.chatBody
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .left
        
        dateLabel.font = CustomFont.footnote
        dateLabel.textColor = .gray
        dateLabel.textAlignment = .right
    }
    
    func configureData(_ row: Chat, changeDate: Bool = true) {
        messageLabel.text = row.message
        dateLabel.text = CustomDate.formattingHour(row.date)
        dateDividerButton.divider(CustomDate.formattingChangeDay(row.date), hidden: changeDate)
    }
}
