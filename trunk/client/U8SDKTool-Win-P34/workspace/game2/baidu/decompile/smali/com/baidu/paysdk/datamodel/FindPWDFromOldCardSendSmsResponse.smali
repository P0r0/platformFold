.class public Lcom/baidu/paysdk/datamodel/FindPWDFromOldCardSendSmsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;


# instance fields
.field public mobile:Ljava/lang/String;

.field public mobile_ec:Ljava/lang/String;

.field public sms_length:Ljava/lang/String;

.field public sms_pattern:Ljava/lang/String;

.field public sms_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public decrypt()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/FindPWDFromOldCardSendSmsResponse;->mobile_ec:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/FindPWDFromOldCardSendSmsResponse;->mobile_ec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->localDecryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pay/SafePay;->unicodeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/FindPWDFromOldCardSendSmsResponse;->mobile:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
