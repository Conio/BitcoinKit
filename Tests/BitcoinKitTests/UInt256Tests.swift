//
//  UInt256Tests.swift
//
//  Copyright © 2018 pebble8888  All rights reserved.
//

import XCTest
@testable import BitcoinKit

class UInt256Tests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func test1() {
		let v: UInt256 = UInt256(UInt(1592868)) << UInt(200)
		XCTAssert(v != UInt256.zero)
    }
	
	func testzero() {
		let v: UInt256 = UInt256(UInt(0))
		XCTAssert(v == UInt256.zero)
	}
	
	func testUInt64() {
		XCTAssertEqual(UInt64(1).hex, "0000000000000001")
		XCTAssertEqual(UInt64.max.hex, "ffffffffffffffff")
	}
	
	func testUInt256() {
		XCTAssertEqual(UInt256(UInt(1)).hex, "0000000000000000000000000000000000000000000000000000000000000001")
		XCTAssertEqual(UInt256.max.hex, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
	}
	
	func testUInt256ShiftLeft1() {
		XCTAssertEqual((UInt256(UInt(1)) << UInt(0)).hex, "0000000000000000000000000000000000000000000000000000000000000001")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(1)).hex, "0000000000000000000000000000000000000000000000000000000000000002")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(2)).hex, "0000000000000000000000000000000000000000000000000000000000000004")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(3)).hex, "0000000000000000000000000000000000000000000000000000000000000008")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(4)).hex, "0000000000000000000000000000000000000000000000000000000000000010")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(5)).hex, "0000000000000000000000000000000000000000000000000000000000000020")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(6)).hex, "0000000000000000000000000000000000000000000000000000000000000040")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(7)).hex, "0000000000000000000000000000000000000000000000000000000000000080")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(8)).hex, "0000000000000000000000000000000000000000000000000000000000000100")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(9)).hex, "0000000000000000000000000000000000000000000000000000000000000200")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(10)).hex, "0000000000000000000000000000000000000000000000000000000000000400")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(11)).hex, "0000000000000000000000000000000000000000000000000000000000000800")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(12)).hex, "0000000000000000000000000000000000000000000000000000000000001000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(13)).hex, "0000000000000000000000000000000000000000000000000000000000002000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(14)).hex, "0000000000000000000000000000000000000000000000000000000000004000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(15)).hex, "0000000000000000000000000000000000000000000000000000000000008000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(16)).hex, "0000000000000000000000000000000000000000000000000000000000010000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(17)).hex, "0000000000000000000000000000000000000000000000000000000000020000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(18)).hex, "0000000000000000000000000000000000000000000000000000000000040000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(19)).hex, "0000000000000000000000000000000000000000000000000000000000080000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(20)).hex, "0000000000000000000000000000000000000000000000000000000000100000")

		XCTAssertEqual((UInt256(UInt(1)) << UInt(30)).hex, "0000000000000000000000000000000000000000000000000000000040000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(40)).hex, "0000000000000000000000000000000000000000000000000000010000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(50)).hex, "0000000000000000000000000000000000000000000000000004000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(60)).hex, "0000000000000000000000000000000000000000000000001000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(70)).hex, "0000000000000000000000000000000000000000000000400000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(80)).hex, "0000000000000000000000000000000000000000000100000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(90)).hex, "0000000000000000000000000000000000000000040000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(100)).hex, "0000000000000000000000000000000000000010000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(110)).hex, "0000000000000000000000000000000000004000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(120)).hex, "0000000000000000000000000000000001000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(130)).hex, "0000000000000000000000000000000400000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(140)).hex, "0000000000000000000000000000100000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(150)).hex, "0000000000000000000000000040000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(160)).hex, "0000000000000000000000010000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(170)).hex, "0000000000000000000004000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(180)).hex, "0000000000000000001000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(190)).hex, "0000000000000000400000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(200)).hex, "0000000000000100000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(210)).hex, "0000000000040000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(220)).hex, "0000000010000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(230)).hex, "0000004000000000000000000000000000000000000000000000000000000000")

		XCTAssertEqual((UInt256(UInt(1)) << UInt(240)).hex, "0001000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(241)).hex, "0002000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(242)).hex, "0004000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(243)).hex, "0008000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(244)).hex, "0010000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(245)).hex, "0020000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(246)).hex, "0040000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(247)).hex, "0080000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(248)).hex, "0100000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(249)).hex, "0200000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(250)).hex, "0400000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(251)).hex, "0800000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(252)).hex, "1000000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(253)).hex, "2000000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(254)).hex, "4000000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(255)).hex, "8000000000000000000000000000000000000000000000000000000000000000")
		XCTAssertEqual((UInt256(UInt(1)) << UInt(256)).hex, "0000000000000000000000000000000000000000000000000000000000000000")
	}

	func testUInt256ShiftRight1() {
		XCTAssertEqual((UInt256.max >> UInt(0)).hex, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(1)).hex, "7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(2)).hex, "3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(3)).hex, "1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(4)).hex, "0fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(5)).hex, "07ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(6)).hex, "03ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(7)).hex, "01ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(8)).hex, "00ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(9)).hex, "007fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(10)).hex, "003fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(11)).hex, "001fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(12)).hex, "000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(13)).hex, "0007ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(14)).hex, "0003ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(15)).hex, "0001ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(16)).hex, "0000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(17)).hex, "00007fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(18)).hex, "00003fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(19)).hex, "00001fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(20)).hex, "00000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff")

		XCTAssertEqual((UInt256.max >> UInt(30)).hex, "00000003ffffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(40)).hex, "0000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(50)).hex, "0000000000003fffffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(60)).hex, "000000000000000fffffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(70)).hex, "000000000000000003ffffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(80)).hex, "00000000000000000000ffffffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(90)).hex, "00000000000000000000003fffffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(100)).hex, "0000000000000000000000000fffffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(110)).hex, "0000000000000000000000000003ffffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(120)).hex, "000000000000000000000000000000ffffffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(130)).hex, "000000000000000000000000000000003fffffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(140)).hex, "00000000000000000000000000000000000fffffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(150)).hex, "00000000000000000000000000000000000003ffffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(160)).hex, "0000000000000000000000000000000000000000ffffffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(170)).hex, "0000000000000000000000000000000000000000003fffffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(180)).hex, "000000000000000000000000000000000000000000000fffffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(190)).hex, "000000000000000000000000000000000000000000000003ffffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(200)).hex, "00000000000000000000000000000000000000000000000000ffffffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(210)).hex, "00000000000000000000000000000000000000000000000000003fffffffffff")
		XCTAssertEqual((UInt256.max >> UInt(220)).hex, "0000000000000000000000000000000000000000000000000000000fffffffff")
		XCTAssertEqual((UInt256.max >> UInt(230)).hex, "0000000000000000000000000000000000000000000000000000000003ffffff")

		XCTAssertEqual((UInt256.max >> UInt(240)).hex, "000000000000000000000000000000000000000000000000000000000000ffff")
		XCTAssertEqual((UInt256.max >> UInt(241)).hex, "0000000000000000000000000000000000000000000000000000000000007fff")
		XCTAssertEqual((UInt256.max >> UInt(242)).hex, "0000000000000000000000000000000000000000000000000000000000003fff")
		XCTAssertEqual((UInt256.max >> UInt(243)).hex, "0000000000000000000000000000000000000000000000000000000000001fff")
		XCTAssertEqual((UInt256.max >> UInt(244)).hex, "0000000000000000000000000000000000000000000000000000000000000fff")
		XCTAssertEqual((UInt256.max >> UInt(245)).hex, "00000000000000000000000000000000000000000000000000000000000007ff")
		XCTAssertEqual((UInt256.max >> UInt(246)).hex, "00000000000000000000000000000000000000000000000000000000000003ff")
		XCTAssertEqual((UInt256.max >> UInt(247)).hex, "00000000000000000000000000000000000000000000000000000000000001ff")
		XCTAssertEqual((UInt256.max >> UInt(248)).hex, "00000000000000000000000000000000000000000000000000000000000000ff")
		XCTAssertEqual((UInt256.max >> UInt(249)).hex, "000000000000000000000000000000000000000000000000000000000000007f")
		XCTAssertEqual((UInt256.max >> UInt(250)).hex, "000000000000000000000000000000000000000000000000000000000000003f")
		XCTAssertEqual((UInt256.max >> UInt(251)).hex, "000000000000000000000000000000000000000000000000000000000000001f")
		XCTAssertEqual((UInt256.max >> UInt(252)).hex, "000000000000000000000000000000000000000000000000000000000000000f")
		XCTAssertEqual((UInt256.max >> UInt(253)).hex, "0000000000000000000000000000000000000000000000000000000000000007")
		XCTAssertEqual((UInt256.max >> UInt(254)).hex, "0000000000000000000000000000000000000000000000000000000000000003")
		XCTAssertEqual((UInt256.max >> UInt(255)).hex, "0000000000000000000000000000000000000000000000000000000000000001")
		XCTAssertEqual((UInt256.max >> UInt(256)).hex, "0000000000000000000000000000000000000000000000000000000000000000")
	}
	
	func testUInt256Hex1() {
		XCTAssertEqual(UInt256(hex: "0102030405060708f1f2f3f4f5f6f7f8e1e2e3e4e5e6e7e8d1d2d3d4d5d6d7d8")!.hex, "0102030405060708f1f2f3f4f5f6f7f8e1e2e3e4e5e6e7e8d1d2d3d4d5d6d7d8")
		XCTAssertEqual(UInt256(hex: "0102030405060708f1f2f3f4f5f6f7f8e1e2e3e4e5e6e7e8d1d2d3d4d5d6d7d8")!.data.hex, "d8d7d6d5d4d3d2d1e8e7e6e5e4e3e2e1f8f7f6f5f4f3f2f10807060504030201")
	}
	
	func testUInt256Compare1() {
		XCTAssertTrue(UInt256(hex: "00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000")!
			        < UInt256(hex: "00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000001")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_f0000000_f0000000_f0000000_f0000000_f0000000_f0000000_f0000000")!
			        < UInt256(hex: "00000001_00000000_00000000_00000000_00000000_00000000_00000000_00000000")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_00d321ae_f0000000_f0000000_f0000000_f0000000_f0000000_f0000000")!
			        < UInt256(hex: "00000000_00d321af_00000000_00000000_00000000_00000000_00000000_00000000")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_00000000_0000eefe_f0000000_f0000000_f0000000_f0000000_f0000000")!
			        < UInt256(hex: "00000000_00000000_0000efed_00000000_00000000_00000000_00000000_00000000")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_00000000_00000000_01020304_0000000f_0000000f_0000000f_0000000f")!
			        < UInt256(hex: "00000000_00000000_00000000_0e000000_00000000_00000000_00000000_00000000")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_00000000_00000000_00000000_d5632433_0000000f_0000000f_0000000f")!
			        < UInt256(hex: "00000000_00000000_00000000_00000000_f1000000_00000000_00000000_00000000")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_00000000_00000000_00000000_00000000_21234567_0000000f_0000000f")!
			        < UInt256(hex: "00000000_00000000_00000000_00000000_00000000_31234567_0000000f_00000000")!)
		
		XCTAssertTrue(UInt256(hex: "00000000_00000000_00000000_00000000_00000000_00000000_1200000f_0000000f")!
			        < UInt256(hex: "00000000_00000000_00000000_00000000_00000000_00000000_1300000f_00000000")!)
	}
	
}
