# 📤 رفع ثيم Salla على GitHub

## 🚀 الطريقة السريعة:

### 1. إنشاء مستودع جديد على GitHub:

- اذهب إلى [GitHub](https://github.com/new)
- اختر اسم للمستودع (مثلاً: `my-salla-theme`)
- اختر Public أو Private
- **لا** تختار "Initialize with README"
- انقر "Create repository"

### 2. تشغيل السكريبت:

```powershell
.\push-to-my-github.ps1
```

أدخل رابط المستودع عندما يُطلب منك.

### 3. أو يدوياً:

```bash
# تغيير remote
git remote set-url origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# إضافة الملفات
git add .

# عمل commit
git commit -m "Initial commit: Salla Theme Raed"

# رفع إلى GitHub
git push -u origin master
```

## 📋 بعد الرفع:

1. اذهب إلى [Salla Partners Portal](https://salla.partners/)
2. اذهب إلى قسم "Themes"
3. اختر "Import theme from GitHub"
4. أدخل رابط المستودع
5. اتبع التعليمات لإكمال الاستيراد

## ✅ بعد الاستيراد في Salla:

```bash
salla theme preview
```

## 🔍 التحقق:

```bash
# التحقق من remote
git remote -v

# قائمة الثيمات
salla theme list
```

---

**ملاحظة**: تأكد من تحديث `twilight.json` إذا كنت تريد تغيير اسم أو معلومات الثيم.

