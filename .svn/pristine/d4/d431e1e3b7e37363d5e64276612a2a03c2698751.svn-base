.class Lcom/duoku/platform/download/utils/BackAppListener$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/BackAppListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/BackAppListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/BackAppListener;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/BackAppListener$1;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    .line 903
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 907
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_b

    .line 909
    const-string v0, "\u7b7e\u540d\u4e0d\u540c\uff0c\u65e0\u6cd5\u81ea\u52a8\u5b89\u88c5!"

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 911
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/BackAppListener$1;->a:Lcom/duoku/platform/download/utils/BackAppListener;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/duoku/platform/download/utils/BackAppListener;->parseError(I)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->access$0(Lcom/duoku/platform/download/utils/BackAppListener;I)V

    .line 912
    return-void
.end method
