view: b_billing_item {
  sql_table_name: LIVE.B_BillingItem ;;

  dimension: anzfkpos {
    type: number
    sql: ${TABLE}.ANZFKPOS ;;
  }

  dimension: base_unit {
    type: string
    sql: ${TABLE}.BaseUnit ;;
  }

  dimension: batch {
    type: string
    sql: ${TABLE}.Batch ;;
  }

  dimension: billing_document {
    type: string
    sql: ${TABLE}.BillingDocument ;;
  }

  dimension: billing_document_item {
    type: string
    sql: ${TABLE}.BillingDocumentItem ;;
  }

  dimension: billing_quantity {
    type: number
    sql: ${TABLE}.BillingQuantity ;;
  }

  dimension: billing_quantity_in_base_unit {
    type: number
    sql: ${TABLE}.BillingQuantityInBaseUnit ;;
  }

  dimension: billing_quantity_unit {
    type: string
    sql: ${TABLE}.BillingQuantityUnit ;;
  }

  dimension: billing_to_base_quantity_dnmntr {
    type: number
    sql: ${TABLE}.BillingToBaseQuantityDnmntr ;;
  }

  dimension: billing_to_base_quantity_numrtr {
    type: number
    sql: ${TABLE}.BillingToBaseQuantityNumrtr ;;
  }

  dimension: cost_amount {
    type: number
    sql: ${TABLE}.CostAmount ;;
  }

  dimension: eligible_amount_for_cash_discount {
    type: number
    sql: ${TABLE}.EligibleAmountForCashDiscount ;;
  }

  dimension: item_gross_amount_of_billing_doc {
    type: number
    sql: ${TABLE}.ItemGrossAmountOfBillingDoc ;;
  }

  dimension: item_gross_weight {
    type: number
    sql: ${TABLE}.ItemGrossWeight ;;
  }

  dimension: item_net_amount_of_billing_doc {
    type: number
    sql: ${TABLE}.ItemNetAmountOfBillingDoc ;;
  }

  dimension: item_net_weight {
    type: number
    sql: ${TABLE}.ItemNetWeight ;;
  }

  dimension: item_volume {
    type: number
    sql: ${TABLE}.ItemVolume ;;
  }

  dimension: item_volume_unit {
    type: string
    sql: ${TABLE}.ItemVolumeUnit ;;
  }

  dimension: item_weight_unit {
    type: string
    sql: ${TABLE}.ItemWeightUnit ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: material_group {
    type: string
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: mrprequired_quantity_in_base_unit {
    type: number
    sql: ${TABLE}.MRPRequiredQuantityInBaseUnit ;;
  }

  dimension: price_detn_exchange_rate {
    type: number
    sql: ${TABLE}.PriceDetnExchangeRate ;;
  }

  dimension: pricing_date {
    type: string
    sql: ${TABLE}.PricingDate ;;
  }

  dimension: pricing_scale_quantity_in_base_unit {
    type: number
    sql: ${TABLE}.PricingScaleQuantityInBaseUnit ;;
  }

  dimension: product_hierarchy_node {
    type: string
    sql: ${TABLE}.ProductHierarchyNode ;;
  }

  dimension: rebate_basis_amount {
    type: number
    sql: ${TABLE}.RebateBasisAmount ;;
  }

  dimension: reference_sddocument {
    type: string
    sql: ${TABLE}.ReferenceSDDocument ;;
  }

  dimension: sales_document {
    type: string
    sql: ${TABLE}.SalesDocument ;;
  }

  dimension: sales_document_item {
    type: string
    sql: ${TABLE}.SalesDocumentItem ;;
  }

  dimension: sales_document_item_category {
    type: string
    sql: ${TABLE}.SalesDocumentItemCategory ;;
  }

  dimension: sales_document_item_type {
    type: string
    sql: ${TABLE}.SalesDocumentItemType ;;
  }

  dimension: services_rendered_date {
    type: string
    sql: ${TABLE}.ServicesRenderedDate ;;
  }

  dimension: subtotal1_amount {
    type: number
    sql: ${TABLE}.Subtotal1Amount ;;
  }

  dimension: subtotal2_amount {
    type: number
    sql: ${TABLE}.Subtotal2Amount ;;
  }

  dimension: subtotal3_amount {
    type: number
    sql: ${TABLE}.Subtotal3Amount ;;
  }

  dimension: subtotal4_amount {
    type: number
    sql: ${TABLE}.Subtotal4Amount ;;
  }

  dimension: subtotal5_amount {
    type: number
    sql: ${TABLE}.Subtotal5Amount ;;
  }

  dimension: subtotal6_amount {
    type: number
    sql: ${TABLE}.Subtotal6Amount ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.TaxAmount ;;
  }

  dimension: vbtyp {
    type: string
    sql: ${TABLE}.VBTYP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
