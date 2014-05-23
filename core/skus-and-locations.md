---
date: '2014-02-23'
commit: 48bf1c034ad714e55e98d439cb9c42905b73d2be
---
**SKUs and their Locations**  A Stock Keeping Unit (SKU) is a distinct *thing*, such as a product or service that is offered for sale.  A SKU does not have to be a physical item, often things such as *LABOR* or *INSTALLATION* are also created as SKU's so they can be easily tracked on sales.

##### SKUs

A few of the more important attributes for a SKU are:

 * A General Ledger revenue and Asset account.
 * One or more Vendors that can provide the SKU.  One of the vendors is listed as the *Default* vendor and will be selected first for proposed re-stock [Purchase Orders](purchase-orders)
 * One or more Units of Measure (UOM).
   * A UOM is a combination of a short code such as EA, CASE, or BOX and a size.  The UOM is typically abbreviated as CASE/24 or BOX/12. The size is not shown if it's one (1).  Therefore EA wouldn't be shown as EA/1, but just as EA.
   * SKUs pricing is based off the UOM.  Often times a business will offer dicounts for purchasing a larger UOM.
   * A UOM also has dimensions; Height, Width, & Depth.
 * One or more Locations.

##### Locations

Stockor is a multi-location system.  It encourages setting up separate locations and keeping goods separated by location.  Locations do not have to be a physical location, often times it might make business sense to segregate SKUs by business units or even by processing stage.

A SKU Location tracks:

 * The quantity that is on hand.
 * The quantity that is allocated.  Stockor is a real-time inventory system.  When a Sales Order is placed, it will attempt to reserve the quantity to it by increasing the location's allocated count.  The allocation is released and on-hand quantity lowered when the SKU is shipped.
 * The cost of the SKU.  Stockor uses the Moving Average Cost method of calculating cost for each SKU.
 * A BIN location.  When a Sales Order is being shipped, a Pick Ticket is generated for the items that will print in BIN order for maximum picking efficiency.

**See Also:**  Wikipedia has a good article on what a SKU is and how they're used:  http://en.wikipedia.org/wiki/Stock-keeping_unit
