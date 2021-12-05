\name{rkafka}
\alias{rkafka}
\docType{package}
\title{
Using Apache 'Kafka' Messaging Queue Through 'R'
}
\description{
It provides functionalities of creating a 'Kafka' producer, simple consumer,high level consumer and sending and receiving messages.
}
\details{
\tabular{ll}{
Package: \tab rkafka\cr
Type: \tab Package\cr
Version: \tab 1.3\cr
Date: \tab 2021-12-05\cr
License: \tab Apache License 2.0\cr
}
1)Start 'Zookeeper' server.
2)Start 'Kafka' server.
3)Start producer using 'rkafka.createProducer' function.
4)Send messages using 'rkafka.send' function.
5)Close producer using 'rkafka.closeProducer' function.
6)Start consumer using 'rkafka.createConsumer' function.
7)Read messages using 'rkafka.read' function.
8)Close consumer using 'rkafka.closeConsumer' function.
}
\author{
Shruti Gupta

Maintainer: Who to complain to shrutigupta34@gmail.com

}
\references{
To understand 'Kafka'
\url{https://kafka.apache.org/documentation.html}

}

\examples{\dontrun{
prod1=rkafka.createProducer("127.0.0.1:9092")
rkafka.send(prod1,"test","127.0.0.1:9092","Testing once")
rkafka.send(prod1,"test","127.0.0.1:9092","Testing twice")
rkafka.send(prod1,"test","127.0.0.1:9092","Testing thrice")
rkafka.closeProducer(prod1)
consumer1=rkafka.createConsumer("127.0.0.1:2181","test")
print(rkafka.read(consumer1))
print(rkafka.read(consumer1))
print(rkafka.read(consumer1))
}
}
\keyword{ Apache Kafka}

