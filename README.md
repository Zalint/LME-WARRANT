# LME Physical Warrant P&L Calculator Suite

This comprehensive application suite provides professional calculators for reconciling P&L between Trader's view and M representation for LME Physical Warrant transactions with real market integration.

## 🔐 Access Control

This application is protected by authentication. Use the following credentials to access:

**Login Page:** `login.html`

**Credentials:**
- **Username:** `ADMIN`
- **Password:** `ADMIN@MXT1`

> ⚠️ **Note:** This is a demonstration authentication system using session storage. For production use, implement proper backend authentication with secure password hashing and HTTPS.

## Files

### Main Application
1. **`index.html`** - Modern landing page with navigation and market overview
2. **`lme_warrant_calculator_enhanced.html`** - Enhanced single contract calculator
3. **`lme_warrant_calculator_multi_enhanced.html`** - Enhanced multi-contract calculator
4. **`lme_calendar.html`** - Interactive LME trading calendar 2025-2035 with prompt dates
5. **`warrant_pnl_mathematical_proof.html`** - Complete mathematical proof of Trader vs M equivalence
6. **`lme_faq.html`** - Comprehensive Knowledge Base with 100 Q&A on LME Warrants, Delivery, and Carry Costs

### Legacy Versions (Original)
7. **`lme_warrant_calculator.html`** - Original single contract calculator
8. **`lme_warrant_calculator_multi.html`** - Original multi-contract calculator

## Features

### Enhanced Version (Recommended)
- **Professional Navigation**: Modern landing page with suite overview and market status
- **Real Metal Selection**: Choose from 6 LME base metals (AL, CU, PB, NI, ZN, SN) with current market prices
- **Realistic Pricing**: Automatic price suggestions based on actual LME market data
- **Advanced UI/UX**: Professional sidebar layout with enhanced visual design
- **Market Integration**: Live LME trading hours and market status display
- **Smart Validation**: LME trading calendar integration with date validation
- **Portfolio Analysis**: Detailed risk metrics and position analysis
- **Enhanced Excel Export**: Comprehensive workbooks with market context
- **Interactive Calendar**: Full 2025-2035 LME trading calendar with:
  - Visual prompt date indicators (Daily, Weekly, Monthly, 2nd Business Day)
  - Holiday and LME Week highlighting
  - Detailed day information popups
  - Trading statistics by year
  - Official LME trading times display

### Legacy Version Features
- Beautiful, modern UI with responsive design
- Real-time P&L calculations showing perfect reconciliation between Trader and M views
- Detailed mathematical breakdowns with formula explanations
- Excel export functionality with working formulas
- Date formatting following DD/MM/YYYY format
- Professional styling with gradient backgrounds and modern components

### Single Contract Calculator
- Manual warrant weight entry
- Simple parameters for pickup and delivery legs
- Ideal for analyzing individual warrant transactions

### Multi-Contract Calculator
- Random warrant weight generation within specified ranges
- Support for multiple contracts (1-1000)
- Automatic position sizing (25 MT per contract)
- Visual warrant display grid
- Bulk calculations with detailed warrant breakdowns

## How to Use

### Getting Started (Enhanced Version)
1. **Start Here**: Open `index.html` in your web browser for the main suite overview
2. **Choose Calculator**: Select either Single Contract or Multi-Contract calculator
3. **Select Metal**: Choose from AL, CU, PB, NI, ZN, or SN with real market prices
4. **Configure Position**: Set warrant weights, dates, and prices (auto-suggestions provided)
5. **Calculate**: Get instant P&L reconciliation with detailed analysis
6. **Export**: Generate comprehensive Excel reports with market context

### Single Contract Calculator (Enhanced)
- Perfect for individual warrant analysis
- Real-time metal price integration
- Smart price suggestions based on market data
- LME trading calendar validation
- Professional risk analysis

### Multi-Contract Calculator (Enhanced)
- Portfolio-level analysis for 1-1000 contracts
- Random warrant generation with realistic weight distributions
- Bulk P&L calculations with portfolio metrics
- Advanced risk assessment and position analysis

