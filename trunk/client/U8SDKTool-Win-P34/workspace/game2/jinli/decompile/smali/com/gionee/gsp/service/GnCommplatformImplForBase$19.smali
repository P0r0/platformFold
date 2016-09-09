.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

.field private final synthetic val$isAutoInstall:Z


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    iput-boolean p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$isAutoInstall:Z

    .line 2418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2422
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    .line 2423
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 2422
    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    iget-object v6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$activity:Landroid/app/Activity;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Landroid/app/Activity;)V

    .line 2451
    .local v0, "tempListener":Lcom/gionee/gsp/service/GnBaseInstallListener;
    iget-boolean v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$isAutoInstall:Z

    if-eqz v1, :cond_22

    .line 2452
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 2453
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    invoke-virtual {v3}, Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;->getNeedToInstallList()Ljava/util/List;

    move-result-object v3

    .line 2452
    invoke-static {v1, v2, v0, v3}, Lcom/gionee/gsp/util/GnCommonUtil;->startInstallForStandalone(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    .line 2458
    :goto_21
    return-void

    .line 2455
    :cond_22
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$activity:Landroid/app/Activity;

    .line 2456
    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;->val$gnInstallListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;

    invoke-virtual {v2}, Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;->getNeedToInstallList()Ljava/util/List;

    move-result-object v2

    .line 2455
    invoke-static {v1, v0, v2}, Lcom/gionee/gsp/util/GnCommonUtil;->commonInstallForStandalone(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    goto :goto_21
.end method
