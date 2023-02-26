# Fetch-Data-Analytics-Internship
## File description
I use DataGrip on my computer to help me develop. And import the .csv data provided to the local database. Among them, two data in the Receipt_items.csv will cause import errors due to a single quotation number and need to be repaired before import.
### Query1 -5.sql
The answer to solution to the query question mentioned in the Google Doc file
1. Which Brand Saw the Most Dollars Spent in the Month of June?

  Brand: Brooks®
2. Which User Spent the MOST MONEY in the Month of August?

  UserID: 609ab37f7a2e8f2f95ae968f
  Spent: 157739.13999999998
3. What user bought the most extensive item?

  UserID: 617376b8a9619d488190e0b6
  Item Description: Starbucks Iced Coffee Premium Coffee Beverage Unsweetened Blonde Roast Bottle 48 Oz 1 Ct
  Price: 31005.99
4. What is the name of the most extensive item purchaset?

  Item: Starbucks Iced Coffee Premium Coffee Beverage Unsweetened Blonde Roast Bottle 48 Oz 1 Ct
  Price: 31005.99
5. How many users scanned in each month?

  See Result_5.csv
### Result .csv
Export the answer of **Query1-5.sql** to CSV format and save, including Column Header, and data separation from a comma
### Create .sql
Sql create table statement automatically generated by DataGrip.
### TimeProcessingFunction .sql
Use **STR_TO_DATE** FUNCTION to convert the time format provided in the CSV file from the **ISO 8601** format to the MySQL Datetime variable, and retains the accuracy of the three positions after the decimal point.
### Monthly_User_Activity .png
**Visualize** the relationship between user activity and month as a line graph. 
As shown in the analysis, the number of users scanning receipts each month has been steadily increasing since January 2021, with **a sharp spike** in **July 2021**. This trend indicates that more and more people are becoming aware of and actively using the Fetch Rewards app to earn rewards for their purchases.
Showing the number of users scanning receipts on the y-axis and the month on the x-axis. This visual aid can help non-technical stakeholders easily understand the growth in user activity over time and the potential for continued growth in the future.

### Field of 4 tables.
The **Brands table** has the fields:
-   ID (primary key)
-   BARCODE
-   BRAND_CODE
-   CPG_ID
-   CATEGORY
-   NAME
-   ROMANCE_TEXT
-   RELATED_BRAND_IDS

The **Receipt Items** table has the fields:
-   REWARDS_RECEIPT_ID (foreign key to Receipts.ID)
-   ITEM_INDEX
-   REWARDS_RECEIPT_ITEM_ID
-   DESCRIPTION
-   BARCODE
-   BRAND_CODE
-   QUANTITY_PURCHASED
-   TOTAL_FINAL_PRICE
-   POINTS_EARNED
-   REWARDS_GROUP
-   MODIFY_DATE

The **Receipts** table has the fields:
-   ID (primary key)
-   STORE_NAME
-   PURCHASE_DATE
-   PURCHASE_TIME
-   TOTAL_SPENT
-   REWARDS_RECEIPT_STATUS
-   USER_ID (foreign key to Users.ID)
-   USER_VIEWED
-   PURCHASED_ITEM_COUNT
-   CREATE_DATE
-   PENDING_DATE
-   MODIFY_DATE
-   FLAGGED_DATE
-   PROCESSED_DATE
-   FINISHED_DATE
-   REJECTED_DATE
-   DELETED
-   NON_POINT_EARNING_RECEIPT

The **Users** table has the fields:
-   ID (primary key)
-   CREATED_DATE
-   BIRTH_DATE
-   GENDER
-   LAST_REWARDS_LOGIN
-   STATE
-   SIGN_UP_PLATFORM
-   SIGN_UP_SOURCE

**The joinable keys** are:
-   Brands.BARCODE and Receipt Items.BARCODE
-   Brands.BRAND_CODE and Receipt Items.BRAND_CODE
-   Receipts.ID and Receipt Items.REWARDS_RECEIPT_ID
-   Users.ID and Receipts.USER_ID
