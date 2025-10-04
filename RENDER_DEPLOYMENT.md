# 🚀 Déploiement sur Render.com

Guide complet pour déployer l'application LME Calculator Suite sur Render.com en tant que **Static Site**.

## 📋 Prérequis

- Un compte GitHub avec le repository `LME-WARRANT`
- Un compte sur [Render.com](https://render.com) (gratuit)

## 🔧 Configuration Render.com

### Étape 1: Créer un nouveau Static Site

1. Connectez-vous sur [Render.com](https://dashboard.render.com)
2. Cliquez sur **"New +"** → **"Static Site"**
3. Connectez votre repository GitHub: `https://github.com/Zalint/LME-WARRANT.git`
4. Donnez un nom à votre site (ex: `lme-calculator`)

### Étape 2: Configuration Build

Dans les paramètres du site, configurez:

| Setting | Value |
|---------|-------|
| **Branch** | `main` |
| **Build Command** | `chmod +x build.sh && ./build.sh` |
| **Publish Directory** | `.` |
| **Auto-Deploy** | `Yes` (recommandé) |

### Étape 3: Variables d'environnement

1. Allez dans l'onglet **"Environment"**
2. Ajoutez ces deux variables:

```
USER_NAME=ADMIN
USER_PASSWORD=ADMIN@MXT1
```

⚠️ **Important**: Changez ces valeurs pour votre production!

### Étape 4: Déployer

1. Cliquez sur **"Create Static Site"**
2. Render va:
   - ✅ Cloner votre repository
   - ✅ Exécuter `build.sh` (génère `config.js`)
   - ✅ Déployer les fichiers statiques
   - ✅ Fournir une URL publique (ex: `https://lme-calculator.onrender.com`)

## 🔄 Mises à jour

Après chaque push sur GitHub:
- Render détectera automatiquement les changements
- Re-exécutera le build script
- Déploiera la nouvelle version

## 🔐 Changer les Credentials

Pour modifier le username/password:

1. Allez dans **Settings** → **Environment**
2. Modifiez `USER_NAME` et/ou `USER_PASSWORD`
3. Cliquez sur **"Save Changes"**
4. Render redéploiera automatiquement

## 📱 Accéder à l'application

Une fois déployé, accédez à votre application via:
```
https://[votre-nom-de-site].onrender.com/login.html
```

## 🐛 Troubleshooting

### Le login ne fonctionne pas

**Symptôme**: Message "Invalid username or password"

**Solution**:
1. Vérifiez que les variables `USER_NAME` et `USER_PASSWORD` sont bien configurées
2. Vérifiez les logs de build: le script doit afficher "✅ config.js generated successfully!"
3. Redéployez manuellement depuis le dashboard

### Erreur "config.js not found"

**Symptôme**: Erreur 404 sur `config.js`

**Solution**:
1. Vérifiez que le **Build Command** est bien: `chmod +x build.sh && ./build.sh`
2. Vérifiez que `build.sh` existe dans votre repository
3. Vérifiez les logs de build pour voir les erreurs

### Le build échoue

**Solution**:
1. Regardez les logs de build dans Render
2. Vérifiez que `build.sh` a les bonnes permissions
3. Testez localement:
   ```bash
   USER_NAME=TEST USER_PASSWORD=TEST bash build.sh
   ```

## 🔒 Sécurité Production

Pour la production, considérez:

1. **Passwords forts**: Utilisez des mots de passe complexes
2. **HTTPS**: Render fournit HTTPS automatiquement ✅
3. **Custom Domain**: Configurez un domaine personnalisé
4. **Monitoring**: Activez les notifications Render
5. **Backup**: Gardez une copie locale de vos variables d'environnement

## 💡 Astuces

- **Preview Deploys**: Render peut créer des URLs de preview pour chaque PR
- **Rollback**: Vous pouvez revenir à une version précédente depuis le dashboard
- **Custom Headers**: Ajoutez `render.yaml` pour des headers de sécurité personnalisés

## 📚 Resources

- [Render Static Sites Documentation](https://render.com/docs/static-sites)
- [Environment Variables Guide](https://render.com/docs/environment-variables)
- [Custom Domains](https://render.com/docs/custom-domains)

---

✅ **Votre application est maintenant déployée et sécurisée!**

