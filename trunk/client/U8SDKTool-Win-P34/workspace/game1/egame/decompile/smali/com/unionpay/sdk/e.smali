.class final Lcom/unionpay/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/sdk/ao;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/unionpay/sdk/aw;->b:Z

    if-eqz v0, :cond_10

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "location method already called"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLastKnownLocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestLocationUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getScanResults"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_34
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v1, "unionpay_CHANNEL_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_called"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4d
    sput-boolean v2, Lcom/unionpay/sdk/aw;->b:Z

    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    goto :goto_f
.end method
