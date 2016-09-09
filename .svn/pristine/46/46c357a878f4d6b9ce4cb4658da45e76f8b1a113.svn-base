.class Lcom/baidu/android/pushservice/i/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/android/pushservice/i/p;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i/p;Z)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/q;->b:Lcom/baidu/android/pushservice/i/p;

    iput-boolean p2, p0, Lcom/baidu/android/pushservice/i/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/q;->b:Lcom/baidu/android/pushservice/i/p;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Statistics-BaseSender"

    const-string v1, "Network is not reachable!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/q;->b:Lcom/baidu/android/pushservice/i/p;

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/i/q;->a:Z

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/p;->a(Lcom/baidu/android/pushservice/i/p;Z)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/q;->b:Lcom/baidu/android/pushservice/i/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/p;->b(Lcom/baidu/android/pushservice/i/p;Z)Z

    goto :goto_11
.end method
