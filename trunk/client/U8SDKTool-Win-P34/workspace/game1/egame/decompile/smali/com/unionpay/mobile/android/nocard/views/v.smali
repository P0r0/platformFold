.class final Lcom/unionpay/mobile/android/nocard/views/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/o;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/o;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->b(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->b(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/o;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_2a
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->c(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->c(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/o;->c(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/o;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_4e
    const-string v0, ""

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/o;->d(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->d(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/views/o;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_70
    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    :cond_72
    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_93
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/o;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v3, v3, Lcom/unionpay/mobile/android/nocard/views/o;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_apply"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/v;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/nocard/views/o;->b(Lcom/unionpay/mobile/android/nocard/views/o;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c5
    move-object v0, v1

    goto :goto_93
.end method
