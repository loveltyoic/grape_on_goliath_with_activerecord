class Order < ActiveRecord::Base
  self.table_name = 'ecs_order_info'
  self.primary_key = 'order_id'
end