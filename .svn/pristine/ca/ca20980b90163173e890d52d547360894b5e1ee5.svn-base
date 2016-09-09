.class Lcom/gionee/gsp/util/GnCommonUtil$9;
.super Ljava/lang/Object;
.source "GnCommonUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->commonInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$needToInstallList:Ljava/util/List;

    iput-object p3, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 1744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1749
    :try_start_0
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_1b

    .line 1753
    :goto_9
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$needToInstallList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1760
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v3}, Lcom/gionee/gsp/service/GnBaseInstallListener;->waitInstallCallback()V

    .line 1761
    return-void

    .line 1750
    :catch_1b
    move-exception v0

    .line 1751
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1753
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 1754
    .local v1, "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 1756
    const-string v5, "application/vnd.android.package-archive"

    .line 1755
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1758
    iget-object v4, p0, Lcom/gionee/gsp/util/GnCommonUtil$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method
