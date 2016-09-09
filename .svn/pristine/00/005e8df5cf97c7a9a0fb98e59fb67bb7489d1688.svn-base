.class public abstract Lmobisocial/longdan/exception/LongdanException;
.super Ljava/lang/Exception;
.source "LongdanException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "base"    # Ljava/lang/Exception;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "base"    # Ljava/lang/Exception;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method


# virtual methods
.method public isExtCertPathValidatorException()Z
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lmobisocial/longdan/exception/LongdanException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lmobisocial/longdan/exception/LongdanException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtCertPathValidatorException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public abstract isNetworkError()Z
.end method

.method public abstract isPermanentError()Z
.end method

.method public isUserError()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
