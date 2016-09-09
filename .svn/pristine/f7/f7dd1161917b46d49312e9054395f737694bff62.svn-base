.class Lcom/baidu/android/pushservice/e/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/baidu/android/pushservice/e/a;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/e/a;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/android/pushservice/e/b;->c:Lcom/baidu/android/pushservice/e/a;

    iput-object p2, p0, Lcom/baidu/android/pushservice/e/b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/android/pushservice/e/b;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/android/pushservice/e/b;->b:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->a:Ljava/lang/String;

    const-string v2, "030403"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;

    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    :goto_38
    return-void

    :cond_39
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->a:Ljava/lang/String;

    const-string v2, "030401"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/b;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_31

    :catch_4e
    move-exception v0

    const-string v0, "AbstractProcessor"

    const-string v1, "insertHttpBehavior exception"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method
