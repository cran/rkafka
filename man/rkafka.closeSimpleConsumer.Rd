\name{rkafka.closeSimpleConsumer}
\alias{rkafka.closeSimpleConsumer}
\alias{SimpleConsumer}
\title{
Closing KAKFA Simple consumer
}
\description{
This functions shuts down the KAFKA Simple consumer
}
\usage{
rkafka.closeSimpleConsumer(SimpleConsumer)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SimpleConsumer}{
SimpleConsumer:SimpleConsumer that has to be shut down
 Required:Mandatory
 Type:SimpleConsumer
}
}
\details{
There are two types of KAFKA consumers:High-Level and Simple.This function shuts down the KAFKA Simple Consumer
}
\value{
Function doesn't return anything
}
\references{
To know when to use simple consumer and when to use High-level Consumer, refer the url below:
\url{https://cwiki.apache.org/confluence/display/KAFKA/0.8.0+SimpleConsumer+Example}

}
\author{
Shruti Gupta
}

\examples{
\dontrun{
consumer1=rkafka.createSimpleConsumer("172.25.1.78","9092","10000","100000","test")
rkafka.receiveFromSimpleConsumer(consumer1,"test","0","0","test-group")
print(rkafka.readFromSimpleConsumer(consumer1))
rkafka.closeSimpleConsumer(consumer1)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~consumer }
\keyword{ ~simple }
\keyword{ ~close }% __ONLY ONE__ keyword per line
