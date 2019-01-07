#connection: "faa"

include: "accidents.view.lkml"         # include all views in this project
include: "aircraft.view.lkml"

include: "jomg_test.model.lkml"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: aircraft_2 {
  view_name: aircraft
  label: "aircraft 2"
  extends: [aircraft]
  hidden: yes
  }
