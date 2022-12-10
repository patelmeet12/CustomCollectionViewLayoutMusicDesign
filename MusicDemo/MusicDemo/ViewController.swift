//
//  ViewController.swift
//  MusicDemo
//
//  Created by iQlanceMacmini on 06/02/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrMusic = [UIImage(named: "create_your_birds_icn"), UIImage(named: "create_your_ocean_icn"), UIImage(named: "create_your_heartbeat_icn"), UIImage(named: "create_your_river_icn"), UIImage(named: "create_your_night_icn"), UIImage(named: "create_your_winds_icn"), UIImage(named: "create_your_rains_icn"), UIImage(named: "create_your_piano_icn"), UIImage(named: "create_your_waterfall_icn"), UIImage(named: "create_your_guitar_icn"), UIImage(named: "create_your_melody_icn"), UIImage(named: "create_your_campfire_icn"), UIImage(named: "create_your_birds_icn"), UIImage(named: "create_your_ocean_icn"), UIImage(named: "create_your_heartbeat_icn"), UIImage(named: "create_your_river_icn"), UIImage(named: "create_your_night_icn"), UIImage(named: "create_your_winds_icn"), UIImage(named: "create_your_rains_icn"), UIImage(named: "create_your_piano_icn"), UIImage(named: "create_your_waterfall_icn"), UIImage(named: "create_your_guitar_icn"), UIImage(named: "create_your_melody_icn"), UIImage(named: "create_your_campfire_icn")]

    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpLayout()
    }
    
    // ---------------------------------------------
    // MARK:- Layou setup
    // —————————————————————————————————————————————
    
    func SetUpLayout(){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout1 = collectionView.collectionViewLayout as? CustomCollectionViewLayout
        layout1?.delegate = self
    }
    
    // MARK: - CollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMusic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! collectionViewCell
        
        cell.img.image = arrMusic[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
            
        cell.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: .curveEaseOut, animations: {
            cell.transform = .identity
        }, completion: nil)
    }

}

extension ViewController: CustomCollectionViewDelegate {
    
    func theNumberOfItemsInCollectionView() -> Int {
        
        return arrMusic.count
    }
}
