# Implementations

## Table Of Contents
- [DFX Tutorials](#dfx-tutorials)
- [CNN (AlexNet)](#cnn-alexnet)

## DFX Tutorials
### Brief
- 
### Profiling
#### shift_right_count_up/shift_down_count_down utilisation
|      Site Type      | Used | Fixed | Prohibited | Available | Util% |
| :-----------------: | :--: | :---: | :--------: | :-------: | :---: |
|        Slice        |  21  |   0   |     0      |   15850   | 0.13  |
|    LUT as Logic     |  10  |   0   |     0      |   63400   | 0.02  |
|    LUT as Memory    |  0   |   0   |     0      |   19000   | 0.00  |
|   Slice Registers   |  64  |   0   |     0      |  126800   | 0.05  |
| Unique Control Sets |  2   |       |     0      |   15850   | 0.01  |
|   Block RAM Tile    |  1   |   0   |     0      |    135    | 0.74  |
|        DSPs         |  0   |   0   |     0      |    240    | 0.00  |

#### shift_right_count_up/shift_down_count_down timing details
> ---------------------------------------------------------------------------------------------------
> - From Clock:  clk_p
>   - To Clock:  clk_p
> 
> - Setup :            0  Failing Endpoints,  Worst Slack        2.022ns,  Total Violation        0.000ns
> - Hold  :            0  Failing Endpoints,  Worst Slack        0.109ns,  Total Violation        0.000ns
> - PW    :            0  Failing Endpoints,  Worst Slack        2.000ns,  Total Violation        0.000ns
> ---------------------------------------------------------------------------------------------------

## CNN (AlexNet)
### Brief
- 
### Profiling
| Bram | DSP | FF  | LUT | URAM |
| :--: | :-: | :-: | :-: | :--: |
|  0   |  1  |  2  |  3  |  4   |
