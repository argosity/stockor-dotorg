---
date: '2014-02-20'
commit: ab1e5ad1521f2ad604306dbff3f627c187dae0b3
---
**Addresses** are a basic building block of Stockor.  Most entities in the system have links to one or more of them.

They're fairly basic and somewhat betray the USA centric origins of Stockor. It will need to be re-woreked if/when Stockor is used in other countries.  The good news is that it's pretty segregated and upgrading just a few spots will fix it across the system.

An address tracks:

 * A name
 * A Phone Number
 * Email address
 * Two lines for street address
 * City, State, and postal code.

By default, all attributes may be left blank.  Different uses may require filling in some of the fields.  For instance a [Sales Order](sales-orders) with a shipping method specified will require filling in the postal portions.
