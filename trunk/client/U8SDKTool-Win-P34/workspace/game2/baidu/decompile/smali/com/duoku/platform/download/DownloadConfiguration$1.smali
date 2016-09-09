.class Lcom/duoku/platform/download/DownloadConfiguration$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/DownloadConfiguration;->setMobileNetworkAllowed(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadConfiguration;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/DownloadConfiguration;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration$1;->a:Lcom/duoku/platform/download/DownloadConfiguration;

    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$1;->a:Lcom/duoku/platform/download/DownloadConfiguration;

    # getter for: Lcom/duoku/platform/download/DownloadConfiguration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->access$0(Lcom/duoku/platform/download/DownloadConfiguration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->resetAllowedNetworkType(Landroid/content/Context;)V

    .line 120
    return-void
.end method
