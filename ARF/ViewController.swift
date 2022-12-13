//
//  ViewController.swift
//  ARF
//
//  Created by 滑川裕里瑛 on 2022/12/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        func createBasicListLayout() -> UICollectionViewLayout {
          // item 구성
          let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                heightDimension: .fractionalHeight(1.0))

          let item = NSCollectionLayoutItem(layoutSize: itemSize)

          // group 구성
          let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                 heightDimension: .absolute(44))

          let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                         subitems: [item])

          // section 구성
          let section = NSCollectionLayoutSection(group: group)

          // CompositionalLaytou 구성
          let layout = UICollectionViewCompositionalLayout(section: section)
            
          let absoluteSize = NSCollectionLayoutSize(widthDimension: .absolute(44),
                                                      heightDimension: .absolute(44))
            
            let estimatedSize = NSCollectionLayoutSize(widthDimension: .estimated(200),
                                                       heightDimension: .estimated(100))
            
            let fractionalSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2),
                                                        heightDimension: .fractionalWidth(0.2))
          
          return layout
        }
        
       // private func layout() -> UICollectionViewLayout {
               // return UICollectionViewCompositionalLayout { [weak self] section, environment -> NSCollectionLayoutSection? in
                 //   guard let self = self else { return nil }
                   // switch section {
                  //  case 0: return self.createBannerSection(height: self.mainBannerHeight)
                    //case 1: return self.createLocationSection()
                   // case 2: return //self.createCategorySection()
                   // case 5: return self.createBannerSection(height: self.subBannerHeight)
                    //default: return self.createBasicSection()
                    }
                }
            
            
            private func createBasicSection() -> NSCollectionLayoutSection {
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3),
                                                      heightDimension: .estimated(230))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 5, bottom: 0, trailing: 5)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9),
                                                       heightDimension: .estimated(230))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                               subitem: item,
                                                               count: 3)
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                let sectionHeader = createSectionHeader()
                section.boundarySupplementaryItems  = [sectionHeader]
                section.contentInsets = .init(top: 10, leading: 5, bottom: 20, trailing: 5)
                return section
            }
            
            private func createSectionHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                                     heightDimension: .absolute(30))
                let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                                elementKind: UICollectionView.elementKindSectionHeader,
                                                                                alignment: .topLeading)
                return sectionHeader
            }
    
    
   




