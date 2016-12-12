json.array!(@payroll_data) do |payroll_datum|
  json.extract! payroll_datum, :id, :employee_id, :payroll_id, :salary, :deduction, :net
  json.url payroll_datum_url(payroll_datum, format: :json)
end
