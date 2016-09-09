.class public Lmobisocial/omlib/exception/NetworkException;
.super Lmobisocial/longdan/exception/LongdanNetworkException;
.source "NetworkException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "base"    # Ljava/lang/Exception;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "base"    # Ljava/lang/Exception;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 18
    return-void
.end method
