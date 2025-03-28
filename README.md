# HTTPS zu HTTP Proxy Tunnel
## 🧩 Projektbeschreibung
Dieses Projekt löst ein häufiges Problem in restriktiven Netzwerkumgebungen: Der 
Internetzugang erfolgt über einen Firmen-Proxy-Server, der ausschließlich 
**HTTP-Anfragen** akzeptiert. Moderne Anwendungen wie **n8n** oder andere Tools, 
die auf **HTTPS-Proxys** angewiesen sind (z.B. via Axios in Node.js), können mit 
solchen Umgebungen nicht umgehen. **Lösung:** Dieses Projekt stellt einen 
kleinen Proxy-Tunnel zur Verfügung, der **HTTPS-Proxy-Anfragen** entgegennimmt 
und sie über einen vorhandenen **HTTP-Proxy-Server** weiterleitet.
## ✅ Features
- Übersetzt HTTPS-Proxy-Anfragen zu HTTP-Proxy-Anfragen - Kompatibel mit n8n und 
anderen Tools, die HTTPS-Proxys benötigen - Leichtgewichtig & Docker-fähig - 
Zwei Betriebsmodi:
  - Standalone
  - In Kombination mit n8n


# HTTPS to HTTP Proxy Tunnel
## 🧩 Project Description
This project solves a common problem in restricted network environments: Access 
to the internet is only possible via a corporate **HTTP proxy server**. However, 
modern tools like **n8n** or software using Node.js + Axios require a **HTTPS 
proxy** to function. **Solution:** This project provides a lightweight proxy 
tunnel that accepts **HTTPS proxy requests** and forwards them through a **HTTP 
proxy server**.
## ✅ Features
- Translates HTTPS proxy requests into HTTP proxy requests - Compatible with n8n 
and any other tool requiring HTTPS proxy - Lightweight & Docker-ready - Two 
usage modes:
  - Standalone
  - Integrated with n8n
