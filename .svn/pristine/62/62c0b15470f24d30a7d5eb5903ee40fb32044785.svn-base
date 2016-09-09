.class public Lcom/duoku/platform/download/mode/BaseAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/duoku/platform/download/mode/BaseAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private gameId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->sCollator:Ljava/text/Collator;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->sCollator:Ljava/text/Collator;

    .line 40
    iput-object p1, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->packageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->gameId:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/duoku/platform/download/mode/BaseAppInfo;)I
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->sCollator:Ljava/text/Collator;

    invoke-virtual {p0}, Lcom/duoku/platform/download/mode/BaseAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/BaseAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/duoku/platform/download/mode/BaseAppInfo;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/mode/BaseAppInfo;->compareTo(Lcom/duoku/platform/download/mode/BaseAppInfo;)I

    move-result v0

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->gameId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->packageName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseAppInfo [packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/BaseAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
