//
//  ChineseChessLoaderTests.swift
//  ChineseChessDivinationTests
//
//  Created by Paul Wen on 2022/12/12.
//

import XCTest
@testable import ChineseChessDivination

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
    func test_loaderRandom(){
        let sut = ChineseChessDivinationLoader()
        let total = 5
        let primary = Array(ChineseChessType.prototype[0..<total])
        sut.load(count: total) { result in
            switch result{
            case .success(let array):
                XCTAssertNotEqual(array, primary)
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
    }
}
