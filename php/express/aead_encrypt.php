<?php
// LEVEL: STD
declare(strict_types=1);

$key = sodium_crypto_aead_xchacha20poly1305_ietf_keygen();
$nonce = random_bytes(SODIUM_CRYPTO_AEAD_XCHACHA20POLY1305_IETF_NPUBBYTES);
$sealed = sodium_crypto_aead_xchacha20poly1305_ietf_encrypt("secret", "", $nonce, $key);
echo sodium_crypto_aead_xchacha20poly1305_ietf_decrypt($sealed, "", $nonce, $key), "\n";
$sealed[0] = chr(ord($sealed[0]) ^ 1);
echo sodium_crypto_aead_xchacha20poly1305_ietf_decrypt($sealed, "", $nonce, $key) === false ? "rejected" : "accepted", "\n";
