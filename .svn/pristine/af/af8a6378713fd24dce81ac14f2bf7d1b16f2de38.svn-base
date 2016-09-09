.class public Lcom/u8/sdk/OppoPay;
.super Ljava/lang/Object;
.source "OppoPay.java"

# interfaces
.implements Lcom/u8/sdk/IPay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/u8/sdk/OppoSDK;->getInstance()Lcom/u8/sdk/OppoSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/OppoSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 22
    return-void
.end method


# virtual methods
.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 16
    invoke-static {}, Lcom/u8/sdk/OppoSDK;->getInstance()Lcom/u8/sdk/OppoSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/OppoSDK;->pay(Lcom/u8/sdk/PayParams;)V

    .line 17
    return-void
.end method
