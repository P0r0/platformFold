.class Lcom/u8/sdk/test/MainActivity$4$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity$4;->onSwitchAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/test/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$4$5;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$4$5;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v0}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v0

    const-string v1, "\u5207\u6362\u5e10\u53f7\u5e76\u767b\u5f55\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$4$5;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v0}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/u8/sdk/test/MainActivity;->btn_login:Landroid/widget/Button;

    const-string v1, "\u5207\u6362\u5e10\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
