# سكريبت لرفع الثيم على GitHub الخاص بك
# Script to push theme to your GitHub repository

Write-Host "📤 رفع ثيم Salla على GitHub" -ForegroundColor Cyan
Write-Host ""

# طلب رابط المستودع
$repoUrl = Read-Host "أدخل رابط المستودع على GitHub (مثال: https://github.com/username/repo-name.git)"

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "❌ يجب إدخال رابط المستودع" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "🔄 تغيير remote origin..." -ForegroundColor Yellow

# تغيير remote origin
git remote set-url origin $repoUrl

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ تم تغيير remote بنجاح" -ForegroundColor Green
} else {
    Write-Host "❌ حدث خطأ في تغيير remote" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "📝 التحقق من حالة Git..." -ForegroundColor Yellow
git status

Write-Host ""
$confirm = Read-Host "هل تريد إضافة جميع الملفات وعمل commit و push؟ (y/n)"

if ($confirm -eq "y" -or $confirm -eq "Y") {
    Write-Host ""
    Write-Host "➕ إضافة الملفات..." -ForegroundColor Yellow
    git add .
    
    Write-Host ""
    Write-Host "💾 عمل commit..." -ForegroundColor Yellow
    git commit -m "Initial commit: Salla Theme Raed"
    
    Write-Host ""
    Write-Host "🚀 رفع إلى GitHub..." -ForegroundColor Yellow
    git push -u origin master
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "✅ تم رفع الثيم بنجاح على GitHub!" -ForegroundColor Green
        Write-Host "🔗 الرابط: $repoUrl" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "📝 الخطوات التالية:" -ForegroundColor Yellow
        Write-Host "   1. اذهب إلى Salla Partners Portal" -ForegroundColor White
        Write-Host "   2. استورد الثيم من GitHub" -ForegroundColor White
        Write-Host "   3. استخدم salla theme preview للمعاينة" -ForegroundColor White
    } else {
        Write-Host ""
        Write-Host "❌ حدث خطأ أثناء الرفع" -ForegroundColor Red
        Write-Host "تأكد من:" -ForegroundColor Yellow
        Write-Host "   - أن المستودع موجود على GitHub" -ForegroundColor White
        Write-Host "   - أن لديك صلاحيات الكتابة" -ForegroundColor White
        Write-Host "   - أنك مسجل الدخول إلى Git" -ForegroundColor White
    }
} else {
    Write-Host ""
    Write-Host "ℹ️  تم تغيير remote فقط. يمكنك الآن:" -ForegroundColor Cyan
    Write-Host "   git add ." -ForegroundColor White
    Write-Host "   git commit -m 'Initial commit'" -ForegroundColor White
    Write-Host "   git push -u origin master" -ForegroundColor White
}

Write-Host ""

