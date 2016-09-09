.class Lcom/huanju/data/b/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/huanju/data/b/b;


# direct methods
.method constructor <init>(Lcom/huanju/data/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/b/d;->a:Lcom/huanju/data/b/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {v0}, Lcom/huanju/data/net/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/huanju/data/b/d;->a:Lcom/huanju/data/b/b;

    invoke-static {v0}, Lcom/huanju/data/b/b;->a(Lcom/huanju/data/b/b;)Lcom/huanju/data/net/e;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/huanju/data/b/d;->a:Lcom/huanju/data/b/b;

    invoke-static {v0}, Lcom/huanju/data/b/b;->a(Lcom/huanju/data/b/b;)Lcom/huanju/data/net/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/data/net/e;->b()V

    :cond_27
    return-void
.end method
