view: ads_asset_result {
  sql_table_name: `bidata.ads_asset_result`
    ;;

  dimension: assetid {
    type: string
    sql: ${TABLE}.assetid ;;
  }

  dimension: assetname {
    type: string
    sql: ${TABLE}.assetname ;;
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: install_day {
    type: string
    sql: ${TABLE}.installDay ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }

  dimension: pass_day {
    type: number
    sql: ${TABLE}.passDay ;;
  }

  measure: count {
    type: count
    drill_fields: [assetname]
  }
}
