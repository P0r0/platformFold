.class final Lcom/alipay/sdk/app/PayTask$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/PayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .registers 3

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/PayTask;B)V
    .registers 3

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    .line 224
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    .line 232
    return-void
.end method