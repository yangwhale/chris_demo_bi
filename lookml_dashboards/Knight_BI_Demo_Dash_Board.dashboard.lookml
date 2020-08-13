- dashboard: knight_bi_demo_dash_board
  title: Knight BI Demo Dash Board
  layout: newspaper
  elements:
  - name: first_demo_pay_per_day
    title: first_demo_pay_per_day
    model: chris_demo_bi
    explore: game_pay_result
    type: looker_line
    fields: [game_pay_result.usd_sum, game_pay_result.dt_date]
    fill_fields: [game_pay_result.dt_date]
    sorts: [game_pay_result.dt_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 10
  - name: bi_servernet - ping latency group by country
    title: bi_servernet - ping latency group by country
    model: chris_demo_bi
    explore: bi_servernet
    type: looker_map
    fields: [bi_servernet.average_ping, bi_servernet.country]
    sorts: [bi_servernet.average_ping desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 53.95204507768739
    map_longitude: 2.8042602539062504
    map_zoom: 2
    defaults_version: 1
    listen:
      Date: bi_servernet.time_date
    row: 10
    col: 0
    width: 11
    height: 13
  - name: bi_servernet - request count group by country
    title: bi_servernet - request count group by country
    model: chris_demo_bi
    explore: bi_servernet
    type: looker_map
    fields: [bi_servernet.country, bi_servernet.count]
    sorts: [bi_servernet.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 30.299389313522617
    map_longitude: -109.42108154296876
    map_zoom: 2
    defaults_version: 1
    listen:
      Date: bi_servernet.time_date
    row: 10
    col: 11
    width: 11
    height: 13
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
