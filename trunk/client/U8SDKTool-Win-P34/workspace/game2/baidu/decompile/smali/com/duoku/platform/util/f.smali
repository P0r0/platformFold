.class public Lcom/duoku/platform/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Ljava/lang/Thread;

.field private static d:Landroid/app/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/util/f;->b:Z

    .line 328
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/util/f;->d:Landroid/app/DownloadManager;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_5f

    .line 92
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    if-eqz v1, :cond_34

    .line 95
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 96
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    :goto_33
    return-void

    .line 103
    :cond_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dk_assistant_failed"

    invoke-static {p0, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    goto :goto_33

    .line 113
    :catch_49
    move-exception v1

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dk_assistant_failed"

    invoke-static {p0, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_33

    .line 109
    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dk_assistant_failed"

    invoke-static {p0, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_73} :catch_49

    goto :goto_33
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/duoku/platform/util/f$1;

    invoke-direct {v1, p1, p0, p3, p2}, Lcom/duoku/platform/util/f$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 56
    sput-object p0, Lcom/duoku/platform/util/f;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 219
    invoke-static {p0, p1}, Lcom/duoku/platform/util/f;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 51
    sput-boolean p0, Lcom/duoku/platform/util/f;->b:Z

    .line 52
    return-void
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 126
    .line 130
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_32

    move-result-object v1

    .line 136
    :goto_a
    if-eqz v1, :cond_31

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_31

    .line 138
    const/4 v0, 0x1

    .line 140
    :cond_31
    return v0

    .line 132
    :catch_32
    move-exception v1

    .line 134
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 233
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 236
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v3

    const-string v4, "helpersize"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/util/o;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_20

    .line 259
    :cond_1f
    :goto_1f
    return v0

    .line 242
    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 243
    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_1f

    .line 246
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 247
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 248
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 249
    const-string v4, "com.duoku.game.helper"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1f

    move v0, v1

    .line 251
    goto :goto_1f
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, ""

    .line 72
    invoke-static {}, Lcom/duoku/platform/util/f;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/download_cache/action.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_23
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 268
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 270
    :cond_a
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    :goto_f
    return-void

    .line 273
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 223
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v2, "application/vnd.android.package-archive"

    .line 226
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/util/f;->c:Ljava/lang/Thread;

    .line 229
    return-void
.end method

.method public static c()V
    .registers 1

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 217
    :goto_7
    return-void

    .line 213
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 335
    if-eqz p0, :cond_ab

    if-eqz p1, :cond_ab

    .line 339
    :try_start_6
    sget-object v0, Lcom/duoku/platform/util/f;->d:Landroid/app/DownloadManager;

    if-nez v0, :cond_14

    .line 341
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    sput-object v0, Lcom/duoku/platform/util/f;->d:Landroid/app/DownloadManager;

    .line 343
    :cond_14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 345
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2f

    .line 349
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 350
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 352
    :cond_2f
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 353
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 354
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 355
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/duoku/platform/util/q;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_51

    .line 358
    :cond_4e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 362
    :cond_51
    const/4 v0, 0x0

    .line 364
    const-string v3, "apk"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 365
    if-eq v3, v4, :cond_db

    .line 367
    const/4 v0, 0x0

    add-int/lit8 v1, v3, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 368
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 372
    :goto_67
    if-eq v0, v4, :cond_d5

    .line 374
    if-eq v3, v4, :cond_ac

    if-le v3, v0, :cond_ac

    .line 376
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_75
    if-eqz v0, :cond_b8

    .line 384
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/duoku/platform/util/q;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 410
    :cond_ab
    :goto_ab
    return-void

    .line 380
    :cond_ac
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    .line 393
    :cond_b3
    sget-object v1, Lcom/duoku/platform/util/q;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 400
    :cond_b8
    :goto_b8
    sget-object v0, Lcom/duoku/platform/util/f;->d:Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 402
    const-string v2, "download_id_list"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 403
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_id"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_ab

    .line 405
    :catch_d3
    move-exception v0

    goto :goto_ab

    .line 398
    :cond_d5
    sget-object v0, Lcom/duoku/platform/util/q;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_da} :catch_d3

    goto :goto_b8

    :cond_db
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_67
.end method

.method public static d()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 281
    sget-object v0, Lcom/duoku/platform/util/f;->c:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 283
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/duoku/platform/util/f$2;

    invoke-direct {v1}, Lcom/duoku/platform/util/f$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/duoku/platform/util/f;->c:Ljava/lang/Thread;

    .line 325
    :cond_10
    sget-object v0, Lcom/duoku/platform/util/f;->c:Ljava/lang/Thread;

    return-object v0
.end method
