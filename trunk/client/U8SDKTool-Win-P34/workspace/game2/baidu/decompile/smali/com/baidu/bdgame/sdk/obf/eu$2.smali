.class final Lcom/baidu/bdgame/sdk/obf/eu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eu;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eu;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eu;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eu$2;->a:Lcom/baidu/bdgame/sdk/obf/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eu$2;->a:Lcom/baidu/bdgame/sdk/obf/eu;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eu;->a(Lcom/baidu/bdgame/sdk/obf/eu;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eu$2;->a:Lcom/baidu/bdgame/sdk/obf/eu;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eu;->e(Lcom/baidu/bdgame/sdk/obf/eu;)V

    .line 120
    return-void
.end method
