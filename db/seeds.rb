# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:


#asset
Plutus::Asset.create(:name => "Cash on Hand", :item_code => "BS11100")
Plutus::Asset.create(:name => "Cash", :item_code => "BS11100100")
Plutus::Asset.create(:name => "Cash - Disbursing Officers", :item_code => "BS11100200")
Plutus::Asset.create(:name => "Petty Cash Fund", :item_code => "BS11100300")
Plutus::Asset.create(:name => "Cash in Bank - Local Currency", :item_code => "BS11200")
Plutus::Asset.create(:name => "Cash in Bank - Local Currency, Current Account", :item_code => "BS11200100")
Plutus::Asset.create(:name => "Cash in Bank - Local Currency, Savings Account", :item_code => "BS11200200")
Plutus::Asset.create(:name => "Receivables", :item_code => "BS11300")
Plutus::Asset.create(:name => "Accounts Receivable", :item_code => "BS11300100")
Plutus::Asset.create(:name => "Allowance for Doubtful Accounts", :item_code => "BS11300200")
Plutus::Asset.create(:name => "BDue from Officers and Employees", :item_code => "BS11300300")
Plutus::Asset.create(:name => "Due from Miners", :item_code => "BS11300400")
Plutus::Asset.create(:name => "Other Receivables", :item_code => "BS11300500")
Plutus::Asset.create(:name => "Inventories ", :item_code => "BS11400")
Plutus::Asset.create(:name => "Ore Inventory", :item_code => "BS11400100")
Plutus::Asset.create(:name => "Gold Inventory", :item_code => "BS11400200")
Plutus::Asset.create(:name => "Office Supplies Inventory", :item_code => "BS11400300")
Plutus::Asset.create(:name => "Timber Inventory", :item_code => "BS11400400")
Plutus::Asset.create(:name => "Drugs and Medicines Inventory", :item_code => "BS11400500")
Plutus::Asset.create(:name => "Other Supplies Inventory", :item_code => "BS11400600")
Plutus::Asset.create(:name => "Prepayments", :item_code => "BS11500")
Plutus::Asset.create(:name => "Prepaid Rent", :item_code => "BS11500100")
Plutus::Asset.create(:name => "Prepaid Insurance", :item_code => "BS11500200")
Plutus::Asset.create(:name => "Prepaid Interest", :item_code => "BS11500300")
Plutus::Asset.create(:name => "Advance to Contractors", :item_code => "BS11500400")
Plutus::Asset.create(:name => "Other Prepaid Expenses", :item_code => "BS11500500")
Plutus::Asset.create(:name => "Other Current Assets", :item_code => "BS11600")
Plutus::Asset.create(:name => "Guaranty Deposits", :item_code => "BS11600100")
Plutus::Asset.create(:name => "Non-Current Assets", :item_code => "BS12000")
Plutus::Asset.create(:name => "Investments", :item_code => "BS12100")
Plutus::Asset.create(:name => "Investments in Treasury Bills", :item_code => "BS12100100")
Plutus::Asset.create(:name => "Investments in Stocks", :item_code => "BS12100200")
Plutus::Asset.create(:name => "Investments in Bonds", :item_code => "BS12100300")
Plutus::Asset.create(:name => "Property, Plant and Equipment", :item_code => "BS12200")
Plutus::Asset.create(:name => "Land", :item_code => "BS12200100")
Plutus::Asset.create(:name => "Office Buildings", :item_code => "BS12200200")
Plutus::Asset.create(:name => "Accumulated Depreciation - Office Buildings", :item_code => "BS12250200", :contra => true)
Plutus::Asset.create(:name => "Other Structures", :item_code => "BS12200300")
Plutus::Asset.create(:name => "Accumulated Depreciation - Other Structures", :item_code => "BS12250300", :contra => true)
Plutus::Asset.create(:name => "Office Equipment", :item_code => "BS12200400")
Plutus::Asset.create(:name => "Accumulated Depreciation - Office Equipment", :item_code => "BS12250400", :contra => true)
Plutus::Asset.create(:name => "Furniture and Fixtures", :item_code => "BS12200500")
Plutus::Asset.create(:name => "Accumulated Depreciation - Furniture and Fixtures", :item_code => "BS12250500", :contra => true)
Plutus::Asset.create(:name => "IT Equipment and software", :item_code => "BS12200600")
Plutus::Asset.create(:name => "Accumulated Depreciation - IT Equipment", :item_code => "BS12250600", :contra => true)
Plutus::Asset.create(:name => "Machinery", :item_code => "BS12200700")
Plutus::Asset.create(:name => "Accumulated Depreciation - Machinery", :item_code => "BS12250700", :contra => true)
Plutus::Asset.create(:name => "Communication Equipment", :item_code => "BS12200800")
Plutus::Asset.create(:name => "Accumulated Depreciation - Communication Equipment", :item_code => "BS12250800", :contra => true)
Plutus::Asset.create(:name => "Construction & Heavy Equipment, net", :item_code => "BS12200900")
Plutus::Asset.create(:name => "Accumulated Depreciation - Construction & Heavy Equipment", :item_code => "BS12250900", :contra => true)
Plutus::Asset.create(:name => "Motor Vehicles", :item_code => "BS12200901")
Plutus::Asset.create(:name => "Accumulated Depreciation - Motor Vehicles", :item_code => "BS12250901", :contra => true)
Plutus::Asset.create(:name => "Other Transportation Equipment", :item_code => "BS12200902")
Plutus::Asset.create(:name => "Accumulated Depreciation - Other Transportation Equipment", :item_code => "BS12250902")
Plutus::Asset.create(:name => "Other Property, Plant and Equipment", :item_code => "BS12200903")
Plutus::Asset.create(:name => "Accumulated Depreciaiton - Other Property, Plant and Equipment", :item_code => "BS12250903", :contra => true)
Plutus::Asset.create(:name => "Construction in Progress - Agency Assets", :item_code => "BS12200904")
Plutus::Asset.create(:name => "Other Assets", :item_code => "BS12300")
Plutus::Asset.create(:name => "Organizational cost", :item_code => "BS12300100")
Plutus::Asset.create(:name => "Working Animals", :item_code => "BS12300200")
Plutus::Asset.create(:name => "Semi-expendable supplies, net", :item_code => "BS12300300")
Plutus::Asset.create(:name => "Semi-expendable supplies", :item_code => "BS12300300100")
Plutus::Asset.create(:name => "Accumulated depreciation", :item_code => "BS12300300200", :contra => true)
Plutus::Asset.create(:name => "ECC Cost", :item_code => "BS12400")
Plutus::Asset.create(:name => "Unserviceable Equipment", :item_code => "BS12500")
#Liability
Plutus::Liability.create(:name => "Liabilities & Equity", :item_code => "BS21000")
Plutus::Liability.create(:name => "Current Liabilities", :item_code => "BS21100")
Plutus::Liability.create(:name => "Payable Accounts", :item_code => "BS21100")
Plutus::Liability.create(:name => "Accounts Payable", :item_code => "BS21100100")
Plutus::Liability.create(:name => "Notes Payable", :item_code => "BS21100200")
Plutus::Liability.create(:name => "Due to Officers and Employees", :item_code => "BS21100300")
Plutus::Liability.create(:name => "Interest Payable", :item_code => "BS21100400")
Plutus::Liability.create(:name => "Inter-Agency Payables", :item_code => "BS21200")
Plutus::Liability.create(:name => "Due to Officers & Employees", :item_code => "BS21200100")
Plutus::Liability.create(:name => "Due to BIR", :item_code => "BS21200200")
Plutus::Liability.create(:name => "Due to SSS", :item_code => "BS21200300")
Plutus::Liability.create(:name => "Due to PAG-IBIG", :item_code => "BS21200400")
Plutus::Liability.create(:name => "Due to PHILHEALTH", :item_code => "BS21200500")
Plutus::Liability.create(:name => "Due to LGU's", :item_code => "BS21200600")
Plutus::Liability.create(:name => "Other Liability Accounts", :item_code => "BS21300")
Plutus::Liability.create(:name => "Guaranty Deposits Payable", :item_code => "BS21300100")
Plutus::Liability.create(:name => "Other Payables", :item_code => "BS21300200")
Plutus::Liability.create(:name => "Non-Current Liabilities", :item_code => "BS21400")
Plutus::Liability.create(:name => "Mortgage/Bonds/Loans Payable", :item_code => "BS21400100")
Plutus::Liability.create(:name => "Mortgage Payable", :item_code => "BS21400200")
Plutus::Liability.create(:name => "Bonds Payable - Domestic", :item_code => "BS21400300")
Plutus::Liability.create(:name => "Other Long-term Liabilities", :item_code => "BS21400400")
Plutus::Liability.create(:name => "Deferred Credits", :item_code => "BS21500")
#Equity
Plutus::Equity.create(:name => "Deferred Credits", :item_code => "BS21500", :contra => true)
Plutus::Equity.create(:name => "Equity", :item_code => "BS31000", :contra => true)
Plutus::Equity.create(:name => "Capital Share", :item_code => "BS31100", :contra => true)
Plutus::Equity.create(:name => "Retained Earnings", :item_code => "BS32000", :contra => true)