### LME Trading Calendar
- Interactive calendar view for 2025-2035
- Click any date for detailed information
- Visual indicators for prompt dates types
- Trading day validation for calculator inputs
- LME Week identification (March & October)
- Official holiday schedule integration
- Trading hours and market status reference

### Mathematical Proof
- Complete algebraic demonstration of formula equivalence
- Step-by-step expansion of Trader's formula
- Detailed M formula breakdown
- Term-by-term comparison showing identical results
- Visual proof with color-coded components
- Verification tables for multiple scenarios
- Key insights and reconciliation summary
- Professional mathematical presentation

### Knowledge Base FAQ
- Comprehensive 100 Q&A knowledge base
- Section VI: 42 questions on Warrants, Delivery, and Carry Costs
- Section VIII: 42 questions on Bank ABC/Macquarie contextualisation
- Sections III-VII: 16 questions on Accounts, Collateral, Default, and Compression
- Searchable interface with real-time filtering
- Organized by topic with collapsible sections
- Professional design matching the calculator suite
- Quick reference for LME Clear procedures and rules

### Legacy Version Usage
1. Open `lme_warrant_calculator.html` in your web browser
2. Enter the physical warrant weight manually
3. Set pickup leg parameters (dates and prices)
4. Set delivery leg parameters (dates and prices)
5. Click "Calculate P&L Reconciliation"
6. Export results to Excel if needed

## LME Base Metal Market Data Integration

The enhanced version includes real-time integration with current LME base metal prices:

| Metal | Symbol | Current Price (USD/tonne) | Source |
|-------|--------|---------------------------|---------|
| Aluminium | AL | $2,697.25 | Trading Economics |
| Copper | CU | $9,779.00 | Westmetall LME Official |
| Lead | PB | $2,013.00 | Trading Economics |
| Nickel | NI | $15,185.00 | Trading Economics |
| Zinc | ZN | $2,992.00 | Trading Economics |
| Tin | SN | $35,410.00 | Trading Economics |

*Prices are indicative as of October 1, 2025*

### Price Variation Features
- **Smart Suggestions**: Realistic price variations (±2%) based on actual market volatility
- **Metal Context**: Each metal selection updates with relevant market information
- **Auto-Pricing**: Intelligent price generation for pickup/delivery legs
- **Market Validation**: Prices validated against typical LME trading ranges

## Mathematical Framework

The calculators implement the mathematical reconciliation between:

### Trader's View (Conceptual)
- **Component 1**: Weight Differential P&L = (P_wj - P_wi) × (W - U)
- **Component 2**: Futures Spread P&L = (P_Fj - P_Fi) × U

### M View (System)
- **Pickup Leg**: Future P&L = U × (P_wi - P_Fi), Warrant = 0
- **Delivery Leg**: Future P&L = -U × (P_wj - P_Fj), Warrant P&L = W × (P_wj - P_wi)

Both methods produce identical results, ensuring perfect reconciliation.

## Variables
- **W**: Physical warrant weight (MT)
- **U**: Standard futures lot size (25 MT per contract)
- **P_Fi**: Future price at pickup
- **P_wi**: Warrant price at pickup  
- **P_Fj**: Future price at delivery
- **P_wj**: Warrant price at delivery

## Date Formats
The application follows the user's preference for date formats:
- Input: YYYY-MM-DD (HTML5 date picker)
- Display: DD/MM/YYYY
- Excel export: DD/MM/YYYY

## Excel Export
Both calculators export comprehensive Excel workbooks with:
- Input parameters
- Live formulas for calculations
- Separate sheets for Trader View and M View
- Reconciliation verification
- Warrant details (multi-contract version)

## Browser Compatibility
- Modern browsers supporting ES6+
- HTML5 date inputs
- CSS Grid and Flexbox
- JavaScript modules for Excel export

## Technical Notes
- Pure HTML, CSS, and JavaScript - no external dependencies except SheetJS for Excel export
- Responsive design works on desktop and tablet
- Real-time calculations update as you type
- Professional styling with modern UI/UX principles
- Error handling for invalid inputs

## Getting Started
Simply open either HTML file in your web browser. No installation or server setup required.
