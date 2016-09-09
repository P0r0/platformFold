.class public Lcom/nearme/platform/opensdk/pay/PayRequest;
.super Ljava/lang/Object;
.source "PayRequest.java"


# static fields
.field public static final ENV_RELEASE:I = 0x1

.field public static final ENV_TEST:I


# instance fields
.field public isAutoTest:Z

.field public mAmount:F

.field public mAppCode:Ljava/lang/String;

.field public mAppKey:Ljava/lang/String;

.field public mAppVersion:Ljava/lang/String;

.field public mAttach:Ljava/lang/String;

.field public mAutoOrderChannel:Ljava/lang/String;

.field public mChannelId:Ljava/lang/String;

.field public mChargeLimit:F

.field public mCount:I

.field public mCurrencyName:Ljava/lang/String;

.field public mEnv:I

.field public mExchangeRatio:F

.field public mGameSdkVersion:I

.field public mIsSinglePay:Z

.field public mNotifyUrl:Ljava/lang/String;

.field public mOrder:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPartnerId:Ljava/lang/String;

.field public mPartnerOrder:Ljava/lang/String;

.field public mProductDesc:Ljava/lang/String;

.field public mProductName:Ljava/lang/String;

.field public mRequestCode:I

.field public mShowCpSmsChannel:Z

.field public mSign:Ljava/lang/String;

.field public mSource:Ljava/lang/String;

.field public mToken:Ljava/lang/String;

.field public mType:I

.field public mUseCachedChannel:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChannelId:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppCode:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    .line 84
    iput v3, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mGameSdkVersion:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppKey:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    .line 98
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mExchangeRatio:F

    .line 103
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    .line 108
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAttach:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    .line 128
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCount:I

    .line 133
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    .line 148
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mEnv:I

    .line 152
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    .line 162
    iput-boolean v3, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mShowCpSmsChannel:Z

    .line 176
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mUseCachedChannel:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected convert()Ljava/lang/String;
    .registers 9

    .prologue
    .line 184
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 186
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v4, :cond_17

    .line 194
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_17
    aget-object v0, v3, v1

    .line 187
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_2c

    .line 186
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 190
    :catch_2c
    move-exception v0

    .line 191
    const-class v5, Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "convert error. exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PayRequest [mPartnerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProductDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrencyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExchangeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mExchangeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPartnerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAttach:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->isAutoTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mEnv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChargeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSinglePay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowCpSmsChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mShowCpSmsChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoOrderChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoOrderChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
