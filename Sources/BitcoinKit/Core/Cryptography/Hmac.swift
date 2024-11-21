import CryptoSwift

public struct HmacSha512 {}
public extension HmacSha512 {
    static func hash(_ data: Data, key: Data) -> Data? {
        let hmac = HMAC(key: key.bytes, variant: .sha2(.sha512))
        guard let entropy = try? hmac.authenticate(data.bytes), entropy.count == 64 else { return nil }
        return Data(entropy)
    }
}