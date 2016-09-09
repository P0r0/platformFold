.class abstract Lcom/unionpay/sdk/au$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;)Lcom/unionpay/sdk/au$d;
    .registers 8

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/sdk/q;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_b
    invoke-virtual {p0, p2, v0}, Lcom/unionpay/sdk/au$e;->a([BLjava/net/URL;)Lcom/unionpay/sdk/au$d;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, p3, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_23

    move-object v0, v1

    goto :goto_b

    :catch_23
    move-exception v0

    new-instance v0, Lcom/unionpay/sdk/au$d;

    const/16 v1, 0x258

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/unionpay/sdk/au$d;-><init>(ILjava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method protected final a(Ljava/lang/String;[B)Lcom/unionpay/sdk/au$d;
    .registers 8

    const/16 v4, 0x258

    new-instance v0, Lcom/unionpay/sdk/au$d;

    invoke-direct {v0}, Lcom/unionpay/sdk/au$d;-><init>()V

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/sdk/au$e;->a(Ljava/lang/String;[BLjava/lang/String;)Lcom/unionpay/sdk/au$d;

    move-result-object v0

    iget v1, v0, Lcom/unionpay/sdk/au$d;->a:I

    if-ne v1, v4, :cond_18

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    if-eqz v1, :cond_56

    iget-object v0, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/sdk/au$e;->a(Ljava/lang/String;[BLjava/lang/String;)Lcom/unionpay/sdk/au$d;

    move-result-object v0

    iget v1, v0, Lcom/unionpay/sdk/au$d;->a:I

    if-eq v1, v4, :cond_56

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v1, :cond_56

    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/sdk/au$e;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/sdk/aw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    :cond_56
    iget v1, v0, Lcom/unionpay/sdk/au$d;->a:I

    if-ne v1, v4, :cond_71

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_71

    iget-object v0, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/sdk/au$e;->a(Ljava/lang/String;[BLjava/lang/String;)Lcom/unionpay/sdk/au$d;

    move-result-object v0

    iget v1, v0, Lcom/unionpay/sdk/au$d;->a:I

    if-eq v1, v4, :cond_71

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    :cond_71
    iget v1, v0, Lcom/unionpay/sdk/au$d;->a:I

    if-ne v1, v4, :cond_18

    iget-object v0, p0, Lcom/unionpay/sdk/au$e;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/sdk/au$e;->a(Ljava/lang/String;[BLjava/lang/String;)Lcom/unionpay/sdk/au$d;

    move-result-object v0

    iget v1, v0, Lcom/unionpay/sdk/au$d;->a:I

    if-eq v1, v4, :cond_18

    iget-object v1, p0, Lcom/unionpay/sdk/au$e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/sdk/au$e;->d:Ljava/lang/String;

    goto :goto_18
.end method

.method abstract a([BLjava/net/URL;)Lcom/unionpay/sdk/au$d;
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/unionpay/sdk/au$e;->e:Ljava/lang/String;

    :try_start_2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->b:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_21

    :goto_c
    iput-object p2, p0, Lcom/unionpay/sdk/au$e;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lcom/unionpay/sdk/aw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/sdk/au$e;->c:Ljava/lang/String;

    return-void

    :catch_21
    move-exception v0

    goto :goto_c
.end method
