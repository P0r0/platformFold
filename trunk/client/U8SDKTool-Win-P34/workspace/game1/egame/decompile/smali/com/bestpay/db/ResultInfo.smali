.class public Lcom/bestpay/db/ResultInfo;
.super Ljava/lang/Object;
.source "ResultInfo.java"


# instance fields
.field private result:Ljava/lang/String;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bestpay/db/ResultInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/bestpay/db/ResultInfo;->resultCode:I

    return v0
.end method

.method public setResult(Ljava/lang/String;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bestpay/db/ResultInfo;->result:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setResultCode(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/bestpay/db/ResultInfo;->resultCode:I

    .line 24
    return-void
.end method
