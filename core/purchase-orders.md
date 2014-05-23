---
date: '2014-02-24'
commit: 5ad80b224052f32be7daaabf1904fdd4871c805e
---
**Purchase Orders**  A Purchase Order (often abbreviated as PO) is a record of a request to purchase a product from a Vendor.  It contains one or more SKUs, the quantity desired for each and the price offered for them.

A Purchase Order progresses through set stages:

 * It starts of as simply *Saved*  This state indicates that the PO has been saved but no further action has been under-taken.
 * Once it has been sent to the [Vendor](vendors), it transitions to *Sent*.
 * Once a confirmation has been received from the vendor it becomes *Confirmed*  At this point the PO may be considered a legal contract between the Company and the Vendor.
 * Once the ordered [SKUs](skus-and-locations) are received, the PO will be marked as either *Partial* or *Complete*.  A Voucher is  then created from the Purchase Order.


##### Vouchers

A voucher is a record that the Company owes a vendor funds.  Like Purchase orders they transition through states; *Pending*, *Paid* and *In Dispute*
