.class final Lcom/baidu/bdgame/sdk/obf/me$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/me;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/me;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/me;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/me$3;->a:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me$3;->a:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/me;->d(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me$3;->a:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/me;->e(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :goto_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me$3;->a:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/me;->c(Lcom/baidu/bdgame/sdk/obf/me;)V

    .line 131
    return-void

    .line 128
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me$3;->a:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/me;->e(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

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
    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 117
    return-void
.end method
