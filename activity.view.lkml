view: activity {
  sql_table_name: `ekoblov-test.dcm1684.activity_1684` ;;

  dimension: _data {
    hidden: yes
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension: _latest {
    hidden: yes
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension_group: activity {
    type: time
    sql: TIMESTAMP(${TABLE}._DATA_DATE) ;;
  }

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: concat(${activity_id}, ${ad_id}, ${advertiser_id}, ${user_id}, cast(${TABLE}.Event_Time as string), ${event_type}, ${rendering_id}) ;;
  }


  measure: count_activities {
    type: count_distinct
    sql: ${pk} ;;
  }

  dimension: activity_id {
    type: string
    sql: ${TABLE}.Activity_ID ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.Ad_ID ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.Advertiser_ID ;;
  }

  dimension: browser_platform_id {
    type: string
    sql: ${TABLE}.Browser_Platform_ID ;;
  }

  dimension: browser_platform_version {
    type: string
    sql: ${TABLE}.Browser_Platform_Version ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.Campaign_ID ;;
  }

  dimension: conversion_id {
    type: string
    sql: ${TABLE}.Conversion_ID ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: creative_version {
    type: number
    sql: ${TABLE}.Creative_Version ;;
  }

  dimension: dbm_ad_position {
    type: number
    sql: ${TABLE}.DBM_Ad_Position ;;
  }

  dimension: dbm_advertiser_id {
    type: string
    sql: ${TABLE}.DBM_Advertiser_ID ;;
  }

  dimension: dbm_adx_page_categories {
    type: string
    sql: ${TABLE}.DBM_Adx_Page_Categories ;;
  }

  dimension: dbm_attributed_inventory_source_external_id {
    type: string
    sql: ${TABLE}.DBM_Attributed_Inventory_Source_External_ID ;;
  }

  dimension: dbm_attributed_inventory_source_is_public {
    type: yesno
    sql: ${TABLE}.DBM_Attributed_Inventory_Source_Is_Public ;;
  }

  dimension: dbm_auction_id {
    type: string
    sql: ${TABLE}.DBM_Auction_ID ;;
  }

  dimension: dbm_bid_price_advertiser_currency {
    type: number
    sql: ${TABLE}.DBM_Bid_Price_Advertiser_Currency ;;
  }

  dimension: dbm_bid_price_partner_currency {
    type: number
    sql: ${TABLE}.DBM_Bid_Price_Partner_Currency ;;
  }

  dimension: dbm_bid_price_usd {
    type: number
    sql: ${TABLE}.DBM_Bid_Price_USD ;;
  }

  dimension: dbm_billable_cost_advertiser_currency {
    type: number
    sql: ${TABLE}.DBM_Billable_Cost_Advertiser_Currency ;;
  }

  dimension: dbm_billable_cost_partner_currency {
    type: number
    sql: ${TABLE}.DBM_Billable_Cost_Partner_Currency ;;
  }

  dimension: dbm_billable_cost_usd {
    type: number
    sql: ${TABLE}.DBM_Billable_Cost_USD ;;
  }

  dimension: dbm_browser_platform_id {
    type: string
    sql: ${TABLE}.DBM_Browser_Platform_ID ;;
  }

  dimension: dbm_browser_timezone_offset_minutes {
    type: number
    sql: ${TABLE}.DBM_Browser_Timezone_Offset_Minutes ;;
  }

  dimension: dbm_city_id {
    type: string
    sql: ${TABLE}.DBM_City_ID ;;
  }

  dimension: dbm_country_code {
    type: string
    sql: ${TABLE}.DBM_Country_Code ;;
  }

  dimension: dbm_cpm_fee_1_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_1_Advertiser_Currency ;;
  }

  dimension: dbm_cpm_fee_1_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_1_Partner_Currency ;;
  }

  dimension: dbm_cpm_fee_1_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_1_USD ;;
  }

  dimension: dbm_cpm_fee_2_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_2_Advertiser_Currency ;;
  }

  dimension: dbm_cpm_fee_2_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_2_Partner_Currency ;;
  }

  dimension: dbm_cpm_fee_2_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_2_USD ;;
  }

  dimension: dbm_cpm_fee_3_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_3_Advertiser_Currency ;;
  }

  dimension: dbm_cpm_fee_3_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_3_Partner_Currency ;;
  }

  dimension: dbm_cpm_fee_3_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_3_USD ;;
  }

  dimension: dbm_cpm_fee_4_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_4_Advertiser_Currency ;;
  }

  dimension: dbm_cpm_fee_4_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_4_Partner_Currency ;;
  }

  dimension: dbm_cpm_fee_4_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_4_USD ;;
  }

  dimension: dbm_cpm_fee_5_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_5_Advertiser_Currency ;;
  }

  dimension: dbm_cpm_fee_5_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_5_Partner_Currency ;;
  }

  dimension: dbm_cpm_fee_5_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_CPM_Fee_5_USD ;;
  }

  dimension: dbm_creative_id {
    type: string
    sql: ${TABLE}.DBM_Creative_ID ;;
  }

  dimension: dbm_data_fees_advertiser_currency {
    type: number
    sql: ${TABLE}.DBM_Data_Fees_Advertiser_Currency ;;
  }

  dimension: dbm_data_fees_partner_currency {
    type: number
    sql: ${TABLE}.DBM_Data_Fees_Partner_Currency ;;
  }

  dimension: dbm_data_fees_usd {
    type: number
    sql: ${TABLE}.DBM_Data_Fees_USD ;;
  }

  dimension: dbm_designated_market_area_dma_id {
    type: string
    sql: ${TABLE}.DBM_Designated_Market_Area_DMA_ID ;;
  }

  dimension: dbm_device_type {
    type: number
    sql: ${TABLE}.DBM_Device_Type ;;
  }

  dimension: dbm_exchange_id {
    type: string
    sql: ${TABLE}.DBM_Exchange_ID ;;
  }

  dimension: dbm_insertion_order_id {
    type: number
    sql: ${TABLE}.DBM_Insertion_Order_ID ;;
  }

  dimension: dbm_isp_id {
    type: string
    sql: ${TABLE}.DBM_ISP_ID ;;
  }

  dimension: dbm_language {
    type: string
    sql: ${TABLE}.DBM_Language ;;
  }

  dimension: dbm_line_item_id {
    type: number
    sql: ${TABLE}.DBM_Line_Item_ID ;;
  }

  dimension: dbm_matching_targeted_keywords {
    type: string
    sql: ${TABLE}.DBM_Matching_Targeted_Keywords ;;
  }

  dimension: dbm_matching_targeted_segments {
    type: string
    sql: ${TABLE}.DBM_Matching_Targeted_Segments ;;
  }

  dimension: dbm_media_cost_advertiser_currency {
    type: number
    sql: ${TABLE}.DBM_Media_Cost_Advertiser_Currency ;;
  }

  dimension: dbm_media_cost_partner_currency {
    type: number
    sql: ${TABLE}.DBM_Media_Cost_Partner_Currency ;;
  }

  dimension: dbm_media_cost_usd {
    type: number
    sql: ${TABLE}.DBM_Media_Cost_USD ;;
  }

  dimension: dbm_media_fee_1_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_1_Advertiser_Currency ;;
  }

  dimension: dbm_media_fee_1_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_1_Partner_Currency ;;
  }

  dimension: dbm_media_fee_1_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_1_USD ;;
  }

  dimension: dbm_media_fee_2_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_2_Advertiser_Currency ;;
  }

  dimension: dbm_media_fee_2_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_2_Partner_Currency ;;
  }

  dimension: dbm_media_fee_2_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_2_USD ;;
  }

  dimension: dbm_media_fee_3_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_3_Advertiser_Currency ;;
  }

  dimension: dbm_media_fee_3_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_3_Partner_Currency ;;
  }

  dimension: dbm_media_fee_3_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_3_USD ;;
  }

  dimension: dbm_media_fee_4_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_4_Advertiser_Currency ;;
  }

  dimension: dbm_media_fee_4_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_4_Partner_Currency ;;
  }

  dimension: dbm_media_fee_4_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_4_USD ;;
  }

  dimension: dbm_media_fee_5_advertiser_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_5_Advertiser_Currency ;;
  }

  dimension: dbm_media_fee_5_partner_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_5_Partner_Currency ;;
  }

  dimension: dbm_media_fee_5_usd {
    hidden: yes
    type: number
    sql: ${TABLE}.DBM_Media_Fee_5_USD ;;
  }

  dimension: dbm_mobile_make_id {
    type: string
    sql: ${TABLE}.DBM_Mobile_Make_ID ;;
  }

  dimension: dbm_mobile_model_id {
    type: string
    sql: ${TABLE}.DBM_Mobile_Model_ID ;;
  }

  dimension: dbm_net_speed {
    type: number
    sql: ${TABLE}.DBM_Net_Speed ;;
  }

  dimension: dbm_operating_system_id {
    type: string
    sql: ${TABLE}.DBM_Operating_System_ID ;;
  }

  dimension: dbm_request_time {
    type: number
    sql: ${TABLE}.DBM_Request_Time ;;
  }

  dimension: dbm_revenue_advertiser_currency {
    type: number
    sql: ${TABLE}.DBM_Revenue_Advertiser_Currency ;;
  }

  dimension: dbm_revenue_partner_currency {
    type: number
    sql: ${TABLE}.DBM_Revenue_Partner_Currency ;;
  }

  dimension: dbm_revenue_usd {
    type: number
    sql: ${TABLE}.DBM_Revenue_USD ;;
  }

  dimension: dbm_site_id {
    type: string
    sql: ${TABLE}.DBM_Site_ID ;;
  }

  dimension: dbm_state_region_id {
    type: string
    sql: ${TABLE}.DBM_State_Region_ID ;;
  }

  dimension: dbm_total_media_cost_advertiser_currency {
    type: number
    sql: ${TABLE}.DBM_Total_Media_Cost_Advertiser_Currency ;;
  }

  dimension: dbm_total_media_cost_partner_currency {
    type: number
    sql: ${TABLE}.DBM_Total_Media_Cost_Partner_Currency ;;
  }

  dimension: dbm_total_media_cost_usd {
    type: number
    sql: ${TABLE}.DBM_Total_Media_Cost_USD ;;
  }

  dimension: dbm_url {
    type: string
    sql: ${TABLE}.DBM_URL ;;
  }

  dimension: dbm_zip_postal_code {
    type: zipcode
    sql: ${TABLE}.DBM_ZIP_Postal_Code ;;
  }

  dimension: event_sub_type {
    type: string
    sql: ${TABLE}.Event_Sub_Type ;;
  }

  dimension_group: event {
    type: time
    datatype: epoch
    sql: ${TABLE}.Event_Time/1000000 ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.Event_Type ;;
  }

  dimension: floodlight_configuration {
    type: string
    sql: ${TABLE}.Floodlight_Configuration ;;
  }

  dimension_group: interaction {
    type: time
    datatype: epoch
    sql: INTEGER(${TABLE}.Interaction_Time)/1000000 ;;
  }

  dimension: operating_system_id {
    type: string
    sql: ${TABLE}.Operating_System_ID ;;
  }

  dimension: ord_value {
    type: string
    sql: ${TABLE}.ORD_Value ;;
  }

  dimension: other_data {
    type: string
    sql: ${TABLE}.Other_Data ;;
  }

  dimension: partner1_id {
    type: string
    sql: ${TABLE}.Partner1_ID ;;
  }

  dimension: partner2_id {
    type: string
    sql: ${TABLE}.Partner2_ID ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.Placement_ID ;;
  }

  dimension: rendering_id {
    type: string
    sql: ${TABLE}.Rendering_ID ;;
  }

  dimension: segment_value_1 {
    type: string
    sql: ${TABLE}.Segment_Value_1 ;;
  }

  dimension: site_id_dcm {
    type: string
    sql: ${TABLE}.Site_ID_DCM ;;
  }

  dimension: state_region {
    type: string
    sql: ${TABLE}.State_Region ;;
  }

  dimension: tran_value {
    type: string
    sql: ${TABLE}.TRAN_Value ;;
  }

  dimension: total_conversions {
    type: number
    hidden: yes
    sql: ${TABLE}.Total_Conversions ;;
  }

  dimension: total_revenue {
    type: number
    hidden: yes
    sql: (${TABLE}.Total_Revenue/1000000000) ;;
  }

  dimension: u_value {
    type: string
    sql: ${TABLE}.U_Value ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.User_ID ;;
  }

  measure: distinct_users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: conversions {
    description: "All conversions, including postclick and postview"
    type: sum
    sql: ${total_conversions} ;;
    drill_fields: [ad_id, match_table_ads.ad_name, match_table_ads.ad_type, count_activities, distinct_users]
  }

  measure: postclick_conversion {
    description: "Conversions that occured after a click. This indicates an effective ad, since it lead to a click and a conversion from a user / customer"
    type: sum
    sql: ${total_conversions} ;;
    filters: {
      field: event_sub_type
      value: "POSTCLICK"
    }
  }

  measure: postview_conversion {
    description: "Conversions that occured after an impression (with no click). This indicates that a user / customer came back to buy execute a conversion after seeing an ad, but not clicking on it"
    type: sum
    sql: ${total_conversions} ;;
    filters: {
      field: event_sub_type
      value: "POSTVIEW"
    }
  }

}
