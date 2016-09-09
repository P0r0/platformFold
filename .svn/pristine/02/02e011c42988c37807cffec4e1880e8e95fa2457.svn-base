.class Lcom/duoku/platform/download/utils/AppManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/AppManager;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/AppManager;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/AppManager$1;->a:Lcom/duoku/platform/download/utils/AppManager;

    .line 380
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 384
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 394
    :goto_5
    return-void

    .line 387
    :pswitch_6
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager$1;->a:Lcom/duoku/platform/download/utils/AppManager;

    # getter for: Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->access$0(Lcom/duoku/platform/download/utils/AppManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager$1;->a:Lcom/duoku/platform/download/utils/AppManager;

    # getter for: Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppManager;->access$0(Lcom/duoku/platform/download/utils/AppManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_sdcard_unmounted"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_5

    .line 391
    :pswitch_20
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager$1;->a:Lcom/duoku/platform/download/utils/AppManager;

    # getter for: Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->access$0(Lcom/duoku/platform/download/utils/AppManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager$1;->a:Lcom/duoku/platform/download/utils/AppManager;

    # getter for: Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppManager;->access$0(Lcom/duoku/platform/download/utils/AppManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_sdcard_lack_space"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_5

    .line 384
    :pswitch_data_3a
    .packed-switch 0x12c
        :pswitch_6
        :pswitch_20
    .end packed-switch
.end method
