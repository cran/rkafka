\name{rkafka.readPoll}
\alias{rkafka.readPoll}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KAFKA consumer reading messages(batch)
}
\description{
This function reads messages received by a KAFKA consumer. It returns a batch of messages
}
\usage{
rkafka.readPoll(ConsumerObj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ConsumerObj}{
Consumer through which messages are to be read
Required:Mandatory
Type:Consumer
}
}
\details{
This function returns messages as a batch from the topic to which the consumer is associated. If no new message is found with 'x' time(set by ConsumerTimeoutMs property), then it returns ""
}
\value{
Array of Strings
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
\note{
Warning: Ensure to close the consumer after reading messages. Won't work correctly next time otherwise
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
\dontrun{

consumer1=rkafka.createConsumer("127.0.0.1:2181","test123")
print(rkafka.readPoll(consumer1)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka}
\keyword{ ~consumer }
\keyword{ ~read}% __ONLY ONE__ keyword per line
