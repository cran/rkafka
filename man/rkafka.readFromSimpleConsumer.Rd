\name{rkafka.readFromSimpleConsumer}
\alias{rkafka.readFromSimpleConsumer}
\alias{SimpleConsumerObj}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAFKA Simple Consumer Reading
}
\description{
This function returns one message at a time which are read by a KAFKA Simple Consumer
}
\usage{
rkafka.readFromSimpleConsumer(SimpleConsumerObj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SimpleConsumerObj}{
Consumer through which messages were received	
 Required:Mandatory
 Type:Consumer
}
 
}
\details{
There are two types of KAFKA consumers:High-Level and Simple. This function receives messages using the Simple Consumer. Use caution on deciding to use the Simple Consumer as it doesn't persist offset.The function rkafka.receiveFromSimpleConsumer needs to be executed before running this function
}
\value{
String
}
\references{To know when to use simple consumer and when to use High-level Consumer, refer the url below:
\url{https://cwiki.apache.org/confluence/display/KAFKA/0.8.0+SimpleConsumer+Example}
}
\author{
Shruti Gupta
}
\note{
Warning:The function rkafka.receiveFromSimpleConsumer needs to be executed before running this function
}

\examples{
\dontrun{
consumer1=rkafka.createSimpleConsumer("172.25.1.78","9092","10000","100000","test")
rkafka.receiveFromSimpleConsumer(consumer1,"test","0","0","test-group")
print(rkafka.readFromSimpleConsumer(consumer1))
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka}
\keyword{ ~simple}
\keyword{ ~consumer }
\keyword{ ~read}% __ONLY ONE__ keyword per line
