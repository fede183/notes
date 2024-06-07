Notes Gaia Kafka
================

# What it is?
Fully managed service to address specific messaging use cases. Works with a **producer/consumer** to stream records. It is similar to message queue. Store those streams in a fault-tolerant way. Process those streams as they occur.

Publish/Subscriber: Subscribers subscribe to the publisher. Each message the Publisher publishes is sent to all the subscribers. That is, all subscribers receive the same message. (Think of a newspaper or magazine subscription. All subscribers receive the same magazine or newspaper)

Producer/Consumer: Each message the producer produces will be consumed by a single consumer. This is a mechanism to distribute the workload to multiple consumers. (Think of the several cash registers at the supermarket. Each customer goes to a single cash register. The customers are like the messages that are produced and the cash registers are the consumers)

# Modes
- Single DC cluster: one avaliability zone
- Stretch cluster: control plane remains the same, but the cluster itself is stretched across two avaliability zones within a region

# Environments
- DEV, UAT, Production
- UAT and Production clusters will be deployed with the same specifications and configurations
- DEV clusters will have same set of configurations as in UAT/PROD except that underlying hardware specifications will differ from UAT/PROD.

# Topics / Partitions / Offsets
A topic is a stream of message, each topic is compose for one or more partitions. The message are attach to partitions and are order using the **offset** number.

# Producer
Publish message at one or more topics. Can select the partition.

# Consumer
Read messages of one or more topics and it process them. The difference between the most recent position and the newest message if the **offset lag**.

If the offset lag is not to big, it can be converted in in one closest to the retention period.

# Consumer groups
Contains one or more consumers. The messages of the partition are process for a consumer in the group.

If there is more partitions that consumers, one can read more that one partition. If there more consumers that partitions then some will not consume.

# Messages order
In multithreading is possible to lost the messages order, in some cases is not a problem but in others it is.

To solve this problem, the **message keys** can be use, making sure that all the messages with the same keys go to the same partition.

In the case that the message is in the correct partition but not in the correct order, the way to fix this in to set **max.in.flight.requests.per.connection** = 1. This change will make that only a request can be send at the time.
