//
//  QuestionImageCell.swift
//  PICKY
//
//  Created by 김하은 on 12/19/23.
//

import UIKit

final class QuestionImageCell: BaseCell {

    let alphabetLabel = {
       let view = UILabel()
        view.font = .customFont(style: .bold,ofSize: 18)
        view.textAlignment = .center
        return view
    }()

    let questionImage = {
       let view = UIImageView()
        view.layer.cornerRadius = 16
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let gradationView = {
       let view = UIView()
        view.backgroundColor = .init(white: 1, alpha: 0.5)
        return view
    }()
    
    let percentlabel = {
       let view = UILabel()
        view.font = .customFont(style: .bold,ofSize: 18)
        view.textAlignment = .center
        return view
    }()
    
    override func setConfiguration() {
        addSubview(alphabetLabel)
        addSubview(questionImage)
        addSubview(gradationView)
        addSubview(percentlabel)
    }
    
    override func setConstraints() {
        alphabetLabel.snp.makeConstraints {
            $0.top.equalTo(self)
            $0.centerX.equalTo(self)
        }
        
        questionImage.snp.makeConstraints {
            $0.top.equalTo(alphabetLabel.snp.bottom).offset(8)
            $0.horizontalEdges.bottom.equalTo(self)
        }
        
        gradationView.snp.makeConstraints {
            $0.edges.equalTo(questionImage)
        }
        
        percentlabel.snp.makeConstraints {
            $0.bottom.equalTo(gradationView.snp.bottom).inset(4)
            $0.centerX.equalTo(self)
        }
    }
}
