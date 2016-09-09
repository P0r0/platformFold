.class final Lcom/baidu/bdgame/sdk/obf/bm$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bo$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bm$5;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bm$5;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bm$5;)V
    .registers 2

    .prologue
    .line 569
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$3;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$3;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 575
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$3;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$3;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_34
    return-void
.end method
