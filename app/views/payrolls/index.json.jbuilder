json.array!(@payrolls) do |payroll|
  json.extract! payroll, :id, :reference_number, :payroll_date
  json.url payroll_url(payroll, format: :json)
end
