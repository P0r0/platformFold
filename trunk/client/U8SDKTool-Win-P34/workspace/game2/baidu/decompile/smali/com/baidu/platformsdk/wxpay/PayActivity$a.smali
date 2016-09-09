.class Lcom/baidu/platformsdk/wxpay/PayActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/wxpay/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/baidu/platformsdk/wxpay/IPayCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/baidu/platformsdk/wxpay/IPayCallback;)Lcom/baidu/platformsdk/wxpay/PayActivity$a;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;

    invoke-direct {v0}, Lcom/baidu/platformsdk/wxpay/PayActivity$a;-><init>()V

    .line 103
    iput-object p0, v0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a:Landroid/app/Activity;

    .line 104
    iput-object p1, v0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->b:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .line 105
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->b:Lcom/baidu/platformsdk/wxpay/IPayCallback;

    invoke-interface {v0, p1, p2}, Lcom/baidu/platformsdk/wxpay/IPayCallback;->onCallback(ILjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 97
    iget-object v0, p0, Lcom/baidu/platformsdk/wxpay/PayActivity$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    :cond_16
    return-void
.end method
