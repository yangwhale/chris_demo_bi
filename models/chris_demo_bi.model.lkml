connection: "knight-us-bigquery"

# include all the views
include: "/views/**/*.view"
include: "/lookml_dashboards/*.dashboard"

datagroup: chris_demo_bi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chris_demo_bi_default_datagroup

explore: ads_asset_result {}

explore: af_event_log {}

explore: bi_servernet {}

explore: bitracker {}

explore: game_pay_result {}

explore: m6get {}

explore: ods_ads_googleplacement {}

explore: ods_ads_history_log {}

explore: ods_server_pay_log {}

explore: tracker_log {}
