.class final Lcom/baidu/bdgame/sdk/obf/ew$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ew;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ew;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ew;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ew$1;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$1;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->a(Lcom/baidu/bdgame/sdk/obf/ew;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$1;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->b(Lcom/baidu/bdgame/sdk/obf/ew;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$1;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->c(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 86
    return-void
.end method