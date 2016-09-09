.class final Lcom/baidu/bdgame/sdk/obf/nm$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nm;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nm;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->a(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3f

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->b(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->c(Lcom/baidu/bdgame/sdk/obf/nm;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->d(Lcom/baidu/bdgame/sdk/obf/nm;)Lcom/baidu/bdgame/sdk/obf/nm$b;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->d(Lcom/baidu/bdgame/sdk/obf/nm;)Lcom/baidu/bdgame/sdk/obf/nm$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nm$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->d(Lcom/baidu/bdgame/sdk/obf/nm;)Lcom/baidu/bdgame/sdk/obf/nm$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nm$b;->b()V

    .line 108
    :cond_3e
    return-void

    .line 102
    :cond_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$14;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->b(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 91
    return-void
.end method
