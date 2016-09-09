.class public Lmobisocial/longdan/exception/LongdanApiException;
.super Lmobisocial/longdan/exception/LongdanException;
.source "LongdanApiException.java"


# instance fields
.field private final mDetail:Ljava/lang/String;

.field private final mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lmobisocial/longdan/exception/LongdanApiException;->mReason:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lmobisocial/longdan/exception/LongdanApiException;->mDetail:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/longdan/exception/LongdanApiException;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lmobisocial/longdan/exception/LongdanApiException;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkError()Z
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanentError()Z
    .registers 3

    .prologue
    .line 24
    const-string v0, "UnknownError"

    iget-object v1, p0, Lmobisocial/longdan/exception/LongdanApiException;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
