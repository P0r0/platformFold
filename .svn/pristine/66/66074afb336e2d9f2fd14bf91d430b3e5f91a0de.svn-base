.class public Lcom/gionee/gsp/data/GnCallbackResult;
.super Ljava/lang/Object;
.source "GnCallbackResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public resultCode:I

.field public resultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    .local p0, "this":Lcom/gionee/gsp/data/GnCallbackResult;, "Lcom/gionee/gsp/data/GnCallbackResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget v0, Lcom/gionee/gsp/result/GnResultCode;->UNKNOWN_ERROR:I

    iput v0, p0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    .line 16
    return-void
.end method


# virtual methods
.method public addCallbackResult(ILjava/lang/Object;)V
    .registers 5
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/gionee/gsp/data/GnCallbackResult;, "Lcom/gionee/gsp/data/GnCallbackResult<TT;>;"
    .local p2, "resultValue":Ljava/lang/Object;, "TT;"
    iput p1, p0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    .line 31
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";\u81ea\u5b9a\u4e49\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    .line 36
    :goto_23
    return-void

    .line 34
    :cond_24
    iput-object p2, p0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    .local p0, "this":Lcom/gionee/gsp/data/GnCallbackResult;, "Lcom/gionee/gsp/data/GnCallbackResult<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
