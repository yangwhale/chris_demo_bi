view: bitracker {
  sql_table_name: `bidata.bitracker`
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
}
