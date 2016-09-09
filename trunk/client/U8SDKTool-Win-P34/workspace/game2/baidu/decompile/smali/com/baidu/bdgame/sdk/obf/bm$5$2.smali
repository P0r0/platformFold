.class final Lcom/baidu/bdgame/sdk/obf/bm$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bo$a;


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
    .line 546
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 550
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Lcom/baidu/bdgame/sdk/obf/bm;Lcom/baidu/bdgame/sdk/obf/s;)Lcom/baidu/bdgame/sdk/obf/s;

    .line 551
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->m(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->m(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->m(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 555
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lm;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 561
    :goto_75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->g(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->f(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Lcom/baidu/bdgame/sdk/obf/bm;)Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Lcom/baidu/bdgame/sdk/obf/bm;Z)V

    .line 567
    return-void

    .line 559
    :cond_a7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bm$5$2;->a:Lcom/baidu/bdgame/sdk/obf/bm$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/bm$5;->a:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Lcom/baidu/bdgame/sdk/obf/bm;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75
.end method
