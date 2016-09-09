.class public Lcom/baidu/platformsdk/wxpay/PayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/wxpay/PayActivity$a;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_PARAMS:Ljava/lang/String; = "intent_key_params"

.field private static a:Lcom/baidu/platformsdk/wxpay/IPayCallback;


# instance fields
.field private b:Lcom/baidu/platformsdk/wxpay/PayActivity$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.baidu.platformsdk.wxpay"

    const-string v3, "com.baidu.platformsdk.wxpay.ProxyActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/platformsdk/wxpay/PayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    return-void
.end method

.method public static pay(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "payCallback"    # Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/wxpay/PayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "intent_key_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    sput-object p2, Lcom/baidu/platformsdk/wxpay/PayActivity;->a:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    if-nez p3, :cond_f

    .line 50
    iget-object v1, p0, Lcom/baidu/platformsdk/wxpay/PayActivity;->b:Lcom/baidu/platformsdk/wxpay/PayActivity$a;

    const-string v2, "unknow error."

    invoke-virtual {v1, v0, v2}, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a(ILjava/lang/String;)V

    .line 71
    :goto_e
    return-void

    .line 54
    :cond_f
    const-string v2, "resultCode"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :pswitch_18
    move v0, v1

    .line 69
    :goto_19
    :pswitch_19
    const-string v1, "resultDes"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/PayActivity;->b:Lcom/baidu/platformsdk/wxpay/PayActivity$a;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a(ILjava/lang/String;)V

    goto :goto_e

    .line 56
    :pswitch_25
    const/4 v0, 0x0

    .line 57
    goto :goto_19

    .line 62
    :pswitch_27
    const/4 v0, 0x3

    .line 63
    goto :goto_19

    .line 54
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_18
        :pswitch_19
        :pswitch_27
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/platformsdk/wxpay/PayActivity;->requestWindowFeature(I)Z

    .line 26
    sget-object v1, Lcom/baidu/platformsdk/wxpay/PayActivity;->a:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    if-nez v1, :cond_10

    .line 27
    invoke-virtual {p0}, Lcom/baidu/platformsdk/wxpay/PayActivity;->finish()V

    .line 44
    :goto_f
    return-void

    .line 31
    :cond_10
    sget-object v1, Lcom/baidu/platformsdk/wxpay/PayActivity;->a:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    invoke-static {p0, v1}, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a(Landroid/app/Activity;Lcom/baidu/platformsdk/wxpay/IPayCallback;)Lcom/baidu/platformsdk/wxpay/PayActivity$a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/platformsdk/wxpay/PayActivity;->b:Lcom/baidu/platformsdk/wxpay/PayActivity$a;

    .line 32
    sput-object v0, Lcom/baidu/platformsdk/wxpay/PayActivity;->a:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .line 35
    invoke-virtual {p0}, Lcom/baidu/platformsdk/wxpay/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 36
    invoke-virtual {p0}, Lcom/baidu/platformsdk/wxpay/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_key_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 39
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/PayActivity;->b:Lcom/baidu/platformsdk/wxpay/PayActivity$a;

    const/4 v1, 0x0

    const-string v2, "params can not be null."

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a(ILjava/lang/String;)V

    goto :goto_f

    .line 43
    :cond_39
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/wxpay/PayActivity;->a(Ljava/lang/String;)V

    goto :goto_f
.end method
