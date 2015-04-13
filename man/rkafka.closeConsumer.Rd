\name{rkafka.closeConsumer}
\alias{rkafka.closeConsumer}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Closing KAKFA consumer
}
\description{
This functions shuts down the KAFKA consumer
}
\usage{
rkafka.closeConsumer(ConsumerObj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ConsumerObj}{
ConsumerObj:Consumer through which messages are to be read(Java Object)	
Required:Mandatory
Type:Consumer
}
}

\value{
Function doesn't return anything
}

\author{
Shruti Gupta
}


\examples{
\dontrun{
consumer1=rkafka.createHighConsumer("127.0.0.1:2181")
rkafka.closeHighConsumer(consumer1)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kafka }
\keyword{ ~consumer }
\keyword{ ~close }% __ONLY ONE__ keyword per line
