.class public abstract Lcom/unionpay/mobile/android/widgets/y;
.super Lcom/unionpay/mobile/android/widgets/az;

# interfaces
.implements Lcom/unionpay/mobile/android/widgets/az$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/az;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/az;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/az;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/widgets/az;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Z
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/az;->f()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/y;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/az;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
