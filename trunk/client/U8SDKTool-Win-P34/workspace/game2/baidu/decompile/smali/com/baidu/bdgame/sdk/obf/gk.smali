.class public Lcom/baidu/bdgame/sdk/obf/gk;
.super Lcom/baidu/bdgame/sdk/obf/fa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/gk$b;,
        Lcom/baidu/bdgame/sdk/obf/gk$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "YiBaoCashCard"


# instance fields
.field private l:Lcom/baidu/bdgame/sdk/obf/gr;

.field private m:Lcom/baidu/bdgame/sdk/obf/gp;

.field private n:Lcom/baidu/bdgame/sdk/obf/gn;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gk$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gk$b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/baidu/bdgame/sdk/obf/gl;

.field private r:Lcom/baidu/bdgame/sdk/obf/gl;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/baidu/bdgame/sdk/obf/jd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const-string v0, "YiBaoCashCard"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fa;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private a(IJ)I
    .registers 10

    .prologue
    const/16 v0, 0x3c

    .line 444
    .line 445
    if-nez p1, :cond_5

    .line 455
    :cond_4
    :goto_4
    return v0

    .line 448
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 449
    rsub-int/lit8 v2, p1, 0x3c

    if-gt v1, v2, :cond_4

    .line 452
    add-int v0, p1, v1

    goto :goto_4
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->t:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;IJ)V
    .registers 6

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/gk;->b(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk;->b(Lcom/baidu/bdgame/sdk/obf/jg;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;->a(Ljava/util/List;)V

    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gn;->a(Ljava/util/List;)V

    .line 341
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/gr;->k()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x32

    invoke-static {v5}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_53

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bdgame/sdk/obf/gk$a;

    .line 257
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gk$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 258
    iget v5, v4, Lcom/baidu/bdgame/sdk/obf/gk$a;->g:I

    iget-wide v6, v4, Lcom/baidu/bdgame/sdk/obf/gk$a;->h:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/baidu/bdgame/sdk/obf/gk;->a(IJ)I

    move-result v5

    .line 259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/bdgame/sdk/obf/gk;->q:Lcom/baidu/bdgame/sdk/obf/gl;

    iget-object v7, v4, Lcom/baidu/bdgame/sdk/obf/gk$a;->e:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-object v4, v4, Lcom/baidu/bdgame/sdk/obf/gk$a;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v5}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;I)V

    .line 313
    :goto_52
    return-void

    .line 265
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/gn;->N()V

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/bdgame/sdk/obf/gk;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/bdgame/sdk/obf/gk;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bdgame/sdk/obf/gk;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/gk$4;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/baidu/bdgame/sdk/obf/gk$4;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v10

    move-object v6, v15

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v15, v4

    invoke-static/range {v5 .. v15}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v4

    .line 306
    if-nez v4, :cond_9e

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/gn;->O()V

    goto :goto_52

    .line 310
    :cond_9e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_52
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jz;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/jg;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;IJ)V
    .registers 10

    .prologue
    .line 325
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/gk$a;

    .line 327
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->e:Lcom/baidu/bdgame/sdk/obf/jd;

    if-ne v2, p1, :cond_e

    .line 328
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->f:Ljava/lang/String;

    .line 329
    iput p3, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->g:I

    .line 330
    iput-wide p4, v0, Lcom/baidu/bdgame/sdk/obf/gk$a;->h:J

    .line 335
    :cond_24
    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 5

    .prologue
    .line 350
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->N()V

    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/gk$5;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk$5;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 367
    if-nez v0, :cond_26

    .line 368
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->O()V

    .line 369
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 371
    :cond_26
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->m()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk;->d(Lcom/baidu/bdgame/sdk/obf/jg;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->N()V

    .line 421
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/gk$8;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk$8;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 437
    if-nez v0, :cond_26

    .line 438
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->O()V

    .line 439
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 441
    :cond_26
    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk;->c(Lcom/baidu/bdgame/sdk/obf/jg;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 10

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gr;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 465
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 466
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/gk$b;

    .line 467
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gk$b;->a(Lcom/baidu/bdgame/sdk/obf/jg;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 468
    iget v1, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->d:I

    iget-wide v2, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->e:J

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gk;->a(IJ)I

    move-result v1

    .line 469
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gk;->r:Lcom/baidu/bdgame/sdk/obf/gl;

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->b:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;I)V

    .line 523
    :goto_40
    return-void

    .line 476
    :cond_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->N()V

    .line 477
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gk;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gk;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/gk;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    new-instance v7, Lcom/baidu/bdgame/sdk/obf/gk$9;

    invoke-direct {v7, p0, p1}, Lcom/baidu/bdgame/sdk/obf/gk$9;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;Lcom/baidu/bdgame/sdk/obf/jg;)V

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 515
    if-nez v0, :cond_71

    .line 516
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->O()V

    .line 517
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    goto :goto_40

    .line 520
    :cond_71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xdd

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_40
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->n()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gp;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->p()V

    return-void
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gn;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    return-object v0
.end method

.method private i()V
    .registers 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->e()V

    .line 76
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->m()V

    .line 77
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->k()V

    .line 84
    return-void
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->o()V

    return-void
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/gk;)Ljava/util/List;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->o:Ljava/util/List;

    return-object v0
