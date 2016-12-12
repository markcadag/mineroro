class PlantMilling < ActiveRecord::Base
  belongs_to :team
  belongs_to :mine
  enum production_type: { ball_mill: 0, plant: 2, waste: 3 }
  enum product_state: { unrefined: 0, refined: 1 }
  # scope :by_degree, -> degree { where(:degree => degree) }
  scope :production_type, -> production_type { where(:production_type => production_type) }
  acts_as_xlsx

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
  # scope :active_at_date, lambda { where("date_starting < :date and date_ending > :date", date: Date.today )}
   # scope :date_sold, lambda { where('DATE(date_sold) BETWEEN ? AND ?',start_date,end_date)}
   # scope :date_sold, lambda {|start_date, end_date| where("DATE(date_sold) >= ? AND date_sold <= ?", start_date, end_date ) }
  # scope :date_sold, lambda { WHERE("date_sold BETWEEN ? AND ?",start_date,end_date )  }
#   # scope :milled_date, -> milled_from, milled_to { where("milled_from = ? AND milled_to = ?", milled_from, milled_to) }
#   # scope :milled_date, lambda {|milled_from, milled_to| where("milled_from >= ? AND milled_to <= ?", milled_from, milled_to )}
# 'DATE(log_items.created_at) BETWEEN ? AND ?', start_date, end_date
end
