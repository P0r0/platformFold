.class public Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeiXinPlugInSDKVersion()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->a:I

    return v0
.end method

.method public getWeiXinPlugInVersion()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->b:I

    return v0
.end method

.method public getWeiXinVersion()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->c:I

    return v0
.end method

.method public setWeiXinPlugInSDKVersion(I)V
    .registers 2
    .param p1, "weiXinPlugInSDKVersion"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->a:I

    .line 19
    return-void
.end method

.method public setWeiXinPlugInVersion(I)V
    .registers 2
    .param p1, "weiXinPlugInVersion"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->b:I

    .line 27
    return-void
.end method

.method public setWeiXinVersion(I)V
    .registers 2
    .param p1, "weiXinVersion"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->c:I

    .line 35
    return-void
.end method
