.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;
.super Lcom/gionee/gsp/service/GnBaseInstallListener;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->loginAccount(Landroid/app/Activity;IZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

.field private final synthetic val$isAutoLogin:Z

.field private final synthetic val$requestCode:I

.field private final synthetic val$tempGnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;ILandroid/app/Activity;ZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V
    .registers 10
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;
    .param p4, "$anonymous2"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$tempGnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    iput p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$requestCode:I

    iput-object p7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$activity:Landroid/app/Activity;

    iput-boolean p8, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$isAutoLogin:Z

    iput-object p9, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    .line 1980
    invoke-direct {p0, p2, p3, p4}, Lcom/gionee/gsp/service/GnBaseInstallListener;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 6

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->Login:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$tempGnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    iget v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$requestCode:I

    invoke-static {v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$7(I)V

    .line 1985
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mAccount:Lcom/gionee/gsp/service/account/IAccount;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$requestCode:I

    iget-boolean v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$isAutoLogin:Z

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/gionee/gsp/service/account/IAccount;->loginAccount(Landroid/app/Activity;IZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V

    .line 1986
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$activity:Landroid/app/Activity;

    const-string v2, "invokeLoginPage"

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getYouJuBaseInfoMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->addYouJuEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1987
    return-void
.end method
