# Deployment Guide - Cloud VPS

This guide explains how to deploy the **EXNESS GenX Trading EA** to a cloud VPS for 24/7 automated trading.

## 1. Prerequisites
- A Windows VPS (recommended) or a Linux VPS with Wine.
- MetaTrader 5 (MT5) installed on the VPS.
- An account with EXNESS or your preferred broker.

## 2. Automated CI/CD Setup
The repository is configured with GitHub Actions to:
1.  **Compile** the `.mq5` source code into `.ex5` files automatically on every push.
2.  **Sync** the code with **ForgeMQL5** (`forge.mql5.io`).

### Required GitHub Secrets
To enable synchronization with ForgeMQL5, add the following secret to your GitHub repository:
- `FORGE_TOKEN`: Your ForgeMQL5 (MQL5.com) password or access token.

## 3. VPS Deployment Steps

### Option A: Manual Setup (Easiest)
1.  Open MetaTrader 5 on your VPS.
2.  Go to `File` -> `Open Data Folder`.
3.  Navigate to `MQL5/Experts/Advisors`.
4.  Download the latest `EXNESS_GenX_Trading_V2_01.ex5` from the **GitHub Actions Artifacts** of your latest successful build.
5.  Paste the `.ex5` file into the `Advisors` folder.
6.  Restart MT5 or right-click `Expert Advisors` in the Navigator and select `Refresh`.
7.  Drag the EA onto the desired chart.

### Option B: Automated Sync via ForgeMQL5
1.  In MetaEditor on your VPS, log in to your MQL5 account.
2.  Use the **MQL5 Storage** feature to checkout/sync the repository from ForgeMQL5.
3.  The files will be automatically placed in the correct directories.
4.  Compile the EA in MetaEditor (F7).

## 4. EA Configuration
- **AI Server URL**: Ensure the EA can reach the AI server if applicable.
- **Magic Number**: Set a unique number for this EA instance.
- **Lot Size**: Configure based on your risk management.

## 5. Cloud Integration
To keep everything on the cloud:
- Use **GitHub** for source control.
- Use **GitHub Actions** for compilation.
- Use **ForgeMQL5** for MetaEditor integration.
- Use a **Cloud VPS** for 24/7 execution.
