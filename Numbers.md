# Reconfigurable Riscv Coproccessor

## Dependencies
- CFU playground
- Vivado DFx

## TODO
- [ ] Arty A7
    - [x] JTAG
    - [ ] ICAP
- [ ] Pynq Z2
    - [x] JTAG
    - [-] PCAP
    - [ ] ICAP

## Results

| Configuration | Metric | Arty A7-35T | PYNQ-Z2 |
|---------------|--------|-------------|---------|
| JTAG | Counter | 6,318,898 | — |
| JTAG | Latency | 63.2 ms | 62.8 ms |
| JTAG | Throughput | 2.603 MB/s | 3.235 MB/s |
| PCAP | Latency | N/A | 1.1 ms |
| PCAP | Throughput | N/A | 183.2 MB/s |
| ICAP | Latency | — | — |
| ICAP | Throughput | — | — |

> [!NOTE]
> Arty Partial Bitstream File Size:- 164534 Bytes
> Pynq Partial Bitstream File Size:- 203308 Bytes

