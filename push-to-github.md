# 📤 رفع الثيم على GitHub

## الخطوات المطلوبة:

### 1. إنشاء مستودع جديد على GitHub:

1. اذهب إلى [GitHub](https://github.com)
2. انقر على "New repository" أو "New"
3. اختر اسم للمستودع (مثلاً: `my-salla-theme` أو `theme-raed-custom`)
4. اختر Public أو Private
5. **لا** تختار "Initialize with README" (لأن المشروع موجود بالفعل)
6. انقر على "Create repository"

### 2. نسخ رابط المستودع:

بعد إنشاء المستودع، انسخ الرابط (مثلاً: `https://github.com/username/repo-name.git`)

### 3. تغيير Remote:

```bash
# استبدل YOUR_USERNAME و REPO_NAME بالبيانات الصحيحة
git remote set-url origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# أو أضف remote جديد
git remote add myorigin https://github.com/YOUR_USERNAME/REPO_NAME.git
```

### 4. رفع الكود:

```bash
# إضافة جميع الملفات
git add .

# عمل commit
git commit -m "Initial commit: Salla Theme Raed"

# رفع إلى GitHub
git push -u origin master
```

## ⚠️ ملاحظات مهمة:

- تأكد من تحديث `twilight.json` إذا كنت تريد تغيير معلومات الثيم
- يمكنك إضافة `.gitignore` لتجاهل ملفات معينة
- بعد الرفع، يمكنك استيراد الثيم في Salla Partners Portal

