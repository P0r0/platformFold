.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->val$needToInstallList:Ljava/util/List;

    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1511
    :try_start_0
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v2

    .line 1512
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5$1;->val$needToInstallList:Ljava/util/List;

    .line 1511
    invoke-static {v1, v2, v3, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->startInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 1518
    :goto_f
    return-void

    .line 1513
    :catch_10
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
