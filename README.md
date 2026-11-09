# From Cash to Banking — SA Customer Migration

## The Story
In South Africa, many customers start with cash (R150 - spaza / mattress cash). Then they migrate to formal finance: Easy Account → Gold → Savings / Insurance (R850).

This project tracks that migration using SQL.

## Finance = Not Just Banks
- **Bank:** FNB, Capitec, Standard Bank — accounts, eWallet
- **Insurance:** Momentum, Sanlam, Discovery — policies, claims
- **Fintech / Retail Finance:** Mukuru, TymeBank, Shoprite Money, Pep — airtime, loans, funeral cover, stokvel

## SQL Proof

**Query 1 - Customers earning R15,000+**
```sql
SELECT name, monthly_income, province
FROM customers
WHERE monthly_income >= 15000;

RESULT: Thabo (15000), Naledi(22000), Ayesha (35000)

# Query 2: Average Income

SELECT AVG(monthly_income) AS avg_income FROM customers;

RESULT: R18,400

# Query 3: Gauteng Customers

SELECT name, province, monthly_income
FROM customers
WHERE province = 'Gauteng';

RESULT: THABO, NALEDI


# Insights
1. Month-end = Spike: Account openings spike when people get paid.
2. Friday = Spike: Airtime/ eWallet spike for the weekend.
3. Trust = Key: People don't open an account until someone they know has one. Funeral cover and stokvel are often the first step into formal finance.

# Tools Used
DB Browser for SQLite, SQL, GITHUB
