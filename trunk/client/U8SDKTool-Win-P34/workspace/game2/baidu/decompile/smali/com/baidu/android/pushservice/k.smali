.class Lcom/baidu/android/pushservice/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/i;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/k;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/k;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->j(Lcom/baidu/android/pushservice/i;)V

    return-void
.end method
