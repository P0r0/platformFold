.class Lcom/baidu/android/pushservice/t;
.super Lcom/baidu/android/pushservice/PushMessageReceiver$a;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/PushMessageReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushMessageReceiver;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/android/pushservice/t;->a:Lcom/baidu/android/pushservice/PushMessageReceiver;

    invoke-direct {p0, p2}, Lcom/baidu/android/pushservice/PushMessageReceiver$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/t;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/baidu/android/pushservice/t;->a:Lcom/baidu/android/pushservice/PushMessageReceiver;

    iget-object v0, p0, Lcom/baidu/android/pushservice/t;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "custom_content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
