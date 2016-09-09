.class public Lcom/gionee/gsp/util/GnCommonUtil;
.super Lcom/gionee/gsp/util/GnUtils;
.source "GnCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEFALUT_INSTALL_WAIT_TIME:I = 0x61a8

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field static final PARSE_TIME:I = 0x3e8

.field private static final PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static notificationId:I

.field static sGetInstallAPKDialog:J

.field static sGetTipDialogTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 480
    const-string v0, "^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w{2,3})+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 479
    sput-object v0, Lcom/gionee/gsp/util/GnCommonUtil;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 482
    const-string v0, "^0?\\d{11}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gionee/gsp/util/GnCommonUtil;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 571
    sput-wide v2, Lcom/gionee/gsp/util/GnCommonUtil;->sGetInstallAPKDialog:J

    .line 663
    sput-wide v2, Lcom/gionee/gsp/util/GnCommonUtil;->sGetTipDialogTime:J

    .line 1013
    const v0, 0xc350

    sput v0, Lcom/gionee/gsp/util/GnCommonUtil;->notificationId:I

    .line 1844
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/gionee/gsp/util/GnUtils;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1729
    invoke-static {p0, p1, p2}, Lcom/gionee/gsp/util/GnCommonUtil;->commonInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1875
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnCommonUtil;->installByPackageManager(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 1005
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1006
    return-void
.end method

.method public static checkCurrentAppIsTopApp(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1351
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->IS_RUNNING_THREAD:Z

    if-nez v0, :cond_f

    .line 1352
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->IS_RUNNING_THREAD:Z

    .line 1353
    new-instance v0, Lcom/gionee/gsp/util/GnCommonUtil$5;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/util/GnCommonUtil$5;-><init>(Landroid/content/Context;)V

    .line 1373
    invoke-virtual {v0}, Lcom/gionee/gsp/util/GnCommonUtil$5;->start()V

    .line 1375
    :cond_f
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->IS_RUNNING_THREAD:Z

    return v0
.end method

.method public static checkSpace(Landroid/content/Context;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v13, 0x1f400000

    const/4 v12, -0x1

    const/4 v5, 0x0

    .line 232
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->savePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "savePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 234
    .local v2, "savePathFileArray":[Ljava/io/File;
    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 262
    :cond_17
    :goto_17
    return v5

    .line 238
    :cond_18
    const/4 v3, 0x0

    .line 239
    .local v3, "size":I
    array-length v6, v2

    move v4, v5

    :goto_1b
    if-lt v4, v6, :cond_79

    .line 244
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 245
    if-eqz v4, :cond_91

    .line 246
    if-lt v3, v13, :cond_17

    .line 254
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u5e7f\u544a\u6570\u636e\u5927\u5c0f\u4e3a\uff1a"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\u6267\u884c\u6e05\u7406"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 255
    array-length v6, v2

    move v4, v5

    :goto_4d
    if-ge v4, v6, :cond_17

    aget-object v0, v2, v4

    .line 257
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gntemp_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v12, :cond_76

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5220\u9664\u6570\u636e:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 255
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 239
    .end local v0    # "file":Ljava/io/File;
    :cond_79
    aget-object v0, v2, v4

    .line 240
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gntemp_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v12, :cond_8e

    .line 241
    int-to-long v8, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v3, v8

    .line 239
    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 250
    .end local v0    # "file":Ljava/io/File;
    :cond_91
    if-ge v3, v13, :cond_33

    goto :goto_17
.end method

.method public static clearGnBaseAdFlag(Landroid/content/Intent;)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    .line 429
    :cond_8
    :goto_8
    return-void

    .line 428
    :cond_9
    const-string v0, "isLoaded"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8
.end method

.method private static commonInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gionee/gsp/service/GnBaseInstallListener;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1732
    .local p2, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-static {p0}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    move-result-object v1

    .line 1734
    .local v1, "gnInstallAimgoDialog":Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;
    :try_start_4
    invoke-virtual {v1}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1735
    invoke-virtual {v1}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->dismiss()V

    .line 1738
    :cond_d
    const/4 v2, 0x0

    sput-object v2, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->sGnInstallAimgoDialog:Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    .line 1739
    invoke-static {p0}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    move-result-object v1

    .line 1740
    invoke-virtual {v1}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->show()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_34

    .line 1744
    :goto_17
    sget v2, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {v1, v2}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/gionee/gsp/util/GnCommonUtil$9;

    invoke-direct {v3, p0, p2, p1}, Lcom/gionee/gsp/util/GnCommonUtil$9;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1764
    sget v2, Lcom/gionee/gsp/ui/values/GnPublic$id;->cancel_button:I

    invoke-virtual {v1, v2}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/gionee/gsp/util/GnCommonUtil$10;

    invoke-direct {v3, p0, p1}, Lcom/gionee/gsp/util/GnCommonUtil$10;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1776
    return-void

    .line 1741
    :catch_34
    move-exception v0

    .line 1742
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public static commonInstallForStandalone(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gionee/gsp/service/GnBaseInstallListener;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1787
    .local p2, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1794
    invoke-virtual {p1}, Lcom/gionee/gsp/service/GnBaseInstallListener;->waitInstallCallback()V

    .line 1795
    return-void

    .line 1787
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 1788
    .local v0, "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 1790
    const-string v4, "application/vnd.android.package-archive"

    .line 1789
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public static copyApk(Landroid/content/Context;Lcom/gionee/gsp/data/GnComponentConfigData;)Ljava/io/File;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gnComponentConfigData"    # Lcom/gionee/gsp/data/GnComponentConfigData;

    .prologue
    .line 1524
    .line 1525
    iget-object v5, p1, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    .line 1524
    invoke-static {v5, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->getSaveLocalApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->getDownloadAppPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1527
    .local v4, "savePath":Ljava/io/File;
    const/4 v2, 0x0

    .line 1529
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_d
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1530
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1529
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 1530
    if-eqz v5, :cond_33

    .line 1531
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1536
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget-object v6, p1, Lcom/gionee/gsp/data/GnComponentConfigData;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/gionee/gsp/util/GnCommonUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1549
    .end local v4    # "savePath":Ljava/io/File;
    :goto_32
    return-object v4

    .line 1533
    .restart local v4    # "savePath":Ljava/io/File;
    :cond_33
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_3b} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3b} :catch_48

    move-result-object v2

    goto :goto_25

    .line 1541
    :catch_3d
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 1543
    const-string v1, "\u5e94\u7528\u4e0b\u8f7d\u5f02\u5e38:\u83b7\u53d6\u672c\u5730\u4fdd\u5b58\u5730\u5740\u6216\u8005\u8bfb\u53d6assets apk\u6587\u4ef6\u5931\u8d25"

    .line 1544
    .local v1, "errorMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 1549
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :goto_46
    const/4 v4, 0x0

    goto :goto_32

    .line 1545
    :catch_48
    move-exception v0

    .line 1546
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 1547
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7djar\u5230\u672c\u5730\u7684\u65f6\u5019\u5931\u8d25\uff0cjar\u5305\u4fe1\u606f\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    goto :goto_46
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "len":I
    const/16 v2, 0x400

    :try_start_6
    new-array v0, v2, [B

    .line 351
    .local v0, "buffer":[B
    :goto_8
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_1b

    .line 354
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_20

    .line 355
    new-array v2, v3, [Ljava/io/Closeable;

    .line 356
    aput-object p0, v2, v4

    aput-object p1, v2, v5

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 358
    return-void

    .line 352
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_8

    .line 355
    .end local v0    # "buffer":[B
    :catchall_20
    move-exception v2

    new-array v3, v3, [Ljava/io/Closeable;

    .line 356
    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 357
    throw v2
.end method

.method public static defaultInstall(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1854
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1873
    :goto_6
    return-void

    .line 1857
    :cond_7
    new-instance v0, Lcom/gionee/gsp/util/GnCommonUtil$11;

    invoke-direct {v0, p1, p0}, Lcom/gionee/gsp/util/GnCommonUtil$11;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1872
    invoke-virtual {v0}, Lcom/gionee/gsp/util/GnCommonUtil$11;->start()V

    goto :goto_6
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 798
    const/4 v2, 0x1

    .line 800
    .local v2, "result":Z
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    .line 806
    .end local v1    # "file":Ljava/io/File;
    :goto_9
    return v2

    .line 802
    :catch_a
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 804
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method private static final varargs executeCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "cmd"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1993
    const/4 v7, 0x0

    .line 1994
    .local v7, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/ProcessBuilder;

    invoke-direct {v5, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 1995
    .local v5, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v4, 0x0

    .line 1996
    .local v4, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 1997
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1999
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, -0x1

    .line 2000
    .local v6, "read":I
    :try_start_11
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 2001
    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2002
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2003
    :goto_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_3d

    .line 2006
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 2007
    .local v1, "data":[B
    new-instance v7, Ljava/lang/String;

    .end local v7    # "result":Ljava/lang/String;
    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_41

    .line 2008
    .restart local v7    # "result":Ljava/lang/String;
    new-array v8, v9, [Ljava/io/Closeable;

    .line 2009
    aput-object v3, v8, v10

    aput-object v0, v8, v11

    invoke-static {v8}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 2011
    if-eqz v4, :cond_3c

    .line 2012
    :try_start_39
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_56

    .line 2018
    :cond_3c
    :goto_3c
    return-object v7

    .line 2004
    .end local v1    # "data":[B
    :cond_3d
    :try_start_3d
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_1e

    .line 2008
    .end local v7    # "result":Ljava/lang/String;
    :catchall_41
    move-exception v8

    new-array v9, v9, [Ljava/io/Closeable;

    .line 2009
    aput-object v3, v9, v10

    aput-object v0, v9, v11

    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 2011
    if-eqz v4, :cond_50

    .line 2012
    :try_start_4d
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    .line 2017
    :cond_50
    :goto_50
    throw v8

    .line 2014
    :catch_51
    move-exception v2

    .line 2015
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50

    .line 2014
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":[B
    .restart local v7    # "result":Ljava/lang/String;
    :catch_56
    move-exception v2

    .line 2015
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public static findApkIsExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnCommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "localVersionName":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c

    .line 903
    const/4 v1, 0x1

    .line 905
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getCurrentMethodName(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1225
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDisplayWidthAndHeight(Landroid/content/Context;)[Ljava/lang/Integer;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1443
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_28

    .line 1444
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1445
    .local v0, "display":Landroid/view/Display;
    new-array v2, v3, [Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1448
    .end local v0    # "display":Landroid/view/Display;
    :goto_27
    return-object v2

    .line 1447
    .restart local p0    # "context":Landroid/content/Context;
    :cond_28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1448
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    new-array v2, v3, [Ljava/lang/Integer;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_27
.end method

.method public static getDownloadAppPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 195
    const-string p1, "temp.apk"

    .line 201
    :cond_8
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->savePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gntemp_gnDownloadApp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "savePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 197
    .end local v0    # "savePath":Ljava/lang/String;
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public static getInstallAPKDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Lcom/gionee/gsp/GnCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p2, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p3, "cb":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/gionee/gsp/util/GnCommonUtil;->sGetInstallAPKDialog:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_14

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/gionee/gsp/util/GnCommonUtil;->sGetInstallAPKDialog:J

    .line 660
    :goto_13
    return-void

    .line 588
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/gionee/gsp/util/GnCommonUtil;->sGetInstallAPKDialog:J

    .line 592
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 594
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2c

    .line 596
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_7b

    .line 606
    .end local v2    # "i":I
    :cond_2c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_48

    .line 609
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 610
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_41
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_96

    .line 621
    .end local v2    # "i":I
    :cond_48
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "--\u5176\u5b83\u4fee\u590d\u548c\u4f18\u5316"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    new-instance v0, Lcom/gionee/gsp/dialog/GnDownloadDialog;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/dialog/GnDownloadDialog;-><init>(Landroid/content/Context;)V

    .line 626
    .local v0, "alertDialog":Lcom/gionee/gsp/dialog/GnDownloadDialog;
    sget v4, Lcom/gionee/gsp/ui/values/GnPublic$id;->default_id:I

    invoke-virtual {v0, v4}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 628
    sget v4, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {v0, v4}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/gionee/gsp/util/GnCommonUtil$2;

    invoke-direct {v5, v0, p3, v3}, Lcom/gionee/gsp/util/GnCommonUtil$2;-><init>(Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/StringBuffer;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    sget v4, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_13

    .line 597
    .end local v0    # "alertDialog":Lcom/gionee/gsp/dialog/GnDownloadDialog;
    .restart local v2    # "i":I
    :cond_7b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 598
    .local v1, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    iget-object v4, v1, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_93

    .line 601
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 613
    .end local v1    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    :cond_96
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 614
    .restart local v1    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    iget-object v4, v1, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_ae

    .line 617
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_42
.end method

.method public static getInstallApplicationInfo(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/gsp/data/GnPackageInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1496
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1497
    .local v2, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 1499
    .local v0, "gnPackageInfo":Lcom/gionee/gsp/data/GnPackageInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1519
    return-object v1

    .line 1499
    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1513
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    new-instance v0, Lcom/gionee/gsp/data/GnPackageInfo;

    .end local v0    # "gnPackageInfo":Lcom/gionee/gsp/data/GnPackageInfo;
    invoke-direct {v0}, Lcom/gionee/gsp/data/GnPackageInfo;-><init>()V

    .line 1514
    .restart local v0    # "gnPackageInfo":Lcom/gionee/gsp/data/GnPackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/gionee/gsp/data/GnPackageInfo;->packageName:Ljava/lang/String;

    .line 1515
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/gionee/gsp/data/GnPackageInfo;->versionName:Ljava/lang/String;

    .line 1516
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static getLocation(Landroid/content/Context;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    .line 525
    const-string v14, "location"

    invoke-virtual {p0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    check-cast v0, Landroid/location/LocationManager;

    .line 526
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    .line 527
    .local v1, "provider":Ljava/lang/String;
    const-wide/16 v2, 0x3e8

    .line 528
    .local v2, "minTime":J
    const/4 v4, 0x0

    .line 529
    .local v4, "minDistance":F
    new-instance v5, Lcom/gionee/gsp/util/GnCommonUtil$1;

    invoke-direct {v5}, Lcom/gionee/gsp/util/GnCommonUtil$1;-><init>()V

    .line 551
    .local v5, "locationListener":Landroid/location/LocationListener;
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 554
    :try_start_15
    const-string v14, "gps"

    invoke-virtual {v0, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v13

    .line 555
    .local v13, "location":Landroid/location/Location;
    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 556
    .local v8, "latitude":D
    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 559
    .local v10, "longitude":D
    new-instance v7, Landroid/location/Geocoder;

    invoke-direct {v7, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 561
    .local v7, "geocoder":Landroid/location/Geocoder;
    const/4 v12, 0x1

    .line 562
    .local v12, "maxResults":I
    invoke-virtual/range {v7 .. v12}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 568
    .end local v7    # "geocoder":Landroid/location/Geocoder;
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "maxResults":I
    .end local v13    # "location":Landroid/location/Location;
    :goto_2c
    return-void

    .line 564
    :catch_2d
    move-exception v6

    .line 565
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2c
.end method

.method public static getLocationPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->savePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gn_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodNameByCall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1234
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 9

    .prologue
    .line 2074
    const-string v4, ""

    .line 2076
    .local v4, "model":Ljava/lang/String;
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 2077
    .local v1, "className":Ljava/lang/String;
    const-string v3, "get"

    .line 2078
    .local v3, "methodName":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    .line 2079
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.product.model"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v0, v7

    .line 2080
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, v3, v5, v0}, Lcom/gionee/gsp/util/GnReflectionTools;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2083
    .local v6, "roProductManufacturer":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_29

    move-result-object v4

    .line 2087
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    .end local v6    # "roProductManufacturer":Ljava/lang/Object;
    :goto_28
    return-object v4

    .line 2084
    :catch_29
    move-exception v2

    .line 2085
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_28
.end method

.method public static getNotificationId()I
    .registers 2

    .prologue
    .line 1016
    sget v0, Lcom/gionee/gsp/util/GnCommonUtil;->notificationId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/gionee/gsp/util/GnCommonUtil;->notificationId:I

    return v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .registers 9

    .prologue
    .line 2148
    const-string v6, ""

    .line 2150
    .local v6, "version":Ljava/lang/String;
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 2151
    .local v1, "className":Ljava/lang/String;
    const-string v3, "get"

    .line 2152
    .local v3, "methodName":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 2153
    .local v4, "parameterTypes":[Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.mediatek.platform"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v0, v7

    .line 2154
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, v3, v4, v0}, Lcom/gionee/gsp/util/GnReflectionTools;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2157
    .local v5, "roProductManufacturer":Ljava/lang/Object;
    invoke-static {v5}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 2158
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    .end local v0    # "args":[Ljava/lang/Object;
    const/4 v7, 0x0

    const-string v8, "ro.hw_platform"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v0, v7

    .line 2159
    .restart local v0    # "args":[Ljava/lang/Object;
    invoke-static {v1, v3, v4, v0}, Lcom/gionee/gsp/util/GnReflectionTools;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2162
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_40

    move-result-object v6

    .line 2166
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    .end local v5    # "roProductManufacturer":Ljava/lang/Object;
    :goto_3f
    return-object v6

    .line 2163
    :catch_40
    move-exception v2

    .line 2164
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_3f
.end method

.method public static getPopupWindowFlag(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 453
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_a

    .line 456
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PopupWindowFlag"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_9
.end method

.method public static getRomVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2101
    const-string v0, ""

    .line 2127
    .local v0, "romVersion":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2129
    return-object v0
.end method

.method public static getSaveLocalApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "userflag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    .line 110
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 111
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStaticADPicture(Ljava/lang/String;)[B
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 276
    .local v4, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_4d
    .catchall {:try_start_9 .. :try_end_e} :catchall_3f

    .line 277
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    const/16 v6, 0x1000

    :try_start_10
    new-array v1, v6, [B

    .line 278
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 279
    .local v2, "count":I
    :goto_13
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_2b

    .line 283
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_30
    .catchall {:try_start_10 .. :try_end_1c} :catchall_4a

    .line 287
    new-array v6, v7, [Ljava/io/Closeable;

    .line 288
    aput-object v5, v6, v8

    aput-object v0, v6, v9

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    move-object v4, v5

    .line 290
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 281
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_2b
    const/4 v6, 0x0

    :try_start_2c
    invoke-virtual {v0, v1, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4a

    goto :goto_13

    .line 285
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_30
    move-exception v3

    move-object v4, v5

    .line 286
    .end local v5    # "is":Ljava/io/InputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_32
    :try_start_32
    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    .line 287
    new-array v6, v7, [Ljava/io/Closeable;

    .line 288
    aput-object v4, v6, v8

    aput-object v0, v6, v9

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    goto :goto_26

    .line 287
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_3f
    move-exception v6

    :goto_40
    new-array v7, v7, [Ljava/io/Closeable;

    .line 288
    aput-object v4, v7, v8

    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 289
    throw v6

    .line 287
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_4a
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_40

    .line 285
    :catch_4d
    move-exception v3

    goto :goto_32
.end method

.method public static declared-synchronized getTipDialog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 675
    const-class v1, Lcom/gionee/gsp/util/GnCommonUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/gionee/gsp/util/GnCommonUtil;->sGetTipDialogTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gionee/gsp/util/GnCommonUtil;->sGetTipDialogTime:J
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_4e

    .line 693
    :goto_16
    monitor-exit v1

    return-void

    .line 679
    :cond_18
    :try_start_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gionee/gsp/util/GnCommonUtil;->sGetTipDialogTime:J

    .line 681
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 682
    const-string v2, "\u786e\u8ba4"

    new-instance v3, Lcom/gionee/gsp/util/GnCommonUtil$3;

    invoke-direct {v3}, Lcom/gionee/gsp/util/GnCommonUtil$3;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 686
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/gionee/gsp/util/GnCommonUtil$4;

    invoke-direct {v2}, Lcom/gionee/gsp/util/GnCommonUtil$4;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_4e

    goto :goto_16

    .line 675
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUpdateAppPath(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->savePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gntemp_gnUpdateApp.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "savePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getVerificationCodePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->savePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gn_verificationCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 869
    const/4 v1, 0x0

    .line 871
    .local v1, "versionCode":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_15

    .line 875
    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 872
    :catch_15
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 885
    const-string v0, ""

    .line 887
    .local v0, "versionName":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 891
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 892
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_29

    move-result-object v0

    .line 897
    :cond_28
    :goto_28
    return-object v0

    .line 894
    :catch_29
    move-exception v1

    goto :goto_28
.end method

.method public static getcheckLocalEnvironmentDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/Dialog;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 752
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 754
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 752
    return-object v0
.end method

.method private static final installByCommand(Ljava/lang/String;)Z
    .registers 13
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1969
    const/4 v1, 0x0

    .line 1971
    .local v1, "result":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1973
    .local v2, "t1":J
    const-string v8, "4.2.0"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_7a

    .line 1974
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "pm"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "install"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "-r"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "-d"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    aput-object p0, v8, v9

    invoke-static {v8}, Lcom/gionee/gsp/util/GnCommonUtil;->executeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1980
    :goto_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1981
    .local v4, "t2":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "install apk time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v4, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_94

    .line 1985
    .end local v2    # "t1":J
    .end local v4    # "t2":J
    :goto_53
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " path = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1986
    if-eqz v1, :cond_b6

    const-string v8, "Success"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 1989
    :goto_79
    return v6

    .line 1977
    .restart local v2    # "t1":J
    :cond_7a
    const/4 v8, 0x4

    :try_start_7b
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "pm"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "install"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "-r"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p0, v8, v9

    invoke-static {v8}, Lcom/gionee/gsp/util/GnCommonUtil;->executeCommand([Ljava/lang/String;)Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_92} :catch_94

    move-result-object v1

    goto :goto_31

    .line 1982
    .end local v2    # "t1":J
    :catch_94
    move-exception v0

    .line 1983
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "installApk. path = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_53

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b6
    move v6, v7

    .line 1989
    goto :goto_79
.end method

.method private static installByPackageManager(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1886
    const-class v10, Landroid/content/pm/PackageManager;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1887
    .local v1, "className":Ljava/lang/String;
    const-string v6, "installPackage"

    .line 1890
    .local v6, "methodName":Ljava/lang/String;
    :try_start_8
    const-string v10, "android.content.pm.IPackageInstallObserver"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_72

    move-result-object v7

    .line 1897
    .local v7, "observer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_e
    const-class v10, Landroid/content/pm/PackageManager;

    const-string v11, "INSTALL_REPLACE_EXISTING"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_68

    move-result-object v3

    .line 1901
    .local v3, "field":Ljava/lang/reflect/Field;
    :goto_16
    const/4 v10, 0x0

    :try_start_17
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 1903
    .local v4, "flags":I
    const/4 v10, 0x4

    new-array v8, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/net/Uri;

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v7, v8, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v10

    .line 1904
    .local v8, "parameterTypes":[Ljava/lang/Class;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1905
    .local v5, "instance":Landroid/content/pm/PackageManager;
    const/4 v10, 0x4

    new-array v0, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v10, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v10, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 1906
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, v5, v6, v8, v0}, Lcom/gionee/gsp/util/GnReflectionTools;->getMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1907
    .local v9, "result":Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "---------------\u7b2c\u4e8c\u79cd\u65b9\u5f0f\u7ed3\u679c\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1912
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "flags":I
    .end local v5    # "instance":Landroid/content/pm/PackageManager;
    .end local v7    # "observer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "parameterTypes":[Ljava/lang/Class;
    .end local v9    # "result":Ljava/lang/Object;
    :goto_67
    return-void

    .line 1898
    .restart local v7    # "observer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_68
    move-exception v2

    .line 1899
    .local v2, "e":Ljava/lang/Exception;
    const-class v10, Landroid/content/pm/PackageManager;

    const-string v11, "INSTALL_REPLACE_EXISTING"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_70} :catch_72

    move-result-object v3

    .restart local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_16

    .line 1908
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "observer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_72
    move-exception v2

    .line 1909
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1910
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "---------------\u7b2c\u4e8c\u79cd\u65b9\u5f0f\u5f02\u5e38\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    goto :goto_67
.end method

.method public static installByRoot(Landroid/content/Context;Ljava/io/File;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/io/File;

    .prologue
    .line 1922
    const/4 v6, 0x0

    .line 1923
    .local v6, "result":Z
    const/4 v5, 0x0

    .line 1924
    .local v5, "process":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 1925
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 1926
    .local v2, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1929
    .local v7, "state":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "su"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 1930
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 1933
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "pm install -r "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 1936
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1937
    const/4 v3, 0x0

    .line 1938
    .local v3, "len":I
    const/16 v9, 0x100

    new-array v0, v9, [B
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_38} :catch_64
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_7b
    .catchall {:try_start_5 .. :try_end_38} :catchall_92

    .local v0, "bs":[B
    move-object v8, v7

    .line 1939
    .end local v7    # "state":Ljava/lang/String;
    .local v8, "state":Ljava/lang/String;
    :goto_39
    const/4 v9, -0x1

    :try_start_3a
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_ae
    .catchall {:try_start_3a .. :try_end_3d} :catchall_ab

    move-result v3

    if-ne v9, v3, :cond_4f

    move-object v7, v8

    .line 1954
    .end local v8    # "state":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    :goto_41
    if-eqz v4, :cond_49

    .line 1955
    :try_start_43
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1956
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1958
    :cond_49
    if-eqz v2, :cond_4e

    .line 1959
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4e} :catch_a6

    .line 1965
    .end local v0    # "bs":[B
    .end local v3    # "len":I
    :cond_4e
    :goto_4e
    return v6

    .line 1940
    .end local v7    # "state":Ljava/lang/String;
    .restart local v0    # "bs":[B
    .restart local v3    # "len":I
    .restart local v8    # "state":Ljava/lang/String;
    :cond_4f
    :try_start_4f
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_ae
    .catchall {:try_start_4f .. :try_end_55} :catchall_ab

    .line 1941
    .end local v8    # "state":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    :try_start_55
    const-string v9, "Success\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 1943
    const/4 v6, 0x1

    .line 1944
    const-string v9, "\u6210\u529f"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_63} :catch_7b
    .catchall {:try_start_55 .. :try_end_63} :catchall_92

    goto :goto_41

    .line 1948
    .end local v0    # "bs":[B
    .end local v3    # "len":I
    :catch_64
    move-exception v1

    .line 1949
    .local v1, "e":Ljava/io/IOException;
    :goto_65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_92

    .line 1954
    if-eqz v4, :cond_70

    .line 1955
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1956
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1958
    :cond_70
    if-eqz v2, :cond_4e

    .line 1959
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_4e

    .line 1961
    :catch_76
    move-exception v1

    .line 1962
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 1950
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7b
    move-exception v1

    .line 1951
    .local v1, "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_92

    .line 1954
    if-eqz v4, :cond_87

    .line 1955
    :try_start_81
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1956
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1958
    :cond_87
    if-eqz v2, :cond_4e

    .line 1959
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8c} :catch_8d

    goto :goto_4e

    .line 1961
    :catch_8d
    move-exception v1

    .line 1962
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 1952
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_92
    move-exception v9

    .line 1954
    :goto_93
    if-eqz v4, :cond_9b

    .line 1955
    :try_start_95
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1956
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1958
    :cond_9b
    if-eqz v2, :cond_a0

    .line 1959
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a0} :catch_a1

    .line 1964
    :cond_a0
    :goto_a0
    throw v9

    .line 1961
    :catch_a1
    move-exception v1

    .line 1962
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 1961
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bs":[B
    .restart local v3    # "len":I
    :catch_a6
    move-exception v1

    .line 1962
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 1952
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "state":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    :catchall_ab
    move-exception v9

    move-object v7, v8

    .end local v8    # "state":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    goto :goto_93

    .line 1950
    .end local v7    # "state":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    :catch_ae
    move-exception v1

    move-object v7, v8

    .end local v8    # "state":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    goto :goto_7c

    .line 1948
    .end local v7    # "state":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    :catch_b1
    move-exception v1

    move-object v7, v8

    .end local v8    # "state":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    goto :goto_65

    :cond_b4
    move-object v8, v7

    .end local v7    # "state":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    goto :goto_39
.end method

.method public static isAvaiableSpace()Z
    .registers 12

    .prologue
    .line 151
    const/4 v6, 0x0

    .line 152
    .local v6, "ishasSpace":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "sdcard":Ljava/lang/String;
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    .local v8, "statFs":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 156
    .local v2, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v4, v9

    .line 157
    .local v4, "blocks":J
    mul-long v0, v4, v2

    .line 158
    .local v0, "availableSpare":J
    const-wide/32 v10, 0x3200000

    cmp-long v9, v0, v10

    if-lez v9, :cond_2f

    .line 159
    const/4 v6, 0x1

    .line 164
    .end local v0    # "availableSpare":J
    .end local v2    # "blockSize":J
    .end local v4    # "blocks":J
    .end local v7    # "sdcard":Ljava/lang/String;
    .end local v8    # "statFs":Landroid/os/StatFs;
    :cond_2e
    :goto_2e
    return v6

    .line 161
    .restart local v0    # "availableSpare":J
    .restart local v2    # "blockSize":J
    .restart local v4    # "blocks":J
    .restart local v7    # "sdcard":Ljava/lang/String;
    .restart local v8    # "statFs":Landroid/os/StatFs;
    :cond_2f
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "==\u5269\u4f59\u7a7a\u95f4MB,availableSpare = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v10, 0x100000

    div-long v10, v0, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public static isConnnected(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1382
    .line 1383
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1382
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1384
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_15

    .line 1385
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1387
    .local v2, "networkInfo":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_15

    .line 1388
    array-length v5, v2

    move v4, v3

    :goto_13
    if-lt v4, v5, :cond_16

    .line 1397
    .end local v2    # "networkInfo":[Landroid/net/NetworkInfo;
    :cond_15
    :goto_15
    return v3

    .line 1388
    .restart local v2    # "networkInfo":[Landroid/net/NetworkInfo;
    :cond_16
    aget-object v1, v2, v4

    .line 1389
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_22

    .line 1391
    const/4 v3, 0x1

    goto :goto_15

    .line 1388
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .registers 6
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 492
    const/4 v0, 0x0

    .line 504
    :cond_7
    return v0

    .line 494
    :cond_8
    sget-object v3, Lcom/gionee/gsp/util/GnCommonUtil;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 495
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 496
    .local v0, "flag":Z
    :cond_13
    :goto_13
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 498
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-----------url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 500
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 501
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 847
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 848
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "google_sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 859
    :cond_25
    :goto_25
    return v2

    .line 852
    :cond_26
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 853
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_25

    const-string v3, "000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 859
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public static isGionee()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2045
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 2046
    .local v1, "className":Ljava/lang/String;
    const-string v3, "get"

    .line 2047
    .local v3, "methodName":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v4, v8

    .line 2048
    .local v4, "parameterTypes":[Ljava/lang/Class;
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.product.manufacturer"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v0, v8

    .line 2049
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, v3, v4, v0}, Lcom/gionee/gsp/util/GnReflectionTools;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2051
    .local v5, "roProductManufacturer":Ljava/lang/Object;
    const-string v8, "GiONEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 2052
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 2051
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_41

    move-result v8

    .line 2052
    if-eqz v8, :cond_45

    .line 2058
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    .end local v5    # "roProductManufacturer":Ljava/lang/Object;
    :goto_40
    return v6

    .line 2055
    :catch_41
    move-exception v2

    .line 2056
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    move v6, v7

    .line 2058
    goto :goto_40
.end method

.method private static isInstallByread(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 939
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 940
    const/4 v1, 0x0

    .line 943
    :goto_7
    return v1

    .line 942
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/../.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_7
.end method

.method public static isLoadAd(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 438
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    .line 439
    :cond_8
    const/4 v0, 0x0

    .line 441
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isLoaded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 300
    if-eqz p0, :cond_14

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isPhone(Ljava/lang/String;)Z
    .registers 4
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 516
    const/4 v1, 0x0

    .line 519
    :goto_7
    return v1

    .line 518
    :cond_8
    sget-object v1, Lcom/gionee/gsp/util/GnCommonUtil;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 519
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isTopApp(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1312
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isTopApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTopApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 1317
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnCommonUtil;->judgeByCurrentProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1319
    :goto_a
    return v0

    :cond_b
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnCommonUtil;->judgeByCurrentTask(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public static isUpdateAppConfig(Landroid/content/Context;Lcom/gionee/gsp/data/GnCheckUpdate;)Landroid/app/AlertDialog$Builder;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gnCheckUpdate"    # Lcom/gionee/gsp/data/GnCheckUpdate;

    .prologue
    .line 1456
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1473
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gionee/gsp/util/GnCommonUtil$6;

    invoke-direct {v1}, Lcom/gionee/gsp/util/GnCommonUtil$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1456
    return-object v0
.end method

.method private static judgeByCurrentProcess(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1324
    .line 1325
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1324
    check-cast v0, Landroid/app/ActivityManager;

    .line 1326
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1327
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_10

    .line 1330
    :goto_f
    return v2

    :cond_10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_f
.end method

.method private static judgeByCurrentTask(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1334
    .line 1335
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1334
    check-cast v0, Landroid/app/ActivityManager;

    .line 1336
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1337
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1342
    :cond_16
    :goto_16
    return v4

    .line 1340
    :cond_17
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1341
    .local v1, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1342
    .local v2, "taskPackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_16
.end method

.method public static launchApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 916
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isInstallByread(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 918
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 919
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 920
    const/4 v1, 0x1

    .line 922
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static parseIntegerFromString(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1243
    const/4 v1, 0x0

    .line 1245
    .local v1, "result":I
    :try_start_1
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1252
    :goto_b
    return-object v2

    .line 1248
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_f} :catch_15

    move-result v1

    .line 1252
    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    .line 1249
    :catch_15
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public static parsePxByDp(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # I

    .prologue
    .line 1420
    const/4 v1, 0x1

    int-to-float v2, p1

    .line 1421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1420
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 1422
    .local v0, "pxValue":I
    return v0
.end method

.method public static parsePxBySp(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # I

    .prologue
    .line 1432
    const/4 v1, 0x2

    int-to-float v2, p1

    .line 1433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1432
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 1434
    .local v0, "pxValue":I
    return v0
.end method

.method public static parseStringToInputStream([B)Ljava/io/InputStream;
    .registers 2
    .param p0, "b"    # [B

    .prologue
    .line 314
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 315
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public static printErrorByActivity(Landroid/app/Activity;I)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I

    .prologue
    .line 1273
    invoke-static {p1}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "resultDesc":Ljava/lang/String;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u9519\u8bef\u7801 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 1279
    :goto_1c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1280
    return-void

    .line 1277
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u9519\u8bef\u7801 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9519\u8bef\u63cf\u8ff0 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1261
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->sPrintExceptionMessage:Z

    if-eqz v0, :cond_7

    .line 1262
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1264
    :cond_7
    return-void
.end method

.method public static putPopupWindowFlag(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 3
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "isPopupWindow"    # Z

    .prologue
    .line 467
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 468
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 470
    .restart local p0    # "extras":Landroid/os/Bundle;
    :cond_b
    const-string v0, "PopupWindowFlag"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    return-object p0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 817
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 818
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 820
    .local v4, "is":Ljava/io/InputStream;
    :try_start_a
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_63
    .catchall {:try_start_a .. :try_end_12} :catchall_55

    move-result v7

    if-nez v7, :cond_1f

    .line 834
    new-array v7, v10, [Ljava/io/Closeable;

    .line 835
    aput-object v4, v7, v8

    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 837
    :goto_1e
    return-object v6

    .line 823
    :cond_1f
    :try_start_1f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_63
    .catchall {:try_start_1f .. :try_end_24} :catchall_55

    .line 824
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    const/16 v7, 0x1000

    :try_start_26
    new-array v1, v7, [B

    .line 825
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 826
    .local v2, "count":I
    :goto_29
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_41

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 831
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_46
    .catchall {:try_start_26 .. :try_end_35} :catchall_60

    move-result-object v6

    .line 834
    new-array v7, v10, [Ljava/io/Closeable;

    .line 835
    aput-object v5, v7, v8

    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    move-object v4, v5

    .line 831
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1e

    .line 828
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_41
    const/4 v7, 0x0

    :try_start_42
    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_60

    goto :goto_29

    .line 832
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_46
    move-exception v3

    move-object v4, v5

    .line 833
    .end local v5    # "is":Ljava/io/InputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_48
    :try_start_48
    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_55

    .line 834
    new-array v7, v10, [Ljava/io/Closeable;

    .line 835
    aput-object v4, v7, v8

    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    goto :goto_1e

    .line 834
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_55
    move-exception v6

    :goto_56
    new-array v7, v10, [Ljava/io/Closeable;

    .line 835
    aput-object v4, v7, v8

    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 836
    throw v6

    .line 834
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_60
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_56

    .line 832
    :catch_63
    move-exception v3

    goto :goto_48
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 329
    .local v1, "len":I
    const/16 v3, 0x400

    :try_start_b
    new-array v0, v3, [B

    .line 330
    .local v0, "buffer":[B
    :goto_d
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_24

    .line 333
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_29

    .line 334
    new-array v3, v4, [Ljava/io/Closeable;

    .line 335
    aput-object p0, v3, v5

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 337
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 331
    :cond_24
    const/4 v3, 0x0

    :try_start_25
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_d

    .line 334
    .end local v0    # "buffer":[B
    :catchall_29
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    .line 335
    aput-object p0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 336
    throw v3
.end method

.method private static savePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v1, ""

    .line 126
    .local v1, "savePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 127
    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->isAvaiableSpace()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 128
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v2, "gsp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 141
    .end local v0    # "file":Ljava/io/File;
    :goto_30
    return-object v1

    .line 132
    .restart local v0    # "file":Ljava/io/File;
    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_2c

    .line 138
    .end local v0    # "file":Ljava/io/File;
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method public static sendErrorInfo(Landroid/content/Context;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "adId"    # Ljava/lang/String;

    .prologue
    .line 1132
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, "errorInfo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1134
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v2, :cond_35

    .line 1137
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---error info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 1139
    new-instance v0, Lcom/gionee/gsp/data/GnLogInfo;

    sget v2, Lcom/gionee/gsp/result/GnOperatorType;->OPENADERROR:I

    .line 1140
    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/gionee/gsp/data/GnLogInfo;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1139
    invoke-static {p0, v0}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->saveLog(Landroid/content/Context;Lcom/gionee/gsp/data/GnLogInfo;)V

    .line 1141
    return-void

    .line 1134
    :cond_35
    aget-object v6, v1, v0

    .line 1135
    .local v6, "ele":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "--new line--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static showNotification(Landroid/content/Context;ILjava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 956
    move-object v3, p2

    .line 958
    .local v3, "tickerText1":Ljava/lang/String;
    const v1, 0x1080081

    .line 963
    .local v1, "icon1":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 968
    .local v0, "contentIntent1":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 976
    .local v2, "notification1":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 986
    const v4, 0x1080081

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 987
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 991
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 994
    return-void
.end method

.method public static startInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "impl"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .param p2, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gionee/gsp/service/GnCommplatformImplForBase;",
            "Lcom/gionee/gsp/service/GnBaseInstallListener;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    const/4 v5, 0x0

    .line 1586
    invoke-static {p3}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1587
    invoke-virtual {p2}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 1668
    :cond_a
    :goto_a
    return-void

    .line 1592
    :cond_b
    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->isGionee()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1595
    const-string v1, "\u63d0\u793a"

    const-string v3, "\u6b63\u5728\u521d\u59cb\u5316AmigoPlay\u5b89\u5168\u63d2\u4ef6..."

    .line 1594
    invoke-static {p0, v1, v3, v5, v5}, Lcom/gionee/gsp/util/GnCommonUtil;->getcheckLocalEnvironmentDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/Dialog;

    move-result-object v6

    .line 1597
    .local v6, "checkLocalEnvironmentDialog":Landroid/app/Dialog;
    :try_start_19
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_60

    .line 1604
    :goto_1c
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1605
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1606
    const-string v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1608
    new-instance v2, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;-><init>(Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;)V

    .line 1611
    .local v2, "myBroadcastReceiver":Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    .local v4, "tempNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-interface {v4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1614
    new-instance v0, Lcom/gionee/gsp/util/GnCommonUtil$7;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/util/GnCommonUtil$7;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/util/List;Lcom/gionee/gsp/service/GnBaseInstallListener;Landroid/app/Dialog;)V

    .line 1655
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v2, v4, v0}, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->addParamter(Ljava/util/List;Ljava/lang/Thread;)V

    .line 1657
    invoke-virtual {p0, v2, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1658
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1660
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 1661
    .local v9, "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    iget-object v3, v9, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->filePath:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/gionee/gsp/util/GnCommonUtil;->defaultInstall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e

    .line 1598
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v2    # "myBroadcastReceiver":Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;
    .end local v4    # "tempNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    :catch_60
    move-exception v7

    .line 1600
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 1666
    .end local v6    # "checkLocalEnvironmentDialog":Landroid/app/Dialog;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_65
    invoke-static {p0, p2, p3}, Lcom/gionee/gsp/util/GnCommonUtil;->commonInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    goto :goto_a
.end method

.method public static startInstallForStandalone(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "impl"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .param p2, "gnInstallListener"    # Lcom/gionee/gsp/service/GnBaseInstallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gionee/gsp/service/GnCommplatformImplForBase;",
            "Lcom/gionee/gsp/service/GnBaseInstallListener;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1677
    .local p3, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-static {p3}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1678
    invoke-virtual {p2}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 1727
    :cond_9
    :goto_9
    return-void

    .line 1683
    :cond_a
    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->isGionee()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1685
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1686
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1687
    const-string v5, "package"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1689
    new-instance v2, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;-><init>(Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;)V

    .line 1692
    .local v2, "myBroadcastReceiver":Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .local v3, "tempNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-interface {v3, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1695
    new-instance v4, Lcom/gionee/gsp/util/GnCommonUtil$8;

    invoke-direct {v4, p0, v2, p2}, Lcom/gionee/gsp/util/GnCommonUtil$8;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1713
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v2, v3, v4}, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->addParamter(Ljava/util/List;Ljava/lang/Thread;)V

    .line 1715
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1716
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1718
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 1719
    .local v1, "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    iget-object v6, v1, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->filePath:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->defaultInstall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3f

    .line 1725
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    .end local v2    # "myBroadcastReceiver":Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;
    .end local v3    # "tempNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_51
    invoke-virtual {p2}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    goto :goto_9
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 775
    const/4 v3, 0x1

    .line 776
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 778
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_21
    .catchall {:try_start_4 .. :try_end_e} :catchall_2e

    .line 779
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 780
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_3a
    .catchall {:try_start_e .. :try_end_18} :catchall_37

    .line 784
    new-array v4, v5, [Ljava/io/Closeable;

    .line 785
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    move-object v1, v2

    .line 787
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :goto_20
    return v3

    .line 781
    :catch_21
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    :goto_22
    const/4 v3, 0x0

    .line 783
    :try_start_23
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2e

    .line 784
    new-array v4, v5, [Ljava/io/Closeable;

    .line 785
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    goto :goto_20

    .line 784
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v4

    :goto_2f
    new-array v5, v5, [Ljava/io/Closeable;

    .line 785
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/gionee/gsp/util/GnCommonUtil;->closeIOStream([Ljava/io/Closeable;)V

    .line 786
    throw v4

    .line 784
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_37
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_2f

    .line 781
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_3a
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_22
.end method


# virtual methods
.method public checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2178
    invoke-static {p2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2186
    :goto_7
    return v2

    .line 2182
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2183
    const/16 v4, 0x2000

    .line 2182
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_11} :catch_14

    move-result-object v1

    .line 2184
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    goto :goto_7

    .line 2185
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_14
    move-exception v0

    .line 2186
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_7
.end method
