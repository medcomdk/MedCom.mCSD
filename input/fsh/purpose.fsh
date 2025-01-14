Extension: MCSDPurposeOfUse
Id: IHE.mCSD.PurposeOfUse
Title: "Purpose of Use Extension"
Description: """
Set a purpose of use for an mCSD Endpoint or mCSD Organization.
"""
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "Endpoint"
* value[x] only CodeableConcept
* valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-PurposeOfUse (preferred)

Instance: MCSDSearchPurposeOfUse
InstanceOf: SearchParameter
Title: "Search on the IHE defined extension for Purpose of Use"
Usage: #definition
* id = "IHE.mCSD.Search.PurposeOfUse"
* url = "https://profiles.ihe.net/ITI/mCSD/SearchParameter/IHE.mCSD.Search.PurposeOfUse"
* description = "This SearchParameter enables finding Endpoints or Organizatoins by the purpose of use code.  This resource is created as informative content."
* name = "IHE_mCSD_Search_PurposeOfUse"
* status = #active
* code = #ihe-mcsd-purpose-of-use
* base[+] = #Organization
* base[+] = #Endpoint
* expression = "(extension('https://profiles.ihe.net/ITI/mCSD/SearchParameter/IHE.mCSD.Search.PurposeOfUse').value as CodeableConcept)"
* type = #token
