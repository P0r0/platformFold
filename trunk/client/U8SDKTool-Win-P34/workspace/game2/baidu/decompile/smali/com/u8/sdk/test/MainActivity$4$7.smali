.class Lcom/u8/sdk/test/MainActivity$4$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity$4;->onPayResult(Lcom/u8/sdk/PayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/test/MainActivity$4;

.field private final synthetic val$result:Lcom/u8/sdk/PayResult;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity$4;Lcom/u8/sdk/PayResult;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$4$7;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    iput-object p2, p0, Lcom/u8/sdk/test/MainActivity$4$7;->val$result:Lcom/u8/sdk/PayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$4$7;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v0}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u6210\u529f,\u5546\u54c1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$4$7;->val$result:Lcom/u8/sdk/PayResult;

    invoke-virtual {v2}, Lcom/u8/sdk/PayResult;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
