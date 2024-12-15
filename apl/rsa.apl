⍝ RSA Implementation in APL

⍝ Helper function: Compute GCD
GCD ← { ⍺ = 0: ⍵ ⋄ ⍵ | ⍺: (⍵ | ⍺) GCD ⍵ ⋄ ⍺ }

⍝ Helper function: Compute modular inverse
ModInverse ← { 
    ⍝ Find x such that (a * x) ≡ 1 (mod m)
    (a m) ← ⍵
    x ← (⍳m) ⌿ (a × ⍳m) | m ⍝ Find all candidates
    x ⍳ 1 ⍝ Return the smallest solution
}

⍝ Step 1: Key Generation
⍝ Prime numbers p and q (choose small primes for simplicity)
p ← 61
q ← 53

⍝ Compute n = p * q
n ← p × q

⍝ Compute φ(n) = (p-1) * (q-1)
phi ← (p-1) × (q-1)

⍝ Choose public key e such that 1 < e < φ(n) and GCD(e, φ(n)) = 1
e ← 17 ⍝ Common choice for e is 3, 17, or 65537

⍝ Verify GCD(e, φ(n)) = 1
'GCD of e and φ(n):' ⎕← e GCD phi

⍝ Compute private key d such that (d * e) ≡ 1 (mod φ(n))
d ← (e phi) ModInverse

'Public Key (e, n):' ⎕← e n
'Private Key (d, n):' ⎕← d n

⍝ Step 2: Encryption
⍝ Convert plaintext (numeric representation) to ciphertext
PlainText ← 42 ⍝ Example plaintext (numeric)
CipherText ← (PlainText*e) | n

'CipherText:' ⎕← CipherText

⍝ Step 3: Decryption
⍝ Convert ciphertext back to plaintext using the private key
DecryptedText ← (CipherText*d) | n

'DecryptedText:' ⎕← DecryptedText
