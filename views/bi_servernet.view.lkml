view: bi_servernet {
  sql_table_name: `bidata.bi_servernet`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: data_ping {
    type: string
    sql: ${TABLE}.dataPing ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: ping {
    type: string
    sql: ${TABLE}.ping ;;
  }

  dimension: ping_int {
    type: number
    sql: CAST(${TABLE}.ping AS INT64) ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}.server ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
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
    sql: ${ping_int};;
    value_format_name: decimal_2
    drill_fields: []
  }
}
