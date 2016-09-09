.class public Lcom/youju/statistics/a/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/youju/statistics/a/c;
    .registers 2

    packed-switch p0, :pswitch_data_10

    sget-object v0, Lcom/youju/statistics/a/c;->e:Lcom/youju/statistics/a/c;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/youju/statistics/a/c;->b:Lcom/youju/statistics/a/c;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/youju/statistics/a/c;->c:Lcom/youju/statistics/a/c;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/youju/statistics/a/c;->d:Lcom/youju/statistics/a/c;

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/a/c;
    .registers 4

    if-nez p0, :cond_5

    sget-object v0, Lcom/youju/statistics/a/c;->e:Lcom/youju/statistics/a/c;

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/youju/statistics/a/j;->g(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/youju/statistics/a/c;->e:Lcom/youju/statistics/a/c;

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v1}, Lcom/youju/statistics/a/j;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v0, Lcom/youju/statistics/a/c;->a:Lcom/youju/statistics/a/c;

    goto :goto_4

    :cond_1f
    invoke-static {v1}, Lcom/youju/statistics/a/j;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Lcom/youju/statistics/a/j;->a(I)Lcom/youju/statistics/a/c;

    move-result-object v0

    goto :goto_4

    :cond_2a
    sget-object v0, Lcom/youju/statistics/a/c;->e:Lcom/youju/statistics/a/c;

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, ""

    :cond_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_4

    const-string v0, "\\W"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string p0, ""

    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/youju/statistics/a/h;->a:[I

    invoke-static {p0}, Lcom/youju/statistics/a/j;->a(Landroid/content/Context;)Lcom/youju/statistics/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youju/statistics/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    const-string v0, "**"

    :goto_11
    return-object v0

    :pswitch_12
    const-string v0, "2G"

    goto :goto_11

    :pswitch_15
    const-string v0, "3G"

    goto :goto_11

    :pswitch_18
    const-string v0, "4G"

    goto :goto_11

    :pswitch_1b
    const-string v0, "WF"

    goto :goto_11

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method private static b(I)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static c(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v1, 0x6

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/j;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/youju/statistics/a/j;->h(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static g(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)I
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :cond_15
    const/4 v0, -0x1

    :goto_16
    return v0

    :pswitch_17
    const/4 v0, 0x0

    goto :goto_16

    :pswitch_19
    const/4 v0, 0x1

    goto :goto_16

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method
