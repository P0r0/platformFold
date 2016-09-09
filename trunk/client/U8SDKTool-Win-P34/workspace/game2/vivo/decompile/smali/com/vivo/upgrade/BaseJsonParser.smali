.class abstract Lcom/vivo/upgrade/BaseJsonParser;
.super Lcom/vivo/upgrade/ParserFields;
.source "BaseJsonParser.java"


# instance fields
.field public mDbVersion:I

.field public mLoadComplete:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/vivo/upgrade/ParserFields;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/upgrade/BaseJsonParser;->mLoadComplete:Z

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/upgrade/BaseJsonParser;->mDbVersion:I

    .line 3
    return-void
.end method


# virtual methods
.method public getDbVersion()I
    .registers 2

    .prologue
    .line 13
    iget v0, p0, Lcom/vivo/upgrade/BaseJsonParser;->mDbVersion:I

    return v0
.end method

.method public getLoadComplete()Z
    .registers 2

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/vivo/upgrade/BaseJsonParser;->mLoadComplete:Z

    return v0
.end method
