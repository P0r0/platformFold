.class Lcom/duoku/platform/download/SilentInstallService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/SilentInstallService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/SilentInstallService;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/SilentInstallService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/SilentInstallService$1;->a:Lcom/duoku/platform/download/SilentInstallService;

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService$1;->a:Lcom/duoku/platform/download/SilentInstallService;

    # getter for: Lcom/duoku/platform/download/SilentInstallService;->mCount:I
    invoke-static {v0}, Lcom/duoku/platform/download/SilentInstallService;->access$0(Lcom/duoku/platform/download/SilentInstallService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/download/SilentInstallService;->access$1(Lcom/duoku/platform/download/SilentInstallService;I)V

    .line 124
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService$1;->a:Lcom/duoku/platform/download/SilentInstallService;

    # getter for: Lcom/duoku/platform/download/SilentInstallService;->mCount:I
    invoke-static {v0}, Lcom/duoku/platform/download/SilentInstallService;->access$0(Lcom/duoku/platform/download/SilentInstallService;)I

    move-result v0

    if-gtz v0, :cond_18

    .line 126
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService$1;->a:Lcom/duoku/platform/download/SilentInstallService;

    invoke-virtual {v0}, Lcom/duoku/platform/download/SilentInstallService;->stopSelf()V

    .line 130
    :cond_18
    return-void
.end method
