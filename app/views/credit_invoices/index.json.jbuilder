json.array!(@credit_invoices) do |credit_invoice|
  json.extract! credit_invoice, :id, :title, :code, :value_date, :due_date, :duration_from, :duration_to, :remarks
  json.url credit_invoice_url(credit_invoice, format: :json)
end
