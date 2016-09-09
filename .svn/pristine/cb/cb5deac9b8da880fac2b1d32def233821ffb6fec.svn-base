.class public Lcom/huanju/data/net/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/huanju/data/net/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    invoke-direct {p0, p1}, Lcom/huanju/data/net/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_33
    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/huanju/data/net/c;->d:Z

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-object v0, v1, Lcom/huanju/data/net/c;->a:Ljava/lang/String;

    :goto_3c
    return-void

    :cond_3d
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    :cond_55
    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-boolean v2, v1, Lcom/huanju/data/net/c;->d:Z

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-object v0, v1, Lcom/huanju/data/net/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "10.0.0.172"

    iput-object v1, v0, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "80"

    iput-object v1, v0, Lcom/huanju/data/net/c;->c:Ljava/lang/String;

    goto :goto_3c

    :cond_6a
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-boolean v2, v1, Lcom/huanju/data/net/c;->d:Z

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-object v0, v1, Lcom/huanju/data/net/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "10.0.0.200"

    iput-object v1, v0, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "80"

    iput-object v1, v0, Lcom/huanju/data/net/c;->c:Ljava/lang/String;

    goto :goto_3c

    :cond_87
    invoke-direct {p0}, Lcom/huanju/data/net/b;->b()V

    goto :goto_3c

    :cond_8b
    invoke-direct {p0}, Lcom/huanju/data/net/b;->b()V

    goto :goto_3c
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    const-string v0, "10.0.0.172"

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iget-object v1, v1, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-boolean v3, v0, Lcom/huanju/data/net/c;->d:Z

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "80"

    iput-object v1, v0, Lcom/huanju/data/net/c;->c:Ljava/lang/String;

    :goto_2a
    return-void

    :cond_2b
    const-string v0, "10.0.0.200"

    iget-object v1, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iget-object v1, v1, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-boolean v3, v0, Lcom/huanju/data/net/c;->d:Z

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "80"

    iput-object v1, v0, Lcom/huanju/data/net/c;->c:Ljava/lang/String;

    goto :goto_2a

    :cond_42
    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-boolean v2, v0, Lcom/huanju/data/net/c;->d:Z

    goto :goto_2a

    :cond_47
    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    iput-boolean v2, v0, Lcom/huanju/data/net/c;->d:Z

    goto :goto_2a
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/huanju/data/net/c;

    invoke-direct {v0}, Lcom/huanju/data/net/c;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    invoke-direct {p0, p1}, Lcom/huanju/data/net/b;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const-string v1, "wifi"

    iput-object v1, v0, Lcom/huanju/data/net/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/data/net/c;->d:Z

    :cond_37
    :goto_37
    return-void

    :cond_38
    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/b;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    goto :goto_37
.end method


# virtual methods
.method public a()Lcom/huanju/data/net/c;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/net/b;->a:Lcom/huanju/data/net/c;

    return-object v0
.end method
