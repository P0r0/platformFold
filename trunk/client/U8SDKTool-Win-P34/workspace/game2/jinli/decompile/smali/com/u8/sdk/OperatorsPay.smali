.class public Lcom/u8/sdk/OperatorsPay;
.super Ljava/lang/Object;
.source "OperatorsPay.java"

# interfaces
.implements Lcom/u8/sdk/IOperatorPay;


# instance fields
.field private supportedMethods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "meegoPay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmPay"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "egamePay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unicomPay"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/u8/sdk/OperatorsPay;->supportedMethods:[Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/u8/sdk/CombinePaySDK;->getInstance()Lcom/u8/sdk/CombinePaySDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/CombinePaySDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 13
    return-void
.end method


# virtual methods
.method public egamePay(Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 37
    invoke-static {}, Lcom/u8/sdk/CombinePaySDK;->getInstance()Lcom/u8/sdk/CombinePaySDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/CombinePaySDK;->egamePay(Lcom/u8/sdk/PayParams;)V

    .line 38
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/u8/sdk/OperatorsPay;->supportedMethods:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/u8/sdk/utils/Arrays;->contain([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public meegoPay(Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 28
    invoke-static {}, Lcom/u8/sdk/CombinePaySDK;->getInstance()Lcom/u8/sdk/CombinePaySDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/CombinePaySDK;->meegoPay(Lcom/u8/sdk/PayParams;)V

    .line 29
    return-void
.end method

.method public mmPay(Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 32
    invoke-static {}, Lcom/u8/sdk/CombinePaySDK;->getInstance()Lcom/u8/sdk/CombinePaySDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/CombinePaySDK;->mmPay(Lcom/u8/sdk/PayParams;)V

    .line 33
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 2
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/u8/sdk/OperatorsPay;->meegoPay(Lcom/u8/sdk/PayParams;)V

    .line 24
    return-void
.end method

.method public unicomPay(Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 42
    invoke-static {}, Lcom/u8/sdk/CombinePaySDK;->getInstance()Lcom/u8/sdk/CombinePaySDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/CombinePaySDK;->unicomPay(Lcom/u8/sdk/PayParams;)V

    .line 43
    return-void
.end method