#REVENUE
Plutus::Revenue.create(:name => "Sale from gold", :item_code => "PL41100")
Plutus::Revenue.create(:name => "Gold milling income", :item_code => "PL41200")
Plutus::Revenue.create(:name => "Interest Income", :item_code => "PL41300")
Plutus::Revenue.create(:name => "Other Income", :item_code => "PL41400")
Plutus::Revenue.create(:name => "Miscellaneous Income", :item_code => "PL41500")

#EXPENSE
Plutus::Expense.create(:name => "Production costs", :item_code => "PL51000")
Plutus::Expense.create(:name => "Extraction costs", :item_code => "PL51100")
Plutus::Expense.create(:name => "Tunnel fuels & lubricants", :item_code => "PL51100101")
Plutus::Expense.create(:name => "Timber supplies", :item_code => "PL51100102")
Plutus::Expense.create(:name => "Hauling of ore", :item_code => "PL51100103")
Plutus::Expense.create(:name => "Other extraction expenses", :item_code => "PL51100104")
Plutus::Expense.create(:name => "Gold processing", :item_code => "PL52000")
Plutus::Expense.create(:name => "Plant fuels and lubricants", :item_code => "PL52100101")
Plutus::Expense.create(:name => "Plant electricity", :item_code => "PL52100102")
Plutus::Expense.create(:name => "Plant water consumption", :item_code => "PL52100103")
Plutus::Expense.create(:name => "Chemicals", :item_code => "PL52100104")
Plutus::Expense.create(:name => "Other processing expenses", :item_code => "PL52100105")
Plutus::Expense.create(:name => "Personal Services", :item_code => "PL61100")
Plutus::Expense.create(:name => "Basic Salary", :item_code => "PL61101")
Plutus::Expense.create(:name => "Personnel & Technical Staff", :item_code => "PL61101001")
Plutus::Expense.create(:name => "Security Personnel ", :item_code => "PL61101002")
Plutus::Expense.create(:name => "Additional Compensation (ADCOM) & Allowances", :item_code => "PL61102")
Plutus::Expense.create(:name => "Representation allowance (RA)", :item_code => "PL61103")
Plutus::Expense.create(:name => "Transportation Allowance (TA)", :item_code => "PL61104")
Plutus::Expense.create(:name => "Clothing/Uniform Allowance", :item_code => "PL61105")
Plutus::Expense.create(:name => "Cash Gift", :item_code => "PL61106")
Plutus::Expense.create(:name => "Year-end Bonus", :item_code => "PL61107")
Plutus::Expense.create(:name => "Life and Retirement Insurance Contributions", :item_code => "PL61108")
Plutus::Expense.create(:name => "PAG-IBIG Contributions", :item_code => "PL61109")
Plutus::Expense.create(:name => "PHILHEALTH Contributions", :item_code => "PL61110")
Plutus::Expense.create(:name => "ECC Contributions", :item_code => "PL61111")
Plutus::Expense.create(:name => "Retirement Benefits ", :item_code => "PL61112")
Plutus::Expense.create(:name => "Other Personnel Benefits", :item_code => "PL61113")
Plutus::Expense.create(:name => "Advertising Expenses", :item_code => "PL61114")
Plutus::Expense.create(:name => "Auditing Services", :item_code => "PL61115")
Plutus::Expense.create(:name => "Bad Debt Expenses", :item_code => "PL61116")
Plutus::Expense.create(:name => "Confidential Expenses", :item_code => "PL61117")
Plutus::Expense.create(:name => "Cooking gas Expenses", :item_code => "PL61118")
Plutus::Expense.create(:name => "Depreciation -  Semi-expendable supplies", :item_code => "PL61119001")
Plutus::Expense.create(:name => "Depreciation - Communication Equipment", :item_code => "PL61119002")
Plutus::Expense.create(:name => "Depreciation - Furniture and Fixtures", :item_code => "PL61119003")
Plutus::Expense.create(:name => "Depreciation - IT Equipment", :item_code => "PL61119004")
Plutus::Expense.create(:name => "Depreciation - Machineries", :item_code => "PL61119005")
Plutus::Expense.create(:name => "Depreciation - Medical, Dental and Laboratory Equipment", :item_code => "PL61119006")
Plutus::Expense.create(:name => "Depreciation - Motor Vehicles", :item_code => "PL61119007")
Plutus::Expense.create(:name => "Depreciation - Office Buildings", :item_code => "PL61119008")
Plutus::Expense.create(:name => "Depreciation - Office Equipment", :item_code => "PL61119009")
Plutus::Expense.create(:name => "Depreciation - Other Machineries & Equipment", :item_code => "PL61119010")
Plutus::Expense.create(:name => "Depreciation - Other Property, Plant and Equipment ", :item_code => "PL61119011")
Plutus::Expense.create(:name => "Depreciation - Other Structures", :item_code => "PL61119012")
Plutus::Expense.create(:name => "Depreciation - Other Transportation Equipment", :item_code => "PL61119013")
Plutus::Expense.create(:name => "Donations", :item_code => "PL61120")
Plutus::Expense.create(:name => "Electricity Expenses", :item_code => "PL61121")
Plutus::Expense.create(:name => "Fidelity Bond Premiums", :item_code => "PL61122")
Plutus::Expense.create(:name => "Gasoline, Oil and Lubricants Expenses", :item_code => "PL61123")
Plutus::Expense.create(:name => "Insurance Expenses", :item_code => "PL61124")
Plutus::Expense.create(:name => "Intelligence Expenses", :item_code => "PL61125")
Plutus::Expense.create(:name => "Legal Services", :item_code => "PL61126")
Plutus::Expense.create(:name => "Management and Professional Services", :item_code => "PL61127")
Plutus::Expense.create(:name => "Membership Dues and Contributions to Organizations", :item_code => "PL61128")
Plutus::Expense.create(:name => "Office Supplies Expenses", :item_code => "PL61129")
Plutus::Expense.create(:name => "Other Maintenance and Operating Expenses", :item_code => "PL61130")
Plutus::Expense.create(:name => "Other Supplies Expense", :item_code => "PL61130001")
Plutus::Expense.create(:name => "Other Supplies - Food for Miners Expense", :item_code => "PL61130002")
Plutus::Expense.create(:name => "Postage and Deliveries", :item_code => "PL61131")
Plutus::Expense.create(:name => "Rent Expenses", :item_code => "PL61132")
Plutus::Expense.create(:name => "Repairs and Maintenance ", :item_code => "PL61133")
Plutus::Expense.create(:name => "Repairs and Maintenance - Communication Equipment", :item_code => "PL61133001")
Plutus::Expense.create(:name => "Repairs and Maintenance - Construction & Heavy Equipment", :item_code => "PL61133002")
Plutus::Expense.create(:name => "Repairs and Maintenance - Furniture & Fixtures", :item_code => "PL61133003")
Plutus::Expense.create(:name => "Repairs and Maintenance - IT Equipment and Software", :item_code => "PL61133004")
Plutus::Expense.create(:name => "Repairs and Maintenance - Firefighting Equipment & Accessories", :item_code => "PL61133005")
Plutus::Expense.create(:name => "Repairs and Maintenance - Motor Vehicles", :item_code => "PL61133006")
Plutus::Expense.create(:name => "Repairs and Maintenance - Office Buildings", :item_code => "PL61133007")
Plutus::Expense.create(:name => "Repairs and Maintenance - Office Equipment", :item_code => "PL61133008")
Plutus::Expense.create(:name => "Repairs and Maintenance - Other Property, Plant and Equipment", :item_code => "PL61133009")
Plutus::Expense.create(:name => "Repairs and Maintenance - Other Transportation Equipment", :item_code => "PL61133010")
Plutus::Expense.create(:name => "Repairs and Maintenance - Sports Equipment", :item_code => "PL61133011")
Plutus::Expense.create(:name => "Representation Expenses", :item_code => "PL61134")
Plutus::Expense.create(:name => "Subscription Expenses", :item_code => "PL61135")
Plutus::Expense.create(:name => "Taxes, Duties and Licenses", :item_code => "PL61136")
Plutus::Expense.create(:name => "Communication Expenses", :item_code => "PL61137")
Plutus::Expense.create(:name => "Telephone Expenses - Landline", :item_code => "PL61137001")
Plutus::Expense.create(:name => "Telephone Expenses - Mobile", :item_code => "PL61137002")
Plutus::Expense.create(:name => "Training Expenses", :item_code => "PL61138")
Plutus::Expense.create(:name => "Travelling Expenses ", :item_code => "PL61139")
Plutus::Expense.create(:name => "Travelling Expenses - Miners", :item_code => "PL61139001")
Plutus::Expense.create(:name => "Travelling Expenses - Staff and Personnel", :item_code => "PL61139002")
Plutus::Expense.create(:name => "Water Expenses (Office)", :item_code => "PL61140")
Plutus::Expense.create(:name => "Royalty", :item_code => "PL61141")
Plutus::Expense.create(:name => "Camsa Family Royalty share", :item_code => "PL61141001")
Plutus::Expense.create(:name => "Miners Ore/gold share", :item_code => "PL61141002")
Plutus::Expense.create(:name => "Financial Expenses", :item_code => "PL61142")
Plutus::Expense.create(:name => "Documentary Stamps Expenses", :item_code => "PL61142002")
Plutus::Expense.create(:name => "Interest Expenses", :item_code => "PL61142003")
Plutus::Expense.create(:name => "Other Financial Charges", :item_code => "PL61142004")