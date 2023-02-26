create table `fetch`.brands
(
    ID                text   null,
    BARCODE           double null,
    BRAND_CODE        text   null,
    CPG_ID            text   null,
    CATEGORY          text   null,
    CATEGORY_CODE     text   null,
    NAME              text   null,
    ROMANCE_TEXT      text   null,
    RELATED_BRAND_IDS text   null
);

create table `fetch`.receipt_items
(
    REWARDS_RECEIPT_ID         text        null,
    ITEM_INDEX                 int         null,
    REWARDS_RECEIPT_ITEM_ID    text        null,
    DESCRIPTION                text        null,
    BARCODE                    text        null,
    BRAND_CODE                 text        null,
    QUANTITY_PURCHASED         double      null,
    TOTAL_FINAL_PRICE          double      null,
    POINTS_EARNED              double      null,
    REWARDS_GROUP              text        null,
    ORIGINAL_RECEIPT_ITEM_TEXT text        null,
    MODIFY_DATE                datetime(3) null
);

create table `fetch`.receipts
(
    ID                        text        null,
    STORE_NAME                text        null,
    PURCHASE_DATE             datetime(3) null,
    PURCHASE_TIME             text        null,
    DATE_SCANNED              datetime(3) null,
    TOTAL_SPENT               double      null,
    REWARDS_RECEIPT_STATUS    text        null,
    USER_ID                   text        null,
    USER_VIEWED               text        null,
    PURCHASED_ITEM_COUNT      int         null,
    CREATE_DATE               datetime(3) null,
    PENDING_DATE              datetime(3) null,
    MODIFY_DATE               datetime(3) null,
    FLAGGED_DATE              datetime(3) null,
    PROCESSED_DATE            datetime(3) null,
    FINISHED_DATE             datetime(3) null,
    REJECTED_DATE             datetime(3) null,
    NEEDS_FETCH_REVIEW        text        null,
    DIGITAL_RECEIPT           text        null,
    DELETED                   text        null,
    NON_POINT_EARNING_RECEIPT text        null
);

create table `fetch`.users
(
    CREATED_DATE       datetime(3) null,
    BIRTH_DATE         datetime(3) null,
    GENDER             text        null,
    LAST_REWARDS_LOGIN datetime(3) null,
    STATE              text        null,
    SIGN_UP_PLATFORM   text        null,
    SIGN_UP_SOURCE     text        null,
    ID                 text        null
);



