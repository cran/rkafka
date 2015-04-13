\name{rkafka.createConsumer}
\alias{rkafka.createConsumer}
\alias{zookeeperConnect}
%\alias{topicName}
\alias{groupId}
\alias{zookeeperConnectionTimeoutMs}
\alias{consumerTimeoutMs}
\alias{autoCommitEnable}
\alias{autoCommitInterval}
\alias{autoOffsetReset}
\title{
Creating KAFKA consumer
}
\description{
This function creates a KAFKA consumer
}
\usage{
rkafka.createConsumer(zookeeperConnect, topicName, 
groupId="test-consumer-group", zookeeperConnectionTimeoutMs="100000", 
consumerTimeoutMs="10000", autoCommitEnable="NULL", 
autoCommitInterval="NULL", autoOffsetReset="NULL")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{zookeeperConnect}{
Zookeeper connection string comma separated host:port pairs, each corresponding to a zk server. e.g."127.0.0.1:3000,127.0.0.1:3001,127.0.0.1:3002"
Required:Mandatory
Type:String
default:NONE
}
\item{topicName}{
Name of the topic from which to read messages
Required:Mandatory
Type:String
}
  \item{groupId}{
  consumer group id 
Required:Mandatory
Type:String
default:test-consumer-group
}
  \item{zookeeperConnectionTimeoutMs}{
timeout in ms for connecting to zookeeper
Required:Mandatory
Type:String
default:100000
}
 \item{consumerTimeoutMs}{
Throw a timeout exception to the consumer if no message is available for consumption after the specified interval
Required:Mandatory
Type:String
default:10000
}
  \item{autoCommitEnable}{
If true, periodically commit to ZooKeeper the offset of messages already fetched by the consumer. This committed offset will be used when the process fails as the position from which the new consumer will begin.
Required:Optional
Type:String
default:true
}
  \item{autoCommitInterval}{
The frequency in ms that the consumer offsets are committed to zookeeper.
Required:Optional
Type:String
default:60*1000
}
  \item{autoOffsetReset}{
smallest : automatically reset the offset to the smallest offset largest : automatically reset the offset to the largest offset anything else: throw exception to the consumer
Required:Optional
Type:String
default:largest
}
}
\details{
There are two types of KAFKA consumers: High-level and Simple. This functions creates a high level consumer 
}
\value{
Returns a consumer
}
\references{
To know when to use simple consumer and when to use High-level Consumer, refer the url below:
\url{https://cwiki.apache.org/confluence/display/KAFKA/0.8.0+SimpleConsumer+Example}

To know how to use a high level consumer refer this:
\url{https://cwiki.apache.org/confluence/display/KAFKA/Consumer+Group+Example}
}
\author{
Shruti Gupta
}

\examples{
\dontrun{
consumer1=rkafka.createConsumer("127.0.0.1:2181","test123")
consumer2=rkafka.createConsumer("127.0.0.1:2181","test123","test-consumer-group","50000","1000")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~consumer }

