# 💸 Split-the-Bill (With Tip)

An iOS app built using **SwiftUI** that allows users to split a restaurant bill with **uneven amounts** and **individual tip percentages per person**.

---

## 🚀 Features

- Uneven bill splitting between multiple people  
- Individual tip percentage per person  
- Real-time calculation of totals  
- Clean and simple SwiftUI interface  
- MVVM architecture (Model-View-ViewModel)  

---

## 🧠 User Story

As a group diner, I want a calculator that handles uneven splits and variable tip percentages per person, so that we can accurately settle a restaurant bill.

---

## ✅ Example

| Person | Amount | Tip % | Total |
|--------|--------|------|-------|
| A      | $40    | 15%  | $46   |
| B      | $60    | 20%  | $72   |

---

## 🏗️ Architecture

### 📦 Model
- `PersonShare`
  - Holds name, amount, tip %
  - Computes total with tip

### ⚙️ ViewModel
- `BillCalculatorViewModel`
  - Manages people list
  - Calculates totals, tips, and grand total

### 🎨 Views
- `ContentView`
- `PersonShareRow`

✔ Clear separation of UI and business logic

---

## 🤖 AI Copilot Workflow

This project was built entirely using **AI prompt-based development**:

1. **Plan Agent**
   - Converted user story into development plan

2. **Execution Agent**
   - Generated Swift + SwiftUI code

3. **Fix Agent**
   - Resolved build errors (imports, protocols)

4. **Documentation Agent**
   - Added structured comments

5. **Testing Agent**
   - Created Gherkin scenarios
   - Generated XCTest unit tests

---

## 🧪 Testing

### Gherkin Scenarios
- Uneven split with different tips  
- Zero tip case  
- Equal split case  

### Unit Tests
- Individual calculations  
- Total aggregation  
- Edge cases (0% tip)

---

## 🛠️ Tech Stack

- Swift  
- SwiftUI  
- Combine  
- XCTest  
- GitHub Copilot  

---

## 📸 Screenshots
<img width="1320" height="2868" alt="Simulator Screenshot - iPhone 17 Pro Max - 2026-04-22 at 20 50 19" src="https://github.com/user-attachments/assets/98dbcc8d-2cbf-40c9-9969-936ba33503b6" />

————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

 <img width="1320" height="2868" alt="Simulator Screenshot - iPhone 17 Pro Max - 2026-04-22 at 20 49 12" src="https://github.com/user-attachments/assets/396ce439-103f-4f73-b4e8-91ec1a9097df" />

---

## 👩‍💻 Author

**Rithika Liz Bobby**


