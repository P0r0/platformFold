.class Lcom/duoku/platform/ui/b$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/duoku/platform/ui/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 3

    .prologue
    .line 709
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 711
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b$d;->a:Ljava/lang/ref/WeakReference;

    .line 712
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 717
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_35

    .line 721
    :try_start_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 723
    iget-object v1, p0, Lcom/duoku/platform/ui/b$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 725
    iget-object v1, p0, Lcom/duoku/platform/ui/b$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/ui/b;

    invoke-static {v1, v0}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;Ljava/lang/String;)V

    .line 728
    :cond_1d
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 729
    const-string v1, "MyLogcatObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adapter \u5237\u65b0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    .line 738
    :cond_35
    :goto_35
    return-void

    .line 731
    :catch_36
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method
