#import "../template.typ": template, canvas, draw
#show: template

Kafka is a *distributed* event stream log for processing large amounts of data asynchronously. It can be used as a distributed pub-sub queue.

- *Brokers* --- The *physical machines* Kafka is running on. Each broker stores a subset of the topics/partitions.
- *Topics* --- A *logical stream* of messages that a producer writes or publishes to, and consumers read or subscribe from.
- *Partitions* --- Each topic is separated into partitions, where messages are stored. Messages are mapped into a partition, usually by hashing their key. The *order* of messages is always ensured *inside* a partition, but not necessarily on the topic-level.
- *Replication Factor* --- The number of copies for each partition. Usually three: One leader and two replicas. The same broker cannot have duplicate partitions, so replication factor ultimately describes the number of brokers that should contain a partition.
  - *Leader* --- The partition where messages are written to, and consumers read from.
  - *Followers* --- The partition where messages are copied from the leader partition, for maintaining a redundant copy (if it fails).
- *Consumer Group* --- A logical group of consumers that read from a topic. A consumer-group can subscribe to multiple topics as well. Each partition is assigned to one consumer at most; but a consumer can be assigned to multiple partitions (and topics).
- *Offsets* --- A pointer for each partition, for each consumer group, that keeps track of the next message to be read. The pointer is incremented based on the commit policy, which can strict (messages can be re-read) or lenient (messages can be dropped).
- *Consumer* --- Any subscriber that is reading or subscribing from a topic or topics. Should ideally be part of a consumer-group; when part of a consumer group, Kafka assigns it partitions to read from.
- *Producer* --- Any publisher writing or publishing to a topic or topics.
- *Rebalancing* --- Reassigning consumers to partitions when a consumer joins or leaves (or fails) a consumer-group. Could also happen if new partitions are added.

