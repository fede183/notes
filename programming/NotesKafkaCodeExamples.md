Notes Gaia Kafka Code Examples
==============================

# Java Producer
```
Properties props = new Properties();
props.put("bootstrap.servers", "localhost:9092");
props.put("acks", "1");
props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");

try(Producer<String, String>producer = new KafkaProducer<>(props);) {
    for(int i= 0; i< 100 ;i++) {
        producer.send(newProducerRecord<>("devs4j-topic","key","message"));
    }
    producer.flush();
}
```

# Producer properties
- bootstrap.servers: Server + Ports of all the brokers in the cluster
- acks: Define if an ack (received confirmation) is required for the message, can be 0 (no), 1 (yes, for a broker), all (all brokers).
- key.serializer: Java class that will serialize the message key.
- value.serializer: Java class that will serialize the message.
- linger.ms: the batches are grouped by time, in milliseconds.
- batch.size: messages are send in batches to improve performance.
- buffer.memory: Define the max size of the buffer in which it can allocate batches.

# Java Consumer
```
Properties props = new Properties();
props.setProperty("bootstrap.servers", "localhost:9092");
props.setProperty("group.id", "devs4j-group");
props.setProperty("enable.auto.commit", "true");
props.setProperty("auto.commit.interval.ms", "1000");
props.setProperty("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
props.setProperty("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");

try(KafkaConsumer<String, String> consumer = newKafkaConsumer<>(props);) {
consumer.subscribe(Arrays.asList("devs4j-topic"));
while(true) {
    ConsumerRecords<String,String>records = consumer.poll(Duration.ofMillis(100));
    for(ConsumerRecord<String, String> record :records)
        log.info("offset = {}, key = {}, value ={}",
        record.offset(),record.key(),record.value());
    }
}
```

# Consumer properties
- bootstrap.servers: Server + Ports of all the brokers in the cluster.
- group.id: unique identifier for the consumer group.
- enable.auto.commit: if true realise a commit of the **offsets** periodically in second plane.
- auto.commit.interval.ms: Frequency in milliseconds to realise a commit of the **offsets**.
- key.deserializer: Java class that will deserialize the message key.
- value.deserializer: Java class that will deserialize the message.
