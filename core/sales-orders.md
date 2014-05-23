---
date: '2014-02-25'
commit: 79bcf4660392c34cd9b12feca15a85349cb37d43
---
**Sales Orders**  A Sales Order (often abbreviated as SO) is a record of a request by a [Customer](customers) to purchase [SKUs](skus-and-locations).

It contains:

 * The customer's contact information.  Stockor records both a billing and shipping [Address](addresses).
 * An [inventory location](skus-and-locations) that goods will be taken from.
 * A Purchase Order Number (PONUM) that was provided by the customer.
 * [Payment Terms](payment-terms) for the order.
 * One or more SKUs, the quantity desired for each and the selling price for them.

The terms and addresses default to the values specified for the customer, but may be over-ridden on a per-order basis.

Like [Purchase Orders](purchase-orders), SO's transition through a list of standard steps:

  * They begin as *Saved*
  * If the order needs to be picked from a warehouse, a Pick Ticket can be generated for the order.  The state will then be *Picking*.
  * Once the order is ready for shipping, delivery, or is picked up, an [Invoice](invoices) is generated.  The order will then be in the final state: *Invoiced*
