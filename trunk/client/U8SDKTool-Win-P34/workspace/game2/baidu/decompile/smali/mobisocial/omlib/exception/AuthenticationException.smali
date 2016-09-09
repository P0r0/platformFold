.class public Lmobisocial/omlib/exception/AuthenticationException;
.super Lmobisocial/longdan/exception/LongdanClientException;
.source "AuthenticationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "base"    # Ljava/lang/Exception;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/Exception;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "base"    # Ljava/lang/Exception;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 18
    return-void
.end method


# virtual methods
.method public isBadOAuthTokenException()Z
    .registers 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lmobisocial/omlib/exception/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lmobisocial/omlib/exception/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BadOAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
