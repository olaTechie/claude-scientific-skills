---
description: Analyse financial data, SEC filings, or market trends
argument-hint: [company, ticker, or topic]
allowed-tools: Read, Write, Edit, Bash
---

Perform financial analysis for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **SEC filings** — Use the edgartools skill to retrieve and analyse SEC filings (10-K, 10-Q, 8-K, 13F, Form 4). Extract key financial metrics, management discussion, and risk factors.

2. **Market data** — Use the alpha-vantage skill for real-time and historical stock prices, options data, forex, and crypto. Compute technical indicators (moving averages, RSI, MACD, Bollinger Bands).

3. **Economic context** — Use the fred-economic-data skill for macroeconomic indicators (GDP, inflation, unemployment, interest rates). Use the usfiscaldata skill for Treasury data and federal fiscal information.

4. **Hedge fund activity** — Use the hedgefundmonitor skill for OFR Hedge Fund Monitor data: systemic risk indicators, futures positioning, and dealer financing.

5. **Statistical analysis** — Use the statsmodels skill for time-series analysis, regression, and forecasting. Use the scikit-learn skill for predictive modelling.

6. **Visualisation** — Use the matplotlib and plotly skills for financial charts: candlestick charts, performance comparisons, correlation matrices, and trend analyses.

7. **Report** — Generate a comprehensive financial analysis report with: company overview, financial performance, market analysis, risk assessment, and outlook.

Save the report and figures to the working directory.
