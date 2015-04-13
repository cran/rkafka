\name{rkafka.createProducer}
\alias{rkafka.createProducer}
\alias{metadataBrokerList}
\alias{producerType}
\alias{compressionCodec}
\alias{serializerClass}
\alias{partitionerClass}
\alias{compressedTopics}
\alias{queueBufferingMaxTime}
\alias{queueBufferingMaxMessages}
\alias{queueEnqueueTimeoutTime}
\alias{batchNumMessages}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creating KAFKA producer
}
\description{
This function is used to create a KAFKA producer
}
\usage{
rkafka.createProducer(metadataBrokerList, producerType="sync", 
compressionCodec="none", serializerClass="kafka.serializer.StringEncoder", 
partitionerClass="NULL", compressedTopics="NULL", 
queueBufferingMaxTime="NULL", queueBufferingMaxMessages="NULL", 
queueEnqueueTimeoutTime="NULL", batchNumMessages="NULL")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{metadataBrokerList}{
List of brokers used for bootstrapping knowledge about the rest of the cluster format: host1:port1,host2:port2...
Required:Mandatory 
Type:String
default:localhost:9092
}
  \item{producerType}{
specifies whether the messages are sent asynchronously (async) or synchronously (sync)
Required:Mandatory 
Type:String
default:sync

}
  \item{compressionCodec}{
specify the compression codec for all data generated: none , gzip, snappy. 
Required:Mandatory 
Type:String
default:none

}
\item{serializerClass}{
specifies the class for serialization
Required:Mandatory 
Type:String
default:kafka.serializer.StringEncoder
}
  \item{partitionerClass}{
name of the partitioner class for partitioning events
Required:Optional
Type:String
default:NULL(default partition spreads data randomly)
}
\item{compressedTopics}{
allow topic level compression
Required:Optional
Type:String
default:NULL
}
\item{queueBufferingMaxTime}{
maximum time, in milliseconds, for buffering data on the producer queue
Required:Optional(for Async Producer only)
Type:String
default:NULL
}
  \item{queueBufferingMaxMessages}{
the maximum size of the blocking queue for buffering on the producer
Required:Optional(for Async Producer only)
Type:String
default:NULL
}
  \item{queueEnqueueTimeoutTime}{
0: events will be enqueued immediately or dropped if the queue is full -ve: enqueue will block indefinitely if the queue is full +ve: enqueue will block up to this many milliseconds if the queue is full
Required:Optional(for Async Producer only)
Type:String
default:NULL
}
  \item{batchNumMessages}{
the number of messages batched at the producer
Required:Optional(for Async Producer only)
Type:String
default:NULL
}
}
\value{
Returns Producer
}
\author{
Shruti Gupta
}
\examples{
\dontrun{
producer1=rkafka.createProducer("127.0.0.1:9092")
producer2=rkafka.createProducer("127.0.0.1:9092","sync","none","kafka.serializer.StringEncoder")
}
  }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~KAFKA }
\keyword{ ~producer }% __ONLY ONE__ keyword per line
