# Listify

**Listify** ist eine Ruby on Rails-Anwendung, die Benutzern ermöglicht, Gruppen zu erstellen, Produkte zu verwalten und ihr Benutzerprofil zu bearbeiten. Die Anwendung verwendet **Devise** für die Benutzerverwaltung und ermöglicht Administratoren, Benutzer zu verwalten und Rollen zuzuweisen.

## Setup-Anleitung

### Voraussetzungen

- **Ruby:** 3.3.5 (oder eine passende Version)
- **Rails:** 7.2.1
- **Datenbank:** SQLite3 (oder eine andere Datenbank)

### Installation

1. **Repository klonen**

   ```bash
   git clone https://github.com/username/listify.git
   cd listify
   ```
2. **Abhängigkeiten installieren**
   
   ```bash
    bundle install
    ```
4. **Datenbank erstellen und Migration ausführen**
   
   ```bash
    rails db:create
    rails db:migrate
    ```
4. **Rails-Server starten**

   ```bash
    rails server
   ```
5. **Öffne die Anwendung in deinem Browser**
   ```bash
    http://localhost:3000.
   ```

# **Wichtige URLs**
 **Root (Startseite)**
 URL: /
Zeigt alle erstellten Gruppen an. Hier können neue Gruppen erstellt, bearbeitet oder gelöscht werden.

#

 **Benutzerregistrierung**
URL: /users/sign_up
Benutzer können sich hier neu registrieren.

#

**Benutzeranmeldung**
URL: /users/sign_in
Benutzer können sich hier anmelden.

#

**Benutzerprofil bearbeiten**
URL: /users/:id/edit
Benutzer können ihre Profilinformationen (Benutzername, E-Mail und Passwort) auf dieser Seite ändern.

#

**Gruppenübersicht**
URL: /groups
Zeigt alle erstellten Gruppen an. Ermöglicht das Bearbeiten oder Löschen von Gruppen sowie das Hinzufügen neuer Gruppen.

#

**Gruppenansicht**
URL: /groups/:id
Zeigt eine detaillierte Ansicht einer Gruppe mit allen zugehörigen Produkten. Hier können Produkte hinzugefügt, bearbeitet und gelöscht werden.

#

**Produkte einer Gruppe anzeigen**
URL: /groups/:group_id/products
Zeigt alle Produkte einer bestimmten Gruppe an.

#

**Produkt hinzufügen**
URL: /groups/:group_id/products/new
Ermöglicht das Hinzufügen eines neuen Produkts zu einer Gruppe.

#

**Produkt bearbeiten**
URL: /groups/:group_id/products/:id/edit
Ermöglicht das Bearbeiten eines Produkts innerhalb einer Gruppe.

#

**Admin-Benutzerübersicht**
URL: /users
Nur für Administratoren zugänglich. Zeigt eine Liste aller registrierten Benutzer mit der Möglichkeit, Benutzer zu bearbeiten oder zu löschen.

#

**Service-Worker**
URL: /service-worker
URL zum Service-Worker der PWA (Progressive Web App).

#

# **Benutzerverwaltung und Rollen**
 In dieser Anwendung gibt es zwei Benutzerrollen:
 
**Normale Benutzer:**
Können ihre eigenen Gruppen und Produkte verwalten.

**Administratoren:**
Können alle Benutzer verwalten, Benutzerrollen zuweisen und haben vollen Zugriff auf die Benutzerübersicht.
