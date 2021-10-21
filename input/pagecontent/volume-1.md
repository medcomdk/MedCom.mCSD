
The Mobile Care Services Discovery (mCSD) Profile supports discovery of
care services resources using a RESTful interface in interrelated,
federated environments.

The profile supports querying for:

1.  **Organization** – Organizations are “umbrella” entities; these may
    be considered the administrative bodies under whose auspices care
    services are provided such as Healthcare Information Exchanges
    (HIEs), Integrated Delivery Networks (IDNs), Non-Government
    Organizations (NGOs), Faith-Based Organizations (FBOs) or even a
    one-physician family practice. An organization has a unique
    identifier and may have additional administrative attributes such as
    contact person, mailing address, etc. Departments of an institution,
    or other administrative units, may be represented as child
    Organizations of a parent Organization.

2.  **Facility** – Facilities are physical care delivery sites such as
    hospitals, clinics, health outposts, physician offices, labs,
    pharmacies, etc. A Facility has a unique identifier, geographic
    attributes (address, geocode), contact attributes, attributes
    regarding its hours of operation, etc. Each Facility is defined by a
    pairing of Location and Organization.

3.  **Location** – Locations are physical places where care can be
    delivered such as facilities, buildings, wards, rooms, or vehicles.
    Locations also include jurisdictions such as a
    village districts or regions. A Location has a unique identifier and
    may have geographic attributes (address, geocode), attributes
    regarding its hours of operation, etc. Each Location may be related
    to one Organization. A location may have a hierarchical relationship
    with other locations.

4.	**Jurisdiction** – Jurisdictions are political administrative units or 
    other territories over which authority is exercised.  A Jurisdiction has 
    a unique identifier, geographic attributes, etc.  Jurisdictions include 
    political administrative units such as village districts or regions.  
    Each Jurisdiction is defined by a pairing of Location and Organization.

