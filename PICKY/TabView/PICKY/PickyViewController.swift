//
//  PickyViewController.swift
//  PICKY
//
//  Created by 김하은 on 12/16/23.
//

import UIKit

final class PickyViewController: UIViewController {

    let mainView = PickyView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        mainView.questionCollectionView.delegate = self
        mainView.questionCollectionView.dataSource = self
        mainView.questionCollectionView.register(QuestionImageCell.self, forCellWithReuseIdentifier: QuestionImageCell.identifier)
        
        print("token", UserDefaults.standard.string(forKey: UserDefaultsKeyType.token.rawValue))
        print("refreshToken", UserDefaults.standard.string(forKey: UserDefaultsKeyType.refreshToken.rawValue))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = CommentViewController()
        vc.isModalInPresentation = true
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.custom { _ in
                return 100
            }, .large()]
            
            sheet.largestUndimmedDetentIdentifier = .large
            sheet.prefersGrabberVisible = true
        }

        present(vc, animated: true)
    }
}

extension PickyViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  mainView.questionCollectionView.dequeueReusableCell(withReuseIdentifier: QuestionImageCell.identifier, for: indexPath) as? QuestionImageCell else { return UICollectionViewCell() }
        
        cell.alphabetLabel.text = "A"
        cell.questionImage.image = .emptyProfile
        cell.percentlabel.text = "100%"
        //cell.gradationView
        
        return cell
    }
}
