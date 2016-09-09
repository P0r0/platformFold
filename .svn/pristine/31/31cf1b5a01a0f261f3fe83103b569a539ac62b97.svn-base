.class Lcom/duoku/platform/download/DownloadService$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/download/DownloadService;)V
    .registers 3

    .prologue
    .line 133
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadService$a;->a:Lcom/duoku/platform/download/DownloadService;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$a;->a:Lcom/duoku/platform/download/DownloadService;

    # invokes: Lcom/duoku/platform/download/DownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$0(Lcom/duoku/platform/download/DownloadService;)V

    .line 145
    return-void
.end method
