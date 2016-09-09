.class Lcom/ltayx/pay/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ltayx/pay/a;


# direct methods
.method private constructor <init>(Lcom/ltayx/pay/a;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ltayx/pay/e;->a:Lcom/ltayx/pay/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ltayx/pay/a;Lcom/ltayx/pay/e;)V
    .registers 3

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/ltayx/pay/e;-><init>(Lcom/ltayx/pay/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 203
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1b

    .line 204
    iget-object v0, p0, Lcom/ltayx/pay/e;->a:Lcom/ltayx/pay/a;

    invoke-static {v0}, Lcom/ltayx/pay/a;->a(Lcom/ltayx/pay/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ltayx/pay/k;->b()V

    .line 210
    :goto_1a
    return-void

    .line 207
    :cond_1b
    iget-object v1, p0, Lcom/ltayx/pay/e;->a:Lcom/ltayx/pay/a;

    invoke-static {v1}, Lcom/ltayx/pay/a;->a(Lcom/ltayx/pay/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ltayx/pay/k;->a()V

    .line 208
    iget-object v1, p0, Lcom/ltayx/pay/e;->a:Lcom/ltayx/pay/a;

    iget-object v2, p0, Lcom/ltayx/pay/e;->a:Lcom/ltayx/pay/a;

    invoke-static {v2}, Lcom/ltayx/pay/a;->b(Lcom/ltayx/pay/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ltayx/pay/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1a
.end method
