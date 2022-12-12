//
//  ChineseChessLoader.swift
//  ChineseChessDivination
//
//  Created by Paul Wen on 2022/12/12.
//

import Foundation

typealias LoadChineseChessResult = Result<[ChineseChessType],Error>

protocol ChineseChessLoader{
    func load(count: Int,completion: @escaping((LoadChineseChessResult) -> Void))
}
