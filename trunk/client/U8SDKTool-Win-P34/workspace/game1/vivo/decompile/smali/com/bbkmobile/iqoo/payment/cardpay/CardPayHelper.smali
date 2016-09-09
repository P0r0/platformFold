.class public Lcom/bbkmobile/iqoo/payment/cardpay/CardPayHelper;
.super Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbkmobile/iqoo/payment/payment/PaymentHelper;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected detectForUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAppPackageName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAssetsName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isMobileInstallApp(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
