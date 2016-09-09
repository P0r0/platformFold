.class final Lcom/baidu/bdgame/sdk/obf/dj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dj;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/dj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dj;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dj$1;->b:Lcom/baidu/bdgame/sdk/obf/dj;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dj$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dj$1;->b:Lcom/baidu/bdgame/sdk/obf/dj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dj;->a(Lcom/baidu/bdgame/sdk/obf/dj;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dj$1;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dj$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 127
    return-void
.end method
