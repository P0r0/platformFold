.class Lcom/u8/sdk/test/MainActivity$4$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity$4;->onAuthResult(Lcom/u8/sdk/verify/UToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/test/MainActivity$4;

.field private final synthetic val$authResult:Lcom/u8/sdk/verify/UToken;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity$4;Lcom/u8/sdk/verify/UToken;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$4$3;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    iput-object p2, p0, Lcom/u8/sdk/test/MainActivity$4$3;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$4$3;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v2}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$4$3;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v2}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6Token\u6210\u529f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/u8/sdk/test/MainActivity$4$3;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v4}, Lcom/u8/sdk/verify/UToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$4$3;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v2}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v2

    const-string v3, "U8_LOGIN_GAME_URL"

    invoke-static {v2, v3}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "U8SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the login test url is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/u8/sdk/test/MainActivity$LoginGameTask;

    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$4$3;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v2}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/u8/sdk/test/MainActivity$LoginGameTask;-><init>(Lcom/u8/sdk/test/MainActivity;Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/u8/sdk/test/MainActivity$4$3;->this$1:Lcom/u8/sdk/test/MainActivity$4;

    # getter for: Lcom/u8/sdk/test/MainActivity$4;->this$0:Lcom/u8/sdk/test/MainActivity;
    invoke-static {v2}, Lcom/u8/sdk/test/MainActivity$4;->access$0(Lcom/u8/sdk/test/MainActivity$4;)Lcom/u8/sdk/test/MainActivity;

    move-result-object v2

    const-string v3, "\u83b7\u53d6Token\u5931\u8d25"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
