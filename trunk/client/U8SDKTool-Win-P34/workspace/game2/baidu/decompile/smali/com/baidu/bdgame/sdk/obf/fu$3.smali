.class final Lcom/baidu/bdgame/sdk/obf/fu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fu;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fu;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fu;)V
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fu$3;->a:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu$3;->a:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fu;->b(Lcom/baidu/bdgame/sdk/obf/fu;Landroid/view/View;)V

    .line 281
    return-void
.end method