.class Lcom/squareup/leakcanary/RefWatcher$1;
.super Ljava/lang/Object;
.source "RefWatcher.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/RefWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    return-void
.end method
