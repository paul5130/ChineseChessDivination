//
//  ViewController.swift
//  ChineseChessDivinationApp
//
//  Created by Paul Wen on 2022/12/25.
//

import UIKit
import ChineseChessDivination
class ViewController: UIViewController {
    private let loader: ChineseChessLoader
    init(loader: ChineseChessLoader) {
        self.loader = loader
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loader.load(count: 5) { result in
            switch result{
            case .success(let chineseChessArray):
                print(chineseChessArray)
            case .failure(let error):
                print(error)
            }
        }
        // Do any additional setup after loading the view.
    }


}

