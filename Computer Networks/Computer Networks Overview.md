A collection of interconnected computers that share resources and information with each other. The computers in a network are usually referred to as hosts. Modern computer networks use packet switching — information is exchanged in the form of small 'packets' of data, with each packet having some specific header metadata and the main payload data.

## Network Topology

The computers in a network can be arranged using different physical topologies, depending on the needs. The network can be thought of as a [graph](Mathematics/Graph%20Theory.md) with the computers as nodes and connections as edges.

* **Point to Point** — Two nodes are connected by a single edge. Very simple to set up, but its simplicity is also restrictive.
* **Bus** — All nodes are connected to a single cable, called the backbone of the network.
* **Star** — All nodes are connected to a central 'hub'.  Used for Local Area Networks (LANs). A failure in the central hub can bring the network down.
* **Ring** — Each node is connected to exactly two other nodes such that the network forms a ring. A failure in any node can bring the network down.
* **Mesh** — Each node is directly linked to multiple other nodes.
	* **Fully Connected** — Every node is connected to every other node in the network.
* **Hybrid** — A network that combines multiple of the above topologies.
	* **Tree** — A combination of star networks that are interconnected via bus networks.

## The Layered Model

The networking stack is conceptually divided into several layers to provide abstraction from the hardware, and lower levels. The number of layers depends on the classification. Broadly, two models are popular — the OSI Model and the TCP/IP Model.

The OSI Model has seven layers:

* **Application Layer** — Includes protocols for user facing applications such as file transfer, access, mail, etc.
* **Presentation Layer** — Includes protocols for encoding, decoding, encryption, compression, etc of data to and fro the application layer.
* **Session Layer** — Includes protocols to create abstractions for creating (and terminating) connections in the form of sessions — full duplex, half duplex connections etc — for the higher layers.
* **Transport Layer** — Includes protocols to ensure 'proper' transmission of data, by having checks for error correction, deduplication, reordering of packets etc.
* **Network Layer** — Includes protocols for addressing hosts and for routing of packets across wide area networks.
* **Data Link Layer** — Includes protocols for addressing hosts in a local network and sending frames (packets) to the addressed hosts.
* **Physical Layer** — Includes protocols for the physical electrical or optical communications to transmit data.

The TCP/IP Model has four layers:

* **Application Layer** — Includes protocols for user facing applications such as file transfer, access, mail, etc. Encompasses the presentation and session layer of the OSI network model.
* **Transport Layer** — Includes protocols to ensure 'proper' transmission of data, by having checks for error correction, deduplication, reordering of packets etc. Equivalent to the Transport layer of the OSI network model.
* **Internet Layer** — Includes protocols for addressing hosts and for routing of packets across wide area networks. Equivalent to the Network layer of the OSI network model.
* **Link Layer** — Includes protocols for addressing hosts in a local network and sending frames (packets) to the addressed hosts. Equivalent to the Data Link layer of the OSI network model.

## Application Layer

This layer provides a way for applications to interact with other networks, agnostic of the lower level details of the network. For example, this layer includes protocols for simple file and mail transfer without needing to define how data should be transferred across wires and routers, and how to correct for transmission errors, etc.

Protocols in this layer usually make use of ports — logical 'pathways' to separate the flow of data between programs. The OS can assign a port to a program via which data can be exchanged between the host and the network. Ports are numbered from 1 to 65535, but most ports numbered 1-1023 are reserved for specific functions and root privileges are required to be able to listen on these ports.

<!--

### Hyper Text Transfer Protocol

AAAA

#### Transport Layer Security Protocol

### Simple Mail Transfer Protocol

Used for sending mail.

### Internet Message Access Protocol

Used for accessing mail on a remote server.

### Secure Shell Protocol

Used for accessing computers remotely.

### Border Gateway Protocol

Provides a way to.

## Transport Layer

At the lower levels of the protocol stack, IP packets may be lost, duplicated, or delivered out of order. This layer ensures the data reaches error-free during transmission.

### User Datagram Protocol

Only does error detection.

### Transmission Control Protocol

Ensures data is correct. Provides abstraction in the form of a socket interface.

1. TCP splits the data from the higher levels into chunks of data, and attaches a TCP header to each chunk. The header and chunk are collectively referred to as a TCP packet or a TCP segment.
2. The SYN
3. The SYN-ACK
4. The ACK

The TCP header has a specific format:

![TCP header](tcpheader.png)

### Quick UDP Internet Connections

Over UDP protocol.

## Internet Layer

### Internet Protocol

#### IPv4

Hosts are identified using 4-byte (32-bit) addresses, usually represented as `x.x.x.x` where `x` is a byte having a value from 0 to 255. The address is logically separated into two parts ­— a subnet and a host. A sub-networks or subnet is analogous to a local network with multiple hosts, and the subnet is connected to a bigger wider area network via a router.

The logical separation of the address into subnets and hosts of the subnet are represented by a number after a slash. For an address `x.x.x.x/y` The first `y` bits is address of the subnet, and the remaining bits represent the addresses of unique hosts on that subnet.

#### IPv6

Hosts are identified using 16-byte (128-bit) addresses, usually represented as `x:x:x:x:x:x:x:x` where `x` is 4-digit hex value (two bytes).

### Network Address Translation

Usually, the IP addresses on a private network.

## Link Layer

 This layer is responsible for directing packets to specified hosts in a local area network using unique network interfaces present on every host. Packets are generally referred to as frames in this layer. A common frame type used in this layer is the Ethernet frame.

The ethernet frame is constructed as:

### Address Resolution Protocol

Translates the logical IP address into a MAC address that corresponds to physical network interface. The MAC address is a 6-byte value, represented as `x:x:x:x:x:x` where `x` is a byte, represented as a 2-digit hex value.

To get the MAC address of any other host in a network:

5. A host will broadcast an ARP request — a specialized ethernet frame containing the destination IP address.
6. All other hosts on the LAN will receive the ARP request computers but will discard the packet. Only the host has the specified destination IP address in the ARP request will continue with the next steps.
7. The destination host with the specified IP address builds an ARP response — another specialized ethernet frame, containing the destination computer’s MAC address. It sends it back to the source computer.
8. The source host receives the ARP response, uses the destination host’s MAC for further communications.
9. The MAC address is usually cached for some specific time to avoid re-sending ARP requests every time a packet needs to be sent.

To communicate with the host after receiving the MAC address:

10. S

---

## Simple Network Dataflow

![diagram of a simple computer network with an application listening on a port](router.png)

-->

---

## References

* Brian "Beej" Hall — [Beej's Guide to Networking Concepts](https://beej.us/guide/bgnet0/)

---

This page is a part of [Home](index.md).