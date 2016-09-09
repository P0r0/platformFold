.class Lcom/gionee/gsp/service/GnBaseInstallListener$2;
.super Ljava/lang/Object;
.source "GnBaseInstallListener.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnBaseInstallListener;->waitInstallCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnBaseInstallListener$2;->this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 76
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_36

    .line 80
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------------GnCommonUtil.isTopApp(mActivity)="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gionee/gsp/service/GnBaseInstallListener$2;->this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v2, v2, Lcom/gionee/gsp/service/GnBaseInstallListener;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isTopApp(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/gionee/gsp/service/GnBaseInstallListener$2;->this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v1, v1, Lcom/gionee/gsp/service/GnBaseInstallListener;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->isTopApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/gionee/gsp/service/GnBaseInstallListener$2;->this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v1}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 88
    return-void

    .line 77
    :catch_36
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
