.class Lcom/baidu/android/pushservice/m;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/baidu/android/pushservice/i;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/android/pushservice/m;->c:Lcom/baidu/android/pushservice/i;

    iput-object p2, p0, Lcom/baidu/android/pushservice/m;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/android/pushservice/m;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->c:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/android/pushservice/m;->b:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->a:Ljava/lang/String;

    const-string v2, "030303"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->c:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->c:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    :goto_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->a:Ljava/lang/String;

    const-string v2, "030301"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/baidu/android/pushservice/m;->c:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_35

    :catch_56
    move-exception v0

    const-string v0, "PushConnection"

    const-string v1, "insertAgent exception"

    iget-object v2, p0, Lcom/baidu/android/pushservice/m;->c:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3e
.end method
