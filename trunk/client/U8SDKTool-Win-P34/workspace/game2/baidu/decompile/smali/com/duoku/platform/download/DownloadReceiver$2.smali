.class Lcom/duoku/platform/download/DownloadReceiver$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/DownloadReceiver;->startIfNecessary(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadReceiver;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadReceiver$2;->a:Lcom/duoku/platform/download/DownloadReceiver;

    iput-object p2, p0, Lcom/duoku/platform/download/DownloadReceiver$2;->b:Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver$2;->a:Lcom/duoku/platform/download/DownloadReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadReceiver$2;->b:Landroid/content/Context;

    # invokes: Lcom/duoku/platform/download/DownloadReceiver;->checkAppRunning(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/duoku/platform/download/DownloadReceiver;->access$0(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)Z

    move-result v0

    .line 162
    if-eqz v0, :cond_11

    .line 164
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver$2;->a:Lcom/duoku/platform/download/DownloadReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadReceiver$2;->b:Landroid/content/Context;

    # invokes: Lcom/duoku/platform/download/DownloadReceiver;->startService(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/DownloadReceiver;->access$1(Lcom/duoku/platform/download/DownloadReceiver;Landroid/content/Context;)V

    .line 166
    :cond_11
    return-void
.end method
