view: ods_server_pay_log {
  sql_table_name: `bidata.ods_server_pay_log`
    ;;

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension_group: dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: pay_level {
    type: number
    sql: ${TABLE}.pay_level ;;
  }

  dimension: pf {
    type: string
    sql: ${TABLE}.pf ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: server_id {
    type: number
    sql: ${TABLE}.server_id ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  dimension: uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.uid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
