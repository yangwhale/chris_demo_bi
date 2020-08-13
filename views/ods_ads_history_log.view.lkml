view: ods_ads_history_log {
  sql_table_name: `bidata.ods_ads_history_log`
    ;;

  dimension: assetid {
    type: string
    sql: ${TABLE}.assetid ;;
  }

  dimension: assetname {
    type: string
    sql: ${TABLE}.assetname ;;
  }

  dimension: cacheday {
    type: string
    sql: ${TABLE}.cacheday ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversions_value {
    type: number
    sql: ${TABLE}.conversions_value ;;
  }

  dimension: cost_micros {
    type: number
    sql: ${TABLE}.cost_micros ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: pass {
    type: number
    sql: ${TABLE}.pass ;;
  }

  measure: count {
    type: count
    drill_fields: [assetname, campaign_name]
  }
}
