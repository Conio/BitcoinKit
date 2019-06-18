//
//  OpenSSL.m
//
//  Copyright © 2018 Kishikawa Katsumi. All rights reserved.
//  Copyright © 2018 BitcoinKit developers
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "BitcoinKitPrivate.h"
#import <openssl/sha.h>
#import <openssl/ripemd.h>
#import <openssl/hmac.h>
#import <openssl/ec.h>
#import <openssl/bn.h>
#import <secp256k1.h>

@implementation _Hash

/*
+ (NSData *)sha1:(NSData *)data {
    NSMutableData *result = [NSMutableData dataWithLength:SHA512_DIGEST_LENGTH];
    SHA1(data.bytes, data.length, result.mutableBytes);
    return result;
}
 */
 
+ (NSData *)sha256:(NSData *)data {
    NSMutableData *result = [NSMutableData dataWithLength:SHA256_DIGEST_LENGTH];
    SHA256(data.bytes, data.length, result.mutableBytes);
    return result;
}

+ (NSData *)sha256sha256:(NSData *)data {
    return [self sha256:[self sha256:data]];
}

+ (NSData *)ripemd160:(NSData *)data {
    NSMutableData *result = [NSMutableData dataWithLength:RIPEMD160_DIGEST_LENGTH];
    RIPEMD160(data.bytes, data.length, result.mutableBytes);
    return result;
}

+ (NSData *)sha256ripemd160:(NSData *)data {
    return [self ripemd160:[self sha256:data]];
}

+ (NSData *)hmacsha512:(NSData *)data key:(NSData *)key {
    unsigned int length = SHA512_DIGEST_LENGTH;
    NSMutableData *result = [NSMutableData dataWithLength:length];
    HMAC(EVP_sha512(), key.bytes, (int)key.length, data.bytes, data.length, result.mutableBytes, &length);
    return result;
}

@end

@implementation _Key

+ (NSData *)deriveKey:(NSData *)password salt:(NSData *)salt iterations:(NSInteger)iterations keyLength:(NSInteger)keyLength {
    NSMutableData *result = [NSMutableData dataWithLength:keyLength];
    PKCS5_PBKDF2_HMAC(password.bytes, (int)password.length, salt.bytes, (int)salt.length, (int)iterations, EVP_sha512(), (int)keyLength, result.mutableBytes);
    return result;
}

@end

@implementation _Crypto

+ (NSData *)signMessage:(NSData *)message withPrivateKey:(NSData *)privateKey {
    secp256k1_context *ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN);
    secp256k1_ecdsa_signature signature;
    secp256k1_ecdsa_signature normalizedSignature;
    secp256k1_ecdsa_sign(ctx, &signature, message.bytes, privateKey.bytes, NULL, NULL);
    secp256k1_ecdsa_signature_normalize(ctx, &normalizedSignature, &signature);
    size_t siglen = 74;
    NSMutableData *der = [NSMutableData dataWithLength:siglen];
    secp256k1_ecdsa_signature_serialize_der(ctx, der.mutableBytes, &siglen, &normalizedSignature);
    der.length = siglen;
    secp256k1_context_destroy(ctx);
    return der;
}

+ (BOOL)verifySignature:(NSData *)sigData message:(NSData *)message  publicKey:(NSData *)pubkeyData {
    secp256k1_context *ctx = secp256k1_context_create(SECP256K1_CONTEXT_VERIFY);
    secp256k1_ecdsa_signature signature;
    secp256k1_pubkey pubkey;

    secp256k1_ecdsa_signature_parse_der(ctx, &signature, sigData.bytes, sigData.length);
    if (secp256k1_ec_pubkey_parse(ctx, &pubkey, pubkeyData.bytes, pubkeyData.length) != 1) {
        return FALSE;
    };
    
    if (secp256k1_ecdsa_verify(ctx, &signature, message.bytes, &pubkey) != 1) {
        return FALSE;
    };
    secp256k1_context_destroy(ctx);
    return TRUE;
}
@end
