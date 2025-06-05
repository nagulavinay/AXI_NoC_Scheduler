# AXI_NoC_Scheduler

# Project Description: AXI-based Torus Mesh NoC on FPGA
This project presents a scalable Network-on-Chip (NoC) architecture built on a 2D torus mesh topology, fully integrated with the AXI4 (Advanced eXtensible Interface 4) protocol for seamless communication between processing elements or subsystems. Designed for deployment on FPGAs, the architecture enables efficient, high-throughput, and low-latency interconnection of multiple cores or IP blocks, making it suitable for modern System-on-Chip (SoC) designs and research in reconfigurable computing.

# Key Features
**Torus Mesh Topology:**
The network leverages a 2D torus mesh, where each router connects to its north, east, south, west, and local ports. The torus “wraparound” feature ensures uniform communication latency across the network and reduces network diameter, providing excellent scalability for large multi-core systems.

**AXI4 Interface Integration:**
Each node communicates using the AXI4 protocol, a widely adopted interconnect standard in SoC and FPGA design. This allows compatibility with industry-standard IP blocks and simplifies integration into complex Vivado projects or custom designs.

**Multiple AXI Slaves:**
The system supports multiple AXI slave interfaces (e.g., S00_AXI, S01_AXI, S02_AXI, S03_AXI), each connected to a network interface module at a different node in the NoC. This parallelism increases aggregate throughput and supports flexible mapping of processing elements.

**Network Interfaces (NI):**
Dedicated network interface modules (e.g., TT_NetworkInterface) act as bridges between the AXI protocol and the internal NoC. These modules handle packetization of AXI transactions into network packets (flits), manage flit-level transmission, and perform reassembly at the destination.

**Global Time Base (GTB):**
A 64-bit GTB signal is distributed to all nodes, enabling global time synchronization. This facilitates event coordination, time-triggered scheduling, and provides hooks for system-level debugging or performance measurement.

# How It Works
**AXI Transactions:**
AXI master devices (Processing core) initiate read and write operations targeting the AXI slave interfaces present at each node.

**Packetization:**
The corresponding network interface module (NI) at each node packetizes these AXI transactions into smaller units called flits, embedding routing and control information.

**Routing:**
Routers in the torus mesh forward the flits toward their destinations, using destination address fields to determine the appropriate direction (north, east, south, west, or local). The torus topology ensures multiple paths and uniform latency.

**Reception:**
At the destination node, the NI reassembles received flits back into complete AXI transactions, which are then presented to the local AXI slave interface.

**Synchronization & Control:**
The global time base (GTB) supports synchronized operations, time-triggered communication and enhanced event logging or system debugging.

# Project Execution Steps: 
# Project Definition

**Defined the primary goal:** to design, integrate, and simulate a time-triggered (TT) scheduling mechanism within an AXI-based Network-on-Chip (NoC) for reliable, efficient on-chip communication.

Set future objectives to explore dynamic message scheduling to further improve adaptability and network utilization.

Custom Hardware Design in Vivado

Developed a custom hardware platform using Vivado Design Suite.

Incorporated a processing core, Global Time Base (GTB) for system-wide synchronization, AXI SmartConnect for inter-module communication, and the TTEL module SkiNoC for time-triggered communication scheduling.

**Integration through Top-Level Design Wrapper**

Created a top-level design wrapper integrating all hardware modules (processing core, GTB, SmartConnect, SkiNoC, etc.).

This wrapper serves as the main environment enabling seamless communication between all modules.

**Development of Simulation Testbench**

Developed a comprehensive simulation testbench to exercise the network under various traffic patterns and scenarios.

Simulated the behavior of the entire system to test robustness and correctness of time-triggered message scheduling.

**Validation and Verification**

Conducted thorough simulations to verify that all modules interact as intended.

Confirmed correct transmission of messages across the NoC under the TT scheduling scheme.

