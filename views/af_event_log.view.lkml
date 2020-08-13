view: af_event_log {
  sql_table_name: `bidata.af_event_log`
    ;;

  dimension: ad {
    type: string
    sql: ${TABLE}.Ad ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.Ad_ID ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.Ad_Type ;;
  }

  dimension: adset {
    type: string
    sql: ${TABLE}.Adset ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}.Adset_ID ;;
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.Advertising_ID ;;
  }

  dimension: android_id {
    type: string
    sql: ${TABLE}.Android_ID ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.App_ID ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.App_Name ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.App_Version ;;
  }

  dimension: apps_flyer_id {
    type: string
    sql: ${TABLE}.AppsFlyer_ID ;;
  }

  dimension: bundle_id {
    type: string
    sql: ${TABLE}.Bundle_ID ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.Campaign ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.Campaign_ID ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: customer_user_id {
    type: string
    sql: ${TABLE}.Customer_User_ID ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.Device_Type ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.DMA ;;
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

  dimension: event_name {
    type: string
    sql: ${TABLE}.Event_Name ;;
  }

  dimension: event_revenue {
    type: string
    sql: ${TABLE}.Event_Revenue ;;
  }

  dimension: event_revenue_currency {
    type: string
    sql: ${TABLE}.Event_Revenue_Currency ;;
  }

  dimension: event_revenue_usd {
    type: string
    sql: ${TABLE}.Event_Revenue_USD ;;
  }

  dimension: event_time {
    type: string
    sql: ${TABLE}.Event_Time ;;
  }

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_value {
    type: string
    sql: ${TABLE}.Event_Value ;;
  }

  dimension: idfa {
    type: string
    sql: ${TABLE}.IDFA ;;
  }

  dimension: idfv {
    type: string
    sql: ${TABLE}.IDFV ;;
  }

  dimension: imei {
    type: string
    sql: ${TABLE}.IMEI ;;
  }

  dimension: install_time {
    type: string
    sql: ${TABLE}.Install_Time ;;
  }

  dimension: install_timestamp {
    type: number
    sql: ${TABLE}.install_timestamp ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: media_source {
    type: string
    sql: ${TABLE}.Media_Source ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.Operator ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.OS_Version ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.Platform ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.Postal_Code ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sdk_version {
    type: string
    sql: ${TABLE}.SDK_Version ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.Site_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: sub_site_id {
    type: string
    sql: ${TABLE}.Sub_Site_ID ;;
  }

  dimension: timezone {
    type: number
    sql: ${TABLE}.timezone ;;
  }

  dimension: wifi {
    type: string
    sql: ${TABLE}.WIFI ;;
  }

  measure: count {
    type: count
    drill_fields: [app_name, event_name]
  }
}
