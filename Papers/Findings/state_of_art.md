# An Architectural Template for FPGA Overlays Targeting Data Flow Applications
This paper presents an architectural overlay template and its features, intended for the application domain of analytical query processing. The paper evaluates the overlay template based on results from a demonstration system

## Use of Partial Reconfiguration (PR):
- The excerpts do not explicitly state that this specific architectural template uses PR. However, the paper discusses related work, noting that some overlay architectures support dynamic partial reconfiguration of compute units
- It categorizes overlay architectures, distinguishing between static designs, those supporting dynamic partial reconfiguration but being application-specific, and generic reconfigurable overlays suitable for wider applications
- This indicates that the paper's domain of FPGA overlays is related to systems that utilize PR.

## Relevance:
- The paper positions itself as presenting a new "architectural overlay template" and evaluating it, suggesting a contribution to the field of FPGA overlays, particularly for data flow applications
- While the excerpts don't provide citation statistics for the paper itself or its authors/institutions, its inclusion of a detailed related work section citing numerous previous works demonstrates its engagement with the existing body of research in this area. Its focus on overlays for data flow applications like analytical query processing is relevant to using FPGAs for specific computational tasks.

# Coyote
This source discusses the use of Field-Programmable Gate Arrays (FPGAs) in datacenters and by cloud providers, highlighting their flexibility and lower power consumption compared to ASICs or GPUs for many applications. It notes that despite these advantages, FPGAs remain challenging to program, deploy, and manage securely, leading to recent work applying ideas from operating systems design to FPGA resource allocation, sharing, isolation, and management

## Use of Partial Reconfiguration (PR):
- The provided excerpts do not explicitly detail how the specific "Coyote" system discussed in this paper utilizes PR. However, the context of applying operating system concepts to FPGA resource management, allocation, and sharing, as well as the mention of a "reconfigurable fabric", strongly implies that PR is a relevant underlying technology enabling these OS-like functionalities. Source 2 clarifies that the original Coyote (likely this one) implemented features like "run-time reconfiguration", which is a form of PR.

## Relevance:
- This paper sets the context for the importance of FPGAs in modern data centers and the challenges associated with their integration and management
- By focusing on applying operating system principles to address these challenges, it aligns with the state of the art in making FPGAs more usable in complex, shared environments
- While specific statistics or authors are not provided in these excerpts, the discussion of key challenges and the architectural approaches to manage FPGA resources contribute to the ongoing research in FPGA utilization and virtualization.

# Coyote v2: Raising the Level of Abstraction for Data Center FPGAs
This paper introduces Coyote v2, an open-source FPGA shell built with a novel, three-layer hierarchical design. It is aimed at raising the level of abstraction for data center FPGAs. The authors are from ETH Zurich and AMD Research. Coyote v2 supports dynamic partial reconfiguration of services and user logic, features a unified logic interface, and includes high-level software abstractions like support for multi-threading and multi-tenancy

## Use of Partial Reconfiguration (PR):
- Coyote v2 is explicitly designed to support dynamic partial reconfiguration of services and user logic
- The paper highlights that its novel hierarchical design enables run-time reconfiguration of both services and applications. It claims that service reconfiguration using Coyote v2 is an order of magnitude faster than previous approaches that require taking the device offline

## Relevance:
- The paper makes specific claims about improving synthesis times (up to 20% reduction) and run-time reconfiguration times (an order of magnitude faster) compared to existing systems, including the original Coyote
- Its contributions include the novel hierarchical design, a unified user interface for easier application deployment, and support for reconfigurable services and hardware multi-threading. Authors being from prominent institutions like ETH Zurich and AMD Research suggests the work is rooted in recognized research environments. By addressing the challenges of integrating FPGAs into larger systems, particularly in data centers and the cloud, and focusing on features like multi-tenancy and shared virtual memory, Coyote v2 is highly relevant to the state of the art in making FPGAs more accessible and efficient for complex environments. Its open-source nature also contributes to its potential impact and relevance

# Reconfigurable Hardware Acceleration For ROS - Based Robotics Applications
This thesis presents ReconROS, a novel approach for integrating reconfigurable hardware into Robot Operating System (ROS)-based robotics applications It discusses the advantages of FPGAs for faster and more energy-efficient computation in robotics and the trend towards modern system-on-chip (SoC) architectures that combine CPUs with reconfigurable logic, supporting features like dynamic partial reconfiguration

