.class public final Lcom/alipay/sdk/app/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/sdk/app/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    const-string v1, "service"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "partner"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "extern_token"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "goods_type"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "sign_type"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "_input_charset"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "self_key"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "sign"

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/alipay/sdk/app/l;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/app/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/sdk/app/l;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/app/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/sdk/app/l;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/sdk/app/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/sdk/app/l;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/sdk/app/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/sdk/app/l;->e:Ljava/lang/String;

    .line 58
    return-void
.end method
