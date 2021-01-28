connection: "thelook_daily_updates"

# include all the views
include: "/views/**/*.view"

datagroup: sanders_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

persist_with: sanders_demo_default_datagroup

access_grant: event {
  user_attribute: can_see_events
  allowed_values: ["yes"]
}

explore: events {
  required_access_grants: [event]
}

explore: order_items {
  # Demo: apply value Allegra K,Dockers to a user's brand UA and sudo
  access_filter: {
    field: products.brand
    user_attribute: brand
  }
  sql_always_where: ${status} = 'Returned' ;;

  always_filter: {
    filters: [products.category: "Accessories"]
  }
  join: users {
    #type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: inventory_items {
    type: full_outer
    relationship: one_to_one
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
  }
  join: products {
    #type: left_outer
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }
}
