# FrodoKEM Hardware Implementation for Post-Quantum Cryptography

## This repository belongs to the paper presented to the IEEE Latin America Transactions Journal ID 9651

## Key Encapsulation Mecanism (KEM) for Post-Quantum Cryptography

<p align='justify'>FrodoKEM is a post-quantum key-encapsulation mechanism, which means that it is designed to exchange keys securely between two parties. It is based on the learning with errors (LWE) problem, would be included for standardization by the International Organization for Standardization (ISO) and recommended for post-quantum cryptography (PQC) migration by the BSI (German Federal Office for Information Security) and the ANSSI (French Cybersecurity Agency). It is closely related to the challenging time-computational problem inherent to algebraically unstructured lattices.</p>

<p align='justify'>A KEM has three main components: </p>

1. **Key generation**: Alice generates a public and secret keypair, and sends the public key to Bob. The public key contains a matrix A and some noisy values related to a secret vector s (Figure 1).

<img src="https://github.com/faurbano/FrodoKEM/blob/main/images/keygen.png" width="100">

Figure 1. Key Generation

2. **Encapsulation**: Bob uses the public key to encapsulate a shared secret key. He sends the ciphertext to Alice and keeps the shared secret (Figure 2).
3. **Decapsulation**: Alice receives the ciphertext and uses her secret key to decapsulate it, recovering the same shared secret (Figure 2).

![Key Encapsulation Mechanism](https://github.com/faurbano/FrodoKEM/blob/main/images/kem_diagram.png)

Figure 2. Key Encapsulaion Mechanism.

## Instructions

<p align='justify'>Each folder contains the required VHDL files. To synthesize them, create a separate project, including all files in each folder. The main files are frodo_decaps.vhd, frodo_encaps.vhd, and frodo_keygen_640.vhd.</p>

## Synthesis Results on Artix-7

| Algorithm | LUTs |  FFs  | BRAM | DSP | Fmax (MHz) | Latency ($\Mu$s)| Power(mW)|
|-----------|------|-------|------|-----|------------|-----------------|:--------:|
| KeyGen    | 35398| 20648 | 10.5 |  1  |    135     |   14883.9       |   3.63.  |
| Encaps    | 1    |   1   |.     |.    |.           |.                |.         |
| Decaps    | 0    |   1   |.     |.    |.           |.                |.         |


Tabla 1. Synthesis results for FrodoKEM.