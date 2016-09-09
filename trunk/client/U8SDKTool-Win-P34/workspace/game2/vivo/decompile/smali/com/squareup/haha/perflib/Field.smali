.class public final Lcom/squareup/haha/perflib/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Lcom/squareup/haha/perflib/Type;


# direct methods
.method public constructor <init>(Lcom/squareup/haha/perflib/Type;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Lcom/squareup/haha/perflib/Type;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    .line 35
    iput-object p2, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_5

    .line 60
    :cond_4
    :goto_4
    return v1

    .line 54
    :cond_5
    instance-of v3, p1, Lcom/squareup/haha/perflib/Field;

    if-nez v3, :cond_b

    move v1, v2

    .line 55
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/squareup/haha/perflib/Field;

    .line 60
    .local v0, "field":Lcom/squareup/haha/perflib/Field;
    iget-object v3, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    iget-object v4, v0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/squareup/haha/perflib/Type;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1078
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 65
    return v0
.end method
