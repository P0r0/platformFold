.class Lcom/squareup/leakcanary/AndroidWatchExecutor$1;
.super Ljava/lang/Object;
.source "AndroidWatchExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidWatchExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

.field private final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;->this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;->val$command:Ljava/lang/Runnable;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;->this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;->val$command:Ljava/lang/Runnable;

    # invokes: Lcom/squareup/leakcanary/AndroidWatchExecutor;->executeDelayedAfterIdleUnsafe(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->access$0(Lcom/squareup/leakcanary/AndroidWatchExecutor;Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
