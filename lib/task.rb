class Task < ActiveRecord::Base
  extend Adapter
  set_primary_key :Z_PK 
  set_table_name :ZTASK
  adapter_for :priority, :recurring, :completed_date, :display_order, :archived_date, :created_date, :start_date, :canceled_date, :title, :notes, :parent_task
  belongs_to :list, :foreign_key => :ZPARENTLIST

  named_scope :in_progress, :conditions => { :ZCOMPLETEDDATE => nil, :ZCANCELEDDATE => nil }

end
