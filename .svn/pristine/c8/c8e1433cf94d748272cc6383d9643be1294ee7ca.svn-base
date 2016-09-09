.class public Lcom/duoku/platform/download/work/DBTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/work/DBTaskManager$TaskCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static submitTask(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method
