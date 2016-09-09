.class final Lcom/alipay/sdk/widget/c;
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
    .line 193
    iput-object p1, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 199
    :try_start_8
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->c(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a$a;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 202
    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
