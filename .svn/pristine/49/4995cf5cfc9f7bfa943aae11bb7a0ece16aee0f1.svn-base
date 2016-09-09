.class Lcom/duoku/platform/download/utils/BackAppListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/BackAppListener;->markInstallStatus(Lcom/duoku/platform/download/mode/InstallPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/BackAppListener;

.field private final synthetic b:Lcom/duoku/platform/download/mode/InstallPacket;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/BackAppListener;Lcom/duoku/platform/download/mode/InstallPacket;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 751
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstallPacket;->getStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v4

    .line 752
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    iget-wide v2, v1, Lcom/duoku/platform/download/mode/InstallPacket;->downloadId:J

    .line 753
    iget-object v1, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    iget-object v1, v1, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    .line 754
    iget-object v5, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    iget-object v10, v5, Lcom/duoku/platform/download/mode/InstallPacket;->downloadUrl:Ljava/lang/String;

    .line 755
    iget-object v5, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    iget-object v5, v5, Lcom/duoku/platform/download/mode/InstallPacket;->name:Ljava/lang/String;

    .line 756
    iget-object v8, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->b:Lcom/duoku/platform/download/mode/InstallPacket;

    iget v11, v8, Lcom/duoku/platform/download/mode/InstallPacket;->errorReason:I

    .line 759
    :try_start_1d
    iget-object v8, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iget-object v8, v8, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v8

    .line 767
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    .line 768
    sget-object v9, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v4, v9, :cond_a0

    .line 770
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lcom/duoku/platform/download/utils/AppManager;->addInstalledGameRecord(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/duoku/platform/download/utils/AppManager;->removeDownloadRecordIfNecessary(Ljava/lang/String;Ljava/lang/Long;)V

    .line 780
    invoke-static {}, Lcom/duoku/platform/download/work/FutureTaskManager;->getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;

    move-result-object v8

    .line 781
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->registerGame(Landroid/content/Context;Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]\u5b89\u88c5\u6210\u529f"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 783
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u6e38\u620f"

    move-object v8, v0

    move-object v9, v5

    .line 804
    :goto_60
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_82

    .line 805
    const-string v0, "BackAppListener"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "BackAppListener markInstallStatus for "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " status:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_82
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 807
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v13, 0x0

    aput v11, v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/download/utils/AppManager;->updateGameInstallStatus(Ljava/lang/String;JLcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;[I)V

    .line 809
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    int-to-long v2, v12

    move-object v4, v9

    move-object v5, v8

    # invokes: Lcom/duoku/platform/download/utils/BackAppListener;->showNotification(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V
    invoke-static/range {v0 .. v7}, Lcom/duoku/platform/download/utils/BackAppListener;->access$1(Lcom/duoku/platform/download/utils/BackAppListener;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 823
    :goto_9f
    return-void

    .line 786
    :cond_a0
    sget-object v8, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v4, v8, :cond_c1

    .line 788
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]\u6b63\u5728\u5b89\u88c5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 789
    const-string v5, "\u70b9\u51fb\u67e5\u770b"

    .line 791
    const-class v7, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    move-object v8, v5

    move-object v9, v6

    move v6, v0

    .line 792
    goto :goto_60

    .line 793
    :cond_c1
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne v4, v0, :cond_e1

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]\u5b89\u88c5\u5931\u8d25"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 796
    const-string v0, "\u70b9\u51fb\u67e5\u770b"

    .line 797
    const-class v7, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    move-object v8, v0

    move-object v9, v5

    .line 798
    goto :goto_60

    .line 801
    :cond_e1
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 802
    invoke-virtual {v0, v12}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_f0} :catch_f4

    move-object v8, v7

    move-object v9, v5

    goto/16 :goto_60

    .line 812
    :catch_f4
    move-exception v0

    move-object v1, v0

    .line 814
    if-eqz v10, :cond_10b

    .line 816
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener$3;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/BackAppListener;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 817
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 819
    :cond_10b
    const-string v0, "BackAppListener"

    const-string v2, "markInstallStatus Error."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f
.end method
