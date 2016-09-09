.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;
.super Lcom/gionee/gsp/service/GnBaseInstallListener;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$BundlePara:Landroid/os/Bundle;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderInfo:Ljava/lang/String;

.field private final synthetic val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V
    .registers 10
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;
    .param p4, "$anonymous2"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$orderInfo:Ljava/lang/String;

    iput-object p7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$BundlePara:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

    iput p9, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$type:I

    .line 1757
    invoke-direct {p0, p2, p3, p4}, Lcom/gionee/gsp/service/GnBaseInstallListener;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 7

    .prologue
    .line 1759
    invoke-static {}, Lcom/gionee/gsp/service/pay/PayImpl;->getInstance()Lcom/gionee/gsp/service/pay/IPay;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/service/pay/PayImpl;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$orderInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$BundlePara:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

    iget v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;->val$type:I

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/gsp/service/pay/PayImpl;->pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V

    .line 1760
    return-void
.end method
