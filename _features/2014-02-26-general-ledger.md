---
title: General Ledger
---
  <b>General Ledger</b> is the backbone of the system.  It's a full featured double-entry accounting system with a sample chart of accounts.

The sample chart of accounts consists of about 30 different accounts covering most common business situations.  Of course, additional accounts can always be added and account numbers modified.

The General Ledger is made up of the following models:  Period, Account, Transaction, Posting, and Manual Entries

**Period**:  The accounting period for the system.  Typically the accounting periods are setup to match the months of the year, with an additional period 13 dedicated to recording year-end closing and write-offs entries.

**Account**: Is used to organize the finances of the entity and to segregate expenditures, revenue, assets and liabilities in order to track the financial health of the entity.

An account is defined by an numeric identifier.  While the numbers can be any length, the sample chart of accounts included with Stockor sets the numbers at four digits and appends a two digit branch code to inventory related postings.

Typically the numbers are arranged in a tree so they can be queried using masks.  For instance Stockor defines account 5100 as the *Inventory Value* account, and 5150 as the *Goods on Transfer*.  By numbering accounts this way, it's possible to obtain the balance of either account by querying an exact match on the number, or the value of both accounts by querying accounts that match with 51**

Stockor follows the US GAAP simple chart of accounts standard of identifing the account type based on it's first digit:

  * **1** Asset accounts: Economic resources owned or controlled by business, common examples of Asset accounts are cash, cash in bank, building, inventory, prepaid rent, goodwill, accounts receivable
  * **2** Liability accounts.  Economic obligations by a business, such as accounts payable, bank loan, bonds payable, accrued interest.
  * **3** Equity accounts. The residual equity of a business (after deducting from Assets all the liabilities) including Retained Earnings and Appropriations.
  * **4** Revenue accounts or income. The company's gross earnings. Common examples include Sales, Service revenue and Interest Income.
  * **5** Expense accounts. Expenditures to enable the company to operate. Examples are electricity and water, rentals, depreciation, doubtful accounts, interest, insurance.
  * **6** Contra-accounts. Miscellaneous accounts that offset other transactions or to account for accounting mistakes. Examples are accumulated depreciation and allowance for bad debts.


**Transaction**: Records a transaction in the system.  It contains references to both a debit and credit posting, the period it occured in, and the model it referenced.

**Posting**: There are two of these created for every transaction. Credit & Debit.  It also records the account number from the GlAccount with an Branch GL code if the entry was location dependent.

**Manual Entry**: A GlTransaction requires a link to it's related model such as Invoice Line, or Inventory Adjustment. The GlManualEntry records the entries that are manually created.
