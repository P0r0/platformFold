.class public Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.baidu.bdgame.sdk.ali.action"

.field public static final b:Ljava/lang/String; = "RESULT_STATUS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 32
    if-eqz p1, :cond_e

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 34
    :cond_e
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->a(Lcom/baidu/bdgame/sdk/obf/kk;)V

    .line 51
    :goto_13
    return-void

    .line 37
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz v1, :cond_21

    .line 40
    const-string v0, "is_success"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_21
    const-string v1, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 44
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 50
    :goto_2b
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->a(Lcom/baidu/bdgame/sdk/obf/kk;)V

    goto :goto_13

    .line 45
    :cond_2f
    const-string v1, "F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 46
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_2b

    .line 48
    :cond_3a
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->d:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_2b
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kk;)V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "com.baidu.bdgame.sdk.ali.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "RESULT_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->finish()V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->a(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->setIntent(Landroid/content/Intent;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/channel/ali/AliPayActivity;->a(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
