# 🚀 MQL5 Algo Trading Framework - A6-9V / NuNa / ZOLO

## 📓 Knowledge Base
- **NotebookLM**: [Access here](https://notebooklm.google.com/notebook/e8f4c29d-9aec-4d5f-8f51-2ca168687616)
- **Note**: This notebook is available for reading and writing. AI agents must read it before starting work.


Welcome to the professional **MQL5 Algorithmic Trading Repository**. This repository is optimized for automated trading on **MetaTrader 5 (MT5)** with integrated **AI signal processing** and **Cloud CI/CD**.

---

## 🌟 Key Features

-   🤖 **AI-Driven EA**: The core Expert Advisor (`EXNESS_GenX_Trading_V2_01.mq5`) supports real-time signal execution from an external AI server.
-   ☁️ **Cloud CI/CD**: Automatic compilation of all MQL5 source code into `.ex5` binaries using GitHub Actions.
-   🔄 **ForgeMQL5 Sync**: Automated synchronization with [forge.mql5.io](https://forge.mql5.io) for professional source control and MetaEditor integration.
-   📊 **Multi-Strategy Support**: Includes various indicators and scripts for signal analysis and strategy development.
-   🛡️ **Risk Management**: Built-in volume limits and equity-based risk control.

---

## 📂 Repository Structure

| Path | Description |
|-----|------------|
| `Experts/Advisors/` | Main Expert Advisors (EAs) including **EXNESS GenX Trading** |
| `Include/` | Standard and shared MQL5 libraries |
| `Indicators/` | Custom and example indicators for market analysis |
| `Scripts/` | Utility scripts for trade management and testing |
| `.github/workflows/` | CI/CD pipeline for automated builds and sync |

---

## 🛠 Getting Started

### 1. Clone & Set Up
```bash
git clone https://github.com/Mouy-leng/MQL5-NUNA.git
```

### 2. Configure GitHub Secrets
To enable the automated pipeline, add the following to your repository secrets:
-   `FORGE_TOKEN`: Your ForgeMQL5 (MQL5.com) password or access token.

### 3. MT5 Integration
1.  Open MetaTrader 5 -> `File` -> `Open Data Folder`.
2.  Copy the `MQL5` directory structure into the data folder.
3.  Add your AI server URL to **Tools -> Options -> Expert Advisors -> Allow WebRequest**.

---

## 🧪 Development & CI/CD

The repository uses **GitHub Actions** to ensure code quality and availability:
-   **Compile**: Every push triggers a build to verify there are no compilation errors.
-   **Sync**: Successfully compiled code is automatically pushed to ForgeMQL5.
-   **Artifacts**: Compiled `.ex5` files are available for download in the "Actions" tab.

---

## 🧑‍💻 Technical Details (AI EA)

The **EXNESS GenX Trading EA** uses an HTTP-based communication protocol:
-   **GET `/get_signal`**: Polling for new trading signals.
-   **POST `/trade_result`**: Reporting the outcome of executed trades.
-   **POST `/heartbeat`**: Ensuring the EA is alive and active.

---

## 📜 License
MIT License. See [LICENSE](LICENSE) for details.

---

## ⚠️ Disclaimer
Trading involves significant risk. Always test your strategies on a demo account before live deployment. The authors are not responsible for any financial losses.

---
**Maintained by A6-9V / NuNa / ZOLO Team**
