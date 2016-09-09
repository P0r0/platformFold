.class final Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;
.super Ljava/lang/Object;
.source "TLongObjectHashMap.java"

# interfaces
.implements Lcom/squareup/haha/trove/TLongObjectProcedure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/TLongObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqProcedure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/trove/TLongObjectProcedure",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final _otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/trove/TLongObjectHashMap",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/TLongObjectHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/TLongObjectHashMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;, "Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure<TV;>;"
    .local p1, "otherMap":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;

    .line 440
    return-void
.end method


# virtual methods
.method public final execute(JLjava/lang/Object;)Z
    .registers 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;, "Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 444
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v3, p1, p2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->index(J)I

    move-result v0

    .line 445
    .local v0, "index":I
    if-ltz v0, :cond_20

    iget-object v3, p0, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v3, p1, p2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    .line 1452
    if-eq p3, v3, :cond_1a

    if-eqz p3, :cond_1e

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1a
    move v3, v1

    .line 445
    :goto_1b
    if-eqz v3, :cond_20

    :goto_1d
    return v1

    :cond_1e
    move v3, v2

    .line 1452
    goto :goto_1b

    :cond_20
    move v1, v2

    .line 445
    goto :goto_1d
.end method
