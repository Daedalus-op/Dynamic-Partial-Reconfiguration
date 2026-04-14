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

|-----------------|-------------|------------|
| Boards          | Arty A7 35T | Pynq Z2    |
|-----------------|-------------|------------|
| Counter         | 6318898     |            |

                   37150983
| JTAG Latency    | 0.0632 s    | 0.0628 s   |
| JTAG Throughput | 2.603 MB/s  | 3.235 MB/s |

                    1.908 MB/s
| --------------- | ----------- | ---------- |
| Counter         |             |            |
| PCAP Latency    | NA          | 0.0011 s   |
| PCAP Throughput | NA          | 183.2 MB/s |
| --------------- | ----------- | ---------- |
| Counter         |             |            |
| ICAP Latency    | -           | -          |
| ICAP Throughput | -           | -          |
|-----------------|-------------|------------|

> [!NOTE]
> Arty Partial Bitstream File Size:- 164534 Bytes
                                     709190
> Pynq Partial Bitstream File Size:- 203308 Bytes

