import XCTest
@testable import BitcoinKit

class Ripemd160Tests: XCTestCase {

    func testHash() {
        [
            ("", "9c1185a5c5e9fc54612808977ee8f548b2258d31"),
            ("The quick brown fox jumps over the lazy dog", "37f332f68db77bd9d7edd4969571ad671cf9dd3b"),
            ("The quick brown fox jumps over the lazy cog", "132072df690933835eb8b6ad0b77e7b6f14acad7"),
            ("a", "0bdc9d2d256b3ee9daae347be6f4dc835a467ffe"),
            ("abc", "8eb208f7e05d987a9b044a8e98c6b087f15a0bfc"),
            ("message digest", "5d0689ef49d2fae572b881b123a85ffa21595f36"),
            ("abcdefghijklmnopqrstuvwxyz", "f71c27109c692c1b56bbdceb5b9d2865b3708dbc"),
            ("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq", "12a053384a9c0c88e405a06c27dcf49ada62eb2b"),
            ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", "b0e20b6e3116640286ed3a87a5713079b21f5189"),
            (String(repeating: "1234567890", count: 8), "9b752e45573d4b39f4dbd3323cab82bf63326bfb"),
            (String(repeating: "a", count: 1_000_000), "52783243c1697bdbe16d37f97f68f08325dc1528")
        ].forEach {
            // Given
            let message = $0.0
            let expected = $0.1

            // When
            let hash = Ripemd160.hash(message: message.data)
            let actual = hash.toHexString()

            // Then
            XCTAssertEqual(actual, expected)
        }
    }
}
