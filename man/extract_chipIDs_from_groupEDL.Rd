% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers_DBrelated.R
\name{extract_chipIDs_from_groupEDL}
\alias{extract_chipIDs_from_groupEDL}
\title{extracts chipIDs from its chipgroup EDL}
\usage{
extract_chipIDs_from_groupEDL(EDL)
}
\arguments{
\item{EDL}{string of an XML document}
}
\value{
character vector containing chipIDs
}
\description{
converts a given string to an XML object and path's over to all ObjRefs and extracts UID attributes.
}
\examples{
{
EDL <- "<?xml version=\"1.0\"?>\r\n<!-- Mit XMLSpy v2011 rel. 3 (http://www.altova.com) von Christian Hennig (Medizinische Hochschule Hannover Päd. Pneumologie Neonatologie) bearbeitet -->\r\n
<Obj MadewithEDLVersion=\"0.1\" derivedfrom=\"Data Collection\" madewithEDLVersion=\"29012013141654\" Type=\"ChipGroup\">\r\n\t
<Identity UID=\"P1761451\" Type=\"ChipGroup\" TakeoverFromInputObject=\"\" Name=\"Takeda - sample preparation\"/>\r\n\t
<PrimaryContainer UID=\"\" Type=\"Earth\" TakeoverFromInputObject=\"\" IsInputObject=\"\"/>\r\n\t
<SpecificParameters>\r\n\t\t
<SpecificParameter Name=\"Definition\" Value=\"A ChipGroup is a collection of sample-analysis-data that shares the same function within a project (e.g. control-group, patient-group)\" Unit=\"Text\"/>\r\n\t\t
<SpecificParameter Name=\"DefinitionURL\" Value=\"-\" Unit=\"URL or Database\"/>\r\n\t\t
<SpecificParameter Name=\"Lifetime\" Value=\"-\" Unit=\"Duration\"/>\r\n\t\t
<SpecificParameter Name=\"ChipGroup Description\" Value=\"\" Unit=\"Text\"/>
<SpecificParameter Name=\"ChipGroup URL\" Value=\"\" Unit=\"URL\"/>
<SpecificParameter Name=\"ChipGroup Name\" Value=\"Takeda - sample preparation\" Unit=\"Text\"/>
</SpecificParameters>\r\n\t<EncapsulatedObjects/>
<EncapsulatedObjectsRef>
<ObjRef UID=\"M1730408\" Type=\"Microfluidic-Channel for Chipcytometry-Chip1 Histology-FFPE\"/>
<ObjRef UID=\"M1730410\" Type=\"Microfluidic-Channel for Chipcytometry-Chip1 Histology-FFPE\"/>
<ObjRef UID=\"M1730412\" Type=\"Microfluidic-Channel for Chipcytometry-Chip1 Histology-FFPE\"/>
</EncapsulatedObjectsRef>
<Owners>
<Owner UID=\"H858698\"/>
<Owner UID=\"CU1746580\" Level=\"FullAccess\"/>
</Owners></Obj>\r\n"

EDL\%>\%
extract_chipIDs_from_groupEDL()
}
}
\seealso{
Other database related: 
\code{\link{check_if_chip_data_exist}()},
\code{\link{connect_mongoDB}()},
\code{\link{find_chip_path}()},
\code{\link{find_server_path}()},
\code{\link{find_valid_group_chip_IDs}()},
\code{\link{get_EDL_from_query_result}()}
}
\concept{database related}
\keyword{internal}
