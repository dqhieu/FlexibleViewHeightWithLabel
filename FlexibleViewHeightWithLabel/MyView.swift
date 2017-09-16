//
//  MyView.swift
//  FlexibleViewHeightWithLabel
//
//  Created by Dinh Quang Hieu on 9/10/17.
//  Copyright © 2017 Dinh Quang Hieu. All rights reserved.
//

import UIKit
import SnapKit

class MyView: UIView {

    private struct Constants {
        static let TOP_SPACING:         CGFloat = 10
        static let LEADING_SPACING:     CGFloat = 10
        static let TRAILING_SPACING:    CGFloat = 10
        static let MIDDLE_SPACING:      CGFloat = 10
        static let BOTTOM_SPACING:      CGFloat = 10
    }

    private var _titleLabel: UILabel!
    private var _subTitleLabel: UILabel!
    private var _contentLabel: UILabel!

    init(title: String? = nil, subTitle: String? = nil, content: String? = nil) {
        super.init(frame: .zero)
        setupComponents()
        setTitle(title, subTitle: subTitle, content: content)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponents()
    }

    private func setupComponents() {
        _titleLabel = UILabel(frame: .zero)
        _titleLabel.textColor = UIColor.black
        _titleLabel.numberOfLines = 0
        _titleLabel.backgroundColor = UIColor.red
        addSubview(_titleLabel)

        _subTitleLabel = UILabel(frame: .zero)
        _subTitleLabel.textColor = UIColor.black
        _subTitleLabel.numberOfLines = 0
        _subTitleLabel.backgroundColor = UIColor.green
        addSubview(_subTitleLabel)

        _contentLabel = UILabel(frame: .zero)
        _contentLabel.textColor = UIColor.black
        _contentLabel.numberOfLines = 0
        _contentLabel.backgroundColor = UIColor.yellow
        addSubview(_contentLabel)

        _titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Constants.TOP_SPACING)
            make.leading.equalToSuperview().offset(Constants.LEADING_SPACING)
            make.trailing.equalToSuperview().offset(-Constants.TRAILING_SPACING)
            make.height.greaterThanOrEqualTo(0)
        }

        _subTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self._titleLabel.snp.bottom).offset(Constants.MIDDLE_SPACING)
            make.leading.equalToSuperview().offset(Constants.LEADING_SPACING)
            make.trailing.equalToSuperview().offset(-Constants.TRAILING_SPACING)
            make.height.greaterThanOrEqualTo(0)
        }

        _contentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self._subTitleLabel.snp.bottom).offset(Constants.MIDDLE_SPACING)
            make.leading.equalToSuperview().offset(Constants.LEADING_SPACING)
            make.trailing.equalToSuperview().offset(-Constants.TRAILING_SPACING)
            make.bottom.equalToSuperview().offset(-Constants.BOTTOM_SPACING)
        }

        self.backgroundColor = UIColor.blue
    }

    public func setTitle(_ title: String? = nil, subTitle: String? = nil, content: String? = nil) {
        _titleLabel.text = title
        _subTitleLabel.text = subTitle
        _contentLabel.text = content
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

