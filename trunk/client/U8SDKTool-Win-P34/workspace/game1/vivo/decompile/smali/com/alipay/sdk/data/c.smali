.class public final Lcom/alipay/sdk/data/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "application/octet-stream;binary/octet-stream"


# instance fields
.field public b:[Lorg/apache/http/Header;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    .line 22
    iput-object v0, p0, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private a([Lorg/apache/http/Header;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private b()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    array-length v0, v0

    if-nez v0, :cond_b

    .line 47
    :cond_9
    const/4 v0, 0x0

    .line 56
    :cond_a
    return-object v0

    .line 50
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v2, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 52
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    .line 53
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method