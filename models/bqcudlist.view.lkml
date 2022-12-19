# The name of this view in Looker is "Bqcudlist"
view: bqcudlist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `anilgcp-co-dev.billing.bq-cud-list`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "End Timestamp" in Explore.

  dimension: end_timestamp {
    type: string
    sql: ${TABLE}.endTimestamp ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.RAM ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ram {
    type: sum
    sql: ${ram} ;;
  }

  measure: average_ram {
    type: average
    sql: ${ram} ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: start_timestamp {
    type: string
    sql: ${TABLE}.startTimestamp ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: v_cpus {
    type: number
    sql: ${TABLE}.vCPUs ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
