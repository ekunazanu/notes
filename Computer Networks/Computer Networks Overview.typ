#import "../template.typ": template
#show: template

A collection of interconnected computers that share resources and information with each other. The computers in a network are usually referred to as hosts. Modern computer networks use packet switching --- information is exchanged in the form of small 'packets' of data, with each packet having some specific header metadata and the main payload data.

== Network Topology <network-topology>

The computers in a network can be arranged using different physical
topologies, depending on the needs. The network can be thought of as a #link("Mathematics/Graph%20Theory")[graph] with the computers as nodes and connections as edges.

- *Point to Point* --- Two nodes are connected by a single edge. Very simple to set up, but its simplicity is also restrictive.
- *Bus* --- All nodes are connected to a single cable, called the backbone of the network.
- *Star* --- All nodes are connected to a central 'hub'. Used for Local Area Networks (LANs). A failure in the central hub can bring the network down.
- *Ring* --- Each node is connected to exactly two other nodes such that the network forms a ring. A failure in any node can bring the network down.
- *Mesh* --- Each node is directly linked to multiple other nodes.
  - *Fully Connected* --- Every node is connected to every other node in the network.
- *Hybrid* --- A network that combines multiple of the above topologies.
  - *Tree* --- A combination of star networks that are interconnected via bus networks.

== The Layered Model <the-layered-model>

The networking stack is conceptually divided into several layers to provide abstraction from the hardware, and lower levels. The number of layers depends on the classification. Broadly, two models are popular --- the OSI Model and the TCP/IP Model.

The OSI Model has seven layers:

- *Application Layer* --- Includes protocols for user facing applications such as file transfer, access, mail, etc.
- *Presentation Layer* --- Includes protocols for encoding, decoding, encryption, compression, etc of data to and fro the application layer.
- *Session Layer* --- Includes protocols to create abstractions for creating (and terminating) connections in the form of sessions --- full duplex, half duplex connections etc --- for the higher layers.
- *Transport Layer* --- Includes protocols to ensure 'proper' transmission of data, by having checks for error correction, deduplication, reordering of packets etc.
- *Network Layer* --- Includes protocols for addressing hosts and for routing of packets across wide area networks.
- *Data Link Layer* --- Includes protocols for addressing hosts in a local network and sending frames (packets) to the addressed hosts.
- *Physical Layer* --- Includes protocols for the physical electrical or optical communications to transmit data.

The TCP/IP Model has four layers:

- *Application Layer* --- Includes protocols for user facing applications such as file transfer, access, mail, etc. Encompasses the presentation and session layer of the OSI network model.
- *Transport Layer* --- Includes protocols to ensure 'proper' transmission of data, by having checks for error correction, deduplication, reordering of packets etc. Equivalent to the Transport layer of the OSI network model.
- *Internet Layer* --- Includes protocols for addressing hosts and for routing of packets across wide area networks. Equivalent to the Network layer of the OSI network model.
- *Link Layer* --- Includes protocols for addressing hosts in a local network and sending frames (packets) to the addressed hosts. Equivalent to the Data Link layer of the OSI network model.

== Application Layer <application-layer>

This layer provides a way for applications to interact with other
networks, agnostic of the lower level details of the network. For
example, this layer includes protocols for simple file and mail transfer
without needing to define how data should be transferred across wires
and routers, and how to correct for transmission errors, etc.

Protocols in this layer usually make use of ports --- logical 'pathways'
to separate the flow of data between programs. The OS can assign a port
to a program via which data can be exchanged between the host and the
network. Ports are numbered from 1 to 65535, but most ports numbered
1-1023 are reserved for specific functions and root privileges are
required to be able to listen on these ports.

#divider()

== References <references>

- Brian "Beej" Hall --- #link("https://beej.us/guide/bgnet0/")[Beej's Guide to Networking Concepts]
