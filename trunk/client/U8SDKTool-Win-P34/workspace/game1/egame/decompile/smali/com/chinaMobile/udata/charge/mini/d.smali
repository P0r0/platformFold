.class final Lcom/chinaMobile/udata/charge/mini/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chinaMobile/udata/charge/mini/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/chinaMobile/udata/charge/mini/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chinaMobile/udata/charge/mini/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chinaMobile/udata/charge/mini/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/chinaMobile/udata/charge/mini/h;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chinaMobile/udata/charge/mini/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/chinaMobile/udata/charge/mini/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chinaMobile/udata/charge/mini/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/chinaMobile/udata/charge/mini/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/chinaMobile/udata/charge/mini/d;->b:Ljava/lang/String;

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/chinaMobile/udata/charge/mini/d;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    iget-object v4, p0, Lcom/chinaMobile/udata/charge/mini/d;->a:Landroid/content/Context;

    const-string v5, "#apk_security_check "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/chinaMobile/udata/charge/mini/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@#@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "@#@"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@#@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@#@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onEventBase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    return-void
.end method
