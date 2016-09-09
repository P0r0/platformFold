.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;
.super Lcom/gionee/gsp/service/GnBaseInstallListener;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->startGoldRechargeActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$comeForm:Ljava/lang/String;

.field private final synthetic val$intentPara:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V
    .registers 8
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;
    .param p4, "$anonymous2"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$comeForm:Ljava/lang/String;

    iput-object p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$intentPara:Landroid/content/Intent;

    iput-object p7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$activity:Landroid/app/Activity;

    .line 1905
    invoke-direct {p0, p2, p3, p4}, Lcom/gionee/gsp/service/GnBaseInstallListener;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    .prologue
    .line 1908
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gionee.pay.components.activities.GoldRechargeActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "come_form"

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$comeForm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    const-string v1, "app_id"

    sget-object v2, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1911
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$intentPara:Landroid/content/Intent;

    if-eqz v1, :cond_22

    .line 1912
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$intentPara:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1914
    :cond_22
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1915
    return-void
.end method
