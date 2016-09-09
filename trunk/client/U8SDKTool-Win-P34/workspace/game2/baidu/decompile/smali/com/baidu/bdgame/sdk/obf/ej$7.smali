.class final Lcom/baidu/bdgame/sdk/obf/ej$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/hp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ms;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 3

    .prologue
    .line 150
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej$7;->b:Lcom/baidu/bdgame/sdk/obf/ej;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ej$7;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$7;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->dismiss()V

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$7;->b:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Lcom/baidu/bdgame/sdk/obf/ej;)V

    .line 156
    return-void
.end method
