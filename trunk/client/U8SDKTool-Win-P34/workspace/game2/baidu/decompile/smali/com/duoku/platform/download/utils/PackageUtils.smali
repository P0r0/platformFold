.class public Lcom/duoku/platform/download/utils/PackageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_OTHER:I = -0xf4240

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_PERMISSION:I = -0x64

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PackageUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final install(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/duoku/platform/download/utils/PackageUtils;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x3

    goto :goto_7
.end method

.method public static installNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_45
    return v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public static isSystemApplication(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 245
    if-nez p0, :cond_4

    .line 247
    const/4 v0, 0x0

    .line 250
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duoku/platform/download/utils/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 262
    if-nez p0, :cond_4

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/PackageUtils;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 285
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 299
    :cond_b
    :goto_b
    return v0

    .line 292
    :cond_c
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_b

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_15} :catch_1b

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    .line 295
    :catch_1b
    move-exception v1

    .line 297
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_b
.end method
