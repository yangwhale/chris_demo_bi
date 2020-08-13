view: tracker_log {
  sql_table_name: `bidata.tracker_log`
    ;;

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: ext {
    type: string
    sql: ${TABLE}.ext ;;
  }

  dimension: ping {
    type: number
    sql: CAST(JSON_EXTRACT(${TABLE}.ext, '$.ping') AS INT64) ;;
  }

  dimension: dataPing {
    type: number
    sql: CAST(JSON_EXTRACT(${TABLE}.ext, '$.dataPing') AS INT64) ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: networkstatus {
    type: string
    sql: ${TABLE}.networkstatus ;;
  }

  dimension: openid {
    type: string
    sql: ${TABLE}.openid ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: prod {
    type: string
    sql: ${TABLE}.prod ;;
  }

  dimension: queue_num {
    type: string
    sql: ${TABLE}.queueNum ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: step {
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension_group: converted_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: TIMESTAMP_MILLIS(${TABLE}.timestamp) ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  dimension: unionid {
    type: string
    sql: ${TABLE}.unionid ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: average_ping {
    type: average
    sql: ${ping};;
    value_format_name: decimal_2
    drill_fields: []
  }
}
