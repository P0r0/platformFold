.class final Lcom/baidu/bdgame/sdk/obf/jq$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jq;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jq;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jq$7;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jq$7;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->j()V

    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jq$7;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/jq;)Lcom/baidu/bdgame/sdk/obf/jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jr;->dismiss()V

    .line 205
    return-void
.end method
