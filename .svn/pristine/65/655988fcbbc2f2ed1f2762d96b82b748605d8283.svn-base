.class public Lcom/duoku/platform/download/utils/Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mFirst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final mSecond:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/duoku/platform/download/utils/Pair;->mFirst:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lcom/duoku/platform/download/utils/Pair;->mSecond:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/duoku/platform/download/utils/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/duoku/platform/download/utils/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/duoku/platform/download/utils/Pair;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-ne p1, p0, :cond_5

    .line 82
    :cond_4
    :goto_4
    return v0

    .line 68
    :cond_5
    instance-of v2, p1, Lcom/duoku/platform/download/utils/Pair;

    if-nez v2, :cond_b

    move v0, v1

    .line 70
    goto :goto_4

    .line 76
    :cond_b
    :try_start_b
    check-cast p1, Lcom/duoku/platform/download/utils/Pair;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_23

    .line 82
    iget-object v2, p0, Lcom/duoku/platform/download/utils/Pair;->mFirst:Ljava/lang/Object;

    iget-object v3, p1, Lcom/duoku/platform/download/utils/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/duoku/platform/download/utils/Pair;->mSecond:Ljava/lang/Object;

    iget-object v3, p1, Lcom/duoku/platform/download/utils/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    .line 78
    :catch_23
    move-exception v0

    move v0, v1

    .line 80
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 92
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/download/utils/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/duoku/platform/download/utils/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    return v0
.end method
