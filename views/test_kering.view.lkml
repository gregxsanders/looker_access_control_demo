view: zineb {
  # sql_table_name: `glb-customerretention-dev.Looker_Dataset.sales_audited` ;;
  fields_hidden_by_default:  yes

  derived_table: {
    sql:
      SELECT distinct user_id,
        {% if base.order_id._in_query %} , order_id {% endif %} -- age_range
      FROM `thelook.order_items`
      ;;
  }


  ############ TEST ############
  #filter: date_filter {
  #  type: date
  #}

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

}
