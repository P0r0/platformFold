.class Lcom/bestpay/plugin/Plugin$10;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/plugin/Plugin;

.field private final synthetic val$callback:Lcom/bestpay/plugin/CallBack;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CallBack;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$10;->this$0:Lcom/bestpay/plugin/Plugin;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$10;->val$callback:Lcom/bestpay/plugin/CallBack;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 602
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 604
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 605
    sget-object v1, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    const-string v2, "SD\u5361\u4e0d\u5b58\u5728"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 617
    :goto_1b
    return-void

    .line 611
    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 612
    iget-object v1, p0, Lcom/bestpay/plugin/Plugin$10;->val$callback:Lcom/bestpay/plugin/CallBack;

    invoke-interface {v1}, Lcom/bestpay/plugin/CallBack;->execute()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_1b

    .line 613
    :catch_25
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1b
.end method
