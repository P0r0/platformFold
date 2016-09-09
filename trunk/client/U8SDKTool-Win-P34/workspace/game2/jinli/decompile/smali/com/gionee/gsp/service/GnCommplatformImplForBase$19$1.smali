.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;
.super Lcom/gionee/gsp/service/GnBaseInstallListener;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Landroid/app/Activity;)V
    .registers 7
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;
    .param p4, "$anonymous2"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    iput-object p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->val$activity:Landroid/app/Activity;

    .line 2422
    invoke-direct {p0, p2, p3, p4}, Lcom/gionee/gsp/service/GnBaseInstallListener;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1$1;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    invoke-direct {v1, p0, v2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2449
    return-void
.end method

.method public onReCheck()V
    .registers 7

    .prologue
    .line 2428
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    invoke-virtual {v4}, Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;->getNeedToInstallList()Ljava/util/List;

    move-result-object v1

    .line 2429
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_14

    .line 2437
    invoke-virtual {p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->onComplete()V

    .line 2438
    :goto_13
    return-void

    .line 2429
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 2430
    .local v0, "info":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    iget-object v2, v0, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->packageName:Ljava/lang/String;

    .line 2431
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->versionName:Ljava/lang/String;

    .line 2432
    .local v3, "versionName":Ljava/lang/String;
    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5, v2, v3}, Lcom/gionee/gsp/util/GnCommonUtil;->findApkIsExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2433
    invoke-virtual {p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;->onError()V

    goto :goto_13
.end method
