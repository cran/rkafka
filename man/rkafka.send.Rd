\name{rkafka.send}
\alias{rkafka.send}
%\alias{producer}
\alias{topicName}
\alias{ip}
\alias{message}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAFKA producer sending message
}
\description{
This function sends message to a particular name through a producer
}
\usage{
rkafka.send(producer, topicName, ip, message)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{producer}{
 Producer through which messages are to be sent
 Required:Mandatory
 Type:String
}
  \item{topicName}{
Topic to which messages are to be sent. If topicName doesn't exist, new topic is created
 Required:Mandatory
 Type:String
}
  \item{ip}{
ip on which producer is running
 Required:Mandatory
 Type:String
}
  \item{message}{
message to be sent
 Required:Mandatory
 Type:String
}
}
\value{
Doesn't return a value
}
\author{
Shruti Gupta
}

\examples{
\dontrun{
producer1=rkafka.createProducer("127.0.0.1:9092")
rkafka.send(producer1,"test","127.0.0.1:9092","Testing")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~KAFKA}
\keyword{ ~Producer }% __ONLY ONE__ keyword per line
\keyword{ ~Message sending }