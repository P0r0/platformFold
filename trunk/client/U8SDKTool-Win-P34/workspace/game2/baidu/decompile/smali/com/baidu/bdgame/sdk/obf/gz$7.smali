.class final Lcom/baidu/bdgame/sdk/obf/gz$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gz;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gz;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gz;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->a(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3f

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->b(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->c(Lcom/baidu/bdgame/sdk/obf/gz;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->d(Lcom/baidu/bdgame/sdk/obf/gz;)Lcom/baidu/bdgame/sdk/obf/gz$a;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->d(Lcom/baidu/bdgame/sdk/obf/gz;)Lcom/baidu/bdgame/sdk/obf/gz$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gz$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->d(Lcom/baidu/bdgame/sdk/obf/gz;)Lcom/baidu/bdgame/sdk/obf/gz$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gz$a;->b()V

    .line 125
    :cond_3e
    return-void

    .line 119
    :cond_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$7;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->b(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/ImageView;

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
    .line 112
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 108
    return-void
.end method
