.class public final Lcom/alipay/sdk/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/alipay/sdk/protocol/a;

.field public b:[Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->c:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    .line 37
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/protocol/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    if-nez p0, :cond_9

    move-object v0, v2

    .line 79
    :goto_8
    return-object v0

    .line 67
    :cond_9
    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    array-length v3, v0

    if-ge v1, v3, :cond_41

    .line 70
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/alipay/sdk/protocol/a;->a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    .line 71
    sget-object v4, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-eq v3, v4, :cond_3e

    .line 72
    new-instance v4, Lcom/alipay/sdk/protocol/b;

    aget-object v5, v0, v1

    invoke-direct {v4, v5, v3}, Lcom/alipay/sdk/protocol/b;-><init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V

    .line 76
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/alipay/sdk/protocol/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alipay/sdk/protocol/b;->b:[Ljava/lang/String;

    .line 77
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_41
    move-object v0, v2

    .line 79
    goto :goto_8
.end method

.method private static a(Lcom/alipay/sdk/protocol/b;)V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 45
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->b:[Ljava/lang/String;

    .line 46
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    .line 59
    :cond_8
    :goto_8
    return-void

    .line 49
    :cond_9
    const-string v1, "tid"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v2

    .line 52
    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 55
    aget-object v3, v0, v4

    iput-object v3, v2, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    .line 56
    aget-object v0, v0, v5

    iput-object v0, v2, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 57
    new-instance v3, Lcom/alipay/sdk/tid/a;

    invoke-direct {v3, v1}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    :try_start_3b
    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_52} :catch_56
    .catchall {:try_start_3b .. :try_end_52} :catchall_5b

    invoke-virtual {v3}, Lcom/alipay/sdk/tid/a;->close()V

    goto :goto_8

    :catch_56
    move-exception v0

    invoke-virtual {v3}, Lcom/alipay/sdk/tid/a;->close()V

    goto :goto_8

    :catchall_5b
    move-exception v0

    invoke-virtual {v3}, Lcom/alipay/sdk/tid/a;->close()V

    throw v0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 86
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 87
    if-eq v0, v4, :cond_19

    if-eq v3, v4, :cond_19

    if-gt v3, v0, :cond_1b

    .line 88
    :cond_19
    const/4 v0, 0x0

    .line 100
    :goto_1a
    return-object v0

    .line 91
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_51

    move v0, v1

    .line 94
    :goto_2a
    array-length v4, v3

    if-ge v0, v4, :cond_51

    .line 95
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 96
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 100
    :cond_51
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1a
.end method

.method private b()Lcom/alipay/sdk/protocol/a;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 106
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_d
    return-object v0
.end method

.method private c()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->b:[Ljava/lang/String;

    return-object v0
.end method
