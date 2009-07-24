class List < ActiveRecord::Base
  extend Adapter
  set_primary_key :Z_PK 
  set_table_name :ZGROUP
  adapter_for :title, :type, :created_date, :modified_date
  has_many :tasks, :foreign_key => :ZPARENTLIST, :primary_key => :Z_PK


end