## Use of Partial Reconfiguration (PR):
- ReconROS is explicitly designed to support dynamic partial reconfiguration for increased hardware utilization
- The ReconROS Executor includes infrastructure specifically for dynamic partial reconfiguration in the hardware, managing the placement and scheduling of hardware callbacks in reconfigurable slots. The thesis details the dynamic task mapping process, including strategies like Least Recently Used (LRU) and Least Frequently Used (LFU) for replacing hardware callbacks in reconfigurable slots. It also discusses the overheads associated with dynamic partial reconfiguration during runtime and motivates research into more advanced techniques like speculative reconfiguration to reduce the required number of reconfigurations

## Relevance:
- ReconROS is presented as a "novel approach" to a key research area: the standardized integration of reconfigurable hardware accelerators into existing ROS applications while preserving the common ROS programming model
- The authors (Christian Lienen and Marco Platzner appearing repeatedly) are clearly active researchers in this domain, building upon foundational work like ReconOS. The detailed discussion of the ReconROS Executor, dynamic mapping, callback replacement strategies, and intra-FPGA communication optimization (fpgaDDS) demonstrates a deep engagement with the technical challenges of leveraging PR in complex, real-time robotics systems. The validation through case studies further enhances its relevance. Its focus on dynamic partial reconfiguration and efficient resource utilization directly contributes to the state of the art in adaptive and high-performance robotics computing using FPGAs. The mention of it being an open-source framework increases its potential impact.

# RosebudVirt: A High-Performance and Partially Reconfigurable FPGA Virtualization Framework for Multitenant Networks
This paper introduces RosebudVirt, described as a high-performance and partially reconfigurable FPGA virtualization framework designed for multitenant networks in cloud data centers. It acknowledges the significant role of FPGAs in data centers, citing examples like Microsoft's Catapult and Amazon AWS F1. The paper identifies key challenges in this domain, including efficient hardware resource management, maximizing utilization, and virtualization for cloud computing

## Use of Partial Reconfiguration (PR):
- RosebudVirt is explicitly presented as a partially reconfigurable framework, with "Partial Reconfiguration (PR)" listed as a key index term
- While the provided abstract doesn't detail the specific mechanisms of PR usage, its description as a "virtualization framework" strongly implies that PR is employed to enable dynamic allocation, isolation, and management of FPGA resources among multiple tenants sharing the hardware. The reference to Dynamic Function Exchange (DFE), a vendor term for PR, further supports this

## Relevance:
- The paper addresses the critical need for high-performance FPGA virtualization in multitenant cloud environments
- By focusing on challenges like resource management and utilization in this context, RosebudVirt is directly relevant to the state of the art in deploying FPGAs in shared data center infrastructures. Its compatibility with cluster management tools like Kubernetes and Docker suggests practical relevance for cloud deployment. The paper contributes to the ongoing research into effectively virtualizing FPGAs to ensure optimal resource allocation and utilization in the cloud, a topic highlighted as a challenge in the field

# ZyPR: End-to-end Build Tool and Runtime Manager for PR on Edge
This paper introduces ZyPR, presented as an end-to-end build tool and runtime manager specifically for Partial Reconfiguration (PR) on FPGA SoCs at the Edge. It recognizes the role of FPGAs for both high-performance data center applications and high-efficiency, low-power edge applications. The authors are Alex R. Bucknall and Suhaib A. Fahmy

## Use of Partial Reconfiguration (PR):
- PR is central to ZyPR. The framework provides an end-to-end tool for abstracted PR application development
- It defines Dynamic PR (DPR) as the ability of the FPGA to continue operations during reconfiguration. ZyPR supports generating PR infrastructure using shared DMA resources, facilitates loading partial bitstreams, and includes features like chained region generation for connecting multiple accelerators. The tool is designed to simplify the complex process of PR, which traditionally involves propagating changes across hardware and software layers. The paper also benchmarks the performance benefits of high-performance PR for rapidly modifying reconfigurable regions without data loss

## Relevance:
- ZyPR contributes to making PR more accessible and manageable, particularly for FPGA SoCs used in edge computing
- The paper highlights the challenges in traditional PR workflows and positions ZyPR as an abstracted solution. The focus on providing an integrated build tool and runtime manager, combined with features like accelerator chaining and support for dynamic PR, is highly relevant to the state of the art in deploying adaptive and efficient applications on reconfigurable hardware at the edge. The authors' previous work and publications in the field underscore their expertise. Its release as open source aims to facilitate broader adoption and community contributions.
