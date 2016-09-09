.class Lcom/duoku/platform/ui/util/DKDialogUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;->c(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/util/DKDialogUtil;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;->a:Lcom/duoku/platform/ui/util/DKDialogUtil;

    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;->c:Ljava/lang/String;

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1221
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "72"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1222
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;->b:Landroid/content/Context;

    const-string v2, "cp_login_ad_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1225
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1226
    return-void
.end method
