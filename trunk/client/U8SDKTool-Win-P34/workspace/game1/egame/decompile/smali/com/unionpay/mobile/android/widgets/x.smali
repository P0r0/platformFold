.class public final Lcom/unionpay/mobile/android/widgets/x;
.super Lcom/unionpay/mobile/android/widgets/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/y;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/x;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/x;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