#figure(
  canvas(length: 2cm, {
    import draw: *

    set-style(
      stroke: (thickness: 0.5pt),
      content: (padding: 5pt, auto-scale: true)
    )

    scale(0.75)

    // refactor into for loops

    rect((0, 0), (4, -3.3))
    content((2, -3.4), [Broker 0], anchor: "north")
    rect((0.1, -0.1), (3.9, -1.5), stroke: (dash: (2pt, 2pt)))
    content((0.1, -0.1), [Topic 0], anchor: "north-west")
    rect((0.2, -0.5), (3.8, -0.9))
    content((0.2, -0.5), [Partition 0 (Leader)], anchor: "north-west")
    rect((0.2, -1), (3.8, -1.4))
    content((0.2, -1), [Partition 1], anchor: "north-west")
    rect((3.75, -0.55), (3.45, -0.85))
    content((3.75, -0.7), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((3.40, -0.55), (3.10, -0.85))
    content((3.40, -0.7), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    rect((3.05, -0.55), (2.75, -0.85))
    content((3.05, -0.7), text(size: 10pt)[$m_5$], anchor: "east", padding: 1pt)
    rect((2.70, -0.55), (2.40, -0.85))
    content((2.70, -0.7), text(size: 10pt)[$m_6$], anchor: "east", padding: 1pt)
    rect((3.75, -1.05), (3.45, -1.35))
    content((3.75, -1.2), text(size: 10pt)[$m_2$], anchor: "east", padding: 1pt)
    rect((3.40, -1.05), (3.10, -1.35))
    content((3.40, -1.2), text(size: 10pt)[$m_3$], anchor: "east", padding: 1pt)
    rect((3.05, -1.05), (2.75, -1.35))
    content((3.05, -1.2), text(size: 10pt)[$m_4$], anchor: "east", padding: 1pt)
    rect((0.1, -1.7), (3.9, -2.6), stroke: (dash: (2pt, 2pt)))
    content((0.1, -1.7), [Topic 1], anchor: "north-west")
    rect((0.2, -2.1), (3.8, -2.5))
    content((0.2, -2.1), [Partition 2 (Leader)], anchor: "north-west")
    rect((3.75, -2.15), (3.45, -2.45))
    content((3.75, -2.3), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((3.40, -2.15), (3.10, -2.45))
    content((3.40, -2.3), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    rect((3.05, -2.15), (2.75, -2.45))
    content((3.05, -2.3), text(size: 10pt)[$m_2$], anchor: "east", padding: 1pt)
    rect((2.70, -2.15), (2.40, -2.45))
    content((2.70, -2.3), text(size: 10pt)[$m_3$], anchor: "east", padding: 1pt)

    rect((4.5, 0), (8.5, -3.3))
    content((6.5, -3.4), [Broker 1], anchor: "north")
    rect((4.6, -0.1), (8.4, -1), stroke: (dash: (2pt, 2pt)))
    content((4.6, -0.1), [Topic 0], anchor: "north-west")
    rect((4.7, -0.5), (8.3, -0.9))
    content((4.7, -0.5), [Partition 0], anchor: "north-west")
    rect((8.25, -0.55), (7.95, -0.85))
    content((8.25, -0.7), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((7.90, -0.55), (7.60, -0.85))
    content((7.90, -0.7), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    rect((7.55, -0.55), (7.25, -0.85))
    content((7.55, -0.7), text(size: 10pt)[$m_5$], anchor: "east", padding: 1pt)
    rect((7.20, -0.55), (6.90, -0.85))
    content((7.20, -0.7), text(size: 10pt)[$m_6$], anchor: "east", padding: 1pt)
    rect((4.6, -1.2), (8.4, -2.1), stroke: (dash: (2pt, 2pt)))
    content((4.6, -1.2), [Topic 1], anchor: "north-west")
    rect((4.7, -1.6), (8.3, -2.0))
    content((4.7, -1.6), [Partition 1], anchor: "north-west")
    rect((8.25, -1.65), (7.95, -1.95))
    content((8.25, -1.8), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((7.90, -1.65), (7.60, -1.95))
    content((7.90, -1.8), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    rect((7.55, -1.65), (7.25, -1.95))
    content((7.55, -1.8), text(size: 10pt)[$m_2$], anchor: "east", padding: 1pt)
    rect((7.20, -1.65), (6.90, -1.95))
    content((7.20, -1.8), text(size: 10pt)[$m_3$], anchor: "east", padding: 1pt)
    rect((4.6, -2.3), (8.4, -3.2), stroke: (dash: (2pt, 2pt)))
    content((4.6, -2.3), [Topic 2], anchor: "north-west")
    rect((4.7, -2.7), (8.3, -3.1))
    content((4.7, -2.7), [Partition 3 (Leader)], anchor: "north-west")
    rect((8.25, -2.75), (7.95, -3.05))
    content((8.25, -2.9), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((7.90, -2.75), (7.60, -3.05))
    content((7.90, -2.9), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)

    rect((9, 0), (13, -3.3))
    content((11, -3.4), [Broker 2], anchor: "north")
    rect((9.1, -0.1), (12.9, -1), stroke: (dash: (2pt, 2pt)))
    content((9.1, -0.1), [Topic 0], anchor: "north-west")
    rect((9.2, -0.5), (12.8, -0.9))
    content((9.2, -0.5), [Partition 1 (Leader)], anchor: "north-west")
    rect((12.75, -0.55), (12.45, -0.85))
    content((12.75, -0.7), text(size: 10pt)[$m_2$], anchor: "east", padding: 1pt)
    rect((12.40, -0.55), (12.10, -0.85))
    content((12.40, -0.7), text(size: 10pt)[$m_3$], anchor: "east", padding: 1pt)
    rect((12.05, -0.55), (11.75, -0.85))
    content((12.05, -0.7), text(size: 10pt)[$m_4$], anchor: "east", padding: 1pt)
    rect((9.1, -1.2), (12.9, -2.1), stroke: (dash: (2pt, 2pt)))
    content((9.1, -1.2), [Topic 2], anchor: "north-west")
    rect((9.2, -1.6), (12.8, -2))
    content((9.2, -1.6), [Partition 3], anchor: "north-west")
    rect((12.75, -1.65), (12.45, -1.95))
    content((12.75, -1.8), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((12.40, -1.65), (12.10, -1.95))
    content((12.40, -1.8), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    }),

    caption: [A kafka cluster, with replication factor of two]
)

#figure(
  canvas(length: 2cm, {
    import draw: *

    set-style(
      stroke: (thickness: 0.5pt),
      content: (padding: 5pt, auto-scale: true)
    )

    rect((0, 0), (4, -3.3))
    rect((0.1, -0.1), (3.9, -1.5), stroke: (dash: (2pt, 2pt)))
    content((0.1, -0.1), [Topic 0], anchor: "north-west")
    rect((0.2, -0.5), (3.8, -0.9))
    content((0.2, -0.5), [Partition 0 (Leader)], anchor: "north-west")
    rect((0.2, -1), (3.8, -1.4))
    content((0.2, -1), [Partition 1], anchor: "north-west")
    rect((3.75, -0.55), (3.45, -0.85))
    content((3.75, -0.7), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((3.40, -0.55), (3.10, -0.85))
    content((3.40, -0.7), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    rect((3.05, -0.55), (2.75, -0.85))
    content((3.05, -0.7), text(size: 10pt)[$m_5$], anchor: "east", padding: 1pt)
    rect((2.70, -0.55), (2.40, -0.85))
    content((2.70, -0.7), text(size: 10pt)[$m_6$], anchor: "east", padding: 1pt)
    rect((3.75, -1.05), (3.45, -1.35))
    content((3.75, -1.2), text(size: 10pt)[$m_2$], anchor: "east", padding: 1pt)
    rect((3.40, -1.05), (3.10, -1.35))
    content((3.40, -1.2), text(size: 10pt)[$m_3$], anchor: "east", padding: 1pt)
    rect((3.05, -1.05), (2.75, -1.35))
    content((3.05, -1.2), text(size: 10pt)[$m_4$], anchor: "east", padding: 1pt)
    rect((0.1, -1.7), (3.9, -2.6), stroke: (dash: (2pt, 2pt)))
    content((0.1, -1.7), [Topic 1], anchor: "north-west")
    rect((0.2, -2.1), (3.8, -2.5))
    content((0.2, -2.1), [Partition 2 (Leader)], anchor: "north-west")
    rect((3.75, -2.15), (3.45, -2.45))
    content((3.75, -2.3), text(size: 10pt)[$m_0$], anchor: "east", padding: 1pt)
    rect((3.40, -2.15), (3.10, -2.45))
    content((3.40, -2.3), text(size: 10pt)[$m_1$], anchor: "east", padding: 1pt)
    rect((3.05, -2.15), (2.75, -2.45))
    content((3.05, -2.3), text(size: 10pt)[$m_2$], anchor: "east", padding: 1pt)
    rect((2.70, -2.15), (2.40, -2.45))
    content((2.70, -2.3), text(size: 10pt)[$m_3$], anchor: "east", padding: 1pt)

    rect((5, 0), (7, -1.1), radius: 0.1)
    content((6, -1.1), [Consumer Group 0 (Topic 0)], anchor: "north")
    rect((5.1, -0.1), (6.9, -0.5))
    content((6, -0.3), [Consumer 0])
    line((5.1, -0.3), (3.8, -0.7), mark: (start: "triangle", end: "triangle", fill: black))
    rect((5.1, -0.6), (6.9, -1.0))
    content((6, -0.8), [Consumer 1])
    line((6.9, -0.8), (8, -1.5), mark: (start: "triangle", fill: black))
    rect((5, -2.5), (7, -3.1), radius: 0.1)
    content((6, -3.1), [Consumer Group 0 (Topic 0, 1)], anchor: "north")
    rect((5.1, -2.6), (6.9, -3.0))
    line((5.1, -2.8), (3.8, -0.7), mark: (start: "triangle", end: "triangle", fill: black))
    line((5.1, -2.8), (3.8, -2.3), mark: (start: "triangle", end: "triangle", fill: black))
    content((6, -2.8), [Consumer 2])
    line((6.9, -2.8), (8, -1.8), mark: (start: "triangle", fill: black))
    content((8, -1.7), [Partition 1 (Leader)], anchor: "west")

    }),
    caption: [Consumer and consumer groups]
)

Kafka is different from RabbitMQ in the sense the messages persist longer, determined by the topic's retention policy. So it acts more like a distributed log than a queue (but still used as a queue). While RabbitMQ is strictly used as a queue, where messages are removed from the queue after being consumed.
