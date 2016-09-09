.class final Lcom/baidu/platformsdk/SapiWebActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "bdp_account_pwd_modify_pass_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 262
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    new-instance v1, Lcom/baidu/platformsdk/SapiWebActivity$5$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiWebActivity$5$1;-><init>(Lcom/baidu/platformsdk/SapiWebActivity$5;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 274
    return-void
.end method
