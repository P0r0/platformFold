.class public Landroid/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_6

    .end local p1    # "message":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void

    .line 32
    .restart local p1    # "message":Ljava/lang/String;
    :cond_6
    const-string p1, "The operation has been canceled."

    goto :goto_2
.end method
