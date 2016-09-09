.class public Lcom/gionee/gsp/data/GnDependConfigData;
.super Ljava/lang/Object;
.source "GnDependConfigData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/gionee/gsp/data/GnDependConfigData;",
        ">;"
    }
.end annotation


# static fields
.field public static final JSON_DEPEND:Ljava/lang/String; = "depend"

.field public static final JSON_ID:Ljava/lang/String; = "id"


# instance fields
.field public depend:[I

.field public id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/gionee/gsp/data/GnDependConfigData;)I
    .registers 4
    .param p1, "another"    # Lcom/gionee/gsp/data/GnDependConfigData;

    .prologue
    .line 32
    iget v0, p0, Lcom/gionee/gsp/data/GnDependConfigData;->id:I

    iget v1, p1, Lcom/gionee/gsp/data/GnDependConfigData;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/gionee/gsp/data/GnDependConfigData;

    invoke-virtual {p0, p1}, Lcom/gionee/gsp/data/GnDependConfigData;->compareTo(Lcom/gionee/gsp/data/GnDependConfigData;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gionee/gsp/data/GnDependConfigData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "depend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gionee/gsp/data/GnDependConfigData;->depend:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
