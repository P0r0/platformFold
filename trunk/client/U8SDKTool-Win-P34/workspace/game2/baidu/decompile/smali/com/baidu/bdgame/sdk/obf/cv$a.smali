.class Lcom/baidu/bdgame/sdk/obf/cv$a;
.super Lcom/baidu/bdgame/sdk/obf/cc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cv;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cv;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->a:Lcom/baidu/bdgame/sdk/obf/cv;

    .line 289
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/cc;-><init>(Landroid/content/Context;)V

    .line 290
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->b:Ljava/lang/String;

    .line 291
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    .line 292
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ko;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    if-nez v0, :cond_6

    .line 348
    :goto_5
    return-void

    .line 337
    :cond_6
    if-nez p3, :cond_12

    .line 338
    if-nez p1, :cond_c

    const/high16 p1, -0x80000000

    .line 339
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-interface {v0, p1, p2, v4}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 341
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ko;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 343
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": format error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 345
    :cond_3a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cv$a;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ko;)V
    .registers 4

    .prologue
    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cv$a;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ko;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 297
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 315
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/la;->c()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 317
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_1b

    .line 318
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    const/4 v1, -0x2

    const-string v2, "BasicConfigVer : format error"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 331
    :cond_1b
    :goto_1b
    return-void

    .line 323
    :cond_1c
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->a:Lcom/baidu/bdgame/sdk/obf/cv;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cv$a$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/cv$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cv$a;)V

    invoke-static {v1, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cv;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)V

    goto :goto_1b
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 302
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_a

    .line 303
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$a;->c:Lcom/baidu/bdgame/sdk/obf/o;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_a
    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 310
    return-void
.end method
