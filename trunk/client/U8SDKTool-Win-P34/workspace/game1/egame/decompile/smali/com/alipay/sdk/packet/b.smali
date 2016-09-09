.class public final Lcom/alipay/sdk/packet/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    :goto_9
    return-object v1

    .line 59
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_13

    :goto_11
    move-object v1, v0

    .line 62
    goto :goto_9

    :catch_13
    move-exception v0

    move-object v0, v1

    goto :goto_11
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nenvelop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/packet/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nbody:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
