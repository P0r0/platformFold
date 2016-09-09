.class Lcom/gionee/gsp/util/GnCommonUtil$7;
.super Ljava/lang/Thread;
.source "GnCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->startInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$checkLocalEnvironmentDialog:Landroid/app/Dialog;

.field private final synthetic val$impl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$myBroadcastReceiver:Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

.field private final synthetic val$tempNeedToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/util/List;Lcom/gionee/gsp/service/GnBaseInstallListener;Landroid/app/Dialog;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$myBroadcastReceiver:Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

    iput-object p3, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$impl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p4, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$tempNeedToInstallList:Ljava/util/List;

    iput-object p5, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iput-object p6, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$checkLocalEnvironmentDialog:Landroid/app/Dialog;

    .line 1614
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1617
    const-wide/16 v2, 0x61a8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_3b

    .line 1623
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$myBroadcastReceiver:Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_40

    .line 1627
    :goto_c
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/gionee/gsp/util/GnCommonUtil$7$1;

    iget-object v4, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$checkLocalEnvironmentDialog:Landroid/app/Dialog;

    invoke-direct {v3, p0, v4}, Lcom/gionee/gsp/util/GnCommonUtil$7$1;-><init>(Lcom/gionee/gsp/util/GnCommonUtil$7;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1640
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$impl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->checkInstanllState(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$tempNeedToInstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_45

    .line 1641
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/gionee/gsp/util/GnCommonUtil$7$2;

    iget-object v4, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v6, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$tempNeedToInstallList:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/gionee/gsp/util/GnCommonUtil$7$2;-><init>(Lcom/gionee/gsp/util/GnCommonUtil$7;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1651
    :goto_3a
    return-void

    .line 1618
    :catch_3b
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1624
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_40
    move-exception v1

    .line 1625
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 1649
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_45
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v2}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    goto :goto_3a
.end method
