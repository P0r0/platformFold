.class final Lcom/baidu/platformsdk/SapiWebActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity$5;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity$5;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity$5;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$5$1;->a:Lcom/baidu/platformsdk/SapiWebActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 262
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/platformsdk/SapiWebActivity$5$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 7

    .prologue
    .line 267
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$5$1;->a:Lcom/baidu/platformsdk/SapiWebActivity$5;

    iget-object v1, v1, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "baidu password modified."

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->logout()V

    .line 270
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$5$1;->a:Lcom/baidu/platformsdk/SapiWebActivity$5;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->e(Landroid/content/Context;)Z

    .line 271
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$5$1;->a:Lcom/baidu/platformsdk/SapiWebActivity$5;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$5;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    .line 272
    return-void
.end method
