.class final Lcom/baidu/bdgame/sdk/obf/ej$6;
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

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/hp;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;Lcom/baidu/bdgame/sdk/obf/hp;)V
    .registers 4

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej$6;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ej$6;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ej$6;->b:Lcom/baidu/bdgame/sdk/obf/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$6;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->dismiss()V

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$6;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej$6;->b:Lcom/baidu/bdgame/sdk/obf/hp;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/hp;)V

    .line 165
    return-void
.end method
