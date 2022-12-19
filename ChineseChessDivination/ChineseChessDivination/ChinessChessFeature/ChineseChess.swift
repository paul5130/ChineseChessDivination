//
//  ChineseChess.swift
//  ChineseChessDivination
//
//  Created by Paul Wen on 2022/12/11.
//

import Foundation
// 帥 仕 相 俥 傌 炮 兵
// 將 士 象 車 馬 包 卒
public struct ChineseChessType: Equatable{
    let chineseChess: ChineseChess
    let isVisible: Bool
    public init(chineseChess: ChineseChess, isVisible: Bool = false) {
        self.chineseChess = chineseChess
        self.isVisible = isVisible
    }
}

extension ChineseChessType{
    public static var prototype: [ChineseChessType]{
        [
            .init(chineseChess: .redKing),
            .init(chineseChess: .redMandarin),
            .init(chineseChess: .redMandarin),
            .init(chineseChess: .redBishop),
            .init(chineseChess: .redBishop),
            .init(chineseChess: .redRook),
            .init(chineseChess: .redRook),
            .init(chineseChess: .redKnight),
            .init(chineseChess: .redKnight),
            .init(chineseChess: .redCannon),
            .init(chineseChess: .redCannon),
            .init(chineseChess: .redPawn),
            .init(chineseChess: .redPawn),
            .init(chineseChess: .redPawn),
            .init(chineseChess: .redPawn),
            .init(chineseChess: .redPawn),
            .init(chineseChess: .blackKing),
            .init(chineseChess: .blackMandarin),
            .init(chineseChess: .blackMandarin),
            .init(chineseChess: .blackBishop),
            .init(chineseChess: .blackBishop),
            .init(chineseChess: .blackRook),
            .init(chineseChess: .blackRook),
            .init(chineseChess: .blackKnight),
            .init(chineseChess: .blackKnight),
            .init(chineseChess: .blackCannon),
            .init(chineseChess: .blackCannon),
            .init(chineseChess: .blackPawn),
            .init(chineseChess: .blackPawn),
            .init(chineseChess: .blackPawn),
            .init(chineseChess: .blackPawn),
            .init(chineseChess: .blackPawn)
        ]
    }
}

public enum ChineseChess{
    /// 象
    case blackBishop
    /// 包
    case blackCannon
    /// 將
    case blackKing
    /// 馬
    case blackKnight
    /// 士
    case blackMandarin
    /// 卒
    case blackPawn
    /// 車
    case blackRook
    /// 相
    case redBishop
    /// 炮
    case redCannon
    /// 帥
    case redKing
    /// 傌
    case redKnight
    case redMandarin
    case redPawn
    case redRook
    var chinese: String{
        switch self{
        case .redKing:
            return "帥"
        case .blackBishop:
            return "象"
        case .blackCannon:
            return "包"
        case .blackKing:
            return "將"
        case .blackKnight:
            return "馬"
        case .blackMandarin:
            return "士"
        case .blackPawn:
            return "卒"
        case .blackRook:
            return "車"
        case .redBishop:
            return "相"
        case .redCannon:
            return "炮"
        case .redKnight:
            return "傌"
        case .redMandarin:
            return "仕"
        case .redPawn:
            return "兵"
        case .redRook:
            return "俥"
        }
    }
}
