.class Lcom/duoku/platform/ui/util/DKDialogUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Ljava/util/List;ILcom/duoku/platform/DkExitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/util/DKDialogUtil;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->c:Landroid/content/Context;

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1274
    sget-object v0, Lcom/duoku/platform/util/Constants;->hotGameUrl:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 1276
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->c:Landroid/content/Context;

    const-class v2, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1277
    const-string v1, "function_code"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    sget-object v1, Lcom/duoku/platform/util/Constants;->hotGameUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1280
    const-string v1, "dk_operate_url"

    sget-object v2, Lcom/duoku/platform/util/Constants;->hotGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    :cond_28
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 1284
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "66"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1285
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$5;->c:Landroid/content/Context;

    const-string v2, "bd_exit_hot"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1289
    :cond_4a
    return-void
.end method
