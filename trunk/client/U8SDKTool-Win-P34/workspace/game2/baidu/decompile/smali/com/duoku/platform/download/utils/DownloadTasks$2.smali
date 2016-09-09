.class Lcom/duoku/platform/download/utils/DownloadTasks$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/DownloadTasks;->filterInstalledTasks()Ljava/lang/Runnable;
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
    iput-object p1, p0, Lcom/duoku/platform/download/utils/DownloadTasks$2;->a:Lcom/duoku/platform/download/utils/DownloadTasks;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 405
    invoke-static {}, Lcom/duoku/platform/download/work/FutureTaskManager;->getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->submitIncompleteIfNecessary()V

    .line 406
    return-void
.end method
