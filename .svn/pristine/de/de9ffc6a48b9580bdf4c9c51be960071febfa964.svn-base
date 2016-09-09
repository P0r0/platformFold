.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->callback(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->val$needToInstallList:Ljava/util/List;

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1560
    :try_start_0
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->val$activity:Landroid/app/Activity;

    .line 1561
    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;
    invoke-static {v2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->access$1(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;)Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    move-result-object v2

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v2

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 1562
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;->val$needToInstallList:Ljava/util/List;

    .line 1560
    invoke-static {v1, v2, v3, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->startInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1567
    :goto_13
    return-void

    .line 1563
    :catch_14
    move-exception v0

    .line 1564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
