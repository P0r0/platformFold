.class public Lmm/yp/purchasesdk/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lmm/yp/purchasesdk/a/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmm/yp/purchasesdk/a/c;->b:Ljava/util/HashMap;

    :cond_1a
    iget-object v0, p0, Lmm/yp/purchasesdk/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lmm/yp/purchasesdk/a/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmm/yp/purchasesdk/a/c;->a:Ljava/util/ArrayList;

    :cond_14
    iget-object v0, p0, Lmm/yp/purchasesdk/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method
