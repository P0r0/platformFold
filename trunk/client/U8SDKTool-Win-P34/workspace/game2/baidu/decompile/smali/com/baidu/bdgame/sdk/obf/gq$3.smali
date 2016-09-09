.class final Lcom/baidu/bdgame/sdk/obf/gq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gq;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gq;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gq$3;->a:Lcom/baidu/bdgame/sdk/obf/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gq$3;->a:Lcom/baidu/bdgame/sdk/obf/gq;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gq;->a(Lcom/baidu/bdgame/sdk/obf/gq;Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gq$3;->a:Lcom/baidu/bdgame/sdk/obf/gq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gq;->c(Lcom/baidu/bdgame/sdk/obf/gq;)Lcom/baidu/bdgame/sdk/obf/gr;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gq$3;->a:Lcom/baidu/bdgame/sdk/obf/gq;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gq;->f(Lcom/baidu/bdgame/sdk/obf/gq;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;->d(I)V

    .line 138
    return-void
.end method
