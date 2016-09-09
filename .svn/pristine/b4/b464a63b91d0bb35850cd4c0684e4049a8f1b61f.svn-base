.class public Lmobisocial/longdan/exception/LongdanPermanentException;
.super Lmobisocial/longdan/exception/LongdanException;
.source "LongdanPermanentException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 12
    const-string v0, "Permanent Network Error"

    invoke-direct {p0, v0, p1}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lmobisocial/longdan/exception/LongdanException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 9
    return-void
.end method


# virtual methods
.method public isNetworkError()Z
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public isPermanentError()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
