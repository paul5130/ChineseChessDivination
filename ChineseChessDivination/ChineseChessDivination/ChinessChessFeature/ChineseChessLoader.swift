//
//  ChineseChessLoader.swift
//  ChineseChessDivination
//
//  Created by Paul Wen on 2022/12/12.
//

import Foundation

public typealias LoadChineseChessResult = Result<[ChineseChessType],Error>

public protocol ChineseChessLoader{
    func load(count: Int,completion: @escaping((LoadChineseChessResult) -> Void))
}
