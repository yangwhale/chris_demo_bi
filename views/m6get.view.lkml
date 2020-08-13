view: m6get {
  sql_table_name: `bidata.m6get`
    ;;

  dimension: amount__buyer_currency_ {
    type: number
    sql: ${TABLE}.Amount__Buyer_Currency_ ;;
  }

  dimension: amount__merchant_currency_ {
    type: number
    sql: ${TABLE}.Amount__Merchant_Currency_ ;;
  }

  dimension: buyer_country {
    type: string
    sql: ${TABLE}.Buyer_Country ;;
  }

  dimension: buyer_currency {
    type: string
    sql: ${TABLE}.Buyer_Currency ;;
  }

  dimension: buyer_postal_code {
    type: string
    sql: ${TABLE}.Buyer_Postal_Code ;;
  }

  dimension: buyer_state {
    type: string
    sql: ${TABLE}.Buyer_State ;;
  }

  dimension: currency_conversion_rate {
    type: number
    sql: ${TABLE}.Currency_Conversion_Rate ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: hardware {
    type: string
    sql: ${TABLE}.Hardware ;;
  }

  dimension: merchant_currency {
    type: string
    sql: ${TABLE}.Merchant_Currency ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.Product_id ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}.Product_Title ;;
  }

  dimension: product_type {
    type: number
    sql: ${TABLE}.Product_Type ;;
  }

  dimension: refund_type {
    type: string
    sql: ${TABLE}.Refund_Type ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.Sku_Id ;;
  }

  dimension: tax_type {
    type: string
    sql: ${TABLE}.Tax_Type ;;
  }

  dimension: transaction_date {
    type: string
    sql: ${TABLE}.Transaction_Date ;;
  }

  dimension: transaction_time {
    type: string
    sql: ${TABLE}.Transaction_Time ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.Transaction_Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
