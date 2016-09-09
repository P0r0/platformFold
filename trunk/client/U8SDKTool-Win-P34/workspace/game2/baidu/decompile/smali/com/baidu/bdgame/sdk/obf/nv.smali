.class public Lcom/baidu/bdgame/sdk/obf/nv;
.super Lcom/baidu/bdgame/sdk/obf/nx;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nx;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nv;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nv;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 25
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nv;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/nv;->setChecked(Z)V

    .line 30
    return-void

    .line 29
    :cond_b
    const/4 v0, 0x1

    goto :goto_7
.end method
