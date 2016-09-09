.class Lcom/duoku/platform/download/DownloadReceiver$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadReceiver$1;->a:Lcom/duoku/platform/download/DownloadReceiver;

    iput-object p2, p0, Lcom/duoku/platform/download/DownloadReceiver$1;->b:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadReceiver$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->resumeLastPausedDownload(Landroid/content/Context;)V

    .line 108
    return-void
.end method
