//
//  ChineseChessLoaderTests.swift
//  ChineseChessDivinationTests
//
//  Created by Paul Wen on 2022/12/12.
//

import XCTest
import ChineseChessDivination

class ChineseChessDivinationLoader: ChineseChessLoader{
    func load(count: Int, completion: @escaping ((ChineseChessDivination.LoadChineseChessResult) -> Void)) {
        let array = Array(repeating: ChineseChessType(chineseChess: .redKing), count: count)
        completion(.success(array))
    }
}

class ChineseChessLoaderTests: XCTestCase{
    func test_loaderCount(){
        let sut = ChineseChessDivinationLoader()
        let testLoadCount = 5
        var loadedCount = 0
        sut.load(count: testLoadCount) { result in
            switch result{
            case .success(let array):
                loadedCount = array.count
                XCTAssertEqual(loadedCount, testLoadCount)
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
    }
}