5.  **Practitioner** – A Practitioner is a health worker such as defined
    by WHO ([http://www.who.int/whr/2006/06_chap1_en.pdf](http://www.who.int/whr/2006/06_chap1_en.pdf)); a
    Practitioner might be a physician, nurse, pharmacist, community
    health worker, district health manager, etc. Practitioners have
    contact and demographic attributes. Each Practitioner may be related
    to one or more Organizations, one or more Locations and one or more
    Healthcare Services. Specific attributes may be associated with the
    Practitioner relationship with these other entities.

6. **Healthcare Service** – Each healthcare service has a unique
    identifier. Examples include surgical services, antenatal care
    services, or primary care services. The combination of a Healthcare
    Service offered at a Location may have specific attributes including
    contact person, hours of operation, etc.

The capabilities detailed in this profile support consumer-centric
queries such as finding “where is the closest youth mental health
services clinic” or “what are the hours of a physiotherapist near my
workplace”. In addition, mCSD supports crucial health system management
workflows. This can include reporting and analyses, such as “what are my
health human resource capacities, by facility, by cadre,” “what are all
the services offered at this facility,” or conversely, “where are all
the facilities that offer this service.” The mCSD Profile may be
employed to support, for example, the Provider Queries listed by the US
Office of the National Coordinator as part of the Standards and
Interoperability Framework ([http://wiki.siframework.org/file/view/ESI
Query and
Response.pdf](http://wiki.siframework.org/file/view/ESI%20Query%20and%20Response.pdf)).

The loosely coupled design and flexible querying capability of the mCSD
Profile means it can be deployed within a variety of eHealth
architectures and support a wide array of care workflows.

## 1:46.1 mCSD Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in
this profile. General definitions of actors are given in the Technical
Frameworks General Introduction Appendix A at
[https://www.ihe.net/resources/technical_frameworks/#GenIntro](https://www.ihe.net/resources/technical_frameworks/#GenIntro).

Figure 1:46.1-1 shows the actors directly involved in the mCSD Profile and
the relevant transactions between them. If needed for context, other
actors that may be indirectly involved due to their participation in
other related profiles are shown in dotted lines. Actors which have a
mandatory grouping are shown in conjoined boxes.

<div>
{%include ActorsAndTransactions.svg%}
</div>
<div style="clear: left;"/>
**Figure 1:46.1-1: mCSD Actor Diagram**

Table 1:46.1-1 lists the transactions for each actor directly involved in
the mCSD Profile. To claim compliance with this profile, an actor shall
support all required transactions (labeled “R”) and may support the
optional transactions (labeled “O”).

Table 1:46.1-1: mCSD Profile - Actors and Transactions

|                                  |                                          |                        |             |                 |
| -------------------------------- | ---------------------------------------- | ---------------------- | ----------- | --------------- |
| Actors                           | Transactions                             | Initiator or Responder | Optionality | Reference       |
| Care Services Selective Consumer | Find Matching Care Services \[ITI-90\]   | Initiator              | R           | ITI TF-2c: 3.90 |
| Care Services Selective Supplier | Find Matching Care Services \[ITI-90\]   | Responder              | R           | ITI TF-2c: 3.90 |
| Care Services Update Consumer    | Request Care Services Updates \[ITI-91\] | Initiator              | R           | ITI TF-2c: 3.91 |
| Care Services Update Supplier    | Request Care Services Updates \[ITI-91\] | Responder              | R           | ITI TF-2c: 3.91 |

### 1:46.1.1 Actor Descriptions and Actor Profile Requirements

Most requirements are documented in ITI TF-2: Transactions. This section
documents any additional requirements on mCSD actors.

mCSD supports querying for Organization, Facility, Location,
Practitioner, and Healthcare Service. However, a Care Services Selective
Supplier or Care Service Update Supplier is not required to contain data
on all of these.

## 1:46.2 mCSD Actor Options

Options that may be selected for each actor in this profile, if any, are
listed in the Table 1:46.2-1. Dependencies between options when applicable
are specified in notes.

Table 1:46.2-1: mCSD - Actors and Options

|                                  |                          |                |
| -------------------------------- | ------------------------ | -------------- |
| Actor                            | Option Name              | Reference      |
| Care Services Selective Consumer | Location Distance Option | Section 1:46.2.1 |
| Care Services Selective Supplier | Location Distance Option | Section 1:46.2.1 |
| Care Services Update Consumer    | No options defined       | \--            |
| Care Services Update Supplier    | No options defined       | \--            |

### 1:46.2.1 Location Distance Option

The Location Distance Option enables querying Location resources based
on relative distances.

A Care Services Selective Consumer or Care Services Selective Supplier
that supports the Location Distance Option will implement the semantics
for the Location Distance Option of the Find Matching Care Services
\[ITI-90\] transaction. See [ITI TF-2: 2:3.90.4.1.2.2](ITI-90.html) and [ITI TF-2:
2:3.90.4.2.2.2](ITI-90.html).

## 1:46.3 mCSD Required Actor Groupings 

An actor from this profile (Column 1) shall implement all of the
required transactions and/or content modules in this profile ***in
addition to*** ***<span class="underline">all</span>*** of the
requirements for the grouped actor (Column 2).

[Section 1:46.5](1465_security_considerations.html) describes some optional groupings that may be of interest
for security considerations and [Section 1:46.6](1466_cross_profile_considerations.html) describes some optional
groupings in other related profiles.

Table 1:46.3-1: mCSD - Required Actor Groupings

| mCSD Actor                       | Actor to be grouped with | Reference | Content Bindings Reference |
| -------------------------------- | ------------------------ | --------- | -------------------------- |
| Care Services Selective Consumer | None                     | \--       | \--                        |
| Care Services Selective Supplier | None                     | \--       | \--                        |
| Care Services Update Consumer    | None                     | \--       | \--                        |
| Care Services Update Supplier    | None                     | \--       | \--                        |


## 1:46.4 mCSD Overview

### **1:46.4.1 Concepts**

The Mobile Care Services Discovery (mCSD) Profile supports queries for
organizations, locations, facilities, practitioners, and healthcare
services. The relationship between these entities is illustrated in
Figure 1:46.4.1-1.

![](image2.png)

**Figure 1:46.4.1-1: Top-level Relationships between Care Services Entities**

#### 1:46.4.1.1 Create, Update, and Delete Services

This profile enables tracking of changes to, searching for, and
retrieval of, a set of resources. The creation, update, deletion and
other maintenance activities of those resources is out of the scope of
this profile.

### **1:46.4.2 Use Cases**

#### 1:46.4.2.1 Use Case \#1: Practitioner Query

##### 1:46.4.2.1.1 Practitioner Query Use Case Description

The patient, Vera Brooks, consults with her physician who recommends
surgery. The physician can assist the patient in finding a suitable
surgeon, taking into consideration the location and specialty of the
surgeon.

##### 1:46.4.2.1.2 Practitioner Query Process Flow

  - Vera Brooks sees her family physician, Dr. West, regarding a recent
    knee injury.

  - Dr. West diagnoses the problem as a torn ACL and decides to refer
    Vera to an orthopedic surgeon.

  - Dr. West uses her EMR query tool, which implements a Care Services
    Selective Consumer to search for orthopedic surgeons within 30km of
    Vera’s home.

  - The EMR retrieves the information from a Healthcare Worker Registry
    (HWR) and displays it to Dr. West.

  - Vera and Dr. West decide on an orthopedic surgeon; Dr. West prepares
    a referral.

The interactions between the various actors in this use case are shown
in Figure 1:46.4.2.1.2-1.

![Untitled (6)](image3.png)

**Figure 1:46.4.2.1.2-1: Provider Query Use Case**

The text in Figure 1:46.4.2.1.2-2 was used to generate the diagram in
Figure 1:46.4.2.1.2-1. Readers will generally find the diagram more
informative. The text is included here to facilitate editing.

@startuml

Vera -\> Dr. West: My knee hurts

Dr. West -\> Dr. West: diagnosis = torn ACL

Dr. West -\> EMR (Care Services Selective Consumer): use EMR's custom
query tool \\nsearch for orthopedic surgeons, \\nwithin 30km of Vera's
home

EMR (Care Services Selective Consumer) -\> HWR (Care Services Selective
Supplier): Find Matching Care Services \[ITI-90\] request

HWR (Care Services Selective Supplier) -\> EMR (Care Services Selective
Consumer): Find Matching Care Services \[ITI-90\] response\\ncontaining
PractitionerRole list

EMR (Care Services Selective Consumer) -\> EMR (Care Services Selective
Consumer) : Resolve References

EMR (Care Services Selective Consumer) -\> Dr. West : Review
results\\nwith office address, hours of operation

Dr. West -\> Vera: Review and discuss options

Dr. West -\> EMR (Care Services Selective Consumer): create Referral

@enduml

**Figure 1:46.4.2.1.2-2: Provider Query Use Case Diagram Pseudocode**

#### 1:46.4.2.2 Use Case \#2: Provider Lookup During an Emergency Event

##### 1:46.4.2.2.1 Provider Lookup During an Emergency Event Use Case Description

During an emergency event, medical volunteers may report to assist. At
an emergency site, the mCSD service can be queried to quickly identify
and grant permission to credentialed providers to enter the scene.

During Hurricane Katrina, health care volunteers were turned away from
disaster sites because there was no means available to verify their
credentials. During the Ebola outbreak in West Africa, it was unclear
which health workers were available and had been trained in clinical
care techniques.

Resources from jurisdictional areas can be reported up to a central
location so there is a single point of access. This would make it easier
for responders on location to verify the credentials of a reporting
health worker.

##### 1:46.4.2.2.2 Provider Lookup During an Emergency Event Process Flow

  - A jurisdictional (state/district) Care Services Update Supplier will
    provide data to a central Care Services Update Consumer (National
    HIE).

  - The National HIE will be a Care Services Update Consumer grouped
    with a Care Services Selective Supplier.

  - An emergency responder (e.g., police on site controlling access) can
    use a Care Services Selective Consumer to validate the credentials
    of a reporting health worker from the central Care Services Update
    Supplier.

  - Based on the result, the emergency responder can allow or deny
    access to the reporting health worker.

The interactions between the various actors in this use case are shown
in Figure 1:46.4.2.2.2-1.

![Untitled (7)](image4.png)

**Figure 1:46.4.2.2.2-1: Federated Data Site Management Workflow**

The text in Figure 1:46.4.2.2.2-2 was used to generate the diagram in
Figure 1:46.4.2.2.2-1. Readers will generally find the diagram more
informative. The text is included here to facilitate editing.

@startuml

participant Health Worker

participant Emergency Responder\\nCare Services Selective Consumer

participant National HIE\\nCare Services Update Consumer\\nCare Services
Selective Supplier

participant State HIE\\nCare Services Update Supplier

loop Regular update of practitioner information

National HIE\\nCare Services Update Consumer\\nCare Services Selective
Supplier -\> State HIE\\nCare Services Update Supplier : Request Care
Services Updates request \[ITI-91\]

State HIE\\nCare Services Update Supplier -\> National HIE\\nCare
Services Update Consumer\\nCare Services Selective Supplier : Request
Care Services Updates response \[ITI-91\]\\nFHIR Bundle of Updated
resources

end

Health Worker -\> Emergency Responder\\nCare Services Selective Consumer
: Reports for volunteer duty

Emergency Responder\\nCare Services Selective Consumer -\> National
HIE\\nCare Services Update Consumer\\nCare Services Selective Supplier :
Find Matching Care Services request \[ITI-90\]

National HIE\\nCare Services Update Consumer\\nCare Services Selective
Supplier -\> Emergency Responder\\nCare Services Selective Consumer :
Find Matching Care Services response \[ITI-90\]\\nFHIR Bundle of
matching resources

Emergency Responder\\nCare Services Selective Consumer -\> Health Worker
: Allow or deny access

@enduml

**Figure 1:46.4.2.2.2-2: Federated Data Site Management Workflow Diagram
Pseudocode**

#### 1:46.4.2.3 Use Case \#3: Cross-jurisdictional Site Management 

##### 1:46.4.2.3.1 Cross-jurisdictional Site Management Description

Projects like the U.S. President's Emergency Plan for AIDS Relief
(PEPFAR)’s Data for Accountability, Transparency, and Impact (DATIM)
need to have public health and service delivery indicators reported from
a large number of sites (health facilities, communities, warehouses)
within an Operating Unit (country/region). Within an Operating Unit,
there are multiple, possibly overlapping, jurisdictions in operation
which are managed by multiple organizations (e.g., ministries of health
(MoH), faith-based organizations, international non-governmental
organizations). The project needs to receive indicator submissions from
pre-existing data systems hosted by these organizations. This data
exchange requires a way to share site lists and implement identifier
mapping between the sites in these lists. 

**Figure 1:46.4.2.3.1-1: Cross-Jurisdictional Data Exchange**

##### 1:46.4.2.3.2 Cross-jurisdictional Site Management Process Flow

An Operating Unit (OU) will run a Care Services Update Consumer and Care
Services Update Supplier for a specific geographic area (e.g., country).
This Update Consumer will query other organizations (ministries of
health, partners) operating in the geographic area to get updated site
data for the sites managed by the OU.

  - An OU Update Consumer will query a sub-unit Care Services Update
    Suppliers (e.g., MoH) to get an updated list of sites under the
    sub-unit.

  - An OU Update Consumer will query a subunit Care Services Update
    Suppliers (e.g., partner) to get an updated list of sites under the
    subunit.

  - The OU Update Consumer will use entity matching to determine if
    there are duplicated sites in the combined data and flag them for
    review. (See
    [https://wiki.ohie.org/display/documents/OpenHIE+Entity+Matching+Service](https://wiki.ohie.org/display/documents/OpenHIE+Entity+Matching+Service))

The interactions between the various actors in this use case are shown
in Figure 1:46.4.2.3.2-1.

![](image5.png)

**Figure 1:46.4.2.3.2-1: Cross-jurisdictional Site Management Workflow**

The text in Figure 1:46.4.2.3.2-2 was used to generate the diagram in
Figure 1:46.4.2.3.2-1. Readers will generally find the diagram more
informative. The text is included here to facilitate editing.

@startuml

participant OU Reviewer

participant Operating Unit\\nCare Services Update Consumer

participant MOH\\nCare Services Update Supplier

participant Partner\\nCare Services Update Supplier

Operating Unit\\nCare Services Update Consumer-\>MOH\\nCare Services
Update Supplier: Request Care Services Updates \[ITI-91\] request

MOH\\nCare Services Update Supplier-\>Operating Unit\\nCare Services
Update Consumer: Request Care Services Updates \[ITI-91\] response

Operating Unit\\nCare Services Update Consumer-\>Partner\\nCare Services
Update Supplier: Request Care Services Updates \[ITI-91\] request

Partner\\nCare Services Update Supplier-\>Operating Unit\\nCare Services
Update Consumer: Request Care Services Updates \[ITI-91\] response

Operating Unit\\nCare Services Update Consumer-\>Operating Unit\\nCare
Services Update Consumer: Flag possible duplicates for review

OU Reviewer-\>Operating Unit\\nCare Services Update Consumer: Look at
flagged Locations

OU Reviewer-\>Operating Unit\\nCare Services Update Consumer: Resolve
flagged Locations

@enduml

**Figure 1:46.4.2.3.2-2: Cross-jurisdictional Site Management Workflow
Diagram Pseudocode**

#### 1:46.4.2.4 Use Case \#4: Master Facility List 

##### 1:46.4.2.4.1 Master Facility List Description

A developing country has decided to implement a Master Facility List
(MFL) based on recommendations from the WHO in the MFL Resource Package
([https://www.who.int/healthinfo/country_monitoring_evaluation/mfl/en/](https://www.who.int/healthinfo/country_monitoring_evaluation/mfl/en/)).
This resource includes a minimum data set to uniquely identify,
locate, and contact a specific facility. Since this will be a single
source of information for the country, there may be differing
hierarchies that need to be supported for the facilities. For example,
one hierarchy would be the administrative hierarchy for the country
(region, district, county). Another would be the supply chain hierarchy
where hubs may be located separately from administrative regions. Yet
another could be a reporting hierarchy used to send data to
international organizations.

##### 1:46.4.2.4.2 Master Facility List Process Flow

A Master Facility List (MFL) will run a Care Services Update Supplier
and Care Services Selective Supplier for an entire country. A Human
Resources Information System (HRIS) will run a Care Services Update
Consumer to retrieve the list of facilities. A Logistics Management
Information System (LMIS) will run a Care Services Update Consumer to
retrieve the list of facilities.

  - An HRIS will query the MFL for an updated list of facilities where
    Practitioners can provide care.

  - An LMIS will query the MFL for an updated list of facilities for the
    supply chain to deliver health care supplies.

  - The MFL will return updated facilities to each of these systems with
    multiple hierarchies.

The interactions between the various actors in this use case are shown
in Figure 1:46.4.2.4.1-1.

![](image6.png)

**Figure 1:46.4.2.4.2-1: Master Facility List Workflow**

The text in Figure 1:46.4.2.4.2-2 was used to generate the diagram in
Figure 1:46.4.2.4.2-1. Readers will generally find the diagram more
informative. The text is included here to facilitate editing.

@startuml

participant MFL\\nCare Services Update Supplier

participant HRIS\\nCare Services Update Consumer

participant LMIS\\nCare Services Update Consumer

HRIS\\nCare Services Update Consumer-\>MFL\\nCare Services Update
Supplier: Request Care Services Updates \[ITI-91\] request

MFL\\nCare Services Update Supplier-\>HRIS\\nCare Services Update
Consumer: Request Care Services Updates \[ITI-91\] response

LMIS\\nCare Services Update Consumer-\>MFL\\nCare Services Update
Supplier: Request Care Services Updates \[ITI-91\] request

MFL\\nCare Services Update Supplier-\>LMIS\\nCare Services Update
Consumer: Request Care Services Updates \[ITI-91\] response

@enduml

**Figure 1:46.4.2.4.2-2: Master Facility List Workflow Diagram Pseudocode**

## 1:46.5 mCSD Security Considerations

The resources exchanged in this profile may contain information which
pose a privacy risk, or in some cases, a safety risk, to providers and
other personnel, as well as patients. For example, practitioner phone
numbers and home addresses may be conveyed. Implementers should
determine what data will be exposed by the system and what level of
public access there will be if any.

There are many reasonable methods of security for interoperability
transactions which can be implemented without modifying the
characteristics of the transactions in the mCSD Profile. The use of TLS
is encouraged, specifically the use of the ATNA Profile (see ITI TF-1:
9).

User authentication on mobile devices and browsers is typically handled
by more lightweight authentication schemes such as HTTP Authentication,
OAuth 2.0, or OpenID Connect. IHE has a set of profiles for user
authentication including Internet User Authentication (IUA) for
REST-based authentication. The network communication security and user
authentication are layered in the HTTP transport layer.

## 1:46.6 mCSD Cross Profile Considerations

### 1:46.6.1 Aggregate Data Exchange – ADX

The IHE QRPH Aggregate Data Exchange (ADX) Profile enables reporting of
public health and service delivery indicators in various locations. A
reporting system may play the role of a Care Services Update Consumer to
ensure that it has an updated list of the resources for the reporting
locations.

Additionally, a service that contains information on practitioners (and
may be a Care Services Selective Supplier or Care Services Update
Supplier) can also be used to generate an ADX message to satisfy the use
case of a district health manager running an aggregate report on
staffing levels by facility and health worker type from the ITI Care
Services Discovery (CSD) Profile.

### 1:46.6.2 Care Services Discovery – CSD

A Care Services Directory in the CSD Profile can be grouped with the
Care Services Update Supplier from mCSD. The CSD Care Services
InfoManager could implement the mCSD Care Services Update Consumer and
the Care Services Selective Supplier Actors. The CSD Service Finder
could implement the mCSD Care Services Selective Consumer. This enables
the CSD actors to allow RESTful transactions without having to change
the underlying data store.

### 1:46.6.3 Health Provider Directory – HPD

A Provider Information Source in HPD can also implement the Care
Services Update Supplier from mCSD. Note that in this case the Provider
Information Source would be queried for updates instead of pushing the
updates to the Consumer. The HPD Provider Information Directory could
implement the mCSD Care Services Update Consumer and the Care Services
Selective Supplier Actors. The HPD Provider Information Consumer could
implement the mCSD Care Services Selective Consumer. This enables the
HPD actors to allow RESTful transactions without having to change the
underlying data store.

### 1:46.6.4 Mobile Alert Communication Management – mACM

The mACM Profile defines the means to send an alert to practitioners.
The mCSD Profile provides a way to query that list of practitioners. A
mACM Alert Reporter can be grouped with a Care Services Update Consumer
or a Care Services Selective Consumer to ensure that it has an updated
list of practitioners.

## 1:46.7 mCSD Deployment Considerations

### 1:46.7.1 Simple Deployment

A deployment may only have a single server that will maintain data
(Organization, Location, Facility, Practitioner, and/or Healthcare
Service). In this case, you would only need the Care Services Selective
Supplier (or Care Services Update Supplier) to send search results back
to one or more Care Services Selective Consumers (or Care Services
Update Consumer). See Figure 1:46.7.1-1.

**Figure 1:46.7.1-1: Simple Deployment**

### 1:46.7.2 Federated and Cross-Jurisdictional Deployments

A Federated Deployment has multiple levels of the Care Services Update
Suppliers linked to Care Services Update Consumers. These Update
Consumers may also support being Care Services Update Suppliers so that
higher level Update Consumers can receive their updates. They may also
support being a Care Services Selective Supplier so that Selective
Consumer clients can query that level of information. See Figure
1:46.7.2-1.

Interrelated content is maintained by the Care Services Update Consumer.
The Care Services Update Consumer routinely obtains new or updated
content from Care Services Update Suppliers by polling them. These
updates may refresh a data cache which the Update Consumer maintains.
The Update Consumer’s cache is refreshed at an appropriate interval
specified by the implementing jurisdiction. The implementing
jurisdiction will consider the implications of out of date information
when setting the refresh interval between cache updates. The normal
delays in updating listings will also be part of this consideration.

The various data sources would maintain definitive data regarding one or
more of: Organization, Location, Healthcare Service, or Practitioner and
implement the Care Services Update Supplier. These Care Services Update
Suppliers would respond to a Care Services Update Consumer’s request for
new or updated content since a specified date and time. To support this
capability, a Care Services Update Supplier should support time stamped
updates. Data elements that are deprecated should not simply be deleted,
but rather are updated to an appropriate status indicating their
deprecation.

This deployment may also have cross-jurisdictional considerations if any
of the Update Suppliers have overlap in the data they manage. In this
instance, the Care Services Update Consumer would need to resolve any
conflicts before sharing this information as either a Care Services
Update Supplier or a Care Services Selective Supplier. The way in which
these conflicts are resolved is defined by the implementing jurisdiction
of the Care Services Update Consumer.

**Figure 1:46.7.2-1: Federated and Cross Jurisdictional Deployment**

The Care Services Selective Consumer is the actor that queries for
information about interrelated care services. These queries are sent to
the Care Services Selective Supplier who develops a response based on
the content in its local data store. When a Care Services Selective
Supplier is combined with a Care Services Update Consumer (Global and
Country servers from Figure 1:46.7.2-1), it should maintain a cache of the
aggregated information from all the configured Care Services Update
Suppliers it is linked to.

In order for the Care Services Update Consumer’s (Global and Country
servers) cached content to be able to serve its role as an interlinked
data source, the following conditions should be met by Care Services
Update Suppliers who maintain content.

1.  Implementing jurisdictions may mandate terminologies for
    Organization Type, Service Type, Location Type, Location Status,
    Practitioner Type, Practitioner Status, Contact Point Type,
    Credential Type, Specialization Code, and language code. Care
    Services Update Suppliers would be configurable to use these
    terminologies, where mandated. In the case of a cross jurisdictional
    deployment, mapping between the terminology used by the various
    jurisdictions may need to be maintained.

2.  Implementing jurisdictions may mandate conventions regarding the
    types, components and formatting of Name, Address and Address Line
    elements. Care Services Update Suppliers would be configurable to
    use these formatting conventions, where mandated.

3.  Implementing jurisdictions may mandate the source of truth regarding
    Organization ID, Healthcare Service ID, Location ID and Practitioner
    ID. Care Services Update Suppliers would ensure that all
    cross-referenced IDs match corresponding resources in the
    jurisdictionally mandated sources of truth.

For guidance on handling challenges regarding the representation of
names across multiple languages and in different cultures, refer to the
ITI TF-2a: 3.24.5.2.3.1. This section in the ITI Technical Framework
describes the use of the language tag as documented in IETF RFC1766 and
the HL7 XCN name data type.

#### 1:46.7.2.1 Terminology Services

All referenced terminologies from a Care Services Selective Supplier or
Care Services Update Supplier may be pre-coordinated or they may be
resolvable from one or more terminology services. Though it is out of
scope of the mCSD Profile to define the means of interacting with a
terminology service, this could be provided, for example, through the
Sharing Value Sets (SVS) Profile or using appropriate FHIR resources
(e.g., ValueSet).