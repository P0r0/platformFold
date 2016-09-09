.class Lcom/gionee/gsp/util/GnCommonUtil$8;
.super Ljava/lang/Thread;
.source "GnCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->startInstallForStandalone(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnInstallListener:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$myBroadcastReceiver:Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$8;->val$myBroadcastReceiver:Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

    iput-object p3, p0, Lcom/gionee/gsp/util/GnCommonUtil$8;->val$gnInstallListener:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 1695
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1698
    const-wide/16 v2, 0x61a8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_12

    .line 1704
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$8;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$8;->val$myBroadcastReceiver:Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_17

    .line 1708
    :goto_c
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$8;->val$gnInstallListener:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v2}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 1709
    return-void

    .line 1699
    :catch_12
    move-exception v0

    .line 1700
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1705
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_17
    move-exception v1

    .line 1706
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
