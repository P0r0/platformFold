.class public Lcom/baidu/platformsdk/wxpay/BDPWXPaySDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_VERSION:I = 0x1

.field public static final RESULT_CODE_PAY_CANCEL:I = 0x3

.field public static final RESULT_CODE_PAY_FAILED:I = 0x2

.field public static final RESULT_CODE_PAY_SUBMIT:I = 0x1

.field public static final RESULT_CODE_PAY_SUCCESS:I = 0x0

.field public static final RESULT_CODE_UPDATE_FAILED:I = 0x1

.field public static final RESULT_CODE_UPDATE_SUCCESS:I = 0x0

.field public static final SDK_VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBDPWXPayVersion(Landroid/content/Context;)Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/baidu/platformsdk/wxpay/obf/c;->a(Landroid/content/Context;)Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;

    move-result-object v0

    return-object v0
.end method

.method public static pay(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/baidu/platformsdk/wxpay/obf/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V

    .line 35
    return-void
.end method

.method public static updateApp(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upgradeVersion"    # I
    .param p2, "upgradeUrl"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/baidu/platformsdk/wxpay/IPayCallback;

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/platformsdk/wxpay/obf/c;->a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V

    .line 42
    return-void
.end method
