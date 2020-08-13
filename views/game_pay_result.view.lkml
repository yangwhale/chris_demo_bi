view: game_pay_result {
  sql_table_name: `bidata.game_pay_result`
    ;;

  dimension: cpivalue {
    type: string
    sql: ${TABLE}.cpivalue ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.deviceId ;;
  }

  dimension: diff_day {
    type: number
    sql: ${TABLE}.diffDay ;;
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

  dimension: media_source {
    type: string
    sql: ${TABLE}.Media_source ;;
  }

  dimension: usd {
    type: number
    sql: ${TABLE}.usd ;;
  }

  measure: usd_sum {
    type: sum
    sql: ${usd} ;;
    value_format_name: large_usd
    drill_fields: []
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
