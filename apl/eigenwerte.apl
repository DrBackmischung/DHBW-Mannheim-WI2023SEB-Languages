A ← 3 3 ⍴ 2 1 3 1 3 2 3 2 4

'Matrix A:' ⎕← A

(λ V) ← ⌹⍥⊖¨A ⊤⍨ ⍬

'Eigenvalues (λ):' ⎕← λ

'Eigenvectors (columns of V):' ⎕← V

'Verification (A.V - λ.V):' ⎕← (A+.×V) - λ×V
