//
//  ChineseChessLoaderTests.swift
//  ChineseChessDivinationTests
//
//  Created by Paul Wen on 2022/12/12.
//

import XCTest
import ChineseChessDivination

class ChineseChessDivinationLoader{
    var loadCount: Int?
    func load(loadCount: Int){
        self.loadCount = loadCount
    }
}

class ChineseChessLoaderTests: XCTestCase{
    func test_init(){
        let sut = ChineseChessDivinationLoader()
        XCTAssertNil(sut.loadCount)
    }
}
