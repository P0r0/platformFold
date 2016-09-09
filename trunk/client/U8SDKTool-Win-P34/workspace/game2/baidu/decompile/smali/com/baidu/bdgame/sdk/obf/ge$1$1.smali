.class final Lcom/baidu/bdgame/sdk/obf/ge$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ge$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ms;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ge$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ge$1;Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 3

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ge$1$1;->b:Lcom/baidu/bdgame/sdk/obf/ge$1;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ge$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1$1;->b:Lcom/baidu/bdgame/sdk/obf/ge$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ge$1;->b:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->b(Lcom/baidu/bdgame/sdk/obf/ge;)V

    .line 122
    return-void
.end method
