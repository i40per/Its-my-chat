//
//  LoginViewController.swift
//  Its my chat
//
//  Created by MacBook on 10.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var collectionView: UICollectionView!
    let slidesSlider = SliderSlides()
    var slides:[Slides] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
        slides = slidesSlider.getSlides()
        
    }
    
    func configCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .gray
        collectionView.isPagingEnabled = true
        
        self.view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: SlideCollectionViewCell.reuseId, bundle: nil), forCellWithReuseIdentifier: SlideCollectionViewCell.reuseId)
    }
}

extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SlideCollectionViewCell.reuseId, for: indexPath) as! SlideCollectionViewCell
        let slide = slides[indexPath.row]
        cell.config(slide: slide)
        return cell
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.view.frame.size
        
    }
}
