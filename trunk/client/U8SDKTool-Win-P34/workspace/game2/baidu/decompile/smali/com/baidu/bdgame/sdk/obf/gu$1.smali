.class final Lcom/baidu/bdgame/sdk/obf/gu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gu;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gu;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gu;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gu$1;->a:Lcom/baidu/bdgame/sdk/obf/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gu$1;->a:Lcom/baidu/bdgame/sdk/obf/gu;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Lcom/baidu/bdgame/sdk/obf/gu;Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gu$1;->a:Lcom/baidu/bdgame/sdk/obf/gu;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gu;->b(Lcom/baidu/bdgame/sdk/obf/gu;)Lcom/baidu/bdgame/sdk/obf/gv;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gu$1;->a:Lcom/baidu/bdgame/sdk/obf/gu;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Lcom/baidu/bdgame/sdk/obf/gu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gv;->b(I)V

    .line 120
    return-void
.end method
