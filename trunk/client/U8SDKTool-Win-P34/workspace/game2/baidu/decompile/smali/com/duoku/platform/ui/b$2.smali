.class Lcom/duoku/platform/ui/b$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$2;->a:Lcom/duoku/platform/ui/b;

    .line 191
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 196
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 197
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 198
    iget-object v1, p0, Lcom/duoku/platform/ui/b$2;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v1, Lcom/duoku/platform/ui/b;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    return-void
.end method
