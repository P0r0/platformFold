.class public abstract Lcom/gionee/gsp/service/GnBaseInstallListener;
.super Ljava/lang/Object;
.source "GnBaseInstallListener.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "-------------"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mGioneeAccountBaseListener:Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;

.field mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gioneeAccountBaseListener"    # Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;
    .param p3, "gnCommplatformImpl"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mActivity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mGioneeAccountBaseListener:Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;

    .line 24
    iput-object p3, p0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 25
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public onError()V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gionee/gsp/service/GnBaseInstallListener$1;

    invoke-direct {v1, p0}, Lcom/gionee/gsp/service/GnBaseInstallListener$1;-><init>(Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public onReCheck()V
    .registers 5

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isInstall(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 55
    const-string v0, "-------------\u5df2\u7ecf\u5b89\u88c5"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onComplete()V

    .line 63
    :goto_32
    return-void

    .line 60
    :cond_33
    const-string v0, "-------------\u6ca1\u6709\u5b89\u88c5"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onError()V

    goto :goto_32
.end method

.method public waitInstallCallback()V
    .registers 4

    .prologue
    .line 69
    invoke-static {}, Lcom/gionee/gsp/service/GnGetMessageService;->getInStance()Lcom/gionee/gsp/service/GnGetMessageService;

    move-result-object v0

    new-instance v1, Lcom/gionee/gsp/service/GnBaseInstallListener$2;

    invoke-direct {v1, p0}, Lcom/gionee/gsp/service/GnBaseInstallListener$2;-><init>(Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 90
    const-string v2, "waitInstallCallback"

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/gionee/gsp/service/GnGetMessageService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 91
    return-void
.end method
