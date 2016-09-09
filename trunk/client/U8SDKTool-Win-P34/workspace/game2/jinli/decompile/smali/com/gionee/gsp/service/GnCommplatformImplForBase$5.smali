.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->showDialog(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .registers 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    .local v2, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isInstall(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    .line 1482
    .local v7, "result":Z
    if-eqz v7, :cond_1a

    .line 1483
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v0}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 1526
    :goto_19
    return-void

    .line 1491
    :cond_1a
    :try_start_1a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v4, "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v5, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->checkDownload(Ljava/util/List;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    invoke-static/range {v0 .. v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$4(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/util/List;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    .line 1502
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 1503
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->downLoadAPK(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v3, v8, v5, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$5(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3a} :catch_3b

    goto :goto_19

    .line 1522
    .end local v4    # "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .end local v5    # "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    :catch_3b
    move-exception v6

    .line 1523
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1524
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_19

    .line 1506
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .restart local v5    # "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;

    iget-object v8, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$activity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-direct {v3, p0, v8, v9, v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_51} :catch_3b

    goto :goto_19
.end method
