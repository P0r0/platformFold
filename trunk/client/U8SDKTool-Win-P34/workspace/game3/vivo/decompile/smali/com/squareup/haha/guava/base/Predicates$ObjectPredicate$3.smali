.class final enum Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$3;
.super Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 295
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    const-string v0, "Predicates.isNull()"

    return-object v0
.end method
