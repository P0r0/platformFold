.class final Lcom/alipay/sdk/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 177
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    new-instance v1, Lcom/alipay/sdk/widget/a$a;

    iget-object v2, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    iget-object v3, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v3}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/sdk/widget/a$a;-><init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;Lcom/alipay/sdk/widget/a$a;)Lcom/alipay/sdk/widget/a$a;

    .line 180
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a$a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 181
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a$a;->show()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_30

    .line 185
    :cond_2f
    :goto_2f
    return-void

    .line 184
    :catch_30
    move-exception v0

    goto :goto_2f
.end method
