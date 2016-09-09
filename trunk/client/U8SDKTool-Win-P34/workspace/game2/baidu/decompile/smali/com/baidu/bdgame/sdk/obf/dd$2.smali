.class final Lcom/baidu/bdgame/sdk/obf/dd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dd;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dd;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dd;)V
    .registers 2

    .prologue
    .line 625
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dd$2;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd$2;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->b(Lcom/baidu/bdgame/sdk/obf/dd;)Lcom/baidu/bdgame/sdk/obf/dd$b;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 630
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd$2;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->b(Lcom/baidu/bdgame/sdk/obf/dd;)Lcom/baidu/bdgame/sdk/obf/dd$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dd$b;->a(Z)V

    .line 632
    :cond_12
    return-void
.end method
