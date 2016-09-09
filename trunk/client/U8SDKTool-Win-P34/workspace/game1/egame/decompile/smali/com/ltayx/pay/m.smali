.class public Lcom/ltayx/pay/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ltayx/pay/n;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/ltayx/pay/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ltayx/pay/o;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/ltayx/pay/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method
