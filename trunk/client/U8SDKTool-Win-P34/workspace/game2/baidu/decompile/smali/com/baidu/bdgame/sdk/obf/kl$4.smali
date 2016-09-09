.class final Lcom/baidu/bdgame/sdk/obf/kl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kl;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kl;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kl$4;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kl$4;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kl;->d(Lcom/baidu/bdgame/sdk/obf/kl;)V

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kl$4;->a:Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kl;->h(Lcom/baidu/bdgame/sdk/obf/kl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 184
    return-void
.end method
