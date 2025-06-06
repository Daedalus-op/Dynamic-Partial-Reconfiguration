## Motivation and introductions:
- FPGAs (Field-Programmable Gate Arrays) are powerful but suffer from very slow compilation times, often taking hours or even days.
- Vendor tools perform a monolithic placement and routing process with limited parallelism, failing to fully exploit modern multi-core CPUs or cloud computing power.

- Earlier solutions used fixed-sized PR pages, forcing developers to split designs into small chunks manually. This either leads to wasted area if the region is too large or degraded performance if decomposition is unnatural.

- The proposed method overcomes this by **recombinable PR pages**—Single, Double, and Quad pages—allowing hierarchical and adaptive allocation based on actual resource usage.

- The leftmost diagram shows "PR with NoC" (Partial Reconfiguration with Network-on-Chip), where each operator is mapped to a fixed-size PR page. The middle diagram is "RapidStream," which also uses fixed-size islands and requires manual decomposition and a top-level stitching phase. The rightmost diagram shows our work: "Hierarchical PR with NoC," where PR pages can be combined hierarchically to fit the size of each operator. This makes the process much more flexible and efficient, as users no longer need to manually split their designs or worry about region sizes.

## Method
- This slide shows the workflow of the Hierarchical Partial Reconfiguration (HPR) framework.
- Each operator’s C/C++ source file is synthesized in parallel using Vitis HLS, generating resource utilization reports for each operator(design component).
- After synthesis, the tool parses utilization reports and assigns each operator to the smallest hierarchical PR page (Single, Double, or Quad) that fits, using a greedy assignment algorithm.
- Each assigned region is then placed, routed, and bitstreams are generated in parallel, maximizing the use of available compute resources, reducing compile time.
- Finally, the partial bitstreams are loaded onto the FPGA, and the NoC is configured to connect the operators as needed.
- This approach eliminates the need for manual decomposition and allows for incremental development: users can grow or shrink operators, and the system adapts automatically.

## Results 
