.class final Lcom/baidu/bdgame/sdk/obf/dw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dw;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dw;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dw;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dw$1;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dw$1;->a:Lcom/baidu/bdgame/sdk/obf/dw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dw;->j()V

    .line 75
    return-void
.end method
