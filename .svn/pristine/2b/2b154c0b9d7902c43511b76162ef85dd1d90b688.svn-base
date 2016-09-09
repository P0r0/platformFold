.class public Lmobisocial/longdan/exception/LongdanClientException;
.super Lmobisocial/longdan/exception/LongdanException;
.source "LongdanClientException.java"


# instance fields
.field private final mPermanent:Z


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/Exception;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/longdan/exception/LongdanClientException;->mPermanent:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Z)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "permanent"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/Exception;)V

    .line 26
    iput-boolean p2, p0, Lmobisocial/longdan/exception/LongdanClientException;->mPermanent:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/longdan/exception/LongdanClientException;->mPermanent:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/longdan/exception/LongdanClientException;->mPermanent:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "permanent"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;)V

    .line 31
    iput-boolean p2, p0, Lmobisocial/longdan/exception/LongdanClientException;->mPermanent:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isNetworkError()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanentError()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lmobisocial/longdan/exception/LongdanClientException;->mPermanent:Z

    return v0
.end method
