.class final Lcom/baidu/bdgame/sdk/obf/fq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fq;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fq;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fq$2;->a:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq$2;->a:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/fq;Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq$2;->a:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fq;->b(Lcom/baidu/bdgame/sdk/obf/fq;)Lcom/baidu/bdgame/sdk/obf/fr;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fq$2;->a:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fq;->b(Lcom/baidu/bdgame/sdk/obf/fq;)Lcom/baidu/bdgame/sdk/obf/fr;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fq$2;->a:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/fq;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fr;->d(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fr;->a(J)V

    .line 88
    return-void
.end method