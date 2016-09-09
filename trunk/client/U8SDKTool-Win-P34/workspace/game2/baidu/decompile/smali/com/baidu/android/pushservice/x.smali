.class Lcom/baidu/android/pushservice/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/v;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/v;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/x;->a:Lcom/baidu/android/pushservice/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/x;->a:Lcom/baidu/android/pushservice/v;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Intent;)Z

    return-void
.end method
