.class Lcom/baidu/bdgame/sdk/obf/cv$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cv;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/bdgame/sdk/obf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ko;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cv;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->a:Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->c:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->b:Landroid/content/Context;

    .line 359
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->d:Lcom/baidu/bdgame/sdk/obf/o;

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cv$b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cv$b;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 379
    const/4 v0, 0x1

    .line 390
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cv$b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kt;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/kt;

    move-result-object v0

    .line 395
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 396
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cv$b$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/cv$b$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cv$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->b(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 414
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cv$b;)Lcom/baidu/bdgame/sdk/obf/o;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->d:Lcom/baidu/bdgame/sdk/obf/o;

    return-object v0
.end method

.method private c()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/cv;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 418
    if-nez v1, :cond_13

    .line 419
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->a:Lcom/baidu/bdgame/sdk/obf/cv;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->b:Landroid/content/Context;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    :goto_12
    return v0

    .line 423
    :cond_13
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->d:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v2, :cond_23

    .line 424
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->d:Lcom/baidu/bdgame/sdk/obf/o;

    const-string v3, ""

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ko;

    invoke-direct {v4, v1}, Lcom/baidu/bdgame/sdk/obf/ko;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 426
    :cond_23
    const/4 v0, 0x1

    goto :goto_12
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->a:Lcom/baidu/bdgame/sdk/obf/cv;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Landroid/content/Context;)I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$b;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 369
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cv$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 375
    :goto_1a
    return-void

    .line 374
    :cond_1b
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cv$b;->b()V

    goto :goto_1a
.end method