.end method

.method private k()V
    .registers 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Lcom/baidu/bdgame/sdk/obf/et;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ec;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Ljava/util/List;JJ)V

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gl;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->q:Lcom/baidu/bdgame/sdk/obf/gl;

    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->p:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$10;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;->a(Lcom/baidu/bdgame/sdk/obf/gp$a;)V

    .line 129
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-direct {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/gl;-><init>(Lcom/baidu/bdgame/sdk/obf/jq;Lcom/baidu/bdgame/sdk/obf/gk;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->r:Lcom/baidu/bdgame/sdk/obf/gl;

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->r:Lcom/baidu/bdgame/sdk/obf/gl;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$11;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/hi;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->r:Lcom/baidu/bdgame/sdk/obf/gl;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/gl;)V

    .line 145
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gn;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ec;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/hc;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/gn;->a(Lcom/baidu/bdgame/sdk/obf/hc;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->o:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    invoke-direct {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/gl;-><init>(Lcom/baidu/bdgame/sdk/obf/jq;Lcom/baidu/bdgame/sdk/obf/gk;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->q:Lcom/baidu/bdgame/sdk/obf/gl;

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->q:Lcom/baidu/bdgame/sdk/obf/gl;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/gl;)V

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->q:Lcom/baidu/bdgame/sdk/obf/gl;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$12;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/hi;)V

    .line 161
    return-void
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->t:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method private m()V
    .registers 4

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->l()V

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_yibao_cash_card_query_card_info"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;->f(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/gk$13;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/gk$13;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cb;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 205
    if-nez v0, :cond_3e

    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->O()V

    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f(Landroid/content/Context;)V

    .line 209
    :cond_3e
    return-void
.end method

.method static synthetic n(Lcom/baidu/bdgame/sdk/obf/gk;)Ljava/util/List;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->p:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .registers 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gn;->a(Lcom/baidu/bdgame/sdk/obf/hd;)V

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$3;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gn;->a(Lcom/baidu/bdgame/sdk/obf/hf;)V

    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gn;->a(Ljava/util/List;)V

    .line 234
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 235
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/gk;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gn;->a(J)V

    .line 239
    :goto_28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gn;->b(J)V

    .line 240
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 241
    return-void

    .line 237
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gn;->a(J)V

    goto :goto_28
.end method

.method static synthetic o(Lcom/baidu/bdgame/sdk/obf/gk;)Lcom/baidu/bdgame/sdk/obf/gl;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->r:Lcom/baidu/bdgame/sdk/obf/gl;

    return-object v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->n:Lcom/baidu/bdgame/sdk/obf/gn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gn;->b(Z)V

    .line 246
    return-void
.end method

.method private p()V
    .registers 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$6;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;->a(Lcom/baidu/bdgame/sdk/obf/he;)V

    .line 390
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gk$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gk$7;-><init>(Lcom/baidu/bdgame/sdk/obf/gk;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;->a(Lcom/baidu/bdgame/sdk/obf/hf;)V

    .line 398
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gp;->a(Ljava/util/List;)V

    .line 404
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 405
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/gk;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gp;->a(J)V

    .line 409
    :goto_28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gp;->b(J)V

    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 411
    return-void

    .line 407
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->m:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gp;->a(J)V

    goto :goto_28
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->l:Lcom/baidu/bdgame/sdk/obf/gr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gr;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 65
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->i()V

    .line 69
    :goto_23
    return-void

    .line 67
    :cond_24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gk;->j()V

    goto :goto_23
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 526
    if-nez p1, :cond_e

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    :goto_4
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->t:Lcom/baidu/bdgame/sdk/obf/jd;

    if-nez v1, :cond_11

    const-string v1, ""

    :goto_a
    invoke-virtual {p0, v0, p2, v1}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void

    .line 526
    :cond_e
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gk;->t:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gl;)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->d:Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/ec;)V

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->h:Lcom/baidu/bdgame/sdk/obf/jw;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->g:Lcom/baidu/bdgame/sdk/obf/jv;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->f:Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 170
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;IJ)V
    .registers 10

    .prologue
    .line 541
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 542
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gk;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/gk$b;

    .line 543
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->b:Lcom/baidu/bdgame/sdk/obf/jd;

    if-ne v2, p1, :cond_e

    .line 544
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->c:Ljava/lang/String;

    .line 545
    iput p3, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->d:I

    .line 546
    iput-wide p4, v0, Lcom/baidu/bdgame/sdk/obf/gk$b;->e:J

    .line 551
    :cond_24
    return-void
.end method
