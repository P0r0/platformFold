.class Lcom/duoku/platform/download/utils/DownloadTasks$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/DownloadTasks;->submitPausedTasks()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/DownloadTasks;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/DownloadTasks;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/DownloadTasks$3;->a:Lcom/duoku/platform/download/utils/DownloadTasks;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 422
    invoke-static {}, Lcom/duoku/platform/download/work/FutureTaskManager;->getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->filterPausedIfNecessary()V

    .line 423
    return-void
.end method
