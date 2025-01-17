% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers_errorHandling.R
\name{is_error_in_EDLs}
\alias{is_error_in_EDLs}
\title{returns index which EDLs contains error}
\usage{
is_error_in_EDLs(EDLs)
}
\arguments{
\item{EDLs}{character vector of EDLs}
}
\value{
logical if EDLs is not readlable
}
\description{
applies check_EDLs_strings() and returns index if check resulted an error
}
\examples{
testEDL <- c(
"<foo><bar /></foo>",
"<ObjRef UID=\"D1891203\" Type=\"Gate\"/>
<ObjRef  UID=\"D1614318\" Type=\"Gate\"/>
<ObjRef UID=\"D973219\" Type=\"Gate\"/>",
"lalala",NA,NULL)
testEDL\%>\%is_error_in_EDLs()
}
\seealso{
Other errorHandling: 
\code{\link{check_EDLs_strings}()},
\code{\link{check_mappingResultLists}()},
\code{\link{detect_error_inCharacterVector}()},
\code{\link{get_errorDF_queryResults}()},
\code{\link{is_error_in_mappingResult}()},
\code{\link{print_queryResult_error}()},
\code{\link{split_errorText_toDF}()}
}
\concept{errorHandling}
\keyword{internal}
