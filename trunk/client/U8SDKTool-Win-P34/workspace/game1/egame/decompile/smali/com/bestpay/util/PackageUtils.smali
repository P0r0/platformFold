.class public Lcom/bestpay/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final MIMETYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 68
    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 73
    :goto_6
    return-object v0

    .line 70
    :catch_7
    move-exception v1

    goto :goto_6
.end method

.method public static getPackageVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/bestpay/util/PackageUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 87
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_9

    .line 88
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 90
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static getPackageVersionName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/bestpay/util/PackageUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 104
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_9

    .line 105
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 107
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static installApplication(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPath"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 119
    .local v2, "path":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    .line 120
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    :cond_13
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    :try_start_24
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_27} :catch_28

    .line 130
    :goto_27
    return-void

    .line 127
    :catch_28
    move-exception v0

    .line 128
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_27
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_5

    .line 30
    :cond_4
    :goto_4
    return v0

    .line 27
    :cond_5
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_4

    move v0, v1

    .line 28
    goto :goto_4
.end method

.method public static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 40
    if-eqz p0, :cond_6

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_8

    .line 41
    :cond_6
    const/4 v0, 0x0

    .line 43
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/bestpay/util/PackageUtils;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/bestpay/util/PackageUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/bestpay/util/PackageUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method
