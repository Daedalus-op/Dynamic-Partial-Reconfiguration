DNN - what is dnn
Custom AI accelerators
RV open standard isa - academy & industry
RV customisation which allows custom design logics for accelerators - tightly coupled with CPU - Readily used by sw 
... hw/sw codesign for higher optimization


ASIC - costly ... FPGA
GPP not optimised for DNN ... FPGA
Completely custom SoC on FPGA - significant dev efforts 
RV ISA extensions - CFU [custom functional units] - tradeoff for above

Soft core GP RV Core - instr extension - hw accelerator - custom logic 

DNN - Over parameterised - Pruning is done without impacting performance? - need more info

Pruning - prior research - involve removing neurons,, filters, weights, layers, making sparser DNNs - GOAL - decrease memory utilization, latency, & energy consumption. 

Classification - Structure of sparsity -> Fully, Semi, Un-structured
Each have a different pruning method 


Fully Structured 
Pruning - layer or filter pruning - in case of CNNs - accuracy degradation

Semi , un - structured -> accuracy degradation - significantly less - but obtaining acceleration on GP processor infeasible

Prune unstructured with high sparsity ratio -> sparsity ratio 'x' - percentage of 0s in model

CPU architectures most often support execution of dense computation - uniform data structures -perform sparse computation much less efficiently 
- 1. store sparse matrix in compressed format retaining non-0 elements & indexing info - very useful for high sparsity 
	- DNN sparsity is high but not nearly enough - ... unsuitable 
- Customizable hardware to accelerate DNN


