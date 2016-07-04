class Invoice < ActiveRecord::Base

  has_many :invoice_items, :dependent => :destroy
  has_many :debit_invoices, :dependent => :destroy
  has_one :vendor
  # has_many :items, :through => :invoice_items

  accepts_nested_attributes_for :invoice_items
  accepts_nested_attributes_for :debit_invoices
  
end
