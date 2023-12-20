//
//  PickyView.swift
//  PICKY
//
//  Created by 김하은 on 12/16/23.
//

import UIKit

class PickyView: BaseView {

    let topView = TopView()
    
    let quoteUpImage = {
        let view = UIImageView()
        view.image = UIImage.iconQuoteUp
        view.contentMode = .scaleAspectFit
        return view
    }()

    let questionLabel = {
        let view = UILabel()
        view.text = "A와 B 중 뭐가 더 좋을까요?"
        view.font = .customFont(ofSize: 18)
        view.textAlignment = .center
        view.numberOfLines = 3
        view.lineBreakMode = .byTruncatingTail
        return view
    }()

    let quoteDownImage = {
        let view = UIImageView()
        view.image = UIImage.iconQuoteDown
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var questionCollectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        view.collectionViewLayout = collectionViewLayout
        return view
    }()

    private lazy var collectionViewLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 2 - 34, height: 200)
        return layout
    }()

    
    override func setConfiguration() {
        addSubview(topView)
        addSubview(quoteUpImage)
        addSubview(questionLabel)
        addSubview(quoteDownImage)
        addSubview(questionCollectionView)
    }
    
    override func setConstraints() {
        topView.snp.makeConstraints {
            $0.top.horizontalEdges.equalTo(self.safeAreaLayoutGuide)
            $0.height.equalTo(30)
        }
        
        quoteUpImage.snp.makeConstraints {
            $0.top.equalTo(topView.snp.bottom).offset(36)
            $0.leading.equalTo(questionLabel.snp.leading)
            $0.height.equalTo(30)
        }
        
        questionLabel.snp.makeConstraints {
            $0.top.equalTo(quoteUpImage.snp.bottom)
            $0.horizontalEdges.equalTo(self).inset(24)
        }
        
        quoteDownImage.snp.makeConstraints {
            $0.top.equalTo(questionLabel.snp.bottom)
            $0.trailing.equalTo(questionLabel.snp.trailing)
            $0.height.equalTo(30)
        }
        
        questionCollectionView.snp.makeConstraints {
            $0.top.equalTo(quoteDownImage.snp.bottom).offset(24)
            $0.horizontalEdges.equalTo(self).inset(16)
            $0.height.equalTo(200)
        }
    }
}
